package com.eftimoff.androipathview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.util.Log;
import com.caverock.androidsvg.PreserveAspectRatio;
import com.caverock.androidsvg.SVG;
import com.caverock.androidsvg.SVGParseException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SvgUtils {
    private static final String LOG_TAG = "SVGUtils";
    private final List<SvgPath> mPaths = new ArrayList();
    private final Paint mSourcePaint;
    private SVG mSvg;

    public interface AnimationStepListener {
        void onAnimationStep();
    }

    public SvgUtils(Paint paint) {
        this.mSourcePaint = paint;
    }

    public void load(Context context, int i) {
        if (this.mSvg != null) {
            return;
        }
        try {
            SVG fromResource = SVG.getFromResource(context, i);
            this.mSvg = fromResource;
            fromResource.setDocumentPreserveAspectRatio(PreserveAspectRatio.UNSCALED);
        } catch (SVGParseException e) {
            Log.e(LOG_TAG, "Could not load specified SVG resource", e);
        }
    }

    public void drawSvgAfter(Canvas canvas, int i, int i2) {
        rescaleCanvas(i, i2, this.mSourcePaint.getStrokeWidth(), canvas);
    }

    public List<SvgPath> getPathsForViewport(final int i, final int i2) {
        final float strokeWidth = this.mSourcePaint.getStrokeWidth();
        rescaleCanvas(i, i2, strokeWidth, new Canvas() { // from class: com.eftimoff.androipathview.SvgUtils.1
            private final Matrix mMatrix = new Matrix();

            @Override // android.graphics.Canvas
            public int getWidth() {
                return i;
            }

            @Override // android.graphics.Canvas
            public int getHeight() {
                return i2;
            }

            @Override // android.graphics.Canvas
            public void drawPath(Path path, Paint paint) {
                Path path2 = new Path();
                getMatrix(this.mMatrix);
                path.transform(this.mMatrix, path2);
                paint.setAntiAlias(true);
                paint.setStyle(Paint.Style.STROKE);
                paint.setStrokeWidth(strokeWidth);
                SvgUtils.this.mPaths.add(new SvgPath(path2, paint));
            }
        });
        return this.mPaths;
    }

    private void rescaleCanvas(int i, int i2, float f, Canvas canvas) {
        SVG svg = this.mSvg;
        if (svg == null) {
            return;
        }
        RectF documentViewBox = svg.getDocumentViewBox();
        float f2 = i;
        float f3 = i2;
        float fMin = Math.min(f2 / (documentViewBox.width() + f), f3 / (documentViewBox.height() + f));
        canvas.translate((f2 - (documentViewBox.width() * fMin)) / 2.0f, (f3 - (documentViewBox.height() * fMin)) / 2.0f);
        canvas.scale(fMin, fMin);
        this.mSvg.renderToCanvas(canvas);
    }

    public static class SvgPath {
        AnimationStepListener animationStepListener;
        final Rect bounds;
        float length;
        final PathMeasure measure;
        final Paint paint;
        final Path path;
        private static final Region REGION = new Region();
        private static final Region MAX_CLIP = new Region(Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE);

        SvgPath(Path path, Paint paint) {
            this.path = path;
            this.paint = paint;
            PathMeasure pathMeasure = new PathMeasure(path, false);
            this.measure = pathMeasure;
            this.length = pathMeasure.getLength();
            Region region = REGION;
            region.setPath(path, MAX_CLIP);
            this.bounds = region.getBounds();
        }

        public void setAnimationStepListener(AnimationStepListener animationStepListener) {
            this.animationStepListener = animationStepListener;
        }

        public void setLength(float f) {
            this.path.reset();
            this.measure.getSegment(0.0f, f, this.path, true);
            this.path.rLineTo(0.0f, 0.0f);
            AnimationStepListener animationStepListener = this.animationStepListener;
            if (animationStepListener != null) {
                animationStepListener.onAnimationStep();
            }
        }

        public float getLength() {
            return this.length;
        }
    }
}

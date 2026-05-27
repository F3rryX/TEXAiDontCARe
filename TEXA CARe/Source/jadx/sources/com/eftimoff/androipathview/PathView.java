package com.eftimoff.androipathview;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.animation.Interpolator;
import com.eftimoff.androipathview.SvgUtils;
import com.eftimoff.mylibrary.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class PathView extends View implements SvgUtils.AnimationStepListener {
    public static final String LOG_TAG = "PathView";
    private AnimatorBuilder animatorBuilder;
    private AnimatorSetBuilder animatorSetBuilder;
    private boolean fillAfter;
    private int height;
    private Thread mLoader;
    private final Object mSvgLock;
    private boolean naturalColors;
    private Paint paint;
    private List<SvgUtils.SvgPath> paths;
    private float progress;
    private int svgResourceId;
    private final SvgUtils svgUtils;
    private int width;

    public PathView(Context context) {
        this(context, null);
    }

    public PathView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PathView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Paint paint = new Paint(1);
        this.paint = paint;
        this.svgUtils = new SvgUtils(paint);
        this.paths = new ArrayList();
        this.mSvgLock = new Object();
        this.progress = 0.0f;
        this.paint.setStyle(Paint.Style.STROKE);
        getFromAttributes(context, attributeSet);
    }

    private void getFromAttributes(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PathView);
        if (typedArrayObtainStyledAttributes != null) {
            try {
                this.paint.setColor(typedArrayObtainStyledAttributes.getColor(R.styleable.PathView_pathColor, -16711936));
                this.paint.setStrokeWidth(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.PathView_pathWidth, 8));
                this.svgResourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PathView_svg, 0);
            } finally {
                if (typedArrayObtainStyledAttributes != null) {
                    typedArrayObtainStyledAttributes.recycle();
                }
            }
        }
    }

    public void setPaths(List<Path> list) {
        Iterator<Path> it = list.iterator();
        while (it.hasNext()) {
            this.paths.add(new SvgUtils.SvgPath(it.next(), this.paint));
        }
        synchronized (this.mSvgLock) {
            updatePathsPhaseLocked();
        }
    }

    public void setPath(Path path) {
        this.paths.add(new SvgUtils.SvgPath(path, this.paint));
        synchronized (this.mSvgLock) {
            updatePathsPhaseLocked();
        }
    }

    public void setPercentage(float f) {
        if (f < 0.0f || f > 1.0f) {
            throw new IllegalArgumentException("setPercentage not between 0.0f and 1.0f");
        }
        this.progress = f;
        synchronized (this.mSvgLock) {
            updatePathsPhaseLocked();
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePathsPhaseLocked() {
        int size = this.paths.size();
        for (int i = 0; i < size; i++) {
            SvgUtils.SvgPath svgPath = this.paths.get(i);
            svgPath.path.reset();
            svgPath.measure.getSegment(0.0f, svgPath.length * this.progress, svgPath.path, true);
            svgPath.path.rLineTo(0.0f, 0.0f);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        synchronized (this.mSvgLock) {
            canvas.save();
            canvas.translate(getPaddingLeft(), getPaddingTop());
            int size = this.paths.size();
            for (int i = 0; i < size; i++) {
                SvgUtils.SvgPath svgPath = this.paths.get(i);
                canvas.drawPath(svgPath.path, this.naturalColors ? svgPath.paint : this.paint);
            }
            fillAfter(canvas);
            canvas.restore();
        }
    }

    private void fillAfter(Canvas canvas) {
        if (this.svgResourceId != 0 && this.fillAfter && this.progress == 1.0f) {
            this.svgUtils.drawSvgAfter(canvas, this.width, this.height);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(final int i, final int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        Thread thread = this.mLoader;
        if (thread != null) {
            try {
                thread.join();
            } catch (InterruptedException e) {
                Log.e(LOG_TAG, "Unexpected error", e);
            }
        }
        if (this.svgResourceId != 0) {
            Thread thread2 = new Thread(new Runnable() { // from class: com.eftimoff.androipathview.PathView.1
                @Override // java.lang.Runnable
                public void run() {
                    PathView.this.svgUtils.load(PathView.this.getContext(), PathView.this.svgResourceId);
                    synchronized (PathView.this.mSvgLock) {
                        PathView pathView = PathView.this;
                        pathView.width = (i - pathView.getPaddingLeft()) - PathView.this.getPaddingRight();
                        PathView pathView2 = PathView.this;
                        pathView2.height = (i2 - pathView2.getPaddingTop()) - PathView.this.getPaddingBottom();
                        PathView pathView3 = PathView.this;
                        pathView3.paths = pathView3.svgUtils.getPathsForViewport(PathView.this.width, PathView.this.height);
                        PathView.this.updatePathsPhaseLocked();
                    }
                }
            }, "SVG Loader");
            this.mLoader = thread2;
            thread2.start();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.svgResourceId != 0) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2));
            return;
        }
        float strokeWidth = this.paint.getStrokeWidth() / 2.0f;
        int iWidth = 0;
        int iHeight = 0;
        for (SvgUtils.SvgPath svgPath : this.paths) {
            iWidth = (int) (iWidth + svgPath.bounds.left + svgPath.bounds.width() + strokeWidth);
            iHeight = (int) (iHeight + svgPath.bounds.top + svgPath.bounds.height() + strokeWidth);
        }
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i);
        if (mode != Integer.MIN_VALUE) {
            iWidth = size;
        }
        if (mode2 != Integer.MIN_VALUE) {
            iHeight = size2;
        }
        setMeasuredDimension(iWidth, iHeight);
    }

    public void setFillAfter(boolean z) {
        this.fillAfter = z;
    }

    public void useNaturalColors() {
        this.naturalColors = true;
    }

    public AnimatorBuilder getPathAnimator() {
        if (this.animatorBuilder == null) {
            this.animatorBuilder = new AnimatorBuilder(this);
        }
        return this.animatorBuilder;
    }

    public AnimatorSetBuilder getSequentialPathAnimator() {
        if (this.animatorSetBuilder == null) {
            this.animatorSetBuilder = new AnimatorSetBuilder(this);
        }
        return this.animatorSetBuilder;
    }

    public int getPathColor() {
        return this.paint.getColor();
    }

    public void setPathColor(int i) {
        this.paint.setColor(i);
    }

    public float getPathWidth() {
        return this.paint.getStrokeWidth();
    }

    public void setPathWidth(float f) {
        this.paint.setStrokeWidth(f);
    }

    public int getSvgResource() {
        return this.svgResourceId;
    }

    public void setSvgResource(int i) {
        this.svgResourceId = i;
    }

    public static class AnimatorBuilder {
        private final ObjectAnimator anim;
        private ListenerEnd animationEnd;
        private Interpolator interpolator;
        private ListenerStart listenerStart;
        private PathViewAnimatorListener pathViewAnimatorListener;
        private int duration = 350;
        private int delay = 0;

        public interface ListenerEnd {
            void onAnimationEnd();
        }

        public interface ListenerStart {
            void onAnimationStart();
        }

        public AnimatorBuilder(PathView pathView) {
            this.anim = ObjectAnimator.ofFloat(pathView, "percentage", 0.0f, 1.0f);
        }

        public AnimatorBuilder duration(int i) {
            this.duration = i;
            return this;
        }

        public AnimatorBuilder interpolator(Interpolator interpolator) {
            this.interpolator = interpolator;
            return this;
        }

        public AnimatorBuilder delay(int i) {
            this.delay = i;
            return this;
        }

        public AnimatorBuilder listenerStart(ListenerStart listenerStart) {
            this.listenerStart = listenerStart;
            if (this.pathViewAnimatorListener == null) {
                PathViewAnimatorListener pathViewAnimatorListener = new PathViewAnimatorListener();
                this.pathViewAnimatorListener = pathViewAnimatorListener;
                this.anim.addListener(pathViewAnimatorListener);
            }
            return this;
        }

        public AnimatorBuilder listenerEnd(ListenerEnd listenerEnd) {
            this.animationEnd = listenerEnd;
            if (this.pathViewAnimatorListener == null) {
                PathViewAnimatorListener pathViewAnimatorListener = new PathViewAnimatorListener();
                this.pathViewAnimatorListener = pathViewAnimatorListener;
                this.anim.addListener(pathViewAnimatorListener);
            }
            return this;
        }

        public void start() {
            this.anim.setDuration(this.duration);
            this.anim.setInterpolator(this.interpolator);
            this.anim.setStartDelay(this.delay);
            this.anim.start();
        }

        private class PathViewAnimatorListener implements Animator.AnimatorListener {
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            private PathViewAnimatorListener() {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                if (AnimatorBuilder.this.listenerStart != null) {
                    AnimatorBuilder.this.listenerStart.onAnimationStart();
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (AnimatorBuilder.this.animationEnd != null) {
                    AnimatorBuilder.this.animationEnd.onAnimationEnd();
                }
            }
        }
    }

    @Override // com.eftimoff.androipathview.SvgUtils.AnimationStepListener
    public void onAnimationStep() {
        invalidate();
    }

    public static class AnimatorSetBuilder {
        private AnimatorBuilder.ListenerEnd animationEnd;
        private Interpolator interpolator;
        private AnimatorBuilder.ListenerStart listenerStart;
        private PathViewAnimatorListener pathViewAnimatorListener;
        private List<SvgUtils.SvgPath> paths;
        private int duration = 1000;
        private int delay = 0;
        private final List<Animator> animators = new ArrayList();
        private AnimatorSet animatorSet = new AnimatorSet();

        public AnimatorSetBuilder(PathView pathView) {
            List<SvgUtils.SvgPath> list = pathView.paths;
            this.paths = list;
            for (SvgUtils.SvgPath svgPath : list) {
                svgPath.setAnimationStepListener(pathView);
                this.animators.add(ObjectAnimator.ofFloat(svgPath, "length", 0.0f, svgPath.getLength()));
            }
            this.animatorSet.playSequentially(this.animators);
        }

        public AnimatorSetBuilder duration(int i) {
            this.duration = i / this.paths.size();
            return this;
        }

        public AnimatorSetBuilder interpolator(Interpolator interpolator) {
            this.interpolator = interpolator;
            return this;
        }

        public AnimatorSetBuilder delay(int i) {
            this.delay = i;
            return this;
        }

        public AnimatorSetBuilder listenerStart(AnimatorBuilder.ListenerStart listenerStart) {
            this.listenerStart = listenerStart;
            if (this.pathViewAnimatorListener == null) {
                PathViewAnimatorListener pathViewAnimatorListener = new PathViewAnimatorListener();
                this.pathViewAnimatorListener = pathViewAnimatorListener;
                this.animatorSet.addListener(pathViewAnimatorListener);
            }
            return this;
        }

        public AnimatorSetBuilder listenerEnd(AnimatorBuilder.ListenerEnd listenerEnd) {
            this.animationEnd = listenerEnd;
            if (this.pathViewAnimatorListener == null) {
                PathViewAnimatorListener pathViewAnimatorListener = new PathViewAnimatorListener();
                this.pathViewAnimatorListener = pathViewAnimatorListener;
                this.animatorSet.addListener(pathViewAnimatorListener);
            }
            return this;
        }

        public void start() {
            resetAllPaths();
            this.animatorSet.cancel();
            this.animatorSet.setDuration(this.duration);
            this.animatorSet.setInterpolator(this.interpolator);
            this.animatorSet.setStartDelay(this.delay);
            this.animatorSet.start();
        }

        private void resetAllPaths() {
            Iterator<SvgUtils.SvgPath> it = this.paths.iterator();
            while (it.hasNext()) {
                it.next().setLength(0.0f);
            }
        }

        private class PathViewAnimatorListener implements Animator.AnimatorListener {
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            private PathViewAnimatorListener() {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                if (AnimatorSetBuilder.this.listenerStart != null) {
                    AnimatorSetBuilder.this.listenerStart.onAnimationStart();
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (AnimatorSetBuilder.this.animationEnd != null) {
                    AnimatorSetBuilder.this.animationEnd.onAnimationEnd();
                }
            }
        }
    }
}

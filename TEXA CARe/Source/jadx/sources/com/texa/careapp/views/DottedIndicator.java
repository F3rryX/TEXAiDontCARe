package com.texa.careapp.views;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.texa.carelib.communication.Commands;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
class DottedIndicator extends Indicator {
    private static final int ALPHA = 255;
    private static final float SCALE = 1.0f;
    private float[] scaleFloats = {SCALE, SCALE, SCALE, SCALE, SCALE, SCALE, SCALE, SCALE, SCALE, SCALE};
    private int[] alphas = {255, 255, 255, 255, 255, 255, 255, 255, 255, 255};

    DottedIndicator() {
    }

    @Override // com.texa.careapp.views.Indicator
    public void draw(Canvas canvas, Paint paint) {
        float width = getWidth() / 20;
        for (int i = 0; i < 10; i++) {
            canvas.save();
            Point pointCircleAt = circleAt(getWidth(), getHeight(), (getWidth() / 2) - width, 0.7853981633974483d * ((double) i));
            canvas.translate(pointCircleAt.x, pointCircleAt.y);
            float[] fArr = this.scaleFloats;
            canvas.scale(fArr[i], fArr[i]);
            paint.setAlpha(this.alphas[i]);
            canvas.drawCircle(0.0f, 0.0f, width, paint);
            canvas.restore();
        }
    }

    @Override // com.texa.careapp.views.Indicator
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        int[] iArr = {0, 120, Commands.GetSOSStatus, 360, 480, 600, 720, 780, 840, 960, 1080};
        for (final int i = 0; i < 10; i++) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(SCALE, 0.4f, SCALE);
            valueAnimatorOfFloat.setDuration(1000L);
            valueAnimatorOfFloat.setRepeatCount(-1);
            valueAnimatorOfFloat.setStartDelay(iArr[i]);
            addUpdateListener(valueAnimatorOfFloat, new ValueAnimator.AnimatorUpdateListener() { // from class: com.texa.careapp.views.DottedIndicator$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.m669x454a5f86(i, valueAnimator);
                }
            });
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(255, 77, 255);
            valueAnimatorOfInt.setDuration(1000L);
            valueAnimatorOfInt.setRepeatCount(-1);
            valueAnimatorOfInt.setStartDelay(iArr[i]);
            addUpdateListener(valueAnimatorOfInt, new ValueAnimator.AnimatorUpdateListener() { // from class: com.texa.careapp.views.DottedIndicator$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.m670x9c685065(i, valueAnimator);
                }
            });
            arrayList.add(valueAnimatorOfFloat);
            arrayList.add(valueAnimatorOfInt);
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: lambda$onCreateAnimators$0$com-texa-careapp-views-DottedIndicator, reason: not valid java name */
    public /* synthetic */ void m669x454a5f86(int i, ValueAnimator valueAnimator) {
        this.scaleFloats[i] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        postInvalidate();
    }

    /* JADX INFO: renamed from: lambda$onCreateAnimators$1$com-texa-careapp-views-DottedIndicator, reason: not valid java name */
    public /* synthetic */ void m670x9c685065(int i, ValueAnimator valueAnimator) {
        this.alphas[i] = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        postInvalidate();
    }

    private Point circleAt(int i, int i2, float f, double d) {
        double d2 = f;
        return new Point((float) (((double) (i / 2)) + (Math.cos(d) * d2)), (float) (((double) (i2 / 2)) + (d2 * Math.sin(d))));
    }

    private final class Point {
        public float x;
        public float y;

        Point(float f, float f2) {
            this.x = f;
            this.y = f2;
        }
    }
}

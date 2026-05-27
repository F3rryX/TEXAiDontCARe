package com.texa.careapp.views;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import androidx.core.content.res.ResourcesCompat;
import com.texa.care.R;
import com.texa.carelib.core.utils.Version;
import java.text.DecimalFormat;

/* JADX INFO: loaded from: classes2.dex */
public class CircleDisplay extends View implements GestureDetector.OnGestureListener {
    private static final String LOG_TAG = "CircleDisplay";
    public static final int PAINT_ARC = 2;
    public static final int PAINT_INNER = 3;
    public static final int PAINT_TEXT = 1;
    private static final String TAG = "CircleDisplay";
    private AttributeSet attributeSet;
    private float mAngle;
    private Paint mArcPaint;
    private boolean mBoxSetup;
    private RectF mCircleBox;
    private String mCustomText;
    private int mDimAlpha;
    private ObjectAnimator mDrawAnimator;
    private boolean mDrawText;
    private Paint mDrawablePaint;
    private DecimalFormat mFormatValue;
    private GestureDetector mGestureDetector;
    private int mImageResId;
    private SelectionListener mListener;
    private float mMaxValue;
    private float mPhase;
    private float mStartAngle;
    private float mStepSize;
    private TextPaint mTextPaint;
    private boolean mTouchEnabled;
    private String mUnit;
    private float mValue;
    private int mValueArcColor;
    private float mValueWidthPercent;
    private int mWholeCircleColor;
    private float textDimension;

    public interface SelectionListener {
        void onSelectionUpdate(float f, float f2);

        void onValueSelected(float f, float f2);
    }

    private float calcAngle(float f) {
        return (f / 100.0f) * 360.0f;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onShowPress(MotionEvent motionEvent) {
    }

    public CircleDisplay(Context context) {
        super(context);
        this.mUnit = "%";
        this.mStartAngle = 270.0f;
        this.mStepSize = 1.0f;
        this.mAngle = 0.0f;
        this.mPhase = 0.0f;
        this.mValue = 0.0f;
        this.mMaxValue = 0.0f;
        this.mValueWidthPercent = 50.0f;
        this.mDrawText = true;
        this.mTouchEnabled = true;
        this.mDimAlpha = 80;
        this.mFormatValue = new DecimalFormat("###,###,###,##0.0");
        this.mCustomText = null;
        this.mCircleBox = new RectF();
        this.mBoxSetup = false;
        init(context);
    }

    public CircleDisplay(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mUnit = "%";
        this.mStartAngle = 270.0f;
        this.mStepSize = 1.0f;
        this.mAngle = 0.0f;
        this.mPhase = 0.0f;
        this.mValue = 0.0f;
        this.mMaxValue = 0.0f;
        this.mValueWidthPercent = 50.0f;
        this.mDrawText = true;
        this.mTouchEnabled = true;
        this.mDimAlpha = 80;
        this.mFormatValue = new DecimalFormat("###,###,###,##0.0");
        this.mCustomText = null;
        this.mCircleBox = new RectF();
        this.mBoxSetup = false;
        this.attributeSet = attributeSet;
        init(context);
    }

    public CircleDisplay(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mUnit = "%";
        this.mStartAngle = 270.0f;
        this.mStepSize = 1.0f;
        this.mAngle = 0.0f;
        this.mPhase = 0.0f;
        this.mValue = 0.0f;
        this.mMaxValue = 0.0f;
        this.mValueWidthPercent = 50.0f;
        this.mDrawText = true;
        this.mTouchEnabled = true;
        this.mDimAlpha = 80;
        this.mFormatValue = new DecimalFormat("###,###,###,##0.0");
        this.mCustomText = null;
        this.mCircleBox = new RectF();
        this.mBoxSetup = false;
        this.attributeSet = attributeSet;
        init(context);
    }

    private void init(Context context) {
        this.mBoxSetup = false;
        Resources resources = context.getResources();
        this.mWholeCircleColor = com.texa.careapp.utils.Utils.getColorResource(context, R.color.primary);
        Paint paint = new Paint(1);
        this.mArcPaint = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.mArcPaint.setColor(Color.rgb(192, 255, 140));
        int colorResource = com.texa.careapp.utils.Utils.getColorResource(context, R.color.primary_text_light);
        TypedArray typedArrayObtainStyledAttributes = null;
        try {
            typedArrayObtainStyledAttributes = context.obtainStyledAttributes(this.attributeSet, com.texa.careapp.R.styleable.CircleDisplay, 0, 0);
            int color = typedArrayObtainStyledAttributes.getColor(2, colorResource);
            this.textDimension = typedArrayObtainStyledAttributes.getDimension(3, resources.getDimension(R.dimen.circle_display_fixed_text_size));
            this.mArcPaint.setStrokeWidth(typedArrayObtainStyledAttributes.getDimension(1, resources.getDimension(R.dimen.arc_width)));
            this.mWholeCircleColor = typedArrayObtainStyledAttributes.getColor(0, this.mWholeCircleColor);
            this.mValue = typedArrayObtainStyledAttributes.getInt(4, -1);
            TextPaint textPaint = new TextPaint(1);
            this.mTextPaint = textPaint;
            textPaint.setStyle(Paint.Style.FILL);
            this.mTextPaint.setTextAlign(Paint.Align.CENTER);
            this.mTextPaint.setColor(color);
            this.mTextPaint.setTextSize(this.textDimension);
            this.mTextPaint.setTypeface(ResourcesCompat.getFont(context, R.font.font_light));
            this.mDrawablePaint = new Paint(1);
            ObjectAnimator duration = ObjectAnimator.ofFloat(this, "phase", this.mPhase, 1.0f).setDuration(3000L);
            this.mDrawAnimator = duration;
            duration.setInterpolator(new AccelerateDecelerateInterpolator());
            this.mGestureDetector = new GestureDetector(getContext(), this);
        } finally {
            if (typedArrayObtainStyledAttributes != null) {
                typedArrayObtainStyledAttributes.recycle();
            }
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.mBoxSetup) {
            this.mBoxSetup = true;
            setupBox();
        }
        drawWholeCircle(canvas);
        drawValue(canvas);
        if (this.mImageResId > 0) {
            drawBitmap(canvas);
        }
        if (this.mDrawText) {
            if (this.mCustomText != null) {
                drawCustomText(canvas);
            } else {
                drawText(canvas);
            }
        }
    }

    private void drawBitmap(Canvas canvas) {
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(getResources(), this.mImageResId);
        int width = getWidth();
        int height = getHeight();
        float f = width / 2;
        float radius = ((float) (((double) (getRadius() - getResources().getDimensionPixelSize(R.dimen.circle_display_padding_image_size))) * Math.sqrt(2.0d))) / 2.0f;
        float f2 = height / 2;
        canvas.drawBitmap(bitmapDecodeResource, (Rect) null, new RectF(f - radius, f2 - radius, f + radius, f2 + radius), this.mDrawablePaint);
    }

    private void drawText(Canvas canvas) {
        float measuredWidth = getMeasuredWidth() / 2.0f;
        int measuredHeight = (int) ((getMeasuredHeight() / 2.0f) - ((this.mTextPaint.descent() + this.mTextPaint.ascent()) / 2.0f));
        if (this.mValue != -1.0f) {
            canvas.drawText(this.mFormatValue.format(this.mValue * this.mPhase) + this.mUnit, measuredWidth, measuredHeight, this.mTextPaint);
            return;
        }
        canvas.drawText("-", measuredWidth, measuredHeight, this.mTextPaint);
    }

    private void drawCustomText(Canvas canvas) {
        float measuredHeight = getMeasuredHeight();
        float measuredWidth = getMeasuredWidth();
        StaticLayout staticLayout = new StaticLayout(this.mCustomText, this.mTextPaint, (int) measuredWidth, Layout.Alignment.ALIGN_NORMAL, 0.8f, 0.0f, false);
        canvas.translate(measuredWidth / 2.0f, (measuredHeight / 2.0f) - (staticLayout.getHeight() / 2));
        staticLayout.draw(canvas);
    }

    private void drawWholeCircle(Canvas canvas) {
        this.mArcPaint.setColor(this.mWholeCircleColor);
        canvas.drawCircle(getWidth() / 2, getHeight() / 2, getRadius(), this.mArcPaint);
    }

    private void drawValue(Canvas canvas) {
        this.mArcPaint.setAlpha(255);
        this.mArcPaint.setColor(this.mValueArcColor);
        canvas.drawArc(this.mCircleBox, this.mStartAngle, this.mAngle * this.mPhase, false, this.mArcPaint);
    }

    private void setupBox() {
        int width = getWidth();
        int height = getHeight();
        float f = width / 2;
        float diameter = getDiameter() / 2.0f;
        float f2 = height / 2;
        this.mCircleBox = new RectF(f - diameter, f2 - diameter, f + diameter, f2 + diameter);
    }

    public void showValue(float f, float f2, boolean z) {
        this.mAngle = calcAngle((f / f2) * 100.0f);
        this.mValue = f;
        this.mMaxValue = f2;
        if (z) {
            startAnim();
        } else {
            this.mPhase = 1.0f;
            invalidate();
        }
    }

    public void setUnit(String str) {
        this.mUnit = str;
    }

    public float getValue() {
        return this.mValue;
    }

    public void startAnim() {
        this.mPhase = 0.0f;
        this.mDrawAnimator.start();
    }

    public void setAnimDuration(int i) {
        this.mDrawAnimator.setDuration(i);
    }

    public float getDiameter() {
        return Math.min(getWidth(), getHeight());
    }

    public float getRadius() {
        return getDiameter() / 2.0f;
    }

    public void setStartAngle(float f) {
        this.mStartAngle = f;
    }

    public float getPhase() {
        return this.mPhase;
    }

    public void setPhase(float f) {
        this.mPhase = f;
        invalidate();
    }

    public void setDrawText(boolean z) {
        this.mDrawText = z;
    }

    public boolean isDrawTextEnabled() {
        return this.mDrawText;
    }

    public void setColor(int i) {
        this.mValueArcColor = i;
    }

    public void setTextDimension(float f) {
        this.textDimension = f;
        this.mTextPaint.setTextSize(f);
    }

    public void setWholeCircleColor(int i) {
        this.mWholeCircleColor = i;
    }

    public void setTextSize(float f) {
        this.mTextPaint.setTextSize(Utils.convertDpToPixel(getResources(), f));
    }

    public void setValueWidthPercent(float f) {
        this.mValueWidthPercent = f;
    }

    public void setCustomText(String str) {
        this.mCustomText = str;
    }

    public void setFormatDigits(int i) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 == 0) {
                stringBuffer.append(Version.SEPARATOR);
            }
            stringBuffer.append("0");
        }
        this.mFormatValue = new DecimalFormat("###,###,###,##0" + stringBuffer.toString());
    }

    public void setDimAlpha(int i) {
        this.mDimAlpha = i;
    }

    public void setArcPaint(Paint paint) {
        this.mArcPaint = paint;
    }

    public void setTextPaint(TextPaint textPaint) {
        this.mTextPaint = textPaint;
    }

    public void setCirclePaint(Paint paint) {
        setArcPaint(paint);
    }

    public float getStepSize() {
        return this.mStepSize;
    }

    public void setStepSize(float f) {
        this.mStepSize = f;
    }

    public PointF getCenter() {
        return new PointF(getWidth() / 2, getHeight() / 2);
    }

    public boolean isTouchEnabled() {
        return this.mTouchEnabled;
    }

    public void setTouchEnabled(boolean z) {
        this.mTouchEnabled = z;
    }

    public void setSelectionListener(SelectionListener selectionListener) {
        this.mListener = selectionListener;
    }

    private void updateValue(float f, float f2) {
        float angleForPoint = getAngleForPoint(f, f2);
        float f3 = (this.mMaxValue * angleForPoint) / 360.0f;
        float f4 = this.mStepSize;
        if (f4 == 0.0f) {
            this.mValue = f3;
            this.mAngle = angleForPoint;
        } else {
            float f5 = f3 % f4;
            float f6 = f5 <= f4 / 2.0f ? f3 - f5 : (f3 - f5) + f4;
            this.mAngle = getAngleForValue(f6);
            this.mValue = f6;
        }
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        float fDistanceToCenter = distanceToCenter(motionEvent.getX(), motionEvent.getY());
        float radius = getRadius();
        if (fDistanceToCenter < radius - ((this.mValueWidthPercent * radius) / 100.0f) || fDistanceToCenter >= radius) {
            return true;
        }
        updateValue(motionEvent.getX(), motionEvent.getY());
        invalidate();
        SelectionListener selectionListener = this.mListener;
        if (selectionListener == null) {
            return true;
        }
        selectionListener.onValueSelected(this.mValue, this.mMaxValue);
        return true;
    }

    public float getAngleForPoint(float f, float f2) {
        PointF center = getCenter();
        double d = f - center.x;
        double d2 = f2 - center.y;
        float degrees = (float) Math.toDegrees(Math.acos(d2 / Math.sqrt((d * d) + (d2 * d2))));
        if (f > center.x) {
            degrees = 360.0f - degrees;
        }
        float f3 = degrees + 180.0f;
        return f3 > 360.0f ? f3 - 360.0f : f3;
    }

    public float getAngleForValue(float f) {
        return (f / this.mMaxValue) * 360.0f;
    }

    public float getValueForAngle(float f) {
        return (f / 360.0f) * this.mMaxValue;
    }

    public float distanceToCenter(float f, float f2) {
        float f3;
        float f4;
        PointF center = getCenter();
        if (f > center.x) {
            f3 = f - center.x;
        } else {
            f3 = center.x - f;
        }
        if (f2 > center.y) {
            f4 = f2 - center.y;
        } else {
            f4 = center.y - f2;
        }
        return (float) Math.sqrt(Math.pow(f3, 2.0d) + Math.pow(f4, 2.0d));
    }

    public float getMaxValue() {
        return this.mMaxValue;
    }

    public void setImageResId(int i) {
        this.mImageResId = i;
    }

    public void setTypeface(int i) {
        this.mTextPaint.setTypeface(ResourcesCompat.getFont(getContext(), i));
    }

    public void setBlurred(boolean z) {
        if (z) {
            this.mArcPaint.setMaskFilter(new BlurMaskFilter(8.0f, BlurMaskFilter.Blur.NORMAL));
        } else {
            this.mArcPaint.setMaskFilter(null);
        }
    }

    public void setTextColor(int i) {
        this.mTextPaint.setColor(i);
    }

    public static abstract class Utils {
        public static float convertDpToPixel(Resources resources, float f) {
            return f * (resources.getDisplayMetrics().densityDpi / 160.0f);
        }
    }
}

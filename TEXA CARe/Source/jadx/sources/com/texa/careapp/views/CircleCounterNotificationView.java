package com.texa.careapp.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.texa.care.R;
import com.texa.careapp.utils.DimensionConverter;

/* JADX INFO: loaded from: classes2.dex */
public class CircleCounterNotificationView extends RelativeLayout {
    private int circleBackgroundColor;
    private int circleBorderColor;
    private int image;
    private ImageView mImageView;
    private LinearLayout mNotificationCountLayout;
    private TextView mTextView;
    private int notificationBackgroundColor;
    private int textColor;
    private float width;

    public CircleCounterNotificationView(Context context) {
        super(context);
        inflate(context, R.layout.circle_notification_view, this);
    }

    public CircleCounterNotificationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet);
    }

    public CircleCounterNotificationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet);
    }

    public CircleCounterNotificationView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.circle_notification_view, this);
        this.mTextView = (TextView) viewInflate.findViewById(R.id.notification_count_text);
        this.mImageView = (ImageView) viewInflate.findViewById(R.id.image_view);
        this.mNotificationCountLayout = (LinearLayout) viewInflate.findViewById(R.id.notification_count_layout);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, com.texa.careapp.R.styleable.CircleCounterNotificationView, 0, 0);
        try {
            this.image = typedArrayObtainStyledAttributes.getResourceId(2, com.texa.careapp.R.drawable.ic_placeholder);
            this.notificationBackgroundColor = typedArrayObtainStyledAttributes.getColor(3, -3355444);
            this.textColor = typedArrayObtainStyledAttributes.getColor(4, this.mTextView.getCurrentTextColor());
            this.circleBackgroundColor = typedArrayObtainStyledAttributes.getColor(0, 0);
            this.circleBorderColor = typedArrayObtainStyledAttributes.getColor(1, -3355444);
            typedArrayObtainStyledAttributes.recycle();
            this.mImageView.setImageResource(this.image);
            this.width = 0.0f;
            try {
                this.width = DimensionConverter.stringToDimension(attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "layout_width"), getContext().getResources().getDisplayMetrics());
            } catch (Exception unused) {
                int attributeResourceValue = attributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "layout_width", -1);
                if (attributeResourceValue != -1) {
                    this.width = getResources().getDimension(attributeResourceValue);
                }
            }
            float f = this.width / 2.0f;
            int iSqrt = ((int) (((double) f) - (((double) (f / 2.0f)) * Math.sqrt(2.0d)))) + 2;
            this.mImageView.setPadding(iSqrt, iSqrt, iSqrt, iSqrt);
            setNotificationBackgroundColor(this.notificationBackgroundColor);
            this.mTextView.setTextColor(this.textColor);
            setCircleBackgroundColor(this.circleBackgroundColor);
            setCircleBorderColor(this.circleBorderColor);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public void setNotificationBackgroundColor(int i) {
        ((GradientDrawable) this.mNotificationCountLayout.getBackground()).setColor(i);
    }

    public void setCircleBorderColor(int i) {
        ((GradientDrawable) this.mImageView.getBackground()).setStroke(3, i);
    }

    public void setCircleBackgroundColor(int i) {
        ((GradientDrawable) this.mImageView.getBackground()).setColor(i);
    }

    public void setImageResource(int i) {
        this.mImageView.setImageResource(i);
    }
}

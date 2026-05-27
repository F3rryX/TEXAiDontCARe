package com.texa.careapp.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.texa.care.R;
import com.texa.carelib.communication.Commands;

/* JADX INFO: loaded from: classes2.dex */
public class EmergencyButton extends RelativeLayout {
    final String SUBTITLE_SAMPLE;
    final String TITLE_SAMPLE;
    private LinearLayout container;
    private ImageView image;
    private boolean isEnable;
    private TextView subTitle;
    private TextView title;
    private LinearLayout txtContainer;

    public EmergencyButton(Context context) {
        super(context);
        this.TITLE_SAMPLE = "";
        this.SUBTITLE_SAMPLE = "";
        this.isEnable = true;
        LayoutInflater.from(context).inflate(R.layout.button_emergency_layout, this);
    }

    public EmergencyButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.TITLE_SAMPLE = "";
        this.SUBTITLE_SAMPLE = "";
        this.isEnable = true;
        initView(context);
        setValues(context, attributeSet);
    }

    public EmergencyButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.TITLE_SAMPLE = "";
        this.SUBTITLE_SAMPLE = "";
        this.isEnable = true;
        initView(context);
        setValues(context, attributeSet);
    }

    private void initView(Context context) {
        LayoutInflater.from(context).inflate(R.layout.button_emergency_layout, this);
        this.title = (TextView) findViewById(R.id.textView_emergencyTitle);
        this.subTitle = (TextView) findViewById(R.id.textView_emergencySubTitle);
        this.image = (ImageView) findViewById(R.id.imageView_emergencyButton);
        this.container = (LinearLayout) findViewById(R.id.layout_emergencyButton);
        this.txtContainer = (LinearLayout) findViewById(R.id.containerTextView_emergency);
    }

    private void setValues(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = null;
        try {
            typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.texa.careapp.R.styleable.EmergencyButton, 0, 0);
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(2, com.texa.careapp.R.drawable.ic_placeholder);
            int color = typedArrayObtainStyledAttributes.getColor(1, 0);
            int color2 = typedArrayObtainStyledAttributes.getColor(3, -1);
            String string = typedArrayObtainStyledAttributes.getString(5);
            String string2 = typedArrayObtainStyledAttributes.getString(4);
            boolean z = typedArrayObtainStyledAttributes.getBoolean(0, true);
            typedArrayObtainStyledAttributes.recycle();
            setImage(resourceId);
            setBackgroundColor(color);
            this.title.setTextColor(color2);
            this.subTitle.setTextColor(color2);
            if (string != null) {
                setTitle(string);
            } else {
                setTitle("");
            }
            if (string2 != null) {
                setSubTitle(string2);
            } else {
                setSubTitle("");
            }
            enableIcon(z);
            this.container.setOnTouchListener(new View.OnTouchListener() { // from class: com.texa.careapp.views.EmergencyButton$$ExternalSyntheticLambda0
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return this.f$0.m675lambda$setValues$0$comtexacareappviewsEmergencyButton(view, motionEvent);
                }
            });
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* JADX INFO: renamed from: lambda$setValues$0$com-texa-careapp-views-EmergencyButton, reason: not valid java name */
    public /* synthetic */ boolean m675lambda$setValues$0$comtexacareappviewsEmergencyButton(View view, MotionEvent motionEvent) {
        if (!this.isEnable) {
            return false;
        }
        if (motionEvent.getAction() == 0) {
            this.container.getBackground().setAlpha(Commands.GetStatus);
            return true;
        }
        if (motionEvent.getAction() == 1) {
            this.container.getBackground().setAlpha(255);
            super.performClick();
            return true;
        }
        if (motionEvent.getAction() != 3) {
            return false;
        }
        this.container.getBackground().setAlpha(255);
        return true;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        ((GradientDrawable) this.container.getBackground()).setColor(i);
    }

    public void enableIcon(boolean z) {
        if (z) {
            this.image.setVisibility(0);
        } else {
            this.image.setVisibility(8);
        }
    }

    public void setEnableView(boolean z) {
        this.isEnable = z;
    }

    public void setTitle(String str) {
        if (!str.equals("")) {
            this.title.setText(str.toUpperCase());
            this.title.setVisibility(0);
        } else {
            this.title.setVisibility(8);
        }
    }

    public void setSubTitle(String str) {
        if (!str.equals("")) {
            this.subTitle.setText(str.toLowerCase());
            this.subTitle.setVisibility(0);
        } else {
            this.subTitle.setVisibility(8);
        }
    }

    public void setImage(int i) {
        this.image.setImageResource(i);
    }
}

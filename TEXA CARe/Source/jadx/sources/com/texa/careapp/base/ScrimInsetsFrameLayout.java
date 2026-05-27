package com.texa.careapp.base;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import com.texa.careapp.R;

/* JADX INFO: loaded from: classes2.dex */
public class ScrimInsetsFrameLayout extends FrameLayout {
    private Drawable mInsetForeground;
    private Rect mInsets;
    private Rect mTempRect;

    public ScrimInsetsFrameLayout(Context context) {
        super(context);
        this.mTempRect = new Rect();
        init(context, null, 0);
    }

    public ScrimInsetsFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTempRect = new Rect();
        init(context, attributeSet, 0);
    }

    public ScrimInsetsFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mTempRect = new Rect();
        init(context, attributeSet, i);
    }

    private void init(Context context, AttributeSet attributeSet, int i) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ScrimInsetsView, i, 0);
        if (typedArrayObtainStyledAttributes == null) {
            return;
        }
        this.mInsetForeground = typedArrayObtainStyledAttributes.getDrawable(0);
        typedArrayObtainStyledAttributes.recycle();
        setWillNotDraw(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
        Rect rect = new Rect();
        this.mInsets = rect;
        rect.bottom = windowInsets.getSystemWindowInsetBottom();
        this.mInsets.top = windowInsets.getSystemWindowInsetTop();
        this.mInsets.left = windowInsets.getSystemWindowInsetLeft();
        this.mInsets.right = windowInsets.getSystemWindowInsetRight();
        setWillNotDraw(this.mInsetForeground == null);
        ViewCompat.postInvalidateOnAnimation(this);
        return windowInsets;
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        if (Build.VERSION.SDK_INT < 20) {
            this.mInsets = new Rect(rect);
            setWillNotDraw(this.mInsetForeground == null);
            ViewCompat.postInvalidateOnAnimation(this);
            return true;
        }
        return super.fitSystemWindows(rect);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.mInsets == null || this.mInsetForeground == null) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(getScrollX(), getScrollY());
        this.mTempRect.set(0, 0, width, this.mInsets.top);
        this.mInsetForeground.setBounds(this.mTempRect);
        this.mInsetForeground.draw(canvas);
        this.mTempRect.set(0, height - this.mInsets.bottom, width, height);
        this.mInsetForeground.setBounds(this.mTempRect);
        this.mInsetForeground.draw(canvas);
        this.mTempRect.set(0, this.mInsets.top, this.mInsets.left, height - this.mInsets.bottom);
        this.mInsetForeground.setBounds(this.mTempRect);
        this.mInsetForeground.draw(canvas);
        this.mTempRect.set(width - this.mInsets.right, this.mInsets.top, width, height - this.mInsets.bottom);
        this.mInsetForeground.setBounds(this.mTempRect);
        this.mInsetForeground.draw(canvas);
        canvas.restoreToCount(iSave);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = this.mInsetForeground;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = this.mInsetForeground;
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }
}

package com.texa.careapp.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.viewpager.widget.ViewPager;

/* JADX INFO: loaded from: classes2.dex */
public class ControlledViewPager extends ViewPager {
    private boolean canScroll;

    public ControlledViewPager(Context context) {
        super(context);
        this.canScroll = true;
    }

    public ControlledViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.canScroll = true;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return !this.canScroll || super.onTouchEvent(motionEvent);
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void setCanScroll(boolean z) {
        this.canScroll = z;
    }

    public boolean canScroll() {
        return this.canScroll;
    }
}

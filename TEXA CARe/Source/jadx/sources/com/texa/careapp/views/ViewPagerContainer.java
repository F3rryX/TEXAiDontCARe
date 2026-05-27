package com.texa.careapp.views;

import android.content.Context;
import android.graphics.Point;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import androidx.viewpager.widget.ViewPager;

/* JADX INFO: loaded from: classes2.dex */
public class ViewPagerContainer extends FrameLayout implements ViewPager.OnPageChangeListener {
    private Point mCenter;
    private Point mInitialTouch;
    boolean mNeedsRedraw;
    private ViewPager mPager;

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i) {
    }

    public ViewPagerContainer(Context context) {
        super(context);
        this.mNeedsRedraw = false;
        this.mCenter = new Point();
        this.mInitialTouch = new Point();
        init();
    }

    public ViewPagerContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mNeedsRedraw = false;
        this.mCenter = new Point();
        this.mInitialTouch = new Point();
        init();
    }

    public ViewPagerContainer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mNeedsRedraw = false;
        this.mCenter = new Point();
        this.mInitialTouch = new Point();
        init();
    }

    private void init() {
        setClipChildren(false);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        try {
            ViewPager viewPager = (ViewPager) getChildAt(0);
            this.mPager = viewPager;
            viewPager.addOnPageChangeListener(this);
        } catch (Exception unused) {
            throw new IllegalStateException("The root child of PagerContainer must be a ViewPager");
        }
    }

    public ViewPager getViewPager() {
        return this.mPager;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        this.mCenter.x = i / 2;
        this.mCenter.y = i2 / 2;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.mInitialTouch.x = (int) motionEvent.getX();
            this.mInitialTouch.y = (int) motionEvent.getY();
        }
        motionEvent.offsetLocation(this.mCenter.x - this.mInitialTouch.x, this.mCenter.y - this.mInitialTouch.y);
        return this.mPager.dispatchTouchEvent(motionEvent);
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
        if (this.mNeedsRedraw) {
            invalidate();
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
        this.mNeedsRedraw = i != 0;
    }
}

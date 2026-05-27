package com.texa.careapp.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.viewpager.widget.ViewPager;
import com.texa.careapp.R;

/* JADX INFO: loaded from: classes2.dex */
public class ArrowViewPagerIndicator extends LinearLayout {
    private ImageView mLeftArrow;
    private ImageView mRightArrow;
    private ControlledViewPager mViewPager;

    public ArrowViewPagerIndicator(Context context) {
        super(context);
        init(context);
    }

    public ArrowViewPagerIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    private void init(Context context) {
        setOrientation(0);
        this.mLeftArrow = new ImageView(context);
        this.mRightArrow = new ImageView(context);
        setArrowIndicatorRes(R.drawable.ic_arrow_left, R.drawable.ic_arrow_right);
    }

    private void setParams() {
        setGravity(16);
    }

    public void bind(ControlledViewPager controlledViewPager) {
        this.mViewPager = controlledViewPager;
        this.mLeftArrow.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.views.ArrowViewPagerIndicator$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m666lambda$bind$0$comtexacareappviewsArrowViewPagerIndicator(view);
            }
        });
        this.mRightArrow.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.views.ArrowViewPagerIndicator$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m667lambda$bind$1$comtexacareappviewsArrowViewPagerIndicator(view);
            }
        });
        this.mViewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.texa.careapp.views.ArrowViewPagerIndicator.1
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f, int i2) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
                ArrowViewPagerIndicator.this.handleVisibility();
            }
        });
        arrange();
    }

    /* JADX INFO: renamed from: lambda$bind$0$com-texa-careapp-views-ArrowViewPagerIndicator, reason: not valid java name */
    public /* synthetic */ void m666lambda$bind$0$comtexacareappviewsArrowViewPagerIndicator(View view) {
        if (isFirstPage()) {
            return;
        }
        ControlledViewPager controlledViewPager = this.mViewPager;
        controlledViewPager.setCurrentItem(controlledViewPager.getCurrentItem() - 1, true);
    }

    /* JADX INFO: renamed from: lambda$bind$1$com-texa-careapp-views-ArrowViewPagerIndicator, reason: not valid java name */
    public /* synthetic */ void m667lambda$bind$1$comtexacareappviewsArrowViewPagerIndicator(View view) {
        if (isLastPage()) {
            return;
        }
        ControlledViewPager controlledViewPager = this.mViewPager;
        controlledViewPager.setCurrentItem(controlledViewPager.getCurrentItem() + 1, true);
    }

    public void handleVisibility() {
        if (isFirstPage() || !this.mViewPager.canScroll()) {
            this.mLeftArrow.setVisibility(4);
        } else {
            this.mLeftArrow.setVisibility(0);
        }
        if (isLastPage() || !this.mViewPager.canScroll()) {
            this.mRightArrow.setVisibility(4);
        } else {
            this.mRightArrow.setVisibility(0);
        }
    }

    private void arrange() {
        setParams();
        View childAt = getChildAt(0);
        removeViewAt(0);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
        layoutParams.weight = 1.0f;
        childAt.setLayoutParams(layoutParams);
        addView(this.mLeftArrow);
        addView(childAt);
        addView(this.mRightArrow);
        handleVisibility();
    }

    private boolean isLastPage() {
        return this.mViewPager.getCurrentItem() == this.mViewPager.getAdapter().getCount() - 1;
    }

    private boolean isFirstPage() {
        return this.mViewPager.getCurrentItem() == 0;
    }

    public void setArrowIndicatorRes(int i, int i2) {
        this.mLeftArrow.setImageResource(i);
        this.mRightArrow.setImageResource(i2);
    }
}

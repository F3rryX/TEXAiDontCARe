package com.texa.careapp.views;

import android.R;
import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.texa.careapp.Constants;

/* JADX INFO: loaded from: classes2.dex */
public class SlidingTabLayout extends HorizontalScrollView {
    private static final int TAB_VIEW_PADDING_DIPS = 14;
    private static final int TAB_VIEW_TEXT_SIZE_DIPS = 16;
    private static final int TITLE_OFFSET_DIPS = 24;
    private SparseArray<String> mContentDescriptions;
    private boolean mDistributeEvenly;
    private Typeface mFontLight;
    private final SlidingTabStrip mTabStrip;
    private int mTabViewLayoutId;
    private int mTabViewTextViewId;
    private int mTitleOffset;
    private ViewPager mViewPager;
    private ViewPager.OnPageChangeListener mViewPagerPageChangeListener;

    public interface TabColorizer {
        int getIndicatorColor(int i);
    }

    public SlidingTabLayout(Context context) {
        this(context, null);
    }

    public SlidingTabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingTabLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mContentDescriptions = new SparseArray<>();
        setHorizontalScrollBarEnabled(false);
        setFillViewport(true);
        this.mTitleOffset = (int) (getResources().getDisplayMetrics().density * 24.0f);
        SlidingTabStrip slidingTabStrip = new SlidingTabStrip(context);
        this.mTabStrip = slidingTabStrip;
        addView(slidingTabStrip, -1, -2);
    }

    public void setCustomTabColorizer(TabColorizer tabColorizer) {
        this.mTabStrip.setCustomTabColorizer(tabColorizer);
    }

    public void setDistributeEvenly(boolean z) {
        this.mDistributeEvenly = z;
    }

    public void setSelectedIndicatorColors(int... iArr) {
        this.mTabStrip.setSelectedIndicatorColors(iArr);
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.mViewPagerPageChangeListener = onPageChangeListener;
    }

    public void setCustomTabView(int i, int i2) {
        this.mTabViewLayoutId = i;
        this.mTabViewTextViewId = i2;
    }

    public void setViewPager(ViewPager viewPager) {
        this.mTabStrip.removeAllViews();
        this.mViewPager = viewPager;
        if (viewPager != null) {
            viewPager.addOnPageChangeListener(new InternalViewPagerListener());
            populateTabStrip();
        }
    }

    protected TextView createDefaultTabView(Context context) {
        TextView textView = new TextView(context);
        textView.setGravity(17);
        textView.setTextSize(1, 16.0f);
        textView.setTypeface(Constants.TYPEFACE_DEFAULT);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        TypedValue typedValue = new TypedValue();
        getContext().getTheme().resolveAttribute(R.attr.selectableItemBackground, typedValue, true);
        textView.setBackgroundResource(typedValue.resourceId);
        textView.setAllCaps(true);
        int i = (int) (getResources().getDisplayMetrics().density * 14.0f);
        textView.setPadding(i, i, i, i);
        this.mFontLight = ResourcesCompat.getFont(context, com.texa.care.R.font.font_light);
        return textView;
    }

    private void populateTabStrip() {
        View viewCreateDefaultTabView;
        TextView textView;
        PagerAdapter adapter = this.mViewPager.getAdapter();
        TabClickListener tabClickListener = new TabClickListener();
        for (int i = 0; i < adapter.getCount(); i++) {
            if (this.mTabViewLayoutId != 0) {
                viewCreateDefaultTabView = LayoutInflater.from(getContext()).inflate(this.mTabViewLayoutId, (ViewGroup) this.mTabStrip, false);
                textView = (TextView) viewCreateDefaultTabView.findViewById(this.mTabViewTextViewId);
            } else {
                viewCreateDefaultTabView = null;
                textView = null;
            }
            if (viewCreateDefaultTabView == null) {
                viewCreateDefaultTabView = createDefaultTabView(getContext());
            }
            if (textView == null && TextView.class.isInstance(viewCreateDefaultTabView)) {
                textView = (TextView) viewCreateDefaultTabView;
            }
            if (this.mDistributeEvenly) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewCreateDefaultTabView.getLayoutParams();
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
            }
            textView.setTypeface(this.mFontLight);
            textView.setText(adapter.getPageTitle(i));
            textView.setTextColor(getContext().getResources().getColorStateList(com.texa.care.R.color.tab_text_color));
            viewCreateDefaultTabView.setOnClickListener(tabClickListener);
            String str = this.mContentDescriptions.get(i, null);
            if (str != null) {
                viewCreateDefaultTabView.setContentDescription(str);
            }
            this.mTabStrip.addView(viewCreateDefaultTabView);
            if (i == this.mViewPager.getCurrentItem()) {
                viewCreateDefaultTabView.setSelected(true);
            }
        }
    }

    public void setContentDescription(int i, String str) {
        this.mContentDescriptions.put(i, str);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewPager viewPager = this.mViewPager;
        if (viewPager != null) {
            scrollToTab(viewPager.getCurrentItem(), 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scrollToTab(int i, int i2) {
        View childAt;
        int childCount = this.mTabStrip.getChildCount();
        if (childCount == 0 || i < 0 || i >= childCount || (childAt = this.mTabStrip.getChildAt(i)) == null) {
            return;
        }
        int left = childAt.getLeft() + i2;
        if (i > 0 || i2 > 0) {
            left -= this.mTitleOffset;
        }
        scrollTo(left, 0);
    }

    private class InternalViewPagerListener implements ViewPager.OnPageChangeListener {
        private int mScrollState;

        private InternalViewPagerListener() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
            int childCount = SlidingTabLayout.this.mTabStrip.getChildCount();
            if (childCount == 0 || i < 0 || i >= childCount) {
                return;
            }
            SlidingTabLayout.this.mTabStrip.onViewPagerPageChanged(i, f);
            SlidingTabLayout.this.scrollToTab(i, SlidingTabLayout.this.mTabStrip.getChildAt(i) != null ? (int) (r0.getWidth() * f) : 0);
            if (SlidingTabLayout.this.mViewPagerPageChangeListener != null) {
                SlidingTabLayout.this.mViewPagerPageChangeListener.onPageScrolled(i, f, i2);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            this.mScrollState = i;
            if (SlidingTabLayout.this.mViewPagerPageChangeListener != null) {
                SlidingTabLayout.this.mViewPagerPageChangeListener.onPageScrollStateChanged(i);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            if (this.mScrollState == 0) {
                SlidingTabLayout.this.mTabStrip.onViewPagerPageChanged(i, 0.0f);
                SlidingTabLayout.this.scrollToTab(i, 0);
            }
            int i2 = 0;
            while (i2 < SlidingTabLayout.this.mTabStrip.getChildCount()) {
                SlidingTabLayout.this.mTabStrip.getChildAt(i2).setSelected(i == i2);
                i2++;
            }
            if (SlidingTabLayout.this.mViewPagerPageChangeListener != null) {
                SlidingTabLayout.this.mViewPagerPageChangeListener.onPageSelected(i);
            }
        }
    }

    private class TabClickListener implements View.OnClickListener {
        private TabClickListener() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            for (int i = 0; i < SlidingTabLayout.this.mTabStrip.getChildCount(); i++) {
                if (view == SlidingTabLayout.this.mTabStrip.getChildAt(i)) {
                    SlidingTabLayout.this.mViewPager.setCurrentItem(i);
                    return;
                }
            }
        }
    }
}

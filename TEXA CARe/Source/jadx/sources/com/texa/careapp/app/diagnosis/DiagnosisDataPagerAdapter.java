package com.texa.careapp.app.diagnosis;

import android.content.Context;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.texa.care.R;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.diagnosis.tab.errorDTC.ErrorDTCListView;
import com.texa.careapp.app.diagnosis.tab.errorDTC.ErrorDTCViewPresenter;
import com.texa.careapp.app.diagnosis.tab.parameters.ParametersView;
import com.texa.careapp.app.diagnosis.tab.parameters.ParametersViewPresenterV2;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;

/* JADX INFO: loaded from: classes2.dex */
public class DiagnosisDataPagerAdapter extends PagerAdapter {
    public static final int PAGE_LAMPS = 0;
    public static final int PAGE_PARAMS = 1;
    public static final String PAGE_PARAM_FLAG = "PAGE_PARAM_FLAG";
    private final CareApplication.ApplicationComponent mComponent;

    @Inject
    protected Context mContext;
    private ViewPager mViewPager;
    private final List<View> mDiscardedViews = new ArrayList();
    private final SparseArray<View> mBindedViews = new SparseArray<>();
    private int[] titles = {R.string.diagnosis_tab_1, R.string.diagnosis_tab_2};

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return 2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object obj) {
        return -2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return obj == view;
    }

    public DiagnosisDataPagerAdapter(CareApplication.ApplicationComponent applicationComponent) {
        applicationComponent.inject(this);
        this.mComponent = applicationComponent;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        View viewDisplayLampsPage;
        if (i == 0) {
            viewDisplayLampsPage = displayLampsPage(viewGroup);
        } else {
            viewDisplayLampsPage = i != 1 ? null : displayParamsPage(viewGroup);
        }
        if (viewDisplayLampsPage != null) {
            this.mBindedViews.append(i, viewDisplayLampsPage);
            viewGroup.addView(viewDisplayLampsPage, 0);
        }
        return viewDisplayLampsPage;
    }

    private View displayParamsPage(ViewGroup viewGroup) {
        ParametersView parametersView = new ParametersView(viewGroup.getContext());
        parametersView.setPresenter(new ParametersViewPresenterV2(this.mComponent));
        return parametersView;
    }

    private View displayLampsPage(ViewGroup viewGroup) {
        ErrorDTCListView errorDTCListView = new ErrorDTCListView(viewGroup.getContext(), DiagnosisType.STANDARD);
        errorDTCListView.setPresenter(new ErrorDTCViewPresenter(this.mComponent, this));
        return errorDTCListView;
    }

    void goToPage(int i) {
        getViewPager().setCurrentItem(i, true);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        View view = this.mBindedViews.get(i);
        if (view != null) {
            this.mDiscardedViews.add(view);
            this.mBindedViews.remove(i);
            viewGroup.removeView(view);
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public CharSequence getPageTitle(int i) {
        return this.mContext.getString(this.titles[i]);
    }

    protected RecyclerView.LayoutManager getLayoutManager() {
        return new GridLayoutManager(this.mContext, 1, 1, false);
    }

    public ViewPager getViewPager() {
        return this.mViewPager;
    }

    public void setViewPager(ViewPager viewPager) {
        this.mViewPager = viewPager;
    }
}

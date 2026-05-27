package com.texa.careapp.app.ecodriving.hint;

import android.content.Context;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.PagerAdapter;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.ecodriving.model.HintModel;
import com.texa.careapp.utils.EcoDrivingUtils;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;

/* JADX INFO: loaded from: classes2.dex */
public class EcoDrivingHintAdapter extends PagerAdapter {
    List<Integer> colors;
    private final CareApplication.ApplicationComponent mComponent;

    @Inject
    protected Context mContext;
    List<HintModel> tips;
    final List<HintView> mDiscardedViews = new ArrayList();
    final SparseArray<HintView> mBindedViews = new SparseArray<>();

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object obj) {
        return -2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return obj == view;
    }

    public EcoDrivingHintAdapter(CareApplication.ApplicationComponent applicationComponent, List<HintModel> list) {
        applicationComponent.inject(this);
        this.mComponent = applicationComponent;
        this.tips = list;
        this.colors = EcoDrivingUtils.getRandomHintColor(this.mContext);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.tips.size();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        HintView hintViewDisplayHint = displayHint(viewGroup, i);
        if (hintViewDisplayHint != null) {
            this.mBindedViews.append(i, hintViewDisplayHint);
            viewGroup.addView(hintViewDisplayHint, 0);
        }
        return hintViewDisplayHint;
    }

    private HintView displayHint(ViewGroup viewGroup, int i) {
        HintView hintView = new HintView(viewGroup.getContext());
        hintView.setPresenter(new HintPresenter(this.mComponent, this.tips.get(i), i, getCount(), this.colors.get(i).intValue()));
        return hintView;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        HintView hintView = this.mBindedViews.get(i);
        if (hintView != null) {
            this.mDiscardedViews.add(hintView);
            this.mBindedViews.remove(i);
            viewGroup.removeView(hintView);
        }
    }
}

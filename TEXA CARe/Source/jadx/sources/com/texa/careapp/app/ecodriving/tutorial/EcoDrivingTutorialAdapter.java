package com.texa.careapp.app.ecodriving.tutorial;

import android.content.Context;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.PagerAdapter;
import com.texa.careapp.CareApplication;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;

/* JADX INFO: loaded from: classes2.dex */
public class EcoDrivingTutorialAdapter extends PagerAdapter {
    private List<TutorialItem> items;
    private final CareApplication.ApplicationComponent mComponent;

    @Inject
    protected Context mContext;
    private final List<TutorialView> mDiscardedViews = new ArrayList();
    private final SparseArray<TutorialView> mBindedViews = new SparseArray<>();

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object obj) {
        return -2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return obj == view;
    }

    EcoDrivingTutorialAdapter(CareApplication.ApplicationComponent applicationComponent, List<TutorialItem> list) {
        applicationComponent.inject(this);
        this.mComponent = applicationComponent;
        this.items = list;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.items.size();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        TutorialView tutorialViewDisplayPage = displayPage(viewGroup, i);
        if (tutorialViewDisplayPage != null) {
            this.mBindedViews.append(i, tutorialViewDisplayPage);
            viewGroup.addView(tutorialViewDisplayPage, 0);
        }
        return tutorialViewDisplayPage;
    }

    private TutorialView displayPage(ViewGroup viewGroup, int i) {
        TutorialView tutorialView = new TutorialView(viewGroup.getContext());
        tutorialView.setPresenter(new TutorialPresenter(this.items.get(i)));
        return tutorialView;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        TutorialView tutorialView = this.mBindedViews.get(i);
        if (tutorialView != null) {
            this.mDiscardedViews.add(tutorialView);
            this.mBindedViews.remove(i);
            viewGroup.removeView(tutorialView);
        }
    }
}

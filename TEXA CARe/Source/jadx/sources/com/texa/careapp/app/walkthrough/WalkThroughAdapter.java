package com.texa.careapp.app.walkthrough;

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
public class WalkThroughAdapter extends PagerAdapter {
    private final CareApplication.ApplicationComponent mComponent;

    @Inject
    protected Context mContext;
    private List<WalkthroughModel> mWalkthroughModels;
    private final List<WalkthroughView> mDiscardedViews = new ArrayList();
    private final SparseArray<WalkthroughView> mBindedViews = new SparseArray<>();

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object obj) {
        return -2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return obj == view;
    }

    WalkThroughAdapter(CareApplication.ApplicationComponent applicationComponent, List<WalkthroughModel> list) {
        applicationComponent.inject(this);
        this.mComponent = applicationComponent;
        this.mWalkthroughModels = list;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.mWalkthroughModels.size();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        WalkthroughView walkthroughViewDisplayHint = displayHint(viewGroup, i);
        if (walkthroughViewDisplayHint != null) {
            this.mBindedViews.append(i, walkthroughViewDisplayHint);
            viewGroup.addView(walkthroughViewDisplayHint, 0);
        }
        return walkthroughViewDisplayHint;
    }

    private WalkthroughView displayHint(ViewGroup viewGroup, int i) {
        WalkthroughView walkthroughView = new WalkthroughView(viewGroup.getContext());
        walkthroughView.setPresenter(new WalkthroughPresenter(this.mComponent, this.mWalkthroughModels.get(i)));
        return walkthroughView;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        WalkthroughView walkthroughView = this.mBindedViews.get(i);
        if (walkthroughView != null) {
            this.mDiscardedViews.add(walkthroughView);
            this.mBindedViews.remove(i);
            viewGroup.removeView(walkthroughView);
        }
    }
}

package com.texa.careapp.app.permission;

import android.content.Context;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.PagerAdapter;
import com.texa.careapp.CareApplication;
import com.texa.careapp.utils.permission.CorePermission;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;

/* JADX INFO: loaded from: classes2.dex */
public class PermissionAdapter extends PagerAdapter {
    private final PermissionActivity mActivity;
    private final CareApplication.ApplicationComponent mComponent;

    @Inject
    protected Context mContext;
    private List<PermissionModel> mPermissionModels;
    private final List<View> mDiscardedViews = new ArrayList();
    private final SparseArray<View> mBindedViews = new SparseArray<>();

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object obj) {
        return -2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return obj == view;
    }

    PermissionAdapter(PermissionActivity permissionActivity, CareApplication.ApplicationComponent applicationComponent, List<PermissionModel> list) {
        applicationComponent.inject(this);
        this.mComponent = applicationComponent;
        this.mPermissionModels = list;
        this.mActivity = permissionActivity;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.mPermissionModels.size();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        View viewDisplayHint;
        PermissionModel permissionModel = this.mPermissionModels.get(i);
        if (permissionModel.getPermissionType() != null && permissionModel.getPermissionType().equals(CorePermission.USE_ACCESS_BACKGROUND_LOCATION)) {
            viewDisplayHint = displayBackground(this.mActivity, viewGroup, i);
        } else if (permissionModel.getPermissionType() != null && permissionModel.getPermissionType().equals(CorePermission.DRAW_OVERLAY)) {
            viewDisplayHint = displayOverlayPermission(this.mActivity, viewGroup, i);
        } else {
            viewDisplayHint = displayHint(this.mActivity, viewGroup, i);
        }
        this.mBindedViews.append(i, viewDisplayHint);
        viewGroup.addView(viewDisplayHint, 0);
        return viewDisplayHint;
    }

    private PermissionView displayHint(PermissionActivity permissionActivity, ViewGroup viewGroup, int i) {
        PermissionView permissionView = new PermissionView(viewGroup.getContext());
        permissionView.setPresenter(new PermissionPresenter(permissionActivity, this.mComponent, this.mPermissionModels.get(i)));
        return permissionView;
    }

    private PermissionBackgroundLocationView displayBackground(PermissionActivity permissionActivity, ViewGroup viewGroup, int i) {
        PermissionBackgroundLocationView permissionBackgroundLocationView = new PermissionBackgroundLocationView(viewGroup.getContext());
        permissionBackgroundLocationView.setPresenter(new PermissionPresenter(permissionActivity, this.mComponent, this.mPermissionModels.get(i)));
        return permissionBackgroundLocationView;
    }

    private PermissionDrawOverlayView displayOverlayPermission(PermissionActivity permissionActivity, ViewGroup viewGroup, int i) {
        PermissionDrawOverlayView permissionDrawOverlayView = new PermissionDrawOverlayView(viewGroup.getContext());
        permissionDrawOverlayView.setPresenter(new PermissionPresenter(permissionActivity, this.mComponent, this.mPermissionModels.get(i)));
        return permissionDrawOverlayView;
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

    int getSkipTextRes(int i) {
        return this.mPermissionModels.get(i).getSkipBtnRes();
    }

    boolean getIsMandatory(int i) {
        return this.mPermissionModels.get(i).isMandatory();
    }
}

package com.texa.care.navigation;

import android.os.Bundle;
import androidx.fragment.app.Fragment;

/* JADX INFO: loaded from: classes.dex */
public final class NavigatorDataFragment extends Fragment {
    public static final String TAG = "NavigatorDataFragment";
    private Navigator mNavigator;

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setRetainInstance(true);
    }

    public Navigator getNavigator() {
        return this.mNavigator;
    }

    public void setNavigator(Navigator navigator) {
        this.mNavigator = navigator;
    }
}

package com.texa.care.navigation;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;

/* JADX INFO: loaded from: classes.dex */
public class NavigatorFragment extends Fragment {
    private Navigator mNavigator;
    private Screen mScreen;

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.mNavigator = Navigator.getInstanceFor(getActivity());
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Navigator navigator = this.mNavigator;
        if (navigator == null) {
            throw new IllegalStateException("mNavigator is null!");
        }
        Screen currentScreen = navigator.getCurrentScreen();
        this.mScreen = currentScreen;
        if (currentScreen == null) {
            throw new IllegalStateException("mScreen is null!");
        }
        View viewInflate = layoutInflater.inflate(currentScreen.getLayoutId(), viewGroup, false);
        this.mScreen.afterViewInjection(viewInflate);
        this.mNavigator.setChildFragmentManager(getChildFragmentManager());
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        Screen screen = this.mScreen;
        if (screen != null) {
            screen.onResume();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        Screen screen = this.mScreen;
        if (screen != null) {
            screen.onPause();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.mScreen.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        this.mScreen.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return this.mScreen.onOptionsItemSelected(menuItem);
    }
}

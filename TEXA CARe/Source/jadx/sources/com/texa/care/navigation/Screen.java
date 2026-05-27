package com.texa.care.navigation;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.fragment.app.FragmentTransaction;

/* JADX INFO: loaded from: classes.dex */
public abstract class Screen {
    private static final String TAG = "Screen";
    private Navigator mNavigator;

    public abstract void afterViewInjection(View view);

    public int getCloseTransaction() {
        return 8194;
    }

    public abstract String getId();

    public abstract int getLayoutId();

    public int getTitle() {
        return 0;
    }

    public int getTransaction() {
        return FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
    }

    public boolean onBackPressed() {
        return false;
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
    }

    public void onDestroyView() {
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return false;
    }

    public void onPause() {
    }

    public void onResume() {
    }

    protected final Context getContext() {
        return this.mNavigator.getContext();
    }

    protected final void goTo(Screen screen) {
        this.mNavigator.goTo(screen);
    }

    protected final void goBack() {
        this.mNavigator.goBack();
    }

    public String toString() {
        return getId();
    }

    public Navigator getNavigator() {
        return this.mNavigator;
    }

    public final void setNavigator(Navigator navigator) {
        this.mNavigator = navigator;
    }

    public ScreenType getType() {
        return ScreenType.DEFAULT;
    }
}

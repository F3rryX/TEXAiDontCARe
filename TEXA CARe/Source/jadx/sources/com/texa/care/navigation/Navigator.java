package com.texa.care.navigation;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.util.Log;
import androidx.appcompat.app.ActionBar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import java.util.Stack;

/* JADX INFO: loaded from: classes.dex */
public class Navigator {
    private static final String TAG = "Navigator";
    private ActionBar mActionBar;
    private Application mApplication;
    private FragmentManager mChildFragmentManager;
    private int mContainerResId;
    private NavigatorFragment mCurrentFragment;
    private FragmentManager mFragmentManager;
    private Stack<Screen> mScreens = new Stack<>();
    private DialogTransactionController dialogTxController = new DialogTransactionController();
    private DialogFullWidthTransactionController dialogFullWidthTxController = new DialogFullWidthTransactionController();

    public static Navigator getInstanceFor(Activity activity) {
        FragmentActivity fragmentActivity = (FragmentActivity) activity;
        FragmentManager supportFragmentManager = fragmentActivity.getSupportFragmentManager();
        NavigatorDataFragment navigatorDataFragment = (NavigatorDataFragment) supportFragmentManager.findFragmentByTag(NavigatorDataFragment.TAG);
        if (navigatorDataFragment == null) {
            navigatorDataFragment = new NavigatorDataFragment();
            supportFragmentManager.beginTransaction().add(navigatorDataFragment, NavigatorDataFragment.TAG).commit();
        }
        Navigator navigator = navigatorDataFragment.getNavigator();
        if (navigator == null) {
            navigator = new Navigator();
            navigatorDataFragment.setNavigator(navigator);
        }
        navigator.setFragmentManager(fragmentActivity.getSupportFragmentManager());
        navigator.setApplication(activity.getApplication());
        return navigator;
    }

    public void setActionBar(ActionBar actionBar) {
        this.mActionBar = actionBar;
    }

    public void goTo(Screen screen) {
        goTo(screen, screen.getTransaction());
    }

    public FragmentManager getFragmentManager() {
        return this.mFragmentManager;
    }

    public FragmentManager getChildFragmentManager() {
        return this.mChildFragmentManager;
    }

    public boolean goBack() {
        if (!this.dialogTxController.goBack(this.mFragmentManager) && !this.dialogFullWidthTxController.goBack(this.mFragmentManager)) {
            Screen currentScreen = getCurrentScreen();
            int closeTransaction = currentScreen != null ? currentScreen.getCloseTransaction() : 8194;
            Screen previousScreen = getPreviousScreen();
            if (previousScreen == null) {
                return false;
            }
            doFragmentTransaction(closeTransaction);
            updateTitle(previousScreen);
        }
        return true;
    }

    private void updateTitle(Screen screen) {
        if (screen == null) {
            Log.d(TAG, "screen is null!");
            return;
        }
        int title = screen.getTitle();
        ActionBar actionBar = this.mActionBar;
        if (actionBar == null || title <= 0) {
            return;
        }
        actionBar.setTitle(title);
    }

    protected Screen getPreviousScreen() {
        if (this.mScreens.isEmpty()) {
            return null;
        }
        this.mScreens.pop();
        if (this.mScreens.isEmpty()) {
            return null;
        }
        return this.mScreens.peek();
    }

    private void goTo(Screen screen, int i) {
        if (isCurrentScreen(screen)) {
            Log.d(TAG, "screen already displayed, doing nothing");
            return;
        }
        screen.setNavigator(this);
        if (screen.getType() == ScreenType.DIALOG) {
            this.dialogTxController.display(screen, this.mFragmentManager);
        } else {
            if (screen.getType() == ScreenType.DIALOG_FULL_WIDTH) {
                this.dialogFullWidthTxController.display(screen, this.mFragmentManager);
                return;
            }
            trackCurrentScreen(screen);
            doFragmentTransaction(i);
            updateTitle(screen);
        }
    }

    protected void doFragmentTransaction(int i) {
        this.mFragmentManager.beginTransaction().replace(this.mContainerResId, createNavigatorFragment()).setTransition(i).commit();
    }

    protected Fragment createNavigatorFragment() {
        NavigatorFragment navigatorFragment = new NavigatorFragment();
        this.mCurrentFragment = navigatorFragment;
        return navigatorFragment;
    }

    protected void trackCurrentScreen(Screen screen) {
        this.mScreens.push(screen);
    }

    public Screen getCurrentScreen() {
        if (this.mScreens.isEmpty()) {
            return null;
        }
        return this.mScreens.peek();
    }

    private boolean isCurrentScreen(Screen screen) {
        Screen currentScreen = getCurrentScreen();
        return currentScreen != null && (currentScreen == screen || currentScreen.getId().equals(screen.getId()));
    }

    public boolean onBackPressed() {
        Screen currentScreen = getCurrentScreen();
        return (currentScreen != null ? currentScreen.onBackPressed() : false) || goBack();
    }

    public void setFragmentManager(FragmentManager fragmentManager) {
        this.mFragmentManager = fragmentManager;
    }

    public void setChildFragmentManager(FragmentManager fragmentManager) {
        this.mChildFragmentManager = fragmentManager;
    }

    public void setContainerResId(int i) {
        this.mContainerResId = i;
    }

    public Context getContext() {
        return this.mApplication.getApplicationContext();
    }

    public Application getApplication() {
        return this.mApplication;
    }

    protected void setApplication(Application application) {
        this.mApplication = application;
    }

    public void updateTitle() {
        updateTitle(getCurrentScreen());
    }

    public Screen getCurrentDialogScreen() {
        return this.dialogTxController.getCurrentDialogScreen();
    }

    public Screen getCurrentFullWidthDialogScreen() {
        return this.dialogFullWidthTxController.getCurrentDialogScreen();
    }

    public void clearBackStack() {
        this.mScreens.clear();
    }

    public NavigatorFragment getCurrentFragment() {
        return this.mCurrentFragment;
    }
}

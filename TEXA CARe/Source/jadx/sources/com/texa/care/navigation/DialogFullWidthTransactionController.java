package com.texa.care.navigation;

import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;

/* JADX INFO: loaded from: classes.dex */
public class DialogFullWidthTransactionController {
    private static final String TAG = "DialogFullWidthTransactionController";
    private Screen mCurrentDialogScreen;

    public void display(Screen screen, FragmentManager fragmentManager) {
        this.mCurrentDialogScreen = screen;
        new NavigatorDialogFullWidthFragment().show(fragmentManager, screen.getId());
    }

    public Screen getCurrentDialogScreen() {
        return this.mCurrentDialogScreen;
    }

    public boolean goBack(FragmentManager fragmentManager) {
        Fragment fragmentFindFragmentByTag;
        Screen screen = this.mCurrentDialogScreen;
        if (screen == null || (fragmentFindFragmentByTag = fragmentManager.findFragmentByTag(screen.getId())) == null || !(fragmentFindFragmentByTag instanceof DialogFragment)) {
            return false;
        }
        ((DialogFragment) fragmentFindFragmentByTag).dismiss();
        this.mCurrentDialogScreen = null;
        return true;
    }
}

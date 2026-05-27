package com.texa.care.navigation;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;

/* JADX INFO: loaded from: classes.dex */
public class NavigatorDialogFragment extends DialogFragment {
    private static final String TAG = "NavigatorDialogFragment";
    private Navigator mNavigator;
    private Screen mScreen;

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.mNavigator = Navigator.getInstanceFor(activity);
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(bundle);
        dialogOnCreateDialog.getWindow().requestFeature(1);
        dialogOnCreateDialog.setCanceledOnTouchOutside(false);
        return dialogOnCreateDialog;
    }

    @Override // androidx.fragment.app.DialogFragment
    public void show(FragmentManager fragmentManager, String str) {
        try {
            FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
            fragmentTransactionBeginTransaction.add(this, str);
            fragmentTransactionBeginTransaction.commit();
        } catch (IllegalStateException e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Navigator navigator = this.mNavigator;
        if (navigator == null) {
            throw new IllegalStateException("mNavigator is null!");
        }
        Screen currentDialogScreen = navigator.getCurrentDialogScreen();
        this.mScreen = currentDialogScreen;
        if (currentDialogScreen == null) {
            throw new IllegalStateException("mScreen is null!");
        }
        View viewInflate = layoutInflater.inflate(currentDialogScreen.getLayoutId(), viewGroup, false);
        this.mScreen.afterViewInjection(viewInflate);
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
}

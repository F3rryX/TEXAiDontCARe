package com.texa.careapp.utils;

import android.app.Dialog;
import android.graphics.PorterDuff;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public class ProgressDialogFragment extends DialogFragment {
    private String TAG;
    private CharSequence mMessage;

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        FragmentActivity activity = getActivity();
        View viewInflate = LayoutInflater.from(activity.getApplicationContext()).inflate(R.layout.progress_dialog_layout, (ViewGroup) null);
        ((ProgressBar) viewInflate.findViewById(R.id.circle_progressBar)).getIndeterminateDrawable().setColorFilter(Utils.getColorResource(getActivity(), R.color.accent), PorterDuff.Mode.SRC_ATOP);
        Dialog dialog = new Dialog(activity);
        dialog.requestWindowFeature(1);
        dialog.setCanceledOnTouchOutside(false);
        dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        dialog.setContentView(viewInflate);
        if (!dialog.isShowing()) {
            dialog.show();
        }
        return dialog;
    }

    public void setMessage(CharSequence charSequence) {
        this.mMessage = charSequence;
    }

    @Override // androidx.fragment.app.DialogFragment
    public void show(FragmentManager fragmentManager, String str) {
        if (isAdded()) {
            Log.w(this.TAG, "Fragment is already added!");
            return;
        }
        this.TAG = str;
        try {
            FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
            fragmentTransactionBeginTransaction.add(this, str);
            fragmentTransactionBeginTransaction.commit();
        } catch (IllegalStateException e) {
            e.printStackTrace();
        }
    }
}

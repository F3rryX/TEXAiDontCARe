package com.texa.careapp.utils;

import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public class EcoDrivingProgressDialogFragment extends DialogFragment {
    private CharSequence mMessage;

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        FragmentActivity activity = getActivity();
        View viewInflate = LayoutInflater.from(activity.getApplicationContext()).inflate(R.layout.eco_driving_progress_dialog_layout, (ViewGroup) null);
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, -360.0f, 1, 0.5f, 1, 0.5f);
        rotateAnimation.setInterpolator(new LinearInterpolator());
        rotateAnimation.setDuration(1000L);
        rotateAnimation.setRepeatCount(-1);
        viewInflate.findViewById(R.id.sync_data).startAnimation(rotateAnimation);
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
}

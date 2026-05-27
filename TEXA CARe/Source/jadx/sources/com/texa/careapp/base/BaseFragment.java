package com.texa.careapp.base;

import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.texa.careapp.CareApplication;
import javax.inject.Inject;

/* JADX INFO: loaded from: classes2.dex */
public class BaseFragment extends Fragment {

    @Inject
    protected Context mContext;

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
    }

    protected final View inflateAndInject(LayoutInflater layoutInflater, ViewGroup viewGroup, int i) {
        return layoutInflater.inflate(i, viewGroup, false);
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        ((CareApplication) activity.getApplication()).component().inject(this);
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        ((CareApplication) getActivity().getApplication()).component().inject(this);
    }
}

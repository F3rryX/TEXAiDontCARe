package com.texa.careapp.utils.erratacorrige;

import android.util.Log;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ErrataCorrigeExecutor {
    private static final String TAG = "ErrataCorrigeExecutor";
    private final int mCurrentVersionCode;
    private List<ErrataCorrige> mErrataCorrigeList;

    public ErrataCorrigeExecutor(int i, List<ErrataCorrige> list) {
        this.mCurrentVersionCode = i;
        this.mErrataCorrigeList = list;
    }

    public void execute() {
        for (ErrataCorrige errataCorrige : this.mErrataCorrigeList) {
            if (this.mCurrentVersionCode < errataCorrige.minVersionCode()) {
                Log.d(TAG, "mCurrentVersionCode < errataCorrige.minVersionCode, skipping: " + errataCorrige);
            } else if (this.mCurrentVersionCode > errataCorrige.maxVersionCode()) {
                Log.d(TAG, "mCurrentVersionCode > errataCorrige.maxVersionCode, skipping: " + errataCorrige);
            } else {
                try {
                    errataCorrige.execute();
                } catch (Exception e) {
                    Log.d(TAG, "got exception while executing: " + errataCorrige, e);
                }
            }
        }
    }
}

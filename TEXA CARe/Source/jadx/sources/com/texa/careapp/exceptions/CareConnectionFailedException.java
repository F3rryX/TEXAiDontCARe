package com.texa.careapp.exceptions;

import android.content.Context;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public class CareConnectionFailedException extends Exception {
    public CareConnectionFailedException(Context context) {
        super(context.getString(R.string.error_care_connection_failed));
    }
}

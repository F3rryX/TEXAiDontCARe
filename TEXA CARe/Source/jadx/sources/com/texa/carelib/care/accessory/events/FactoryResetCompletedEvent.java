package com.texa.carelib.care.accessory.events;

import android.content.Context;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.events.ErrorEventBase;

/* JADX INFO: loaded from: classes2.dex */
public class FactoryResetCompletedEvent extends ErrorEventBase {
    private final Context mContext;

    public FactoryResetCompletedEvent(Object obj, Context context, CareError careError) {
        super(obj, careError);
        this.mContext = context;
    }

    public Context getApplicationContext() {
        return this.mContext;
    }
}

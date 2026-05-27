package com.texa.careapp.sync.jobs;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.activeandroid.query.Select;
import com.texa.careapp.CareApplication;
import com.texa.careapp.model.PurchaseData;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class PurchaseDataJob extends Worker {

    @Inject
    TexaCareApiServiceUser texaCareApiServiceUser;

    public PurchaseDataJob(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        getComponent(context).inject(this);
    }

    protected CareApplication.ApplicationComponent getComponent(Context context) {
        return ((CareApplication) context.getApplicationContext()).component();
    }

    @Override // androidx.work.Worker
    public ListenableWorker.Result doWork() {
        Timber.v("onRunTask PurchaseData", new Object[0]);
        for (PurchaseData purchaseData : new Select().from(PurchaseData.class).execute()) {
            try {
                this.texaCareApiServiceUser.sendReceiptBlocking(purchaseData).execute();
                Timber.d("sendReceiptBlocking response: %s", purchaseData);
                purchaseData.delete();
            } catch (Exception e) {
                Timber.w(e, "sendReceiptBlocking exception", new Object[0]);
                return ListenableWorker.Result.retry();
            }
        }
        return ListenableWorker.Result.success();
    }
}

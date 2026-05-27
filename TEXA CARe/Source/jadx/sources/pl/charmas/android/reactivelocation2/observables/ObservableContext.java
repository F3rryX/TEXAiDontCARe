package pl.charmas.android.reactivelocation2.observables;

import android.content.Context;
import android.os.Handler;
import pl.charmas.android.reactivelocation2.ReactiveLocationProviderConfiguration;

/* JADX INFO: loaded from: classes3.dex */
public class ObservableContext {
    private final Context context;
    private final Handler handler;
    private final boolean retryOnConnectionSuspended;

    public ObservableContext(Context context, ReactiveLocationProviderConfiguration reactiveLocationProviderConfiguration) {
        this.context = context;
        this.handler = reactiveLocationProviderConfiguration.getCustomCallbackHandler();
        this.retryOnConnectionSuspended = reactiveLocationProviderConfiguration.isRetryOnConnectionSuspended();
    }

    public Context getContext() {
        return this.context;
    }

    Handler getHandler() {
        return this.handler;
    }

    boolean isRetryOnConnectionSuspended() {
        return this.retryOnConnectionSuspended;
    }
}

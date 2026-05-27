package com.texa.careapp.checks;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import com.texa.careapp.checks.Check;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Cancellable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class CheckNetworkConnection implements Check {
    private static final String TAG = "CheckNetworkConnection";
    private Context mContext;
    private final IntentFilter mIntentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");

    @Override // com.texa.careapp.checks.Check
    public String description() {
        return "";
    }

    @Override // com.texa.careapp.checks.Check
    public void resolve() {
    }

    public CheckNetworkConnection(Context context) {
        this.mContext = context;
    }

    @Override // com.texa.careapp.checks.Check
    public Observable<Check.Result> check() {
        return networkObservable().flatMap(new Function() { // from class: com.texa.careapp.checks.CheckNetworkConnection$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m579lambda$check$0$comtexacareappchecksCheckNetworkConnection((Intent) obj);
            }
        }).startWith(checkCurrentStatus()).doOnError(new Consumer() { // from class: com.texa.careapp.checks.CheckNetworkConnection$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                CheckNetworkConnection.lambda$check$1((Throwable) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$check$0$com-texa-careapp-checks-CheckNetworkConnection, reason: not valid java name */
    public /* synthetic */ ObservableSource m579lambda$check$0$comtexacareappchecksCheckNetworkConnection(Intent intent) throws Exception {
        return Observable.just(checkCurrentStatus());
    }

    static /* synthetic */ void lambda$check$1(Throwable th) throws Exception {
        Timber.e(TAG + "NTW#check() failed ", th);
        Observable.just(Check.Result.BLOCKING);
    }

    @Override // com.texa.careapp.checks.Check
    public Check.Result checkCurrentStatus() {
        if (isNetworkAvailable()) {
            return Check.Result.OK;
        }
        return Check.Result.BLOCKING;
    }

    private Observable<Intent> networkObservable() {
        return Observable.create(new ObservableOnSubscribe() { // from class: com.texa.careapp.checks.CheckNetworkConnection$$ExternalSyntheticLambda0
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f$0.m581x6f3219c3(observableEmitter);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$networkObservable$3$com-texa-careapp-checks-CheckNetworkConnection, reason: not valid java name */
    public /* synthetic */ void m581x6f3219c3(final ObservableEmitter observableEmitter) throws Exception {
        final BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.texa.careapp.checks.CheckNetworkConnection.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                observableEmitter.onNext(intent);
            }
        };
        observableEmitter.setCancellable(new Cancellable() { // from class: com.texa.careapp.checks.CheckNetworkConnection$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Cancellable
            public final void cancel() throws Exception {
                this.f$0.m580x356777e4(broadcastReceiver);
            }
        });
        this.mContext.registerReceiver(broadcastReceiver, this.mIntentFilter);
    }

    /* JADX INFO: renamed from: lambda$networkObservable$2$com-texa-careapp-checks-CheckNetworkConnection, reason: not valid java name */
    public /* synthetic */ void m580x356777e4(BroadcastReceiver broadcastReceiver) throws Exception {
        this.mContext.unregisterReceiver(broadcastReceiver);
    }

    private boolean isNetworkAvailable() {
        return ((ConnectivityManager) this.mContext.getSystemService("connectivity")).getActiveNetworkInfo() != null;
    }
}

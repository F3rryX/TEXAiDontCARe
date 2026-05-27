package com.texa.careapp.checks;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.texa.careapp.checks.Check;
import com.texa.careapp.utils.Utils;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Cancellable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class CheckGps implements Check {
    private static final String TAG = "CheckGps";
    private Context mContext;
    private final IntentFilter mIntentFilter = new IntentFilter("android.location.PROVIDERS_CHANGED");

    @Override // com.texa.careapp.checks.Check
    public String description() {
        return "";
    }

    @Override // com.texa.careapp.checks.Check
    public void resolve() {
    }

    public CheckGps(Context context) {
        this.mContext = context;
    }

    @Override // com.texa.careapp.checks.Check
    public Observable<Check.Result> check() {
        return networkObservable().flatMap(new Function() { // from class: com.texa.careapp.checks.CheckGps$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m576lambda$check$0$comtexacareappchecksCheckGps((Intent) obj);
            }
        }).startWith(checkCurrentStatus()).doOnError(new Consumer() { // from class: com.texa.careapp.checks.CheckGps$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                CheckGps.lambda$check$1((Throwable) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$check$0$com-texa-careapp-checks-CheckGps, reason: not valid java name */
    public /* synthetic */ ObservableSource m576lambda$check$0$comtexacareappchecksCheckGps(Intent intent) throws Exception {
        return Observable.just(checkCurrentStatus());
    }

    static /* synthetic */ void lambda$check$1(Throwable th) throws Exception {
        Timber.e(TAG + "GPS#check() failed ", th);
        Observable.just(Check.Result.BLOCKING);
    }

    @Override // com.texa.careapp.checks.Check
    public Check.Result checkCurrentStatus() {
        if (Utils.isGpsAvailable(this.mContext)) {
            return Check.Result.OK;
        }
        return Check.Result.BLOCKING;
    }

    private Observable<Intent> networkObservable() {
        return Observable.create(new ObservableOnSubscribe() { // from class: com.texa.careapp.checks.CheckGps$$ExternalSyntheticLambda0
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f$0.m578lambda$networkObservable$3$comtexacareappchecksCheckGps(observableEmitter);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$networkObservable$3$com-texa-careapp-checks-CheckGps, reason: not valid java name */
    public /* synthetic */ void m578lambda$networkObservable$3$comtexacareappchecksCheckGps(final ObservableEmitter observableEmitter) throws Exception {
        final BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.texa.careapp.checks.CheckGps.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                observableEmitter.onNext(intent);
            }
        };
        observableEmitter.setCancellable(new Cancellable() { // from class: com.texa.careapp.checks.CheckGps$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Cancellable
            public final void cancel() throws Exception {
                this.f$0.m577lambda$networkObservable$2$comtexacareappchecksCheckGps(broadcastReceiver);
            }
        });
        this.mContext.registerReceiver(broadcastReceiver, this.mIntentFilter);
    }

    /* JADX INFO: renamed from: lambda$networkObservable$2$com-texa-careapp-checks-CheckGps, reason: not valid java name */
    public /* synthetic */ void m577lambda$networkObservable$2$comtexacareappchecksCheckGps(BroadcastReceiver broadcastReceiver) throws Exception {
        this.mContext.unregisterReceiver(broadcastReceiver);
    }
}

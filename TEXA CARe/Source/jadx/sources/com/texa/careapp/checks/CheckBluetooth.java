package com.texa.careapp.checks;

import android.bluetooth.BluetoothAdapter;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
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
class CheckBluetooth implements Check {
    private static final String TAG = "CheckBluetooth";
    private Context mContext;
    private BluetoothAdapter mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
    private IntentFilter filter = new IntentFilter("android.bluetooth.adapter.action.STATE_CHANGED");

    @Override // com.texa.careapp.checks.Check
    public String description() {
        return null;
    }

    @Override // com.texa.careapp.checks.Check
    public void resolve() {
    }

    CheckBluetooth(Context context) {
        this.mContext = context;
    }

    private boolean isBluetoothAvailable() {
        BluetoothAdapter bluetoothAdapter = this.mBluetoothAdapter;
        return bluetoothAdapter != null && bluetoothAdapter.isEnabled();
    }

    @Override // com.texa.careapp.checks.Check
    public Check.Result checkCurrentStatus() {
        if (isBluetoothAvailable()) {
            return Check.Result.OK;
        }
        return Check.Result.WARNING;
    }

    @Override // com.texa.careapp.checks.Check
    public Observable<Check.Result> check() {
        return bluetoothObservable().flatMap(new Function() { // from class: com.texa.careapp.checks.CheckBluetooth$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.m574lambda$check$0$comtexacareappchecksCheckBluetooth((Intent) obj);
            }
        }).startWith(checkCurrentStatus()).doOnError(new Consumer() { // from class: com.texa.careapp.checks.CheckBluetooth$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                CheckBluetooth.lambda$check$1((Throwable) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$check$0$com-texa-careapp-checks-CheckBluetooth, reason: not valid java name */
    public /* synthetic */ ObservableSource m574lambda$check$0$comtexacareappchecksCheckBluetooth(Intent intent) throws Exception {
        return Observable.just(checkCurrentStatus());
    }

    static /* synthetic */ void lambda$check$1(Throwable th) throws Exception {
        Timber.e(TAG + "BT#check() failed ", th);
        Observable.just(Check.Result.WARNING);
    }

    private Observable<Intent> bluetoothObservable() {
        return Observable.create(new ObservableOnSubscribe() { // from class: com.texa.careapp.checks.CheckBluetooth$$ExternalSyntheticLambda0
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f$0.m573x73578c05(observableEmitter);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$bluetoothObservable$3$com-texa-careapp-checks-CheckBluetooth, reason: not valid java name */
    public /* synthetic */ void m573x73578c05(final ObservableEmitter observableEmitter) throws Exception {
        final BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.texa.careapp.checks.CheckBluetooth.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                observableEmitter.onNext(intent);
            }
        };
        observableEmitter.setCancellable(new Cancellable() { // from class: com.texa.careapp.checks.CheckBluetooth$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Cancellable
            public final void cancel() throws Exception {
                this.f$0.m572x1c399b26(broadcastReceiver);
            }
        });
        this.mContext.registerReceiver(broadcastReceiver, this.filter);
    }

    /* JADX INFO: renamed from: lambda$bluetoothObservable$2$com-texa-careapp-checks-CheckBluetooth, reason: not valid java name */
    public /* synthetic */ void m572x1c399b26(BroadcastReceiver broadcastReceiver) throws Exception {
        this.mContext.unregisterReceiver(broadcastReceiver);
    }
}

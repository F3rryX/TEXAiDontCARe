package com.texa.careapp.checks;

import com.texa.careapp.app.ecodriving.model.TripObjectModel;
import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.checks.Check;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import io.reactivex.Observable;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Consumer;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class CheckCareConnection implements Check {
    private static final String TAG = "CheckCareConnection";
    private static final int TEN_MINUTES = 600000;
    private CommunicationObservable mCommunicationObservable;
    private DongleDataManager mDongleDataManager;

    @Override // com.texa.careapp.checks.Check
    public String description() {
        return "";
    }

    @Override // com.texa.careapp.checks.Check
    public void resolve() {
    }

    public CheckCareConnection(CommunicationObservable communicationObservable, DongleDataManager dongleDataManager) {
        this.mCommunicationObservable = communicationObservable;
        this.mDongleDataManager = dongleDataManager;
    }

    @Override // com.texa.careapp.checks.Check
    public Observable<Check.Result> check() {
        return Observable.combineLatest(this.mCommunicationObservable.observeConnectionStatus(), getIntervalObservable(), new BiFunction() { // from class: com.texa.careapp.checks.CheckCareConnection$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return this.f$0.m575lambda$check$0$comtexacareappchecksCheckCareConnection((CommunicationObservable.Status) obj, (Long) obj2);
            }
        }).doOnError(new Consumer() { // from class: com.texa.careapp.checks.CheckCareConnection$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                CheckCareConnection.lambda$check$1((Throwable) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$check$0$com-texa-careapp-checks-CheckCareConnection, reason: not valid java name */
    public /* synthetic */ Check.Result m575lambda$check$0$comtexacareappchecksCheckCareConnection(CommunicationObservable.Status status, Long l) throws Exception {
        return check(status);
    }

    static /* synthetic */ void lambda$check$1(Throwable th) throws Exception {
        Timber.e(TAG + "CRCN#check() failed ", th);
        Observable.just(Check.Result.BLOCKING);
    }

    @Override // com.texa.careapp.checks.Check
    public Check.Result checkCurrentStatus() {
        return check(this.mCommunicationObservable.getCurrentStatus());
    }

    private Check.Result check(CommunicationObservable.Status status) {
        if (isCareConnectedWithinInterval(status)) {
            return Check.Result.OK;
        }
        return Check.Result.BLOCKING;
    }

    private Observable<Long> getIntervalObservable() {
        return Observable.interval(1L, TimeUnit.MINUTES).startWith(-1L);
    }

    private boolean isCareConnectedWithinInterval(CommunicationObservable.Status status) {
        DongleModel dongleModel;
        Long lastParametersUpdate;
        if (status == CommunicationObservable.Status.CARE_CONNECTED) {
            return true;
        }
        return status == CommunicationObservable.Status.CARE_NOT_CONNECTED && (dongleModel = this.mDongleDataManager.getDongleModel()) != null && (lastParametersUpdate = dongleModel.getLastParametersUpdate()) != null && Long.valueOf(new Date().getTime() - lastParametersUpdate.longValue()).longValue() <= TripObjectModel.DIFF_MILLIS;
    }
}

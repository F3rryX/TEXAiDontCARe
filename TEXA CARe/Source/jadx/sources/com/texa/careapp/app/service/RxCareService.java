package com.texa.careapp.app.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.texa.careapp.CareApplication;
import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.utils.RxCareLifecycle;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.trips.CurrentTrip;
import com.texa.carelib.care.trips.TripStatus;
import com.texa.carelib.communication.Communication;
import io.reactivex.Observable;
import io.reactivex.ObservableTransformer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.subjects.BehaviorSubject;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class RxCareService extends Service {

    @Inject
    protected Accessory mAccessory;

    @Inject
    protected Communication mCommunication;

    @Inject
    protected CommunicationObservable mCommunicationObservable;

    @Inject
    protected CurrentTrip mCurrentTrip;
    private Disposable mDisconnectionDisposable;
    private final BehaviorSubject<RxCareLifecycle.CareEvent> lifecycleSubject = BehaviorSubject.create();
    private final PropertyChangeListener mTripStatusChangeListener = new PropertyChangeListener() { // from class: com.texa.careapp.app.service.RxCareService.1
        @Override // java.beans.PropertyChangeListener
        public void propertyChange(PropertyChangeEvent propertyChangeEvent) {
            CurrentTrip currentTrip = RxCareService.this.mCurrentTrip;
            TripStatus tripStatus = currentTrip.getTripStatus();
            if (CurrentTrip.PROPERTY_TRIP_STATUS.equals(propertyChangeEvent.getPropertyName()) && tripStatus == TripStatus.InProgress) {
                RxCareService.this.onTripStarted(currentTrip);
            }
        }
    };
    private final PropertyChangeListener mCareAuthenticatedListener = new PropertyChangeListener() { // from class: com.texa.careapp.app.service.RxCareService$$ExternalSyntheticLambda3
        @Override // java.beans.PropertyChangeListener
        public final void propertyChange(PropertyChangeEvent propertyChangeEvent) {
            this.f$0.m378lambda$new$0$comtexacareappappserviceRxCareService(propertyChangeEvent);
        }
    };

    /* JADX INFO: renamed from: lambda$new$0$com-texa-careapp-app-service-RxCareService, reason: not valid java name */
    public /* synthetic */ void m378lambda$new$0$comtexacareappappserviceRxCareService(PropertyChangeEvent propertyChangeEvent) {
        Timber.i("CAReSERVICE --> event.getPropertyName() --> %s", propertyChangeEvent.getPropertyName());
        Timber.i("CAReSERVICE --> isHostAuthenticated --> %s", Boolean.valueOf(isHostAuthenticated()));
        if (Accessory.PROPERTY_IS_AUTHENTICATED.equals(propertyChangeEvent.getPropertyName()) && isHostAuthenticated()) {
            onCareConnectedAndAuthenticated();
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        getCareApplication().component().inject(this);
        onCreateInternal();
    }

    protected final void onCreateInternal() {
        Timber.i("CAReSERVICE --> onCreateInternal", new Object[0]);
        this.mAccessory.addPropertyChangeListener(this.mCareAuthenticatedListener);
        this.mCurrentTrip.addPropertyChangeListener(this.mTripStatusChangeListener);
    }

    private boolean isHostAuthenticated() {
        return this.mAccessory.isHostAuthenticated();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        Utils.safeDispose(this.mDisconnectionDisposable);
        Timber.i("CAReSERVICE --> onDestroy", new Object[0]);
        this.mAccessory.removePropertyChangeListener(this.mCareAuthenticatedListener);
        this.mCurrentTrip.removePropertyChangeListener(this.mTripStatusChangeListener);
    }

    public final Observable<RxCareLifecycle.CareEvent> lifecycle() {
        return this.lifecycleSubject;
    }

    public final <T> ObservableTransformer<T, T> bindToTripLifecycle() {
        return RxCareLifecycle.bindToTrip(this.lifecycleSubject);
    }

    public final <T> ObservableTransformer<T, T> bindToConnectionLifecycle() {
        return RxCareLifecycle.bindToConnection(this.lifecycleSubject);
    }

    protected void onTripStarted(CurrentTrip currentTrip) {
        this.lifecycleSubject.onNext(RxCareLifecycle.CareEvent.TRIP_START);
    }

    protected void onCareConnectedAndAuthenticated() {
        this.lifecycleSubject.onNext(RxCareLifecycle.CareEvent.CONNECTED);
        Disposable disposable = this.mDisconnectionDisposable;
        if (disposable == null || disposable.isDisposed()) {
            this.mDisconnectionDisposable = this.mCommunicationObservable.observeConnectionStatus().subscribe(new Consumer() { // from class: com.texa.careapp.app.service.RxCareService$$ExternalSyntheticLambda1
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f$0.m379x682e90d9((CommunicationObservable.Status) obj);
                }
            }, new Consumer() { // from class: com.texa.careapp.app.service.RxCareService$$ExternalSyntheticLambda2
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    Timber.e((Throwable) obj, "ON DISCONNECT ERROR", new Object[0]);
                }
            }, new Action() { // from class: com.texa.careapp.app.service.RxCareService$$ExternalSyntheticLambda0
                @Override // io.reactivex.functions.Action
                public final void run() {
                    Timber.i("COMPLETE ON DISCONNECT", new Object[0]);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$onCareConnectedAndAuthenticated$1$com-texa-careapp-app-service-RxCareService, reason: not valid java name */
    public /* synthetic */ void m379x682e90d9(CommunicationObservable.Status status) throws Exception {
        if (CommunicationObservable.Status.CARE_NOT_CONNECTED == status) {
            onCareDisconnected();
        }
    }

    protected void onCareDisconnected() {
        this.lifecycleSubject.onNext(RxCareLifecycle.CareEvent.DISCONNECTED);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        throw new UnsupportedOperationException("Not yet implemented");
    }

    protected CareApplication getCareApplication() {
        return (CareApplication) getApplication();
    }

    protected PropertyChangeListener getCareAuthenticatedListener() {
        return this.mCareAuthenticatedListener;
    }

    protected PropertyChangeListener getTripStatusChangeListener() {
        return this.mTripStatusChangeListener;
    }
}

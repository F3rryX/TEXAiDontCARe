package com.texa.careapp.carelib;

import android.content.Context;
import android.util.Log;
import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.exceptions.CareConnectionFailedException;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.communication.DeviceInfo;
import com.texa.carelib.core.CareLibException;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.ObservableSource;
import io.reactivex.ObservableTransformer;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import io.reactivex.subjects.PublishSubject;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.util.concurrent.Callable;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class CommunicationObservable {
    private static final String TAG = "CommunicationObservable";
    private Communication mCommunication;
    private PropertyChangeListener mCommunicationChangeListener;
    private PublishSubject<CommunicationStatus> mCommunicationStatusSubject = PublishSubject.create();
    private Context mContext;

    public enum Status {
        CARE_CONNECTED,
        CARE_NOT_CONNECTED
    }

    static /* synthetic */ boolean lambda$filterStatus$1(Status status, Status status2) throws Exception {
        return status2 == status;
    }

    /* JADX INFO: renamed from: lambda$new$0$com-texa-careapp-carelib-CommunicationObservable, reason: not valid java name */
    public /* synthetic */ void m570lambda$new$0$comtexacareappcarelibCommunicationObservable(PropertyChangeEvent propertyChangeEvent) {
        Communication communication = (Communication) propertyChangeEvent.getSource();
        if (Communication.PROPERTY_STATUS.equals(propertyChangeEvent.getPropertyName())) {
            Timber.d("CommunicationObservable, received status: %s", communication.getStatus());
            this.mCommunicationStatusSubject.onNext(communication.getStatus());
        }
    }

    public CommunicationObservable(Context context, Communication communication) {
        PropertyChangeListener propertyChangeListener = new PropertyChangeListener() { // from class: com.texa.careapp.carelib.CommunicationObservable$$ExternalSyntheticLambda5
            @Override // java.beans.PropertyChangeListener
            public final void propertyChange(PropertyChangeEvent propertyChangeEvent) {
                this.f$0.m570lambda$new$0$comtexacareappcarelibCommunicationObservable(propertyChangeEvent);
            }
        };
        this.mCommunicationChangeListener = propertyChangeListener;
        this.mContext = context;
        this.mCommunication = communication;
        communication.addPropertyChangeListener(propertyChangeListener);
    }

    public static ObservableTransformer<Status, Status> filterStatus(final Status status) {
        return new ObservableTransformer() { // from class: com.texa.careapp.carelib.CommunicationObservable$$ExternalSyntheticLambda0
            @Override // io.reactivex.ObservableTransformer
            public final ObservableSource apply(Observable observable) {
                return observable.filter(new Predicate() { // from class: com.texa.careapp.carelib.CommunicationObservable$$ExternalSyntheticLambda3
                    @Override // io.reactivex.functions.Predicate
                    public final boolean test(Object obj) {
                        return CommunicationObservable.lambda$filterStatus$1(status, (CommunicationObservable.Status) obj);
                    }
                });
            }
        };
    }

    public Observable<Status> observeConnectionStatus() {
        return this.mCommunicationStatusSubject.startWith(Observable.defer(new Callable() { // from class: com.texa.careapp.carelib.CommunicationObservable$$ExternalSyntheticLambda6
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.m571xd2eaa6a2();
            }
        })).flatMap(new Function() { // from class: com.texa.careapp.carelib.CommunicationObservable$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return this.f$0.convertStatus((CommunicationStatus) obj);
            }
        }).doOnError(new Consumer() { // from class: com.texa.careapp.carelib.CommunicationObservable$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "mCommunicationStatusSubject error", new Object[0]);
            }
        }).distinctUntilChanged();
    }

    /* JADX INFO: renamed from: lambda$observeConnectionStatus$3$com-texa-careapp-carelib-CommunicationObservable, reason: not valid java name */
    public /* synthetic */ ObservableSource m571xd2eaa6a2() throws Exception {
        return Observable.just(this.mCommunication.getStatus());
    }

    public Status getCurrentStatus() {
        return convertStatusSimple(this.mCommunication.getStatus());
    }

    public Observable<Status> observeConnection() {
        return observeConnectionStatus().filter(new Predicate() { // from class: com.texa.careapp.carelib.CommunicationObservable$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                return CommunicationObservable.lambda$observeConnection$5((CommunicationObservable.Status) obj);
            }
        });
    }

    static /* synthetic */ boolean lambda$observeConnection$5(Status status) throws Exception {
        return status == Status.CARE_CONNECTED;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Observable<Status> convertStatus(CommunicationStatus communicationStatus) {
        Timber.v("Communication status changed: %s", communicationStatus);
        return Observable.just(convertStatusSimple(communicationStatus));
    }

    private Status convertStatusSimple(CommunicationStatus communicationStatus) {
        if (CommunicationStatus.CONNECTED == communicationStatus) {
            return Status.CARE_CONNECTED;
        }
        return Status.CARE_NOT_CONNECTED;
    }

    public Observable<Communication> connect(final DeviceInfo deviceInfo) {
        return Observable.create(new ObservableOnSubscribe<Communication>() { // from class: com.texa.careapp.carelib.CommunicationObservable.1
            @Override // io.reactivex.ObservableOnSubscribe
            public void subscribe(final ObservableEmitter<Communication> observableEmitter) throws Exception {
                if (Utils.isCareConnected(CommunicationObservable.this.mCommunication)) {
                    Log.d(CommunicationObservable.TAG, "already connected");
                    observableEmitter.onNext(CommunicationObservable.this.mCommunication);
                    observableEmitter.onComplete();
                } else {
                    CommunicationObservable.this.mCommunication.addPropertyChangeListener(new PropertyChangeListener() { // from class: com.texa.careapp.carelib.CommunicationObservable.1.1
                        @Override // java.beans.PropertyChangeListener
                        public void propertyChange(PropertyChangeEvent propertyChangeEvent) {
                            Communication communication = (Communication) propertyChangeEvent.getSource();
                            if (Communication.PROPERTY_STATUS.equals(propertyChangeEvent.getPropertyName())) {
                                if (observableEmitter.isDisposed()) {
                                    CommunicationObservable.this.mCommunication.removePropertyChangeListener(this);
                                    return;
                                }
                                if (communication.getStatus() == CommunicationStatus.CONNECTED) {
                                    observableEmitter.onNext(communication);
                                    observableEmitter.onComplete();
                                }
                                if (communication.getStatus() == CommunicationStatus.CONNECTION_FAILED) {
                                    observableEmitter.onError(new CareConnectionFailedException(CommunicationObservable.this.mContext));
                                    observableEmitter.onComplete();
                                }
                            }
                        }
                    });
                    try {
                        CommunicationObservable.this.mCommunication.connect(deviceInfo);
                    } catch (CareLibException e) {
                        e.printStackTrace();
                    }
                }
            }
        });
    }

    public Observable<Communication> disconnect() {
        return Observable.create(new ObservableOnSubscribe<Communication>() { // from class: com.texa.careapp.carelib.CommunicationObservable.2
            @Override // io.reactivex.ObservableOnSubscribe
            public void subscribe(final ObservableEmitter<Communication> observableEmitter) throws Exception {
                if (!Utils.isCareConnected(CommunicationObservable.this.mCommunication)) {
                    Log.d(CommunicationObservable.TAG, "already disconnected");
                    observableEmitter.onNext(CommunicationObservable.this.mCommunication);
                    observableEmitter.onComplete();
                } else {
                    CommunicationObservable.this.mCommunication.addPropertyChangeListener(new PropertyChangeListener() { // from class: com.texa.careapp.carelib.CommunicationObservable.2.1
                        @Override // java.beans.PropertyChangeListener
                        public void propertyChange(PropertyChangeEvent propertyChangeEvent) {
                            Communication communication = (Communication) propertyChangeEvent.getSource();
                            if (Communication.PROPERTY_STATUS.equals(propertyChangeEvent.getPropertyName())) {
                                if (observableEmitter.isDisposed()) {
                                    CommunicationObservable.this.mCommunication.removePropertyChangeListener(this);
                                } else if (Utils.isCareReadyForScan(communication)) {
                                    observableEmitter.onNext(communication);
                                    observableEmitter.onComplete();
                                    CommunicationObservable.this.mCommunication.removePropertyChangeListener(this);
                                }
                            }
                        }
                    });
                    try {
                        CommunicationObservable.this.mCommunication.stopReconnect();
                    } catch (CareLibException e) {
                        e.printStackTrace();
                    }
                }
            }
        });
    }

    public Observable<Communication> prepareForScan() {
        return Observable.create(new ObservableOnSubscribe<Communication>() { // from class: com.texa.careapp.carelib.CommunicationObservable.3
            @Override // io.reactivex.ObservableOnSubscribe
            public void subscribe(final ObservableEmitter<Communication> observableEmitter) throws Exception {
                if (Utils.isCareReadyForScan(CommunicationObservable.this.mCommunication)) {
                    Timber.d("CARe is ready for scan...", new Object[0]);
                    observableEmitter.onNext(CommunicationObservable.this.mCommunication);
                    observableEmitter.onComplete();
                } else {
                    CommunicationObservable.this.mCommunication.addPropertyChangeListener(new PropertyChangeListener() { // from class: com.texa.careapp.carelib.CommunicationObservable.3.1
                        @Override // java.beans.PropertyChangeListener
                        public void propertyChange(PropertyChangeEvent propertyChangeEvent) {
                            Communication communication = (Communication) propertyChangeEvent.getSource();
                            if (Communication.PROPERTY_STATUS.equals(propertyChangeEvent.getPropertyName())) {
                                if (observableEmitter.isDisposed()) {
                                    CommunicationObservable.this.mCommunication.removePropertyChangeListener(this);
                                } else if (Utils.isCareReadyForScan(communication)) {
                                    observableEmitter.onNext(communication);
                                    observableEmitter.onComplete();
                                    CommunicationObservable.this.mCommunication.removePropertyChangeListener(this);
                                }
                            }
                        }
                    });
                    try {
                        CommunicationObservable.this.mCommunication.stop();
                    } catch (CareLibException e) {
                        e.printStackTrace();
                    }
                }
            }
        });
    }

    protected PropertyChangeListener getCommunicationListener() {
        return this.mCommunicationChangeListener;
    }

    public DeviceInfo getCurrentDeviceInfo() {
        return this.mCommunication.getCurrentDevice();
    }
}

package com.texa.careapp.utils;

import android.util.Log;
import com.activeandroid.Cache;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.TripModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.utils.TripLogBookReader;
import com.texa.carelib.care.trips.TripDataDownloadListener;
import com.texa.carelib.care.trips.TripInfo;
import com.texa.carelib.care.trips.TripLogBook;
import com.texa.carelib.care.trips.events.TripDataDownloadCompletedEvent;
import com.texa.carelib.care.trips.events.TripDataDownloadProgressChangedEvent;
import com.texa.carelib.care.trips.events.TripDataErasedEvent;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import java.util.Iterator;
import java.util.List;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class TripLogBookReader {
    private static final String TAG = "TripLogBookReader";
    private CAReWorkerManager mCAReWorkerManager;
    private final TripDataDownloadListener mTripLogBookListener = new AnonymousClass1();
    private VehicleObserver mVehicleObserver;

    /* JADX INFO: renamed from: com.texa.careapp.utils.TripLogBookReader$1, reason: invalid class name */
    class AnonymousClass1 implements TripDataDownloadListener {
        AnonymousClass1() {
        }

        @Override // com.texa.carelib.care.trips.TripDataDownloadListener
        public void onTripDataDownloadCompleted(final TripDataDownloadCompletedEvent tripDataDownloadCompletedEvent) {
            Timber.d("onDownloadTripDataCompleted() Error: %s", tripDataDownloadCompletedEvent.getError());
            CareError error = tripDataDownloadCompletedEvent.getError();
            if (error != null) {
                Timber.d("download error: %s", error.toString());
                return;
            }
            try {
                if (tripDataDownloadCompletedEvent.getTripsInfo() != null ? TripLogBookReader.this.saveTripLogBook(tripDataDownloadCompletedEvent.getTripsInfo()) : false) {
                    try {
                        ((TripLogBook) tripDataDownloadCompletedEvent.getSource()).eraseTripsInfo(new Callback() { // from class: com.texa.careapp.utils.TripLogBookReader$1$$ExternalSyntheticLambda0
                            @Override // com.texa.carelib.core.Callback
                            public final void onCompleted(Object obj) {
                                TripLogBookReader.AnonymousClass1.lambda$onTripDataDownloadCompleted$0(tripDataDownloadCompletedEvent, (TripDataErasedEvent) obj);
                            }
                        });
                        return;
                    } catch (CareLibException unused) {
                        Timber.d("impossibile cancellare il trip log book", new Object[0]);
                        return;
                    }
                }
                Timber.w("Impossibile cancellare il tripLogBook poichè non tutti i viaggi sono stati salvati", new Object[0]);
            } catch (IllegalStateException e) {
                Timber.w(e, "saveTripLogBook exception", new Object[0]);
            }
        }

        static /* synthetic */ void lambda$onTripDataDownloadCompleted$0(TripDataDownloadCompletedEvent tripDataDownloadCompletedEvent, TripDataErasedEvent tripDataErasedEvent) {
            Timber.d("onTripDataErased() Error: %s", tripDataDownloadCompletedEvent.getError());
            CareError error = tripDataDownloadCompletedEvent.getError();
            if (error == null) {
                Timber.d("trip log book cancellato correttamente", new Object[0]);
            } else {
                Timber.d("errore nella cancellazione del trip log book: %s", error.toString());
            }
        }

        @Override // com.texa.carelib.care.trips.TripDataDownloadListener
        public void onTripDataDownloadProgressChanged(TripDataDownloadProgressChangedEvent tripDataDownloadProgressChangedEvent) {
            Timber.d("onDownloadTripDataProgressChanged: %s", Float.valueOf(tripDataDownloadProgressChangedEvent.getProgress()));
        }
    }

    public TripLogBookReader(VehicleObserver vehicleObserver, CAReWorkerManager cAReWorkerManager) {
        this.mVehicleObserver = vehicleObserver;
        this.mCAReWorkerManager = cAReWorkerManager;
    }

    public void read(TripLogBook tripLogBook) {
        Timber.d("Trip log book read invoked", new Object[0]);
        if (tripLogBook.isReadingTripsInfo()) {
            Log.w(TAG, "Already reading trips info.");
            return;
        }
        try {
            tripLogBook.readTripsInfo(this.mTripLogBookListener);
            Timber.i("Finish reading", new Object[0]);
        } catch (CareLibException unused) {
            Log.w(TAG, "readTripsInfo false");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean saveTripLogBook(List<TripInfo> list) throws IllegalStateException {
        VehicleModel currentVehicle = this.mVehicleObserver.getCurrentVehicle();
        if (currentVehicle == null) {
            Timber.d("non posso scaricare il trip log book, currentVehicle è null", new Object[0]);
            return false;
        }
        Timber.d("tripInfoList.size()=%s", Integer.valueOf(list.size()));
        if (list.isEmpty()) {
            return false;
        }
        Iterator<TripInfo> it = list.iterator();
        boolean z = true;
        while (it.hasNext()) {
            TripModel tripModelFrom = TripModel.from(it.next(), currentVehicle.getUid());
            try {
            } catch (DatabaseIOException e) {
                e.printStackTrace();
                Timber.e(e, "Salvataggio viaggio fallito: %1$s", tripModelFrom);
            }
            if (Utils.safeModelSave(tripModelFrom, Cache.getContext()) != -1) {
                Timber.d("Salvataggio viaggio riuscito: %1$s", tripModelFrom);
            } else {
                Timber.w("Salvataggio viaggio fallito (row = -1): %1$s", tripModelFrom);
                z = false;
            }
        }
        scheduleTripSyncTaskOneShot();
        return z;
    }

    private void scheduleTripSyncTaskOneShot() {
        this.mCAReWorkerManager.scheduleTripSync();
    }
}

package com.texa.carelib.care.trips.internal;

import com.texa.carelib.android.PermissionUtils;
import com.texa.carelib.care.featureverifier.FeatureNotSupportedException;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.trips.TripDataDownloadListener;
import com.texa.carelib.care.trips.TripInfo;
import com.texa.carelib.care.trips.TripLogBook;
import com.texa.carelib.care.trips.events.TripDataErasedEvent;
import com.texa.carelib.care.trips.internal.parser.BeginFileDataTripParser;
import com.texa.carelib.communication.Message;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.CarelibSchedulers;
import com.texa.carelib.core.DongleNotConnectedException;
import com.texa.carelib.core.OperationAlreadyRunningException;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.ExternalFileCache;
import com.texa.carelib.core.utils.FileCache;
import com.texa.carelib.core.utils.InternalFileCache;
import com.texa.carelib.core.utils.internal.Utils;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.internal.SerialProfileMessageReceiver;
import com.texa.carelib.profile.internal.SerialProfileProxy;
import com.texa.carelib.profile.internal.filecarrier.SimpleFileCarrierListener;
import com.texa.carelib.profile.internal.filecarrier.events.FileReceivedEvent;
import com.texa.carelib.profile.internal.filecarrier.events.FileReceivedProgressChangedEvent;
import com.texa.carelib.profile.internal.parser.GetEraseTripCrashStatusParser;
import com.texa.carelib.profile.taskexecutor.SynchronizedTask;
import com.texa.carelib.profile.taskexecutor.TaskSynchronizer;
import com.texa.carelib.trips.R;
import java.beans.PropertyChangeEvent;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class SerialTripLogBook extends TripLogBookBase implements SerialProfileMessageReceiver {
    public static final String TAG = "SerialTripLogBook";
    private final SerialProfileProxy mSerialProfileProxy;
    private Status mStatus;
    private List<TripInfo> mTripsInfo;

    enum Status {
        Idle { // from class: com.texa.carelib.care.trips.internal.SerialTripLogBook.Status.1
            @Override // com.texa.carelib.care.trips.internal.SerialTripLogBook.Status
            boolean canEraseTrips() {
                return true;
            }

            @Override // com.texa.carelib.care.trips.internal.SerialTripLogBook.Status
            boolean canReadTrips() {
                return true;
            }

            @Override // com.texa.carelib.care.trips.internal.SerialTripLogBook.Status
            boolean isErasingTripInfo() {
                return false;
            }

            @Override // com.texa.carelib.care.trips.internal.SerialTripLogBook.Status
            boolean isReadingTripInfo() {
                return false;
            }

            @Override // com.texa.carelib.care.trips.internal.SerialTripLogBook.Status
            void onMessageReceived(SerialTripLogBook serialTripLogBook, Message message, CareError careError) {
            }
        },
        EraseTrips { // from class: com.texa.carelib.care.trips.internal.SerialTripLogBook.Status.2
            @Override // com.texa.carelib.care.trips.internal.SerialTripLogBook.Status
            boolean canEraseTrips() {
                return false;
            }

            @Override // com.texa.carelib.care.trips.internal.SerialTripLogBook.Status
            boolean canReadTrips() {
                return false;
            }

            @Override // com.texa.carelib.care.trips.internal.SerialTripLogBook.Status
            boolean isErasingTripInfo() {
                return true;
            }

            @Override // com.texa.carelib.care.trips.internal.SerialTripLogBook.Status
            boolean isReadingTripInfo() {
                return false;
            }

            @Override // com.texa.carelib.care.trips.internal.SerialTripLogBook.Status
            void onMessageReceived(SerialTripLogBook serialTripLogBook, Message message, CareError careError) {
                int commandID = message.getCommandID();
                if (commandID == 53) {
                    handleCommandEraseTripDataArea(serialTripLogBook, message, careError);
                } else {
                    if (commandID != 100) {
                        return;
                    }
                    handleGetEraseTripCrashStatus(serialTripLogBook, message, careError);
                }
            }

            void handleCommandEraseTripDataArea(SerialTripLogBook serialTripLogBook, Message message, CareError careError) {
                if (careError != null) {
                    serialTripLogBook.terminateEraseTrips(careError);
                } else {
                    if (serialTripLogBook.isCommandSupported(100)) {
                        return;
                    }
                    serialTripLogBook.terminateEraseTrips(null);
                }
            }

            private void handleGetEraseTripCrashStatus(SerialTripLogBook serialTripLogBook, Message message, CareError careError) {
                if (careError != null) {
                    serialTripLogBook.terminateEraseTrips(careError);
                } else if (GetEraseTripCrashStatusParser.parse(message).getStatus() != GetEraseTripCrashStatusParser.EraseTripCrashStatus.TripActive) {
                    serialTripLogBook.terminateEraseTrips(null);
                }
            }
        },
        DownloadTrips { // from class: com.texa.carelib.care.trips.internal.SerialTripLogBook.Status.3
            @Override // com.texa.carelib.care.trips.internal.SerialTripLogBook.Status
            boolean canEraseTrips() {
                return false;
            }

            @Override // com.texa.carelib.care.trips.internal.SerialTripLogBook.Status
            boolean canReadTrips() {
                return false;
            }

            @Override // com.texa.carelib.care.trips.internal.SerialTripLogBook.Status
            boolean isErasingTripInfo() {
                return false;
            }

            @Override // com.texa.carelib.care.trips.internal.SerialTripLogBook.Status
            boolean isReadingTripInfo() {
                return true;
            }

            @Override // com.texa.carelib.care.trips.internal.SerialTripLogBook.Status
            void onMessageReceived(SerialTripLogBook serialTripLogBook, Message message, CareError careError) {
                if (message.getCommandID() != 52) {
                    return;
                }
                handleMessageBeginFileDataTrip(serialTripLogBook, message, careError);
            }

            private void handleMessageBeginFileDataTrip(SerialTripLogBook serialTripLogBook, Message message, CareError careError) {
                if (careError == null) {
                    BeginFileDataTripParser.BeginFileDataTripResponse beginFileDataTripResponse = BeginFileDataTripParser.parse(message);
                    if (beginFileDataTripResponse.getFileSize() > 0) {
                        if (serialTripLogBook.mSerialProfileProxy.getSerialFileCarrier().receiveFileWithType(serialTripLogBook.getContext(), beginFileDataTripResponse.getFileType(), beginFileDataTripResponse.getFileSize(), new AnonymousClass1(serialTripLogBook))) {
                            return;
                        }
                        CareLog.e(SerialTripLogBook.TAG, "Could not download trip data at this moment.", new Object[0]);
                        return;
                    } else {
                        CareLog.e(SerialTripLogBook.TAG, "Invalid file size.", new Object[0]);
                        terminate(serialTripLogBook, null, null);
                        return;
                    }
                }
                CareLog.e(SerialTripLogBook.TAG, "Download trip data fail. Error=%s", careError);
                terminate(serialTripLogBook, null, careError);
            }

            /* JADX INFO: renamed from: com.texa.carelib.care.trips.internal.SerialTripLogBook$Status$3$1, reason: invalid class name */
            class AnonymousClass1 extends SimpleFileCarrierListener {
                final /* synthetic */ SerialTripLogBook val$target;

                AnonymousClass1(SerialTripLogBook serialTripLogBook) {
                    this.val$target = serialTripLogBook;
                }

                @Override // com.texa.carelib.profile.internal.filecarrier.SimpleFileCarrierListener, com.texa.carelib.profile.internal.filecarrier.FileCarrierListener
                public void onFileReceived(FileReceivedEvent fileReceivedEvent) {
                    FileCache internalFileCache;
                    if (fileReceivedEvent.getError() != null) {
                        terminate(this.val$target, null, fileReceivedEvent.getError());
                        return;
                    }
                    if (fileReceivedEvent.getFile() == null) {
                        CareLog.wtf(SerialTripLogBook.TAG, "Received file cannot be null if no error was occurred!!!", new Object[0]);
                        throw new IllegalStateException("file cannot be null!!");
                    }
                    if (this.val$target.getArguments().getBoolean(TripLogBook.EXTRA_DUMP_LOGBOOK, false)) {
                        if (PermissionUtils.checkSelfPermission(this.val$target.getContext(), "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
                            internalFileCache = new ExternalFileCache(this.val$target.getContext());
                        } else {
                            internalFileCache = new InternalFileCache(this.val$target.getContext());
                        }
                        try {
                            internalFileCache.store(FileCache.DIR_TRIPS, this.val$target + "_triplogbook_" + Utils.getISO8601Date(Utils.getUTCNow()) + ".dat", fileReceivedEvent.getFile());
                        } catch (IOException e) {
                            CareLog.e(SerialTripLogBook.TAG, e, "Could not dump trip log book...", new Object[0]);
                        }
                    }
                    try {
                        try {
                            this.val$target.setTripInfos(new TripInfoBundleParser().getTripInfoList(new RandomAccessFile(fileReceivedEvent.getFile(), "r").getChannel().map(FileChannel.MapMode.READ_ONLY, 0L, fileReceivedEvent.getFile().length())), true);
                        } finally {
                            fileReceivedEvent.getFile().delete();
                            AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                            SerialTripLogBook serialTripLogBook = this.val$target;
                            anonymousClass3.terminate(serialTripLogBook, serialTripLogBook.getTripsInfo(), null);
                        }
                    } catch (IOException e2) {
                        CareLog.e(SerialTripLogBook.TAG, e2, "Could not subscribe tri`p log book.", new Object[0]);
                    } catch (Exception e3) {
                        CareLog.e(SerialTripLogBook.TAG, e3, "Could not subscribe trip log book.", new Object[0]);
                    }
                }

                @Override // com.texa.carelib.profile.internal.filecarrier.SimpleFileCarrierListener, com.texa.carelib.profile.internal.filecarrier.FileCarrierListener
                public void onFileReceivedProgressChanged(final FileReceivedProgressChangedEvent fileReceivedProgressChangedEvent) {
                    CarelibSchedulers.Scheduler schedulerMainThread = CarelibSchedulers.mainThread();
                    final SerialTripLogBook serialTripLogBook = this.val$target;
                    schedulerMainThread.schedule(new Runnable() { // from class: com.texa.carelib.care.trips.internal.SerialTripLogBook$Status$3$1$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            SerialTripLogBook serialTripLogBook2 = serialTripLogBook;
                            serialTripLogBook2.fireDownloadTripDataProgressChanged(serialTripLogBook2, fileReceivedProgressChangedEvent.getProgress());
                        }
                    }, 0L, TimeUnit.MILLISECONDS);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void terminate(SerialTripLogBook serialTripLogBook, List<TripInfo> list, CareError careError) {
                try {
                    serialTripLogBook.setStatus(Status.Idle);
                    if (careError == null) {
                        CareLog.d(SerialTripLogBook.TAG, "Trip log book download has terminated successfully.", new Object[0]);
                        serialTripLogBook.terminateTripDataDownload(serialTripLogBook, list, null);
                    } else {
                        CareLog.e(SerialTripLogBook.TAG, "Trip log book download has terminated with error: %s", careError);
                        serialTripLogBook.terminateTripDataDownload(serialTripLogBook, list, new CareError.Builder(1, 20).setMessage(serialTripLogBook.getContext().getString(R.string.error_care_trip_log_book_download_fails)).setInnerError(careError).build());
                    }
                } finally {
                    TaskSynchronizer.getInstance().executeNext();
                }
            }
        };

        abstract boolean canEraseTrips();

        abstract boolean canReadTrips();

        abstract boolean isErasingTripInfo();

        abstract boolean isReadingTripInfo();

        abstract void onMessageReceived(SerialTripLogBook serialTripLogBook, Message message, CareError careError);
    }

    public SerialTripLogBook(Profile profile, FeatureVerifier featureVerifier) {
        super(profile, featureVerifier);
        this.mTripsInfo = Collections.emptyList();
        if (profile instanceof SerialProfileProxy) {
            SerialProfileProxy serialProfileProxy = (SerialProfileProxy) profile;
            this.mSerialProfileProxy = serialProfileProxy;
            serialProfileProxy.enableCommandSubscription(true, 52);
            serialProfileProxy.enableCommandSubscription(true, 100);
        } else {
            this.mSerialProfileProxy = null;
        }
        this.mStatus = Status.Idle;
    }

    @Override // com.texa.carelib.care.trips.TripLogBook
    public boolean isErasingTripsInfo() {
        return this.mStatus.isErasingTripInfo();
    }

    @Override // com.texa.carelib.care.trips.TripLogBook
    public boolean isReadingTripsInfo() {
        return this.mStatus.isReadingTripInfo();
    }

    @Override // com.texa.carelib.profile.ProfileSubModule, com.texa.carelib.profile.internal.SerialProfileMessageReceiver
    public void onMessageReceived(Object obj, Message message, CareError careError) {
        this.mStatus.onMessageReceived(this, message, careError);
    }

    @Override // com.texa.carelib.care.trips.TripLogBook
    public List<TripInfo> getTripsInfo() {
        return this.mTripsInfo;
    }

    @Override // com.texa.carelib.care.trips.TripLogBook
    public void eraseTripsInfo(final Callback<TripDataErasedEvent> callback) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        if (!getFeatureVerifier().hasFeature(3)) {
            throw new FeatureNotSupportedException();
        }
        SynchronizedTask.Builder builder = new SynchronizedTask.Builder(TAG + "#eraseTripsInfo()", new Runnable() { // from class: com.texa.carelib.care.trips.internal.SerialTripLogBook$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m717xd271e84(callback);
            }
        });
        builder.setTimeout(300000);
        builder.setPriority(50);
        TaskSynchronizer.getInstance().execute(builder.build());
    }

    /* JADX INFO: renamed from: lambda$eraseTripsInfo$0$com-texa-carelib-care-trips-internal-SerialTripLogBook, reason: not valid java name */
    public /* synthetic */ void m717xd271e84(Callback callback) {
        try {
            if (!getFeatureVerifier().canReadLogBook()) {
                throw new CareLibException("Cannot erase trip log book at this moment.");
            }
            if (!this.mStatus.canReadTrips()) {
                throw new OperationAlreadyRunningException("Cannot erase trip log book at this moment.");
            }
            setEraseTripDataCallback(callback);
            setStatus(Status.EraseTrips);
            sendMessage(new Message.Builder().setCommandID(53).build());
        } catch (CareLibException e) {
            CareLog.e(TAG, e, "Could not erase trip log book at this moment.", new Object[0]);
            TaskSynchronizer.getInstance().executeNext();
        }
    }

    @Override // com.texa.carelib.care.trips.TripLogBook
    public void readTripsInfo(final TripDataDownloadListener tripDataDownloadListener) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        if (!getFeatureVerifier().hasFeature(3)) {
            throw new FeatureNotSupportedException();
        }
        SynchronizedTask.Builder builder = new SynchronizedTask.Builder(TAG + "#readTripsInfo()", new Runnable() { // from class: com.texa.carelib.care.trips.internal.SerialTripLogBook$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m719x1309d68c(tripDataDownloadListener);
            }
        });
        builder.setTimeout(3600000);
        builder.setPriority(50);
        TaskSynchronizer.getInstance().execute(builder.build());
    }

    /* JADX INFO: renamed from: lambda$readTripsInfo$2$com-texa-carelib-care-trips-internal-SerialTripLogBook, reason: not valid java name */
    public /* synthetic */ void m719x1309d68c(TripDataDownloadListener tripDataDownloadListener) {
        setTripDataDownloadListener(tripDataDownloadListener);
        try {
            if (!getFeatureVerifier().canReadLogBook()) {
                throw new CareLibException("Could not read the trip log book at this moment. Is the authentication with the dongle established successfully?");
            }
            if (!this.mStatus.canReadTrips()) {
                throw new OperationAlreadyRunningException("Could not read the trip log book at this moment.");
            }
            setStatus(Status.DownloadTrips);
            CarelibSchedulers.mainThread().schedule(new Runnable() { // from class: com.texa.carelib.care.trips.internal.SerialTripLogBook$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m718xfb79f772();
                }
            }, 0L, TimeUnit.MILLISECONDS);
            sendMessage(new Message.Builder().setCommandID(52).build());
        } catch (CareLibException e) {
            CareLog.e(TAG, e, "", new Object[0]);
            try {
                terminateTripDataDownload(this, Collections.emptyList(), new CareError.Builder(1, 20).setMessage(e.getMessage()).build());
            } finally {
                TaskSynchronizer.getInstance().executeNext();
            }
        }
    }

    /* JADX INFO: renamed from: lambda$null$1$com-texa-carelib-care-trips-internal-SerialTripLogBook, reason: not valid java name */
    public /* synthetic */ void m718xfb79f772() {
        fireDownloadTripDataProgressChanged(this, 0.0f);
    }

    @Override // com.texa.carelib.care.trips.internal.TripLogBookBase
    protected void resetData(boolean z) {
        super.resetData(z);
        setStatus(Status.Idle);
        clearTrips(z);
    }

    public void clearTrips(boolean z) {
        if (z) {
            ArrayList arrayList = new ArrayList(this.mTripsInfo);
            this.mTripsInfo.clear();
            firePropertyChange(new PropertyChangeEvent(this, TripLogBook.PROPERTY_TRIPS_INFO, arrayList, new ArrayList(this.mTripsInfo)));
            return;
        }
        this.mTripsInfo.clear();
    }

    void setTripInfos(List<TripInfo> list, boolean z) {
        List<TripInfo> list2 = this.mTripsInfo;
        this.mTripsInfo = list;
        if (z) {
            firePropertyChange(new PropertyChangeEvent(this, TripLogBook.PROPERTY_TRIPS_INFO, list2, list));
        }
    }

    void sendMessage(Message message) {
        SerialProfileProxy serialProfileProxy = this.mSerialProfileProxy;
        if (serialProfileProxy != null) {
            serialProfileProxy.sendMessage(message);
        }
    }

    boolean isCommandSupported(int i) {
        SerialProfileProxy serialProfileProxy = this.mSerialProfileProxy;
        if (serialProfileProxy != null) {
            return serialProfileProxy.getCommandVerifier().isCommandSupported(i);
        }
        return false;
    }

    void terminateEraseTrips(CareError careError) {
        if (careError == null) {
            clearTrips(true);
        }
        fireTripDataEraseCompleted(this, careError);
        setStatus(Status.Idle);
        TaskSynchronizer.getInstance().executeNext();
    }

    void setStatus(Status status) {
        this.mStatus = status;
    }
}

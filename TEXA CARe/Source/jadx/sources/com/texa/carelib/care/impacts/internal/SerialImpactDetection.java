package com.texa.carelib.care.impacts.internal;

import android.util.SparseArray;
import com.texa.carelib.android.PermissionUtils;
import com.texa.carelib.care.featureverifier.FeatureNotSupportedException;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.impacts.CrashReport;
import com.texa.carelib.care.impacts.Impact;
import com.texa.carelib.care.impacts.ImpactDataDownloadListener;
import com.texa.carelib.care.impacts.ImpactDetection;
import com.texa.carelib.care.impacts.events.ImpactDataDownloadCompletedEvent;
import com.texa.carelib.care.impacts.events.ImpactDataDownloadProgressChangedEvent;
import com.texa.carelib.care.impacts.events.ImpactDataErasedEvent;
import com.texa.carelib.care.impacts.events.ImpactDetectedEvent;
import com.texa.carelib.care.impacts.events.SimulateImpactCompletedEvent;
import com.texa.carelib.care.impacts.internal.parser.BeginFileDataCrashParser;
import com.texa.carelib.care.impacts.internal.parser.GetCrashConfigurationParametersParser;
import com.texa.carelib.care.impacts.internal.parser.GetSOSStatusParser;
import com.texa.carelib.communication.Commands;
import com.texa.carelib.communication.CommunicationStatus;
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
import com.texa.carelib.core.utils.internal.ByteBufferUtils;
import com.texa.carelib.core.utils.internal.Utils;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.R;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import com.texa.carelib.profile.internal.SerialProfileMessageReceiver;
import com.texa.carelib.profile.internal.SerialProfileProxy;
import com.texa.carelib.profile.internal.filecarrier.FileType;
import com.texa.carelib.profile.internal.filecarrier.SimpleFileCarrierListener;
import com.texa.carelib.profile.internal.filecarrier.events.FileReceivedEvent;
import com.texa.carelib.profile.internal.filecarrier.events.FileReceivedProgressChangedEvent;
import com.texa.carelib.profile.internal.parser.GetEraseTripCrashStatusParser;
import com.texa.carelib.profile.internal.parser.GetSerialNumberPacketParser;
import com.texa.carelib.profile.taskexecutor.SynchronizedTask;
import com.texa.carelib.profile.taskexecutor.TaskSynchronizer;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.util.List;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes2.dex */
public class SerialImpactDetection extends ImpactDetectionBase implements SerialProfileMessageReceiver {
    public static final String TAG = "SerialImpactDetection";
    private Callback<ImpactDataErasedEvent> mEraseCrashDataCallback;
    private ImpactDataDownloadListener mImpactDataDownloadListener;
    private String mSerialNumber;
    private final SerialProfileProxy mSerialProfileProxy;
    private Callback<SimulateImpactCompletedEvent> mSimulateImpactCallback;
    private Status mStatus;

    enum Status {
        Idle { // from class: com.texa.carelib.care.impacts.internal.SerialImpactDetection.Status.1
            @Override // com.texa.carelib.care.impacts.internal.SerialImpactDetection.Status
            void onMessageReceived(SerialImpactDetection serialImpactDetection, Message message, CareError careError) {
            }
        },
        EraseCrash { // from class: com.texa.carelib.care.impacts.internal.SerialImpactDetection.Status.2
            @Override // com.texa.carelib.care.impacts.internal.SerialImpactDetection.Status
            void onMessageReceived(SerialImpactDetection serialImpactDetection, Message message, CareError careError) {
                int commandID = message.getCommandID();
                if (commandID == 56) {
                    onMessageReceivedEraseCrashDataArea(serialImpactDetection, message, careError);
                } else {
                    if (commandID != 100) {
                        return;
                    }
                    handleGetEraseTripCrashStatus(serialImpactDetection, message, careError);
                }
            }

            private void onMessageReceivedEraseCrashDataArea(SerialImpactDetection serialImpactDetection, Message message, CareError careError) {
                if (careError != null) {
                    serialImpactDetection.terminateEraseCrashData(careError);
                } else {
                    if (serialImpactDetection.isCommandSupported(100)) {
                        return;
                    }
                    serialImpactDetection.terminateEraseCrashData(null);
                }
            }

            private void handleGetEraseTripCrashStatus(SerialImpactDetection serialImpactDetection, Message message, CareError careError) {
                if (careError != null) {
                    serialImpactDetection.terminateEraseCrashData(careError);
                    return;
                }
                if (GetEraseTripCrashStatusParser.EraseTripCrashStatus.TripActive.equals(GetEraseTripCrashStatusParser.parse(message).getStatus())) {
                    return;
                }
                serialImpactDetection.terminateEraseCrashData(null);
            }
        },
        DownloadCrash { // from class: com.texa.carelib.care.impacts.internal.SerialImpactDetection.Status.3
            @Override // com.texa.carelib.care.impacts.internal.SerialImpactDetection.Status
            void onMessageReceived(SerialImpactDetection serialImpactDetection, Message message, CareError careError) {
                if (message.getCommandID() != 55) {
                    return;
                }
                onMessageReceivedBeginFileDataCrash(serialImpactDetection, message, careError);
            }

            private void onMessageReceivedBeginFileDataCrash(final SerialImpactDetection serialImpactDetection, Message message, CareError careError) {
                if (careError != null) {
                    serialImpactDetection.terminateLoadImpacts(serialImpactDetection.getImpacts(), serialImpactDetection.getAccelerationEvents(), careError);
                    return;
                }
                BeginFileDataCrashParser.BeginFileDataCrashResponse beginFileDataCrashResponse = BeginFileDataCrashParser.parse(message);
                CareLog.d(SerialImpactDetection.TAG, "Received file_type %s(%d) with size: %d", FileType.getName(beginFileDataCrashResponse.getFileType()), Integer.valueOf(beginFileDataCrashResponse.getFileType()), Integer.valueOf(beginFileDataCrashResponse.getFileSize()));
                if (beginFileDataCrashResponse.getFileSize() > 0) {
                    if (serialImpactDetection.mSerialProfileProxy.getSerialFileCarrier().receiveFileWithType(serialImpactDetection.getProfile().getProfileDelegate().getApplicationContext(), beginFileDataCrashResponse.getFileType(), beginFileDataCrashResponse.getFileSize(), new SimpleFileCarrierListener() { // from class: com.texa.carelib.care.impacts.internal.SerialImpactDetection.Status.3.1
                        @Override // com.texa.carelib.profile.internal.filecarrier.SimpleFileCarrierListener, com.texa.carelib.profile.internal.filecarrier.FileCarrierListener
                        public void onFileReceived(FileReceivedEvent fileReceivedEvent) {
                            File file;
                            FileCache internalFileCache;
                            try {
                                if (fileReceivedEvent.getError() == null) {
                                    if (fileReceivedEvent.getFile() != null) {
                                        if (serialImpactDetection.getArguments().getBoolean(ImpactDetection.EXTRA_DUMP_REPORTS, false)) {
                                            if (PermissionUtils.checkSelfPermission(serialImpactDetection.getProfile().getProfileDelegate().getApplicationContext(), "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
                                                internalFileCache = new ExternalFileCache(serialImpactDetection.getProfile().getProfileDelegate().getApplicationContext());
                                            } else {
                                                internalFileCache = new InternalFileCache(serialImpactDetection.getProfile().getProfileDelegate().getApplicationContext());
                                            }
                                            try {
                                                internalFileCache.store(FileCache.DIR_CRASH_REPORTS, serialImpactDetection.mSerialNumber + "_crash_report_bundle_" + Utils.getISO8601Date(Utils.getUTCNow()), fileReceivedEvent.getFile());
                                            } catch (IOException e) {
                                                CareLog.e(SerialImpactDetection.TAG, e, "Could not dump crash data.", new Object[0]);
                                            }
                                        }
                                        CrashReportBundleParser crashReportBundleParser = new CrashReportBundleParser();
                                        try {
                                            try {
                                                crashReportBundleParser.parse(new RandomAccessFile(fileReceivedEvent.getFile(), "r").getChannel().map(FileChannel.MapMode.READ_ONLY, 0L, fileReceivedEvent.getFile().length()));
                                                serialImpactDetection.addImpacts(crashReportBundleParser.getImpacts());
                                                serialImpactDetection.addAccelerationEvents(crashReportBundleParser.getAccelerationEvents());
                                                serialImpactDetection.addAccelerationEventsLPM(crashReportBundleParser.getAccelerationEventsLPM());
                                                file = fileReceivedEvent.getFile();
                                            } catch (IOException e2) {
                                                CareLog.e(SerialImpactDetection.TAG, e2, "IOError.", new Object[0]);
                                                file = fileReceivedEvent.getFile();
                                            }
                                            file.delete();
                                        } catch (Throwable th) {
                                            fileReceivedEvent.getFile().delete();
                                            throw th;
                                        }
                                    } else {
                                        CareLog.wtf(SerialImpactDetection.TAG, "file cannot be NULL!!!!", new Object[0]);
                                    }
                                }
                            } finally {
                                SerialImpactDetection serialImpactDetection2 = serialImpactDetection;
                                serialImpactDetection2.terminateLoadImpacts(serialImpactDetection2.getImpacts(), serialImpactDetection.getAccelerationEvents(), fileReceivedEvent.getError());
                            }
                        }

                        @Override // com.texa.carelib.profile.internal.filecarrier.SimpleFileCarrierListener, com.texa.carelib.profile.internal.filecarrier.FileCarrierListener
                        public void onFileReceivedProgressChanged(FileReceivedProgressChangedEvent fileReceivedProgressChangedEvent) {
                            serialImpactDetection.onImpactDataDownloadProgressChanged(new ImpactDataDownloadProgressChangedEvent(serialImpactDetection, fileReceivedProgressChangedEvent.getProgress()));
                        }
                    })) {
                        return;
                    }
                    serialImpactDetection.terminateLoadImpacts(serialImpactDetection.getImpacts(), serialImpactDetection.getAccelerationEvents(), new CareError.Builder(1, 10).setMessage(serialImpactDetection.getProfile().getProfileDelegate().getApplicationContext().getString(R.string.error_could_not_receive_file)).build());
                    CareLog.wtf(SerialImpactDetection.TAG, "Could not receive crash report file.", new Object[0]);
                    return;
                }
                CareLog.e(SerialImpactDetection.TAG, "Invalid file size.", new Object[0]);
                serialImpactDetection.terminateLoadImpacts(serialImpactDetection.getImpacts(), serialImpactDetection.getAccelerationEvents(), null);
            }
        };

        abstract void onMessageReceived(SerialImpactDetection serialImpactDetection, Message message, CareError careError);
    }

    public SerialImpactDetection(Profile profile, FeatureVerifier featureVerifier) {
        super(profile, featureVerifier);
        if (profile instanceof SerialProfileProxy) {
            SerialProfileProxy serialProfileProxy = (SerialProfileProxy) profile;
            this.mSerialProfileProxy = serialProfileProxy;
            serialProfileProxy.enableCommandSubscription(true, 55);
            serialProfileProxy.enableCommandSubscription(true, 100);
            serialProfileProxy.enableCommandSubscription(true, Commands.GetSOSStatus);
        } else {
            this.mSerialProfileProxy = null;
        }
        this.mStatus = Status.Idle;
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public void loadInfo() {
        super.loadInfo();
        this.mSerialProfileProxy.sendMessage(new Message.Builder().setCommandID(91).build());
    }

    @Override // com.texa.carelib.profile.ProfileSubModule, com.texa.carelib.profile.internal.SerialProfileMessageReceiver
    public void onMessageReceived(Object obj, Message message, CareError careError) {
        this.mStatus.onMessageReceived(this, message, careError);
        int commandID = message.getCommandID();
        if (commandID == 90) {
            onMessageReceivedSetCrashConfigurationParameter(careError);
            return;
        }
        if (commandID == 91) {
            onMessageReceivedGetCrashConfigurationParameters(message, careError);
            return;
        }
        if (commandID == 128) {
            onMessageReceivedStartRecording(careError);
        } else if (commandID == 238) {
            onMessageReceivedGetSerialNumber(message, careError);
        } else {
            if (commandID != 240) {
                return;
            }
            onMessageReceivedGetSOSStatus(message, careError);
        }
    }

    private void onMessageReceivedGetSerialNumber(Message message, CareError careError) {
        if (careError == null) {
            this.mSerialNumber = GetSerialNumberPacketParser.parse(message);
        }
    }

    private void onMessageReceivedStartRecording(CareError careError) {
        terminateSimulateImpact(careError);
    }

    synchronized void terminateEraseCrashData(final CareError careError) {
        if (Status.EraseCrash == this.mStatus) {
            if (careError == null) {
                CareLog.d(TAG, "Impact erased successfully.", new Object[0]);
                clearImpacts();
                clearAccelerationEvents();
                clearAccelerationEventsLPM();
            } else {
                CareLog.e(TAG, careError, "Could not erase impacts.", new Object[0]);
            }
            CarelibSchedulers.mainThread().schedule(new Runnable() { // from class: com.texa.carelib.care.impacts.internal.SerialImpactDetection$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m712x1c0e83c0(careError);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$terminateEraseCrashData$0$com-texa-carelib-care-impacts-internal-SerialImpactDetection, reason: not valid java name */
    public /* synthetic */ void m712x1c0e83c0(CareError careError) {
        try {
            Callback<ImpactDataErasedEvent> callback = this.mEraseCrashDataCallback;
            if (callback != null) {
                try {
                    callback.onCompleted(new ImpactDataErasedEvent(this, careError));
                } catch (Exception e) {
                    CareLog.e(TAG, e, "External exception catch.", new Object[0]);
                }
            }
        } finally {
            this.mEraseCrashDataCallback = null;
            setStatus(Status.Idle);
            TaskSynchronizer.getInstance().executeNext();
        }
    }

    private void onMessageReceivedSetCrashConfigurationParameter(CareError careError) {
        if (careError == null) {
            loadCrashConfigurationValues();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void onImpactDataDownloadProgressChanged(final ImpactDataDownloadProgressChangedEvent impactDataDownloadProgressChangedEvent) {
        CarelibSchedulers.mainThread().schedule(new Runnable() { // from class: com.texa.carelib.care.impacts.internal.SerialImpactDetection$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m711x2e73d03b(impactDataDownloadProgressChangedEvent);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onImpactDataDownloadProgressChanged$1$com-texa-carelib-care-impacts-internal-SerialImpactDetection, reason: not valid java name */
    public /* synthetic */ void m711x2e73d03b(ImpactDataDownloadProgressChangedEvent impactDataDownloadProgressChangedEvent) {
        ImpactDataDownloadListener impactDataDownloadListener = this.mImpactDataDownloadListener;
        if (impactDataDownloadListener != null) {
            impactDataDownloadListener.onImpactDataDownloadProgressChanged(impactDataDownloadProgressChangedEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void terminateLoadImpacts(final List<Impact> list, final List<CrashReport> list2, final CareError careError) {
        CarelibSchedulers.mainThread().schedule(new Runnable() { // from class: com.texa.carelib.care.impacts.internal.SerialImpactDetection$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m713xd72a638a(careError, list, list2);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$terminateLoadImpacts$2$com-texa-carelib-care-impacts-internal-SerialImpactDetection, reason: not valid java name */
    public /* synthetic */ void m713xd72a638a(CareError careError, List list, List list2) {
        try {
            ImpactDataDownloadListener impactDataDownloadListener = this.mImpactDataDownloadListener;
            if (impactDataDownloadListener != null) {
                if (careError == null) {
                    impactDataDownloadListener.onImpactDataDownloadCompleted(new ImpactDataDownloadCompletedEvent(this, list, list2, null));
                } else {
                    impactDataDownloadListener.onImpactDataDownloadCompleted(new ImpactDataDownloadCompletedEvent(this, list, list2, new CareError.Builder(1, 24).setMessage(getProfile().getProfileDelegate().getApplicationContext().getResources().getString(R.string.error_care_impact_reports_download_error)).setInnerError(careError).build()));
                }
            }
        } finally {
            this.mImpactDataDownloadListener = null;
            setStatus(Status.Idle);
            TaskSynchronizer.getInstance().executeNext();
        }
    }

    private synchronized void terminateSimulateImpact(CareError careError) {
        Callback<SimulateImpactCompletedEvent> callback = this.mSimulateImpactCallback;
        if (callback != null) {
            try {
                callback.onCompleted(new SimulateImpactCompletedEvent(this, careError));
            } catch (Exception e) {
                CareLog.e(TAG, e, "External exception catch.", new Object[0]);
            }
            this.mSimulateImpactCallback = null;
        } else {
            this.mSimulateImpactCallback = null;
        }
    }

    private void onMessageReceivedGetSOSStatus(Message message, CareError careError) {
        if (careError == null) {
            String str = TAG;
            CareLog.v(str, "Received command: %s", Commands.getName(Integer.valueOf(message.getCommandID())));
            GetSOSStatusParser.GetSOSStatusResponse getSOSStatusResponse = GetSOSStatusParser.parse(message);
            setEnabled(GetSOSStatusParser.SOSStatus.Undefined != getSOSStatusResponse.getSOSStatus());
            if (GetSOSStatusParser.SOSStatus.Present == getSOSStatusResponse.getSOSStatus()) {
                CareLog.d(str, "Received impact notification!!!!", new Object[0]);
                Impact impact = new Impact();
                impact.setDate(getSOSStatusResponse.getDate());
                impact.setCrashReport(getSOSStatusResponse.getCrashReport());
                setLastImpact(impact);
                fireCrashDetected(new ImpactDetectedEvent(this, impact));
            }
        }
    }

    private void onMessageReceivedGetCrashConfigurationParameters(Message message, CareError careError) {
        if (careError == null) {
            GetCrashConfigurationParametersParser.GetCrashConfigurationParametersResponse getCrashConfigurationParametersResponse = GetCrashConfigurationParametersParser.parse(message);
            SparseArray<byte[]> data = getCrashConfigurationParametersResponse.getData();
            int iKeyAt = 0;
            for (int i = 0; i < data.size(); i++) {
                iKeyAt = data.keyAt(i);
                byte[] bArr = data.get(iKeyAt);
                String str = TAG;
                Object[] objArr = new Object[2];
                objArr[0] = Integer.valueOf(iKeyAt);
                objArr[1] = Integer.valueOf(bArr != null ? bArr.length : 0);
                CareLog.d(str, "Configuration %d length: %d", objArr);
            }
            for (int i2 = 0; i2 < data.size(); i2++) {
                try {
                    iKeyAt = data.keyAt(i2);
                    ByteBuffer byteBufferWrap = ByteBuffer.wrap(data.get(iKeyAt));
                    byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
                    if (iKeyAt == 0) {
                        super.setAccelerationThreshold(Float.valueOf(ByteBufferUtils.getUnsignedShort(byteBufferWrap) / 1000.0f));
                    } else if (iKeyAt == 1) {
                        super.setSpeedTimeout(Float.valueOf(ByteBufferUtils.getUnsignedInt(byteBufferWrap) / 1000000.0f));
                    } else if (iKeyAt == 2) {
                        super.setTimeOverThreshold(Float.valueOf(ByteBufferUtils.getUnsignedShort(byteBufferWrap) / 1000.0f));
                    } else if (iKeyAt == 5) {
                        super.setVerboseReportSamplesCount(Long.valueOf(ByteBufferUtils.getUnsignedInt(byteBufferWrap)));
                    }
                } catch (Exception e) {
                    CareLog.e(TAG, e, "An error is occurred with data manager parameter ID: %d", Integer.valueOf(iKeyAt));
                }
            }
            updateSupportedFrequencies(getCrashConfigurationParametersResponse);
        }
    }

    private void updateSupportedFrequencies(GetCrashConfigurationParametersParser.GetCrashConfigurationParametersResponse getCrashConfigurationParametersResponse) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(getCrashConfigurationParametersResponse.getData().get(3, new byte[]{10, 0, 50, 0, 100, 0}));
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
        TreeSet<Integer> treeSet = new TreeSet<Integer>() { // from class: com.texa.carelib.care.impacts.internal.SerialImpactDetection.1
        };
        while (byteBufferWrap.remaining() > 0) {
            treeSet.add(Integer.valueOf(ByteBufferUtils.getUnsignedShort(byteBufferWrap)));
        }
        setSupportedFrequencies(treeSet);
    }

    protected float parseSpeedTimeout(char[] cArr) {
        return (((long) cArr[0]) & 255) + 0.0f + ((((long) cArr[1]) << 8) & 65280) + ((((long) cArr[2]) << 16) & 16711680) + ((((long) cArr[3]) << 24) & (-16777216));
    }

    @Override // com.texa.carelib.care.impacts.ImpactDetection
    public void eraseImpacts(final Callback<ImpactDataErasedEvent> callback) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        if (!getFeatureVerifier().hasFeature(4)) {
            throw new FeatureNotSupportedException();
        }
        SynchronizedTask.Builder builder = new SynchronizedTask.Builder(TAG + "#eraseImpacts()", new Runnable() { // from class: com.texa.carelib.care.impacts.internal.SerialImpactDetection$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m709xfae56a8(callback);
            }
        });
        builder.setTimeout(300000);
        builder.setPriority(50);
        TaskSynchronizer.getInstance().execute(builder.build());
    }

    /* JADX INFO: renamed from: lambda$eraseImpacts$3$com-texa-carelib-care-impacts-internal-SerialImpactDetection, reason: not valid java name */
    public /* synthetic */ void m709xfae56a8(Callback callback) {
        try {
            if (Status.Idle != this.mStatus) {
                throw new OperationAlreadyRunningException();
            }
            setStatus(Status.EraseCrash);
            this.mEraseCrashDataCallback = callback;
            this.mSerialProfileProxy.sendMessage(new Message.Builder().setCommandID(56).build());
        } catch (CareLibException e) {
            CareLog.e(TAG, e, "Unable to erase impacts at this moment.", new Object[0]);
            TaskSynchronizer.getInstance().executeNext();
        }
    }

    @Override // com.texa.carelib.care.impacts.ImpactDetection
    public void loadImpacts(final ImpactDataDownloadListener impactDataDownloadListener) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        if (!getFeatureVerifier().hasFeature(4)) {
            throw new FeatureNotSupportedException();
        }
        String str = TAG;
        CareLog.v(str, "loadImpacts", new Object[0]);
        SynchronizedTask.Builder builder = new SynchronizedTask.Builder(str + "#loadImpacts()", new Runnable() { // from class: com.texa.carelib.care.impacts.internal.SerialImpactDetection$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m710x25edd2e1(impactDataDownloadListener);
            }
        });
        builder.setPriority(100);
        builder.setTimeout(300000);
        TaskSynchronizer.getInstance().execute(builder.build());
    }

    /* JADX INFO: renamed from: lambda$loadImpacts$4$com-texa-carelib-care-impacts-internal-SerialImpactDetection, reason: not valid java name */
    public /* synthetic */ void m710x25edd2e1(ImpactDataDownloadListener impactDataDownloadListener) {
        try {
            if (Status.Idle != this.mStatus) {
                throw new OperationAlreadyRunningException();
            }
            setStatus(Status.DownloadCrash);
            this.mImpactDataDownloadListener = impactDataDownloadListener;
            this.mSerialProfileProxy.sendMessage(new Message.Builder().setCommandID(55).build());
        } catch (CareLibException e) {
            CareLog.e(TAG, e, "Unable to load impacts at this moment.", new Object[0]);
            TaskSynchronizer.getInstance().executeNext();
        }
    }

    @Override // com.texa.carelib.care.impacts.ImpactDetectionConfiguration
    public boolean loadCrashConfigurationValues() {
        CareLog.v(TAG, "loadCrashConfigurationValues", new Object[0]);
        this.mSerialProfileProxy.sendMessage(new Message.Builder().setCommandID(91).build());
        return true;
    }

    @Override // com.texa.carelib.care.impacts.internal.ImpactDetectionBase, com.texa.carelib.care.impacts.ImpactDetectionConfiguration
    public void setAccelerationThreshold(Float f) {
        if (f != null) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(3);
            byteBufferAllocate.put((byte) 0);
            byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
            ByteBufferUtils.putUnsignedShort(byteBufferAllocate, Integer.valueOf(Math.round(f.floatValue() * 1000.0f)));
            this.mSerialProfileProxy.sendMessage(new Message.Builder().setCommandID(90).setPayload(byteBufferAllocate.array()).build());
            return;
        }
        super.setAccelerationThreshold(null);
    }

    @Override // com.texa.carelib.care.impacts.internal.ImpactDetectionBase, com.texa.carelib.care.impacts.ImpactDetectionConfiguration
    public void setSpeedTimeout(Float f) {
        if (f != null) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(5);
            byteBufferAllocate.put((byte) 1);
            byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
            ByteBufferUtils.putUnsignedInt(byteBufferAllocate, Long.valueOf(Math.round(f.floatValue() * 1000000.0f)));
            this.mSerialProfileProxy.sendMessage(new Message.Builder().setCommandID(90).setPayload(byteBufferAllocate.array()).build());
            return;
        }
        super.setSpeedTimeout(null);
    }

    @Override // com.texa.carelib.care.impacts.internal.ImpactDetectionBase, com.texa.carelib.care.impacts.ImpactDetectionConfiguration
    public void setTimeOverThreshold(Float f) {
        if (f != null) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(5);
            byteBufferAllocate.put((byte) 2);
            byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
            ByteBufferUtils.putUnsignedInt(byteBufferAllocate, Long.valueOf(Math.round(f.floatValue() * 1000.0f)));
            this.mSerialProfileProxy.sendMessage(new Message.Builder().setCommandID(90).setPayload(byteBufferAllocate.array()).build());
            return;
        }
        super.setTimeOverThreshold(null);
    }

    @Override // com.texa.carelib.care.impacts.internal.ImpactDetectionBase, com.texa.carelib.care.impacts.ImpactDetection
    public void simulateImpact(int i, Callback<SimulateImpactCompletedEvent> callback) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        if (this.mSimulateImpactCallback != null) {
            CareLog.w(TAG, "Impact simulation already started.", new Object[0]);
            throw new OperationAlreadyRunningException();
        }
        CareLog.d(TAG, "Simulating impact with samples frequency: %d", Integer.valueOf(i));
        this.mSimulateImpactCallback = callback;
        this.mSerialProfileProxy.sendMessage(new Message.Builder().setCommandID(128).setPayload(getStartRecordingPayload(0, i)).build());
    }

    boolean isCommandSupported(int i) {
        SerialProfileProxy serialProfileProxy = this.mSerialProfileProxy;
        if (serialProfileProxy != null) {
            return serialProfileProxy.getCommandVerifier().isCommandSupported(i);
        }
        return false;
    }

    byte[] getStartRecordingPayload(int i, int i2) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        ByteBufferUtils.putUnsignedByte(byteBufferAllocate, Integer.valueOf(i));
        ByteBufferUtils.putUnsignedShort(byteBufferAllocate, Integer.valueOf(i2));
        byteBufferAllocate.put((byte) 0);
        byteBufferAllocate.position(0);
        return byteBufferAllocate.array();
    }

    @Override // com.texa.carelib.care.impacts.internal.ImpactDetectionBase
    protected void resetData(boolean z) {
        super.resetData(z);
        this.mStatus = Status.Idle;
    }

    @Override // com.texa.carelib.care.impacts.internal.ImpactDetectionBase, com.texa.carelib.profile.ProfileSubModule
    public void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
        super.onCommunicationStatusChanged(communicationStatusChangedEvent);
        int i = AnonymousClass2.$SwitchMap$com$texa$carelib$communication$CommunicationStatus[communicationStatusChangedEvent.getCommunicationStatus().ordinal()];
        if (i == 1 || i == 2 || i == 3 || i == 4) {
            terminateSimulateImpact(new CareError.Builder(1, 19).setMessage(getProfile().getProfileDelegate().getApplicationContext().getString(R.string.error_connection_lost)).build());
            terminateLoadImpacts(getImpacts(), getAccelerationEvents(), new CareError.Builder(1, 19).setMessage(getProfile().getProfileDelegate().getApplicationContext().getString(R.string.error_connection_lost)).build());
            terminateEraseCrashData(new CareError.Builder(1, 19).setMessage(getProfile().getProfileDelegate().getApplicationContext().getString(R.string.error_connection_lost)).build());
        }
    }

    /* JADX INFO: renamed from: com.texa.carelib.care.impacts.internal.SerialImpactDetection$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$communication$CommunicationStatus;

        static {
            int[] iArr = new int[CommunicationStatus.values().length];
            $SwitchMap$com$texa$carelib$communication$CommunicationStatus = iArr;
            try {
                iArr[CommunicationStatus.CONNECTION_LOST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.DISCONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.NO_MEDIUM_ACTIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.NOT_SUPPORTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @Override // com.texa.carelib.care.impacts.ImpactDetection
    public boolean isReadingImpactData() {
        return this.mImpactDataDownloadListener != null;
    }

    private void setStatus(Status status) {
        this.mStatus = status;
    }
}

package com.texa.carelib.webservices.internal;

import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.OperationAlreadyRunningException;
import com.texa.carelib.core.utils.FirmwareVersion;
import com.texa.carelib.webservices.FirmwareType;
import com.texa.carelib.webservices.ServiceFirmwareInfoLoadedEvent;
import com.texa.carelib.webservices.ServiceFirmwareInfoStatus;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
class MockServiceFirmwareInfo extends ServiceFirmwareInfoBase {
    private static final int LOAD_INFO_DELAY = 2000;
    private static final ScheduledExecutorService mExecutor = Executors.newSingleThreadScheduledExecutor();

    @Override // com.texa.carelib.webservices.ServiceFirmwareInfo
    public void loadFirmwareInfo(String str, final FirmwareVersion firmwareVersion, final FirmwareVersion firmwareVersion2, final Callback<ServiceFirmwareInfoLoadedEvent> callback) throws CareLibException {
        if (getStatus() == ServiceFirmwareInfoStatus.Pending) {
            throw new OperationAlreadyRunningException("Load firmware info is already in progress.");
        }
        setMainAppVersion(null);
        setServiceAppVersion(null);
        setServiceStatus(ServiceFirmwareInfoStatus.Pending);
        mExecutor.schedule(new Runnable() { // from class: com.texa.carelib.webservices.internal.MockServiceFirmwareInfo$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m784x1e5f6913(firmwareVersion, firmwareVersion2, callback);
            }
        }, 2000L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: lambda$loadFirmwareInfo$0$com-texa-carelib-webservices-internal-MockServiceFirmwareInfo, reason: not valid java name */
    public /* synthetic */ void m784x1e5f6913(FirmwareVersion firmwareVersion, FirmwareVersion firmwareVersion2, Callback callback) {
        setMainAppVersion(getAvailableMainAppVersion(firmwareVersion));
        setServiceAppVersion(getAvailableServiceAppVersion(firmwareVersion2));
        setServiceStatus(ServiceFirmwareInfoStatus.Loaded);
        callback.onCompleted(new ServiceFirmwareInfoLoadedEvent(this, getMainAppVersion(), getServiceAppVersion(), null));
    }

    private FirmwareVersion getAvailableMainAppVersion(FirmwareVersion firmwareVersion) {
        return new FirmwareVersion(firmwareVersion.getVersion().getMajor(), firmwareVersion.getVersion().getMinor(), firmwareVersion.getVersion().getBuild(), Integer.valueOf(firmwareVersion.getVersion().getRevision().intValue() + 1)).setFileName(getFileName(firmwareVersion.getProductName(), firmwareVersion.getCustomerName(), firmwareVersion.getBoardName(), firmwareVersion.getApplicationName(), FirmwareType.Main, firmwareVersion.getVersion().getMajor().intValue(), firmwareVersion.getVersion().getMinor().intValue(), firmwareVersion.getVersion().getBuild().intValue(), firmwareVersion.getVersion().getRevision().intValue() + 1));
    }

    private FirmwareVersion getAvailableServiceAppVersion(FirmwareVersion firmwareVersion) {
        return new FirmwareVersion(firmwareVersion.getVersion().getMajor(), firmwareVersion.getVersion().getMinor(), firmwareVersion.getVersion().getBuild(), Integer.valueOf(firmwareVersion.getVersion().getRevision().intValue() + 1)).setFileName(getFileName(firmwareVersion.getProductName(), firmwareVersion.getCustomerName(), firmwareVersion.getBoardName(), firmwareVersion.getApplicationName(), FirmwareType.Service, firmwareVersion.getVersion().getMajor().intValue(), firmwareVersion.getVersion().getMinor().intValue(), firmwareVersion.getVersion().getBuild().intValue(), firmwareVersion.getVersion().getRevision().intValue() + 1));
    }

    private String getFileName(String str, String str2, String str3, String str4, FirmwareType firmwareType, int i, int i2, int i3, int i4) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("_[");
        sb.append(str2);
        sb.append("]_[");
        sb.append(str4);
        sb.append("]_[");
        sb.append(str3);
        sb.append("]_[");
        if (FirmwareType.Main == firmwareType) {
            sb.append("MA_");
        } else if (FirmwareType.Service == firmwareType) {
            sb.append("SA_");
        }
        sb.append(i);
        sb.append("_");
        sb.append(i2);
        sb.append("_");
        sb.append(i3);
        sb.append("_");
        sb.append(i4);
        sb.append("]");
        sb.append(".bin");
        return sb.toString();
    }
}

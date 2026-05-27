package com.texa.careapp.app.update;

import android.app.NotificationManager;
import android.content.Context;
import android.content.SharedPreferences;
import androidx.core.app.NotificationCompat;
import com.activeandroid.Cache;
import com.texa.care.R;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.app.update.FirmwareUpdateController;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.firmwareupgrade.FirmwareUpgradeProcedure;
import com.texa.carelib.care.firmwareupgrade.FirmwareUpgradeProcedureListener;
import com.texa.carelib.care.firmwareupgrade.events.FirmwareUpgradeCompletedEvent;
import com.texa.carelib.care.firmwareupgrade.events.FirmwareUpgradeProgressChangedEvent;
import com.texa.carelib.core.AppType;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.utils.FirmwareVersion;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.webservices.FirmwareType;
import com.texa.carelib.webservices.ServiceFirmwareDownloadCompletedEvent;
import com.texa.carelib.webservices.ServiceFirmwareInfoLoadedEvent;
import com.texa.carelib.webservices.TexaService;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.io.File;
import java.util.HashMap;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class FirmwareUpdateController implements FirmwareUpgradeProcedureListener {
    public static final String DO_UPDATE_DISPOSABLE_KEY = "DO_UPDATE_DISPOSABLE_KEY";
    private static final String MAIN_TXT = " (MAIN)";
    private static final String SERVICE_TXT = " (SERVICE)";
    private static final int STATUS_NOT_CONNECTED = -1;
    private static final int STATUS_NO_UPDATE_AVAILABLE = 0;
    private static final int STATUS_UPDATING_MAIN = 1;
    private static final int STATUS_UPDATING_SERVICE = 2;

    @Inject
    protected Accessory accessory;
    private NotificationCompat.Builder mBuilder;
    protected ICareObserver mCareObserver;
    protected Context mContext;
    private HashMap<String, Disposable> mDisposableHashMap;
    protected DongleDataManager mDongleDataManager;
    private DongleModel mDongleModel;

    @Inject
    protected EventBus mEventBus;

    @Inject
    protected FirmwareUpgradeProcedure mFirmwareUpgradeProcedure;
    private boolean mIsWorking;
    private HashMap<AppType, Integer> mNotificationIds;
    protected NotificationManager mNotificationManager;

    @Inject
    protected SharedPreferences mPrefs;
    protected TexaService mTexaService;

    @Inject
    protected Profile profile;

    public FirmwareUpdateController(Context context, NotificationManager notificationManager, TexaService texaService, ICareObserver iCareObserver, DongleDataManager dongleDataManager) {
        this.mDisposableHashMap = new HashMap<>();
        HashMap<AppType, Integer> map = new HashMap<>(2);
        this.mNotificationIds = map;
        this.mContext = context;
        this.mNotificationManager = notificationManager;
        this.mTexaService = texaService;
        this.mCareObserver = iCareObserver;
        this.mDongleDataManager = dongleDataManager;
        map.put(AppType.SERVICE, 7);
        this.mNotificationIds.put(AppType.MAIN, 6);
        ((CareApplication) this.mContext.getApplicationContext()).component().inject(this);
        this.mBuilder = new NotificationCompat.Builder(this.mContext, Constants.NOTIFICATION_DEFAULT_PRIORITY).setContentTitle(getString(R.string.care_update_notification_title)).setSmallIcon(com.texa.careapp.R.drawable.ic_launcher_e).setAutoCancel(false).setWhen(System.currentTimeMillis()).setOnlyAlertOnce(true).setProgress(0, 0, true);
    }

    protected FirmwareUpdateController() {
        this.mDisposableHashMap = new HashMap<>();
        this.mNotificationIds = new HashMap<>(2);
    }

    @Override // com.texa.carelib.care.firmwareupgrade.FirmwareUpgradeProcedureListener
    public void onFirmwareUpgradeProgressChanged(FirmwareUpgradeProgressChangedEvent firmwareUpgradeProgressChangedEvent) {
        this.mBuilder.setProgress(100, (int) firmwareUpgradeProgressChangedEvent.getProgress(), false);
        this.mBuilder.setContentText(getString(R.string.firmware_update_inprogress) + MAIN_TXT);
        updateNotification(firmwareUpgradeProgressChangedEvent.getAppType());
    }

    @Override // com.texa.carelib.care.firmwareupgrade.FirmwareUpgradeProcedureListener
    public void onFirmwareUpgradeCompleted(FirmwareUpgradeCompletedEvent firmwareUpgradeCompletedEvent) {
        onFirmwareUpgradeCompleted(firmwareUpgradeCompletedEvent.getError(), firmwareUpgradeCompletedEvent.getAppType());
    }

    void doAutoUpdateIfNeeded() {
        if (isCareReadyForFirmwareUpdate()) {
            Timber.d("Begin firmware update", new Object[0]);
            doUpdate();
        } else {
            this.mEventBus.post(new FirmwareUpdateStatus(-1));
        }
    }

    void doUpdate() {
        DongleModel dongleModel = this.mDongleDataManager.getDongleModel();
        this.mDongleModel = dongleModel;
        if (dongleModel == null) {
            Timber.w("mDongleModel is null", new Object[0]);
        } else {
            Utils.safeDispose(this.mDisposableHashMap, DO_UPDATE_DISPOSABLE_KEY);
            this.mDisposableHashMap.put(DO_UPDATE_DISPOSABLE_KEY, Observable.zip(this.mCareObserver.observeAccessorySerialNumber(), this.mCareObserver.observeAccessoryMainAppVersion(), this.mCareObserver.observeAccessoryMainAppVersionPending(), this.mCareObserver.observeAccessoryServiceAppVersion(), this.mCareObserver.observeAccessoryServiceAppVersionPending(), FirmwareUpdateController$$ExternalSyntheticLambda4.INSTANCE).take(1L).subscribe(new Consumer() { // from class: com.texa.careapp.app.update.FirmwareUpdateController$$ExternalSyntheticLambda2
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws CareLibException {
                    this.f$0.checkForUpdatesOnServer((FirmwareUpdateController.FwUpdateInfos) obj);
                }
            }, new Consumer() { // from class: com.texa.careapp.app.update.FirmwareUpdateController$$ExternalSyntheticLambda3
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    FirmwareUpdateController.lambda$doUpdate$0((Throwable) obj);
                }
            }));
        }
    }

    static /* synthetic */ void lambda$doUpdate$0(Throwable th) throws Exception {
        Timber.w(th, "Error Performing firmware update", new Object[0]);
        th.printStackTrace();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkForUpdatesOnServer(final FwUpdateInfos fwUpdateInfos) throws CareLibException {
        this.mTexaService.getFirmwareInfoProcedure().loadFirmwareInfo(fwUpdateInfos.serialNumber, fwUpdateInfos.getCurrentMainAppVersion(), fwUpdateInfos.getCurrentServiceAppVersion(), new Callback() { // from class: com.texa.careapp.app.update.FirmwareUpdateController$$ExternalSyntheticLambda0
            @Override // com.texa.carelib.core.Callback
            public final void onCompleted(Object obj) {
                this.f$0.m501xa593c9d(fwUpdateInfos, (ServiceFirmwareInfoLoadedEvent) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$checkForUpdatesOnServer$1$com-texa-careapp-app-update-FirmwareUpdateController, reason: not valid java name */
    public /* synthetic */ void m501xa593c9d(FwUpdateInfos fwUpdateInfos, ServiceFirmwareInfoLoadedEvent serviceFirmwareInfoLoadedEvent) {
        CareError error = serviceFirmwareInfoLoadedEvent.getError();
        if (error != null) {
            Timber.w("loadFirmwareInfo error: " + error.toString(), new Object[0]);
            return;
        }
        parseServerResponse(serviceFirmwareInfoLoadedEvent, this.mDongleModel, fwUpdateInfos);
    }

    private void parseServerResponse(ServiceFirmwareInfoLoadedEvent serviceFirmwareInfoLoadedEvent, DongleModel dongleModel, FwUpdateInfos fwUpdateInfos) {
        FirmwareVersion mainAppVersion = serviceFirmwareInfoLoadedEvent.getMainAppVersion();
        FirmwareVersion serviceAppVersion = serviceFirmwareInfoLoadedEvent.getServiceAppVersion();
        Timber.d("Latest MAIN APP version: %s", mainAppVersion);
        Timber.d("Latest SERVICE APP version: %s", serviceAppVersion);
        dongleModel.setMainAppVersionUpdate(mainAppVersion);
        dongleModel.setServiceAppVersionUpdate(serviceAppVersion);
        save(dongleModel);
        if (isCareReadyForFirmwareUpdate()) {
            Timber.d("care is connected, starting update now", new Object[0]);
            doUpdateInner(fwUpdateInfos);
        } else {
            this.mEventBus.post(new FirmwareUpdateStatus(-1));
        }
    }

    protected boolean save(DongleModel dongleModel) {
        try {
            Utils.safeModelSave(dongleModel, Cache.getContext());
            return true;
        } catch (DatabaseIOException e) {
            Timber.e(e, "Could not save dongle model in database.", new Object[0]);
            Timber.e(e, "Could not save dongle model in database.", new Object[0]);
            return false;
        }
    }

    private boolean isCareReadyForFirmwareUpdate() {
        int status = this.accessory.getStatus();
        Timber.d("FIRMWARE UPDATE Accessory status= %s", Utils.readableAccessoryStatus(status));
        return 4 == status || 3 == status || status == 0;
    }

    public void doUpdateInner(FwUpdateInfos fwUpdateInfos) {
        String serialNumber = this.accessory.getSerialNumber();
        if (serialNumber == null) {
            throw new IllegalArgumentException("hwid cannot be null!");
        }
        if (updateServiceAppIfNeeded(fwUpdateInfos, serialNumber)) {
            this.mEventBus.post(new FirmwareUpdateStatus(2));
        } else if (updateMainAppIfNeeded(fwUpdateInfos, serialNumber)) {
            this.mEventBus.post(new FirmwareUpdateStatus(1));
        } else {
            Timber.d("no update available, nothing to do", new Object[0]);
            this.mEventBus.post(new FirmwareUpdateStatus(0));
        }
    }

    private boolean updateMainAppIfNeeded(FwUpdateInfos fwUpdateInfos, String str) {
        FirmwareVersion mainAppVersionUpdate = this.mDongleModel.getMainAppVersionUpdate();
        FirmwareVersion currentMainAppVersion = fwUpdateInfos.getCurrentMainAppVersion();
        if (!FirmwareVersion.isValid(mainAppVersionUpdate) || isEquals(mainAppVersionUpdate, currentMainAppVersion)) {
            return false;
        }
        beginUpgradeMainApp(str, mainAppVersionUpdate);
        return true;
    }

    private boolean updateServiceAppIfNeeded(FwUpdateInfos fwUpdateInfos, String str) {
        FirmwareVersion serviceAppVersionUpdate = this.mDongleModel.getServiceAppVersionUpdate();
        FirmwareVersion currentServiceAppVersion = fwUpdateInfos.getCurrentServiceAppVersion();
        if (!FirmwareVersion.isValid(serviceAppVersionUpdate) || isEquals(serviceAppVersionUpdate, currentServiceAppVersion)) {
            return false;
        }
        beginUpgradeServiceApp(str, serviceAppVersionUpdate);
        return true;
    }

    private boolean isEquals(FirmwareVersion firmwareVersion, FirmwareVersion firmwareVersion2) {
        if (firmwareVersion == firmwareVersion2) {
            return true;
        }
        if (firmwareVersion.getBoardName() == null ? firmwareVersion2.getBoardName() != null : !firmwareVersion.getBoardName().equals(firmwareVersion2.getBoardName())) {
            return false;
        }
        if (firmwareVersion.getApplicationName() == null ? firmwareVersion2.getApplicationName() != null : !firmwareVersion.getApplicationName().equals(firmwareVersion2.getApplicationName())) {
            return false;
        }
        if (firmwareVersion.getCustomerName() == null ? firmwareVersion2.getCustomerName() != null : !firmwareVersion.getCustomerName().equals(firmwareVersion2.getCustomerName())) {
            return false;
        }
        if (firmwareVersion.getProductName() == null ? firmwareVersion2.getProductName() != null : !firmwareVersion.getProductName().equals(firmwareVersion2.getProductName())) {
            return false;
        }
        if (firmwareVersion.getAppType() != firmwareVersion2.getAppType()) {
            return false;
        }
        return firmwareVersion.getVersion().equals(firmwareVersion2.getVersion());
    }

    void beginUpgradeMainApp(String str, FirmwareVersion firmwareVersion) {
        beginUpgrade(FirmwareType.Main, str, firmwareVersion);
    }

    void beginUpgradeServiceApp(String str, FirmwareVersion firmwareVersion) {
        beginUpgrade(FirmwareType.Service, str, firmwareVersion);
    }

    private void beginUpgrade(final FirmwareType firmwareType, String str, FirmwareVersion firmwareVersion) {
        if (this.mIsWorking) {
            Timber.d("Operation already in progress", new Object[0]);
            return;
        }
        this.mDongleModel.lockDataModel();
        this.mIsWorking = true;
        try {
            this.mTexaService.getFirmwareDownloadProcedure().downloadFirmware(firmwareType, firmwareVersion, str, new Callback() { // from class: com.texa.careapp.app.update.FirmwareUpdateController$$ExternalSyntheticLambda1
                @Override // com.texa.carelib.core.Callback
                public final void onCompleted(Object obj) {
                    this.f$0.m500xecd0f43a(firmwareType, (ServiceFirmwareDownloadCompletedEvent) obj);
                }
            });
        } catch (CareLibException e) {
            e.printStackTrace();
            onError("downloadFirmware canDoIt=false", firmwareType == FirmwareType.Main ? MAIN_TXT : firmwareType == FirmwareType.Service ? SERVICE_TXT : "");
        }
    }

    /* JADX INFO: renamed from: lambda$beginUpgrade$2$com-texa-careapp-app-update-FirmwareUpdateController, reason: not valid java name */
    public /* synthetic */ void m500xecd0f43a(FirmwareType firmwareType, ServiceFirmwareDownloadCompletedEvent serviceFirmwareDownloadCompletedEvent) {
        if (serviceFirmwareDownloadCompletedEvent.getError() != null) {
            onError(serviceFirmwareDownloadCompletedEvent.getError(), firmwareType == FirmwareType.Main ? MAIN_TXT : firmwareType == FirmwareType.Service ? SERVICE_TXT : "");
        } else {
            onDownloadSuccess(firmwareType == FirmwareType.Main ? AppType.MAIN : firmwareType == FirmwareType.Service ? AppType.SERVICE : AppType.UNDEF, serviceFirmwareDownloadCompletedEvent.getFile());
        }
    }

    private void onDownloadSuccess(AppType appType, File file) {
        String str = MAIN_TXT;
        if (file != null) {
            updateNotification(appType);
            try {
                if (AppType.MAIN == appType) {
                    this.mFirmwareUpgradeProcedure.updateMainApp(file, this);
                } else if (AppType.SERVICE == appType) {
                    this.mFirmwareUpgradeProcedure.updateServiceApp(file, this);
                }
                return;
            } catch (CareLibException e) {
                e.printStackTrace();
                deleteDownloadedResources(file);
                if (appType != AppType.MAIN) {
                    str = SERVICE_TXT;
                }
                onError("canUpdate=false", str);
                return;
            }
        }
        if (appType != AppType.MAIN) {
            str = SERVICE_TXT;
        }
        onError("canUpdate=false", str);
        Timber.w(" onDownloadSuccess -> File not exists", new Object[0]);
    }

    private void deleteDownloadedResources(File file) {
        if (!file.exists() || file.delete()) {
            return;
        }
        Timber.w("Could not delete firmware at path: %s", file.getAbsolutePath());
    }

    protected void setNotificationManager(NotificationManager notificationManager) {
        this.mNotificationManager = notificationManager;
    }

    private void onFirmwareUpgradeCompleted(CareError careError, AppType appType) {
        this.mIsWorking = false;
        if (careError != null) {
            onError(careError, appType == AppType.MAIN ? MAIN_TXT : SERVICE_TXT);
        } else {
            onSuccess(appType);
        }
    }

    private void onSuccess(AppType appType) {
        String string = getString(R.string.firmware_update_completed);
        if (AppType.MAIN == appType) {
            string = string + MAIN_TXT;
            DongleModel dongleModel = this.mDongleModel;
            dongleModel.setMainAppVersion(dongleModel.getMainAppVersionUpdate());
            SharedPreferences.Editor editorEdit = this.mPrefs.edit();
            editorEdit.putBoolean(this.accessory.getSerialNumber() + Constants.PREFS_KEY_FIRMWARE_UPDATE, true);
            editorEdit.apply();
        } else if (AppType.SERVICE == appType) {
            string = string + SERVICE_TXT;
            DongleModel dongleModel2 = this.mDongleModel;
            dongleModel2.setServiceAppVersion(dongleModel2.getServiceAppVersionUpdate());
        }
        this.mBuilder.setContentText(string).setProgress(100, 100, false);
        updateNotification(appType);
        save(this.mDongleModel);
        exit();
        doUpdate();
    }

    protected void onError(CareError careError, String str) {
        this.mBuilder.setContentText(getStringUpdateError() + str);
        this.mBuilder.setProgress(0, 0, false);
        this.mBuilder.setStyle(new NotificationCompat.BigTextStyle().bigText(careError.toString()));
        updateNotification(str.equals(MAIN_TXT) ? AppType.MAIN : AppType.SERVICE);
        Timber.w(careError.getException(), careError.toString(), new Object[0]);
        exit();
    }

    private void onError(String str, String str2) {
        this.mBuilder.setContentText(getStringUpdateError() + str2).setProgress(0, 0, false).setContentInfo(str);
        updateNotification(str2.equals(MAIN_TXT) ? AppType.MAIN : AppType.SERVICE);
        Timber.e(str, new Object[0]);
        exit();
    }

    private String getStringUpdateError() {
        return getString(R.string.firmware_update_error);
    }

    private void exit() {
        this.mIsWorking = false;
        DongleModel dongleModel = this.mDongleModel;
        if (dongleModel != null) {
            dongleModel.unlockDataModel();
            this.mDongleModel = null;
        }
    }

    private String getString(int i) {
        return this.mContext.getString(i);
    }

    private void updateNotification(AppType appType) {
        Integer num = this.mNotificationIds.get(appType);
        this.mNotificationManager.notify(num.intValue(), this.mBuilder.build());
    }

    public static class FwUpdateInfos {
        private final FirmwareVersion main;
        private final FirmwareVersion mainPending;
        public final String serialNumber;
        private final FirmwareVersion service;
        private final FirmwareVersion servicePending;

        public FwUpdateInfos(String str, FirmwareVersion firmwareVersion, FirmwareVersion firmwareVersion2, FirmwareVersion firmwareVersion3, FirmwareVersion firmwareVersion4) {
            this.serialNumber = str;
            this.main = firmwareVersion;
            this.mainPending = firmwareVersion2;
            this.service = firmwareVersion3;
            this.servicePending = firmwareVersion4;
        }

        public FirmwareVersion getCurrentMainAppVersion() {
            if (Utils.isFirmwareVersionValid(this.mainPending)) {
                return this.mainPending;
            }
            return this.main;
        }

        public FirmwareVersion getCurrentServiceAppVersion() {
            if (Utils.isFirmwareVersionValid(this.servicePending)) {
                return this.servicePending;
            }
            return this.service;
        }
    }

    public class FirmwareUpdateStatus {
        private int status;

        public int getStatus() {
            return this.status;
        }

        FirmwareUpdateStatus(int i) {
            this.status = i;
        }
    }
}

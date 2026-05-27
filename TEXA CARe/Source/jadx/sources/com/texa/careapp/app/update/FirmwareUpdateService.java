package com.texa.careapp.app.update;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.service.RxCareService;
import com.texa.careapp.app.service.ServiceNotificationController;
import com.texa.careapp.utils.wakelock.WakelockManager;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.webservices.TexaService;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class FirmwareUpdateService extends RxCareService {
    private static final String SHOULD_FIlTER = "SHOULD_FIlTER";

    @Inject
    protected Accessory mAccessory;
    private PropertyChangeListener mAccessoryPropertyChangeListener = new PropertyChangeListener() { // from class: com.texa.careapp.app.update.FirmwareUpdateService$$ExternalSyntheticLambda0
        @Override // java.beans.PropertyChangeListener
        public final void propertyChange(PropertyChangeEvent propertyChangeEvent) {
            this.f$0.m502lambda$new$0$comtexacareappappupdateFirmwareUpdateService(propertyChangeEvent);
        }
    };

    @Inject
    protected FirmwareUpdateController mFirmwareUpdateController;

    @Inject
    protected Profile mProfile;

    @Inject
    protected ServiceNotificationController mServiceNotificationController;

    @Inject
    protected TexaService mTexaService;

    @Inject
    protected WakelockManager mWakelockManager;

    @Override // com.texa.careapp.app.service.RxCareService, android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    public static Intent buildDefaultIntent(Context context) {
        return buildFilterIntent(context, true);
    }

    public static Intent buildFilterIntent(Context context, boolean z) {
        Intent intent = new Intent(context, (Class<?>) FirmwareUpdateService.class);
        intent.putExtra(SHOULD_FIlTER, z);
        return intent;
    }

    /* JADX INFO: renamed from: lambda$new$0$com-texa-careapp-app-update-FirmwareUpdateService, reason: not valid java name */
    public /* synthetic */ void m502lambda$new$0$comtexacareappappupdateFirmwareUpdateService(PropertyChangeEvent propertyChangeEvent) {
        Timber.d("AccessoryPropertyChangeListener.propertyChange [Name=%s, OldValue=%s, NewValue:%s]", propertyChangeEvent.getPropertyName(), String.valueOf(propertyChangeEvent.getOldValue()), String.valueOf(propertyChangeEvent.getNewValue()));
        if (propertyChangeEvent.getPropertyName().equals(Accessory.PROPERTY_STATUS)) {
            Timber.i("FIRMWARE CONNECTION STATUS = %s", Integer.valueOf(this.mAccessory.getStatus()));
        }
    }

    @Override // com.texa.careapp.app.service.RxCareService, android.app.Service
    public void onCreate() {
        super.onCreate();
        getCareApplication().component().inject(this);
        this.mTexaService.setCareProxy(this.mProfile);
        this.mProfile.setServiceProxy(this.mTexaService);
        this.mAccessory.addPropertyChangeListener(this.mAccessoryPropertyChangeListener);
        this.mServiceNotificationController.onCreate(this);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent != null) {
            if (intent.getBooleanExtra(SHOULD_FIlTER, true)) {
                this.mFirmwareUpdateController.doAutoUpdateIfNeeded();
            } else {
                this.mFirmwareUpdateController.doUpdate();
            }
            this.mWakelockManager.onServiceStarted();
        }
        return 1;
    }

    @Override // com.texa.careapp.app.service.RxCareService, android.app.Service
    public void onDestroy() {
        this.mAccessory.removePropertyChangeListener(this.mAccessoryPropertyChangeListener);
        this.mWakelockManager.onServiceDestroyed();
        this.mServiceNotificationController.onDestroy(this);
    }

    @Override // com.texa.careapp.app.service.RxCareService
    protected CareApplication getCareApplication() {
        return (CareApplication) getApplication();
    }
}

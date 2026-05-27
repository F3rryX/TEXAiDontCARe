package com.texa.careapp.app.utils;

import android.app.Activity;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Navigator;
import com.texa.care.navigation.Screen;
import com.texa.care.navigation.ScreenType;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.update.FirmwareUpdateController;
import com.texa.careapp.app.update.FirmwareUpdateController$$ExternalSyntheticLambda4;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.databinding.DialogUpdateFirmwareBinding;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.utils.FirmwareVersion;
import com.texa.carelib.webservices.ServiceFirmwareInfoLoadedEvent;
import com.texa.carelib.webservices.TexaService;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class UpdateFirmwareDialog extends Screen {

    @Inject
    Accessory mAccessory;
    private Activity mActivity;
    private TextView mBtnOk;
    private TextView mBtnUndo;

    @Inject
    ICareObserver mCareObserver;
    private TextView mDescription;

    @Inject
    DongleDataManager mDongleDataManager;
    private DongleModel mDongleModel;

    @Inject
    FirmwareUpdateController mFirmwareUpdateController;
    private View mLine;
    private Navigator mNavigator;
    private ProgressBar mProgressBar;

    @Inject
    TexaService mTexaService;

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return "dialog_update_firmware";
    }

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.dialog_update_firmware;
    }

    UpdateFirmwareDialog(Activity activity) {
        this.mActivity = activity;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        Navigator navigator = getNavigator();
        this.mNavigator = navigator;
        ((CareApplication) navigator.getApplication()).component().inject(this);
        DialogUpdateFirmwareBinding dialogUpdateFirmwareBinding = (DialogUpdateFirmwareBinding) DataBindingUtil.bind(view);
        this.mProgressBar = dialogUpdateFirmwareBinding.dialogUpdateFirmwareProgress;
        this.mDescription = dialogUpdateFirmwareBinding.dialogUpdateFirmwareDescription;
        this.mBtnUndo = dialogUpdateFirmwareBinding.dialogUpdateFirmwareUndo;
        this.mBtnOk = dialogUpdateFirmwareBinding.dialogUpdateFirmwareOk;
        this.mLine = dialogUpdateFirmwareBinding.dialogUpdateFirmwareLine;
        this.mBtnUndo.setVisibility(8);
        this.mBtnOk.setVisibility(8);
        this.mLine.setVisibility(8);
        if (isCareReadyForFirmwareUpdate()) {
            DongleModel dongleModel = this.mDongleDataManager.getDongleModel();
            this.mDongleModel = dongleModel;
            if (dongleModel == null) {
                Timber.w("mDongleModel is null", new Object[0]);
                Toast.makeText(getContext(), R.string.dialog_update_firmware_error, 1).show();
                this.mNavigator.goBack();
            }
            Observable.zip(this.mCareObserver.observeAccessorySerialNumber(), this.mCareObserver.observeAccessoryMainAppVersion(), this.mCareObserver.observeAccessoryMainAppVersionPending(), this.mCareObserver.observeAccessoryServiceAppVersion(), this.mCareObserver.observeAccessoryServiceAppVersionPending(), FirmwareUpdateController$$ExternalSyntheticLambda4.INSTANCE).subscribe(new Consumer() { // from class: com.texa.careapp.app.utils.UpdateFirmwareDialog$$ExternalSyntheticLambda4
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    this.f$0.checkForUpdatesOnServer((FirmwareUpdateController.FwUpdateInfos) obj);
                }
            }, new Consumer() { // from class: com.texa.careapp.app.utils.UpdateFirmwareDialog$$ExternalSyntheticLambda5
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    Timber.e((Throwable) obj, "error observing updates from server", new Object[0]);
                }
            });
            return;
        }
        Toast.makeText(getContext(), R.string.check_firmware_no_care_connected, 1).show();
        this.mNavigator.goBack();
    }

    private boolean isCareReadyForFirmwareUpdate() {
        int status = this.mAccessory.getStatus();
        Timber.d("accessory status= %s", Utils.readableAccessoryStatus(status));
        return 4 == status || 3 == status || status == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkForUpdatesOnServer(final FirmwareUpdateController.FwUpdateInfos fwUpdateInfos) {
        try {
            this.mTexaService.getFirmwareInfoProcedure().loadFirmwareInfo(fwUpdateInfos.serialNumber, fwUpdateInfos.getCurrentMainAppVersion(), fwUpdateInfos.getCurrentServiceAppVersion(), new Callback() { // from class: com.texa.careapp.app.utils.UpdateFirmwareDialog$$ExternalSyntheticLambda3
                @Override // com.texa.carelib.core.Callback
                public final void onCompleted(Object obj) {
                    this.f$0.m508x8f35414f(fwUpdateInfos, (ServiceFirmwareInfoLoadedEvent) obj);
                }
            });
        } catch (CareLibException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: renamed from: lambda$checkForUpdatesOnServer$1$com-texa-careapp-app-utils-UpdateFirmwareDialog, reason: not valid java name */
    public /* synthetic */ void m508x8f35414f(FirmwareUpdateController.FwUpdateInfos fwUpdateInfos, ServiceFirmwareInfoLoadedEvent serviceFirmwareInfoLoadedEvent) {
        CareError error = serviceFirmwareInfoLoadedEvent.getError();
        if (error != null) {
            Timber.w("loadFirmwareInfo error: " + error.toString(), new Object[0]);
            Toast.makeText(getContext(), R.string.dialog_update_firmware_error, 1).show();
            this.mNavigator.goBack();
            return;
        }
        parseServerResponse(serviceFirmwareInfoLoadedEvent, this.mDongleModel, fwUpdateInfos);
    }

    private void parseServerResponse(ServiceFirmwareInfoLoadedEvent serviceFirmwareInfoLoadedEvent, DongleModel dongleModel, final FirmwareUpdateController.FwUpdateInfos fwUpdateInfos) {
        FirmwareVersion mainAppVersion = serviceFirmwareInfoLoadedEvent.getMainAppVersion();
        FirmwareVersion serviceAppVersion = serviceFirmwareInfoLoadedEvent.getServiceAppVersion();
        Timber.d("Latest MAIN APP version: %s", mainAppVersion);
        Timber.d("Latest SERVICE APP version: %s", serviceAppVersion);
        dongleModel.setMainAppVersionUpdate(mainAppVersion);
        dongleModel.setServiceAppVersionUpdate(serviceAppVersion);
        save(dongleModel);
        if (isCareReadyForFirmwareUpdate()) {
            Timber.d("care is connected, starting update now", new Object[0]);
            this.mActivity.runOnUiThread(new Runnable() { // from class: com.texa.careapp.app.utils.UpdateFirmwareDialog$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m512xa8ca5ff(fwUpdateInfos);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$parseServerResponse$5$com-texa-careapp-app-utils-UpdateFirmwareDialog, reason: not valid java name */
    public /* synthetic */ void m512xa8ca5ff(final FirmwareUpdateController.FwUpdateInfos fwUpdateInfos) {
        this.mBtnOk.setVisibility(0);
        this.mLine.setVisibility(0);
        this.mProgressBar.setVisibility(8);
        if (!updateMainAppIfNeeded(fwUpdateInfos) && !updateServiceAppIfNeeded(fwUpdateInfos)) {
            this.mDescription.setText(R.string.dialog_update_firmware_description_updated);
            this.mBtnOk.setText(R.string.dialog_updated_firmware_btn_ok_updated);
            this.mBtnOk.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.utils.UpdateFirmwareDialog$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m509xbefd7fc(view);
                }
            });
        } else {
            this.mBtnUndo.setVisibility(0);
            this.mDescription.setText(R.string.dialog_update_firmware_description_not_updated);
            this.mBtnUndo.setText(R.string.dialog_updated_firmware_btn_undo_not_updated);
            this.mBtnUndo.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.utils.UpdateFirmwareDialog$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m510xb7971fd(view);
                }
            });
            this.mBtnOk.setText(R.string.dialog_updated_firmware_btn_ok_not_updated);
            this.mBtnOk.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.utils.UpdateFirmwareDialog$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m511xb030bfe(fwUpdateInfos, view);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$parseServerResponse$2$com-texa-careapp-app-utils-UpdateFirmwareDialog, reason: not valid java name */
    public /* synthetic */ void m509xbefd7fc(View view) {
        this.mNavigator.goBack();
    }

    /* JADX INFO: renamed from: lambda$parseServerResponse$3$com-texa-careapp-app-utils-UpdateFirmwareDialog, reason: not valid java name */
    public /* synthetic */ void m510xb7971fd(View view) {
        this.mNavigator.goBack();
    }

    /* JADX INFO: renamed from: lambda$parseServerResponse$4$com-texa-careapp-app-utils-UpdateFirmwareDialog, reason: not valid java name */
    public /* synthetic */ void m511xb030bfe(FirmwareUpdateController.FwUpdateInfos fwUpdateInfos, View view) {
        this.mFirmwareUpdateController.doUpdateInner(fwUpdateInfos);
    }

    private boolean updateMainAppIfNeeded(FirmwareUpdateController.FwUpdateInfos fwUpdateInfos) {
        FirmwareVersion mainAppVersionUpdate = this.mDongleModel.getMainAppVersionUpdate();
        return (mainAppVersionUpdate == null || new FirmwareVersion().equals(mainAppVersionUpdate) || mainAppVersionUpdate.equals(fwUpdateInfos.getCurrentMainAppVersion())) ? false : true;
    }

    private boolean updateServiceAppIfNeeded(FirmwareUpdateController.FwUpdateInfos fwUpdateInfos) {
        FirmwareVersion serviceAppVersionUpdate = this.mDongleModel.getServiceAppVersionUpdate();
        return (serviceAppVersionUpdate == null || new FirmwareVersion().equals(serviceAppVersionUpdate) || serviceAppVersionUpdate.equals(fwUpdateInfos.getCurrentServiceAppVersion())) ? false : true;
    }

    protected boolean save(DongleModel dongleModel) {
        try {
            Utils.safeModelSave(dongleModel, getContext());
            return true;
        } catch (DatabaseIOException e) {
            Timber.e(e, "Could not save dongle model in database.", new Object[0]);
            return false;
        }
    }

    @Override // com.texa.care.navigation.Screen
    public ScreenType getType() {
        return ScreenType.DIALOG;
    }
}

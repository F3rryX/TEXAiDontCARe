package com.texa.careapp.app.settings.settingscare;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.update.FirmwareUpdateController;
import com.texa.careapp.app.update.FirmwareUpdateService;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.configuration.UpdateConfigurationActivity;
import com.texa.careapp.databinding.SettingsCareScreenBinding;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.utils.FirmwareVersion;
import com.texa.carelib.core.utils.VersionFormatter;
import com.texa.carelib.webservices.ServiceFirmwareInfoLoadedEvent;
import com.texa.carelib.webservices.TexaService;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class SettingsCareScreen extends Screen {
    private static final String TAG = "SettingsCareScreen";
    private Disposable accessorySub;
    private Disposable infoSub;

    @Inject
    protected Accessory mAccessory;

    @Inject
    protected ICareObserver mCareObserver;

    @Inject
    protected Context mContext;

    @Inject
    protected DongleDataManager mDongleDataManager;

    @Inject
    protected EventBus mEventBus;

    @Inject
    protected TexaService mTexaService;
    private LinearLayout settingAccessoryGroup;
    private TextView settingsCareAccessoryStatus;
    private TextView settingsCareAppLatestMain;
    private TextView settingsCareAppLatestService;
    private TextView settingsCareAppVersion;
    private TextView settingsCareAppVersionMain;
    private TextView settingsCareAppVersionService;
    private TextView settingsCareLibraryVersion;
    private TextView settingsCareSerialNumber;
    private LinearLayout settingsMainAppLatestgroup;
    private LinearLayout settingsServiceAppLatestGroup;
    private TextView settingsUpdateConfiguration;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.settings_care_screen;
    }

    SettingsCareScreen(Activity activity) {
    }

    @Override // com.texa.care.navigation.Screen
    public void onPause() {
        super.onPause();
        this.mEventBus.unregister(this);
        Utils.safeDispose(this.accessorySub);
        Utils.safeDispose(this.infoSub);
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        SettingsCareScreenBinding settingsCareScreenBinding = (SettingsCareScreenBinding) DataBindingUtil.bind(view);
        this.settingsCareAppVersion = settingsCareScreenBinding.settingsAppVersion;
        this.settingsCareSerialNumber = settingsCareScreenBinding.settingsSerialNumber;
        this.settingsCareLibraryVersion = settingsCareScreenBinding.settingsLibraryVersion;
        this.settingsCareAccessoryStatus = settingsCareScreenBinding.settingsAccessoryStatus;
        this.settingsCareAppVersionMain = settingsCareScreenBinding.settingsMainAppVersion;
        this.settingsCareAppVersionService = settingsCareScreenBinding.settingsServiceAppVersion;
        this.settingsCareAppLatestMain = settingsCareScreenBinding.settingsMainAppLatest;
        this.settingsCareAppLatestService = settingsCareScreenBinding.settingsServiceAppLatest;
        this.settingAccessoryGroup = settingsCareScreenBinding.settingsAccessoryGroup;
        this.settingsServiceAppLatestGroup = settingsCareScreenBinding.settingsServiceAppLatestGroup;
        this.settingsMainAppLatestgroup = settingsCareScreenBinding.settingsMainAppLatestGroup;
        TextView textView = settingsCareScreenBinding.settingsUpdateConfiguation;
        this.settingsUpdateConfiguration = textView;
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.settingscare.SettingsCareScreen$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m406x7c96209a(view2);
            }
        });
        settingsCareScreenBinding.settingsUpdateFirmware.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.settingscare.SettingsCareScreen$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m407x7025a4db(view2);
            }
        });
        DongleModel dongleModel = this.mDongleDataManager.getDongleModel();
        if (dongleModel == null) {
            Timber.w("mDongleModel is null", new Object[0]);
            return;
        }
        displaySerialNumber(dongleModel.getHwid());
        updateAppVersion();
        updateCareInfos(dongleModel);
        updateAccessoryStatusTextView();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-settings-settingscare-SettingsCareScreen, reason: not valid java name */
    public /* synthetic */ void m406x7c96209a(View view) {
        Context context = this.mContext;
        context.startActivity(UpdateConfigurationActivity.buildDefaultIntent(context));
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$1$com-texa-careapp-app-settings-settingscare-SettingsCareScreen, reason: not valid java name */
    public /* synthetic */ void m407x7025a4db(View view) {
        Context context = this.mContext;
        context.startService(FirmwareUpdateService.buildDefaultIntent(context));
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        super.onResume();
        this.mEventBus.register(this);
        setupViews(false);
    }

    private void updateAppVersion() {
        this.settingsCareAppVersion.setText(Utils.getAppVersion(this.mContext));
    }

    private void updateCareInfos(DongleModel dongleModel) {
        this.infoSub = dongleModel.observerFirmwareVersion(this.mCareObserver).doOnSubscribe(new Consumer() { // from class: com.texa.careapp.app.settings.settingscare.SettingsCareScreen$$ExternalSyntheticLambda6
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m412xad3a537((Disposable) obj);
            }
        }).doOnError(new Consumer() { // from class: com.texa.careapp.app.settings.settingscare.SettingsCareScreen$$ExternalSyntheticLambda10
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "Could not save dongle model to database", new Object[0]);
            }
        }).subscribe(new Consumer() { // from class: com.texa.careapp.app.settings.settingscare.SettingsCareScreen$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m413xf1f2adb9((DongleModel) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.settings.settingscare.SettingsCareScreen$$ExternalSyntheticLambda11
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.w((Throwable) obj, "exception in observerFirmwareVersion", new Object[0]);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$updateCareInfos$2$com-texa-careapp-app-settings-settingscare-SettingsCareScreen, reason: not valid java name */
    public /* synthetic */ void m412xad3a537(Disposable disposable) throws Exception {
        this.mAccessory.loadAccessoryInfo();
    }

    /* JADX INFO: renamed from: lambda$updateCareInfos$4$com-texa-careapp-app-settings-settingscare-SettingsCareScreen, reason: not valid java name */
    public /* synthetic */ void m413xf1f2adb9(DongleModel dongleModel) throws Exception {
        displayMainAppVersion(dongleModel.getMainAppVersion());
        displayServiceAppVersion(dongleModel.getServiceAppVersion());
        loadUpdateInfos(dongleModel);
    }

    private void updateAccessoryStatusTextView() {
        this.accessorySub = this.mCareObserver.observeCareStatus().doOnError(new Consumer() { // from class: com.texa.careapp.app.settings.settingscare.SettingsCareScreen$$ExternalSyntheticLambda8
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.e((Throwable) obj, "mCareObserver#observeCareStatus onError", new Object[0]);
            }
        }).subscribe(new Consumer() { // from class: com.texa.careapp.app.settings.settingscare.SettingsCareScreen$$ExternalSyntheticLambda7
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m411x96bb073e((Integer) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.settings.settingscare.SettingsCareScreen$$ExternalSyntheticLambda9
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.w((Throwable) obj, "exception in observeCareStatus", new Object[0]);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$updateAccessoryStatusTextView$7$com-texa-careapp-app-settings-settingscare-SettingsCareScreen, reason: not valid java name */
    public /* synthetic */ void m411x96bb073e(Integer num) throws Exception {
        this.settingsCareAccessoryStatus.setText(Utils.readableAccessoryStatus(num.intValue()));
    }

    private void loadUpdateInfos(final DongleModel dongleModel) {
        try {
            this.mTexaService.getFirmwareInfoProcedure().loadFirmwareInfo(dongleModel.getHwid(), dongleModel.getMainAppVersion(), dongleModel.getServiceAppVersion(), new Callback() { // from class: com.texa.careapp.app.settings.settingscare.SettingsCareScreen$$ExternalSyntheticLambda4
                @Override // com.texa.carelib.core.Callback
                public final void onCompleted(Object obj) {
                    this.f$0.m410x6dccbe49(dongleModel, (ServiceFirmwareInfoLoadedEvent) obj);
                }
            });
        } catch (CareLibException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: renamed from: lambda$loadUpdateInfos$9$com-texa-careapp-app-settings-settingscare-SettingsCareScreen, reason: not valid java name */
    public /* synthetic */ void m410x6dccbe49(DongleModel dongleModel, ServiceFirmwareInfoLoadedEvent serviceFirmwareInfoLoadedEvent) {
        CareError error = serviceFirmwareInfoLoadedEvent.getError();
        if (error != null) {
            Log.d(TAG, "loadFirmwareInfo error: ", error.getException());
            return;
        }
        dongleModel.setMainAppVersionUpdate(serviceFirmwareInfoLoadedEvent.getMainAppVersion());
        dongleModel.setServiceAppVersionUpdate(serviceFirmwareInfoLoadedEvent.getServiceAppVersion());
        try {
            try {
                Utils.safeModelSave(dongleModel, getContext());
            } catch (DatabaseIOException e) {
                Timber.e(e, "Could not save updated dongle info on database.", new Object[0]);
            }
        } finally {
            displayUpdateInfos(dongleModel);
        }
    }

    private void displayUpdateInfos(final DongleModel dongleModel) {
        TextView textView = this.settingsCareAppLatestMain;
        if (textView != null) {
            textView.post(new Runnable() { // from class: com.texa.careapp.app.settings.settingscare.SettingsCareScreen$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m408xcb344ea7(dongleModel);
                }
            });
        }
        TextView textView2 = this.settingsCareAppLatestService;
        if (textView2 != null) {
            textView2.post(new Runnable() { // from class: com.texa.careapp.app.settings.settingscare.SettingsCareScreen$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m409xbec3d2e8(dongleModel);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$displayUpdateInfos$10$com-texa-careapp-app-settings-settingscare-SettingsCareScreen, reason: not valid java name */
    public /* synthetic */ void m408xcb344ea7(DongleModel dongleModel) {
        this.settingsCareAppLatestMain.setText(VersionFormatter.formatLong(dongleModel.getMainAppVersionUpdate()));
    }

    /* JADX INFO: renamed from: lambda$displayUpdateInfos$11$com-texa-careapp-app-settings-settingscare-SettingsCareScreen, reason: not valid java name */
    public /* synthetic */ void m409xbec3d2e8(DongleModel dongleModel) {
        this.settingsCareAppLatestService.setText(VersionFormatter.formatLong(dongleModel.getServiceAppVersionUpdate()));
    }

    private void setupViews(boolean z) {
        this.settingAccessoryGroup.setVisibility(z ? 0 : 8);
        this.settingsServiceAppLatestGroup.setVisibility(z ? 0 : 8);
        this.settingsMainAppLatestgroup.setVisibility(z ? 0 : 8);
        this.settingsUpdateConfiguration.setVisibility(z ? 0 : 8);
    }

    private void displaySerialNumber(String str) {
        this.settingsCareSerialNumber.setText(str);
    }

    private void displayMainAppVersion(FirmwareVersion firmwareVersion) {
        this.settingsCareAppVersionMain.setText(VersionFormatter.formatLong(firmwareVersion));
    }

    private void displayServiceAppVersion(FirmwareVersion firmwareVersion) {
        this.settingsCareAppVersionService.setText(VersionFormatter.formatLong(firmwareVersion));
    }

    @Subscribe
    public void onEvent(FirmwareUpdateController.FirmwareUpdateStatus firmwareUpdateStatus) {
        goTo(new SettingsCareFwUpdateScreenDialog(firmwareUpdateStatus.getStatus(), (CareApplication) getNavigator().getApplication()));
    }
}

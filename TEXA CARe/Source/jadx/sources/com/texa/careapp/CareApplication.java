package com.texa.careapp;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.os.Build;
import androidx.multidex.MultiDexApplication;
import androidx.work.Configuration;
import com.activeandroid.ActiveAndroid;
import com.google.firebase.FirebaseApp;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import com.texa.careapp.app.MainActivity;
import com.texa.careapp.app.SplashActivity;
import com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen;
import com.texa.careapp.app.activationSosServices.ActivationLightForeignServiceScreen;
import com.texa.careapp.app.activationSosServices.ActivationLightServiceScreen;
import com.texa.careapp.app.activationSosServices.ActivationPlusServiceScreen;
import com.texa.careapp.app.activationSosServices.ActivationServiceActivity;
import com.texa.careapp.app.activationSosServices.ActivationServiceCompletedScreen;
import com.texa.careapp.app.activationSosServices.ActivationServiceVehicleDialog;
import com.texa.careapp.app.activationSosServices.ActivationTrialServiceScreen;
import com.texa.careapp.app.activationSosServices.NoSosServiceActivity;
import com.texa.careapp.app.activationSosServices.NoSosServiceScreen;
import com.texa.careapp.app.activationSosServices.SosInAppBillingSubscription;
import com.texa.careapp.app.activationSosServices.contact.ActivationServiceContactActivity;
import com.texa.careapp.app.activationSosServices.contact.ActivationServiceContactScreen;
import com.texa.careapp.app.activationSosServices.contact.ActivationServiceDeleteContactDialog;
import com.texa.careapp.app.activationSosServices.contact.ActivationServiceSelectContactNumberDialog;
import com.texa.careapp.app.activationSosServices.phone.ActivationPhoneNumberActivity;
import com.texa.careapp.app.activationSosServices.phone.NumberValidatorFinalStepScreen;
import com.texa.careapp.app.activationSosServices.phone.NumberValidatorScreen;
import com.texa.careapp.app.auth.AcceptTermsOfServiceAndPolicyScreenDialog;
import com.texa.careapp.app.auth.LoginActivity;
import com.texa.careapp.app.auth.RecoverPasswordScreen;
import com.texa.careapp.app.auth.SignInScreen;
import com.texa.careapp.app.auth.SignUpEmailScreen;
import com.texa.careapp.app.auth.SignUpPasswordScreen;
import com.texa.careapp.app.auth.SignUpPersonalDataScreen;
import com.texa.careapp.app.calibration.CalibrationActivity;
import com.texa.careapp.app.calibration.CalibrationDialogScreen;
import com.texa.careapp.app.calibration.CalibrationScreen;
import com.texa.careapp.app.dashboard.DashboardScreenAdapter;
import com.texa.careapp.app.dashboard.DashboardScreenV2;
import com.texa.careapp.app.dashboard.PowerSaveScreenDialog;
import com.texa.careapp.app.dashboard.UnsupportedAndroidDialog;
import com.texa.careapp.app.dashboard.card.DiagnosisCardViewPresenter;
import com.texa.careapp.app.dashboard.card.EcoDrivingCardViewPresenter;
import com.texa.careapp.app.dashboard.card.FindVehicleCardViewPresenter;
import com.texa.careapp.app.dashboard.card.ParametersCardViewPresenter;
import com.texa.careapp.app.dashboard.card.ParametersChooseChartDialog;
import com.texa.careapp.app.dashboard.card.ScheduleCardViewPresenter;
import com.texa.careapp.app.dashboard.vehicle.VehiclePagerAdapter;
import com.texa.careapp.app.dashboard.vehicle.VehiclePresenter;
import com.texa.careapp.app.diagnosis.DiagnosisActivity;
import com.texa.careapp.app.diagnosis.DiagnosisAdvancedDialog;
import com.texa.careapp.app.diagnosis.DiagnosisDataActivity;
import com.texa.careapp.app.diagnosis.DiagnosisDataPagerAdapter;
import com.texa.careapp.app.diagnosis.DiagnosisDataScreen;
import com.texa.careapp.app.diagnosis.DiagnosisScreen;
import com.texa.careapp.app.diagnosis.tab.errorDTC.ErrorDTCViewPresenter;
import com.texa.careapp.app.diagnosis.tab.parameters.ParametersViewPresenterV2;
import com.texa.careapp.app.ecodriving.AcceptationTermsActivity;
import com.texa.careapp.app.ecodriving.AcceptationTermsScreen;
import com.texa.careapp.app.ecodriving.EcoDrivingActivity;
import com.texa.careapp.app.ecodriving.EcoDrivingDialogHideTrip;
import com.texa.careapp.app.ecodriving.EcoDrivingScreen;
import com.texa.careapp.app.ecodriving.EcoDrivingTripDetailMapScreen;
import com.texa.careapp.app.ecodriving.EcoDrivingTripDetailScreen;
import com.texa.careapp.app.ecodriving.hint.EcoDrivingHintActivity;
import com.texa.careapp.app.ecodriving.hint.EcoDrivingHintAdapter;
import com.texa.careapp.app.ecodriving.hint.HintPresenter;
import com.texa.careapp.app.ecodriving.pager.EcoDrivingScreenDayAdapter;
import com.texa.careapp.app.ecodriving.pager.WeekPresenter;
import com.texa.careapp.app.ecodriving.tutorial.EcoDrivingTutorialActivity;
import com.texa.careapp.app.ecodriving.tutorial.EcoDrivingTutorialAdapter;
import com.texa.careapp.app.ecodriving.tutorial.TutorialPresenter;
import com.texa.careapp.app.onboarding.BaseVehicleDataScreen;
import com.texa.careapp.app.onboarding.CareAuthenticationScreen;
import com.texa.careapp.app.onboarding.CareSiteScreen;
import com.texa.careapp.app.onboarding.DongleDiscoveryScreen;
import com.texa.careapp.app.onboarding.InstallationHelpScreen;
import com.texa.careapp.app.onboarding.OnBoardingActivity;
import com.texa.careapp.app.onboarding.SellerMapScreen;
import com.texa.careapp.app.onboarding.StartEngineScreen;
import com.texa.careapp.app.onboarding.adapters.CountryDialogAdapter;
import com.texa.careapp.app.onboarding.dialogs.CareConfigurationRequestDialog;
import com.texa.careapp.app.onboarding.dialogs.CountryScreenDialog;
import com.texa.careapp.app.onboarding.dialogs.EnableBluetoothScreenDialog;
import com.texa.careapp.app.onboarding.dialogs.OnBoardingErrorDialog;
import com.texa.careapp.app.onboarding.dialogs.OnBoardingErrorEngineDialog;
import com.texa.careapp.app.onboarding.dialogs.PlateValidationScreenDialog;
import com.texa.careapp.app.onboarding.dialogs.VehicleAlreadyConfiguredScreenDialog;
import com.texa.careapp.app.onboarding.dialogs.VehicleScreenDialog;
import com.texa.careapp.app.permission.PermissionActivity;
import com.texa.careapp.app.permission.PermissionAdapter;
import com.texa.careapp.app.permission.PermissionPresenter;
import com.texa.careapp.app.schedule.ResetExpiredScheduleScreen;
import com.texa.careapp.app.schedule.ScheduleActivity;
import com.texa.careapp.app.schedule.ScheduleScreen;
import com.texa.careapp.app.schedule.SchedulesAdapter;
import com.texa.careapp.app.schedule.addThreshold.AddNewThresholdActivity;
import com.texa.careapp.app.schedule.addThreshold.SelectNewScheduleScreen;
import com.texa.careapp.app.schedule.addThreshold.SetDefaultDateThresholdScreen;
import com.texa.careapp.app.schedule.addThreshold.SetDefaultOdometerThresholdScreen;
import com.texa.careapp.app.schedule.addThreshold.SetInsuranceCompanyScreen;
import com.texa.careapp.app.schedule.addThreshold.SetInsuranceDateThresholdScreen;
import com.texa.careapp.app.schedule.addThreshold.tyres.SetTyresOdometerScreen;
import com.texa.careapp.app.service.CareService;
import com.texa.careapp.app.service.RxCareService;
import com.texa.careapp.app.service.SosPrerequisiteNotificationController;
import com.texa.careapp.app.settings.FactoryResetScreenDialog;
import com.texa.careapp.app.settings.SettingsActivity;
import com.texa.careapp.app.settings.SettingsAdapter;
import com.texa.careapp.app.settings.SettingsScreen;
import com.texa.careapp.app.settings.companyinfo.CompanyInfoActivity;
import com.texa.careapp.app.settings.companyinfo.CompanyInfoScreen;
import com.texa.careapp.app.settings.generalsettings.GeneralSettingsActivity;
import com.texa.careapp.app.settings.generalsettings.GeneralSettingsScreen;
import com.texa.careapp.app.settings.insertnewthreshold.InsertNewThresholdActivity;
import com.texa.careapp.app.settings.insertnewthreshold.InsertNewThresholdScreen;
import com.texa.careapp.app.settings.services.ServicesSubscriptionManagerActivity;
import com.texa.careapp.app.settings.services.ServicesSubscriptionManagerScreen;
import com.texa.careapp.app.settings.services.SettingsServicesActivity;
import com.texa.careapp.app.settings.services.SettingsServicesScreen;
import com.texa.careapp.app.settings.settingscare.SettingsCareActivity;
import com.texa.careapp.app.settings.settingscare.SettingsCareFwUpdateScreenDialog;
import com.texa.careapp.app.settings.settingscare.SettingsCareScreen;
import com.texa.careapp.app.settings.troubleshooting.ProblemResolutionActivity;
import com.texa.careapp.app.settings.troubleshooting.ProblemResolutionScreen;
import com.texa.careapp.app.settings.tyres.SettingsTyresActivity;
import com.texa.careapp.app.settings.tyres.TyresInversionScreen;
import com.texa.careapp.app.settings.tyres.TyresNewInstallScreen;
import com.texa.careapp.app.settings.tyres.TyresOptionsScreen;
import com.texa.careapp.app.settings.user.SettingsUserActivity;
import com.texa.careapp.app.settings.user.SettingsUserAddressActivity;
import com.texa.careapp.app.settings.user.SettingsUserAddressScreen;
import com.texa.careapp.app.settings.user.SettingsUserScreen;
import com.texa.careapp.app.settings.vehicle.SettingsVehicleActivity;
import com.texa.careapp.app.settings.vehicle.SettingsVehicleScreen;
import com.texa.careapp.app.sos.AlertCentralActivity;
import com.texa.careapp.app.sos.AutomaticSosPresenter;
import com.texa.careapp.app.sos.ContactsActivity;
import com.texa.careapp.app.sos.ContactsScreen;
import com.texa.careapp.app.sos.MechanicActivity;
import com.texa.careapp.app.sos.SosPrerequisiteActivity;
import com.texa.careapp.app.sos.SosPrerequisiteScreen;
import com.texa.careapp.app.update.FirmwareUpdateController;
import com.texa.careapp.app.update.FirmwareUpdateService;
import com.texa.careapp.app.utils.SosFirmwareWarningDialog;
import com.texa.careapp.app.utils.UpdateFirmwareDialog;
import com.texa.careapp.app.vehicle.VehicleDataConfirmationActivity;
import com.texa.careapp.app.vehiclefinder.VehicleFinderActivity;
import com.texa.careapp.app.walkthrough.WalkThroughAdapter;
import com.texa.careapp.app.walkthrough.WalkthroughActivity;
import com.texa.careapp.app.walkthrough.WalkthroughActivityLastStep;
import com.texa.careapp.app.walkthrough.WalkthroughPresenter;
import com.texa.careapp.base.BaseFragment;
import com.texa.careapp.base.NavigationDrawerFragment;
import com.texa.careapp.configuration.OnBoardingConfigurationActivity;
import com.texa.careapp.configuration.UpdateConfigurationActivity;
import com.texa.careapp.configuration.UpdateConfigurationIntentService;
import com.texa.careapp.dagger.ApiModule;
import com.texa.careapp.dagger.CareModule;
import com.texa.careapp.fcm.FcmManager;
import com.texa.careapp.fcm.FcmMessagingService;
import com.texa.careapp.lamps.LampsManager;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.sync.jobs.BatteryAnalyzerJob;
import com.texa.careapp.sync.jobs.ChangeLockStatusJob;
import com.texa.careapp.sync.jobs.CrashLogJob;
import com.texa.careapp.sync.jobs.DTCJob;
import com.texa.careapp.sync.jobs.EmergencyInfoJob;
import com.texa.careapp.sync.jobs.EmergencyInfoMessageJob;
import com.texa.careapp.sync.jobs.LampJob;
import com.texa.careapp.sync.jobs.LogJob;
import com.texa.careapp.sync.jobs.ParameterJob;
import com.texa.careapp.sync.jobs.PeriodicTaskJob;
import com.texa.careapp.sync.jobs.PurchaseDataJob;
import com.texa.careapp.sync.jobs.ServiceOneOffJob;
import com.texa.careapp.sync.jobs.ThresholdsJob;
import com.texa.careapp.sync.jobs.TripJob;
import com.texa.careapp.sync.jobs.UserTaskJob;
import com.texa.careapp.sync.jobs.VehicleAlarmsJob;
import com.texa.careapp.sync.jobs.VehicleJob;
import com.texa.careapp.utils.BatteryServiceAnalyzer;
import com.texa.careapp.utils.CrashlyticsHelper;
import com.texa.careapp.utils.DtcManager;
import com.texa.careapp.utils.LogConfigurator;
import com.texa.careapp.utils.LoginHelperRx;
import com.texa.careapp.utils.TripDataManager;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.authentication.AccountAuthenticator;
import com.texa.careapp.utils.authentication.ApiHeaders;
import com.texa.careapp.utils.broadcastreceiver.BootCompletedReceiver;
import com.texa.careapp.utils.erratacorrige.ErrataCorrigeExecutor;
import com.texa.careapp.utils.erratacorrige.impl.ContactErrataCorrige;
import com.texa.careapp.utils.exceptions.RestartExceptionHandler;
import com.texa.careapp.utils.logger.CrashlyticsTree;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.webservices.TexaService;
import dagger.Component;
import java.security.Security;
import java.util.Arrays;
import java.util.concurrent.Executors;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public class CareApplication extends MultiDexApplication implements Configuration.Provider {
    private ApplicationComponent component;

    @Inject
    protected LogConfigurator mLogConfigurator;

    @Inject
    protected NotificationManager mNotificationManager;

    @Inject
    protected Profile mProfile;

    @Inject
    protected TexaService mTexaService;

    @Component(modules = {CareModule.class, ApiModule.class})
    @Singleton
    public interface ApplicationComponent {
        void inject(CareApplication careApplication);

        void inject(DefaultFlavorDelegator defaultFlavorDelegator);

        void inject(FlavorDelegator flavorDelegator);

        void inject(MainActivity mainActivity);

        void inject(SplashActivity splashActivity);

        void inject(AcceptationTermsSosServiceScreen acceptationTermsSosServiceScreen);

        void inject(ActivationLightForeignServiceScreen activationLightForeignServiceScreen);

        void inject(ActivationLightServiceScreen activationLightServiceScreen);

        void inject(ActivationPlusServiceScreen activationPlusServiceScreen);

        void inject(ActivationServiceActivity activationServiceActivity);

        void inject(ActivationServiceCompletedScreen activationServiceCompletedScreen);

        void inject(ActivationServiceVehicleDialog activationServiceVehicleDialog);

        void inject(ActivationTrialServiceScreen activationTrialServiceScreen);

        void inject(NoSosServiceActivity noSosServiceActivity);

        void inject(NoSosServiceScreen noSosServiceScreen);

        void inject(SosInAppBillingSubscription sosInAppBillingSubscription);

        void inject(ActivationServiceContactActivity activationServiceContactActivity);

        void inject(ActivationServiceContactScreen activationServiceContactScreen);

        void inject(ActivationServiceDeleteContactDialog activationServiceDeleteContactDialog);

        void inject(ActivationServiceSelectContactNumberDialog activationServiceSelectContactNumberDialog);

        void inject(ActivationPhoneNumberActivity activationPhoneNumberActivity);

        void inject(NumberValidatorFinalStepScreen numberValidatorFinalStepScreen);

        void inject(NumberValidatorScreen numberValidatorScreen);

        void inject(AcceptTermsOfServiceAndPolicyScreenDialog acceptTermsOfServiceAndPolicyScreenDialog);

        void inject(LoginActivity loginActivity);

        void inject(RecoverPasswordScreen recoverPasswordScreen);

        void inject(SignInScreen signInScreen);

        void inject(SignUpEmailScreen signUpEmailScreen);

        void inject(SignUpPasswordScreen signUpPasswordScreen);

        void inject(SignUpPersonalDataScreen signUpPersonalDataScreen);

        void inject(CalibrationActivity calibrationActivity);

        void inject(CalibrationDialogScreen calibrationDialogScreen);

        void inject(CalibrationScreen calibrationScreen);

        void inject(DashboardScreenAdapter dashboardScreenAdapter);

        void inject(DashboardScreenV2 dashboardScreenV2);

        void inject(PowerSaveScreenDialog powerSaveScreenDialog);

        void inject(UnsupportedAndroidDialog unsupportedAndroidDialog);

        void inject(DiagnosisCardViewPresenter diagnosisCardViewPresenter);

        void inject(EcoDrivingCardViewPresenter ecoDrivingCardViewPresenter);

        void inject(FindVehicleCardViewPresenter findVehicleCardViewPresenter);

        void inject(ParametersCardViewPresenter parametersCardViewPresenter);

        void inject(ParametersChooseChartDialog parametersChooseChartDialog);

        void inject(ScheduleCardViewPresenter scheduleCardViewPresenter);

        void inject(VehiclePagerAdapter vehiclePagerAdapter);

        void inject(VehiclePresenter vehiclePresenter);

        void inject(DiagnosisActivity diagnosisActivity);

        void inject(DiagnosisAdvancedDialog diagnosisAdvancedDialog);

        void inject(DiagnosisDataActivity diagnosisDataActivity);

        void inject(DiagnosisDataPagerAdapter diagnosisDataPagerAdapter);

        void inject(DiagnosisDataScreen diagnosisDataScreen);

        void inject(DiagnosisScreen diagnosisScreen);

        void inject(ErrorDTCViewPresenter errorDTCViewPresenter);

        void inject(ParametersViewPresenterV2 parametersViewPresenterV2);

        void inject(AcceptationTermsActivity acceptationTermsActivity);

        void inject(AcceptationTermsScreen acceptationTermsScreen);

        void inject(EcoDrivingActivity ecoDrivingActivity);

        void inject(EcoDrivingDialogHideTrip ecoDrivingDialogHideTrip);

        void inject(EcoDrivingScreen ecoDrivingScreen);

        void inject(EcoDrivingTripDetailMapScreen ecoDrivingTripDetailMapScreen);

        void inject(EcoDrivingTripDetailScreen ecoDrivingTripDetailScreen);

        void inject(EcoDrivingHintActivity ecoDrivingHintActivity);

        void inject(EcoDrivingHintAdapter ecoDrivingHintAdapter);

        void inject(HintPresenter hintPresenter);

        void inject(EcoDrivingScreenDayAdapter ecoDrivingScreenDayAdapter);

        void inject(WeekPresenter weekPresenter);

        void inject(EcoDrivingTutorialActivity ecoDrivingTutorialActivity);

        void inject(EcoDrivingTutorialAdapter ecoDrivingTutorialAdapter);

        void inject(TutorialPresenter tutorialPresenter);

        void inject(BaseVehicleDataScreen baseVehicleDataScreen);

        void inject(CareAuthenticationScreen careAuthenticationScreen);

        void inject(CareSiteScreen careSiteScreen);

        void inject(DongleDiscoveryScreen dongleDiscoveryScreen);

        void inject(InstallationHelpScreen installationHelpScreen);

        void inject(OnBoardingActivity onBoardingActivity);

        void inject(SellerMapScreen sellerMapScreen);

        void inject(StartEngineScreen startEngineScreen);

        void inject(CountryDialogAdapter countryDialogAdapter);

        void inject(CareConfigurationRequestDialog careConfigurationRequestDialog);

        void inject(CountryScreenDialog countryScreenDialog);

        void inject(EnableBluetoothScreenDialog enableBluetoothScreenDialog);

        void inject(OnBoardingErrorDialog onBoardingErrorDialog);

        void inject(OnBoardingErrorEngineDialog onBoardingErrorEngineDialog);

        void inject(PlateValidationScreenDialog plateValidationScreenDialog);

        void inject(VehicleAlreadyConfiguredScreenDialog vehicleAlreadyConfiguredScreenDialog);

        void inject(VehicleScreenDialog vehicleScreenDialog);

        void inject(PermissionActivity permissionActivity);

        void inject(PermissionAdapter permissionAdapter);

        void inject(PermissionPresenter permissionPresenter);

        void inject(ResetExpiredScheduleScreen resetExpiredScheduleScreen);

        void inject(ScheduleActivity scheduleActivity);

        void inject(ScheduleScreen scheduleScreen);

        void inject(SchedulesAdapter schedulesAdapter);

        void inject(AddNewThresholdActivity addNewThresholdActivity);

        void inject(SelectNewScheduleScreen selectNewScheduleScreen);

        void inject(SetDefaultDateThresholdScreen setDefaultDateThresholdScreen);

        void inject(SetDefaultOdometerThresholdScreen setDefaultOdometerThresholdScreen);

        void inject(SetInsuranceCompanyScreen setInsuranceCompanyScreen);

        void inject(SetInsuranceDateThresholdScreen setInsuranceDateThresholdScreen);

        void inject(SetTyresOdometerScreen setTyresOdometerScreen);

        void inject(CareService careService);

        void inject(RxCareService rxCareService);

        void inject(SosPrerequisiteNotificationController sosPrerequisiteNotificationController);

        void inject(FactoryResetScreenDialog factoryResetScreenDialog);

        void inject(SettingsActivity settingsActivity);

        void inject(SettingsAdapter settingsAdapter);

        void inject(SettingsScreen settingsScreen);

        void inject(CompanyInfoActivity companyInfoActivity);

        void inject(CompanyInfoScreen companyInfoScreen);

        void inject(GeneralSettingsActivity generalSettingsActivity);

        void inject(GeneralSettingsScreen generalSettingsScreen);

        void inject(InsertNewThresholdActivity insertNewThresholdActivity);

        void inject(InsertNewThresholdScreen insertNewThresholdScreen);

        void inject(ServicesSubscriptionManagerActivity servicesSubscriptionManagerActivity);

        void inject(ServicesSubscriptionManagerScreen servicesSubscriptionManagerScreen);

        void inject(SettingsServicesActivity settingsServicesActivity);

        void inject(SettingsServicesScreen settingsServicesScreen);

        void inject(SettingsCareActivity settingsCareActivity);

        void inject(SettingsCareFwUpdateScreenDialog settingsCareFwUpdateScreenDialog);

        void inject(SettingsCareScreen settingsCareScreen);

        void inject(ProblemResolutionActivity problemResolutionActivity);

        void inject(ProblemResolutionScreen problemResolutionScreen);

        void inject(SettingsTyresActivity settingsTyresActivity);

        void inject(TyresInversionScreen tyresInversionScreen);

        void inject(TyresNewInstallScreen tyresNewInstallScreen);

        void inject(TyresOptionsScreen tyresOptionsScreen);

        void inject(SettingsUserActivity settingsUserActivity);

        void inject(SettingsUserAddressActivity settingsUserAddressActivity);

        void inject(SettingsUserAddressScreen settingsUserAddressScreen);

        void inject(SettingsUserScreen settingsUserScreen);

        void inject(SettingsVehicleActivity settingsVehicleActivity);

        void inject(SettingsVehicleScreen settingsVehicleScreen);

        void inject(AlertCentralActivity alertCentralActivity);

        void inject(AutomaticSosPresenter automaticSosPresenter);

        void inject(ContactsActivity contactsActivity);

        void inject(ContactsScreen contactsScreen);

        void inject(MechanicActivity mechanicActivity);

        void inject(SosPrerequisiteActivity sosPrerequisiteActivity);

        void inject(SosPrerequisiteScreen sosPrerequisiteScreen);

        void inject(FirmwareUpdateController firmwareUpdateController);

        void inject(FirmwareUpdateService firmwareUpdateService);

        void inject(SosFirmwareWarningDialog sosFirmwareWarningDialog);

        void inject(UpdateFirmwareDialog updateFirmwareDialog);

        void inject(VehicleDataConfirmationActivity vehicleDataConfirmationActivity);

        void inject(VehicleFinderActivity vehicleFinderActivity);

        void inject(WalkThroughAdapter walkThroughAdapter);

        void inject(WalkthroughActivity walkthroughActivity);

        void inject(WalkthroughActivityLastStep walkthroughActivityLastStep);

        void inject(WalkthroughPresenter walkthroughPresenter);

        void inject(BaseFragment baseFragment);

        void inject(NavigationDrawerFragment navigationDrawerFragment);

        void inject(OnBoardingConfigurationActivity onBoardingConfigurationActivity);

        void inject(UpdateConfigurationActivity updateConfigurationActivity);

        void inject(UpdateConfigurationIntentService updateConfigurationIntentService);

        void inject(FcmManager fcmManager);

        void inject(FcmMessagingService fcmMessagingService);

        void inject(LampsManager lampsManager);

        void inject(CAReWorkerManager cAReWorkerManager);

        void inject(BatteryAnalyzerJob batteryAnalyzerJob);

        void inject(ChangeLockStatusJob changeLockStatusJob);

        void inject(CrashLogJob crashLogJob);

        void inject(DTCJob dTCJob);

        void inject(EmergencyInfoJob emergencyInfoJob);

        void inject(EmergencyInfoMessageJob emergencyInfoMessageJob);

        void inject(LampJob lampJob);

        void inject(LogJob logJob);

        void inject(ParameterJob parameterJob);

        void inject(PeriodicTaskJob periodicTaskJob);

        void inject(PurchaseDataJob purchaseDataJob);

        void inject(ServiceOneOffJob serviceOneOffJob);

        void inject(ThresholdsJob thresholdsJob);

        void inject(TripJob tripJob);

        void inject(UserTaskJob userTaskJob);

        void inject(VehicleAlarmsJob vehicleAlarmsJob);

        void inject(VehicleJob vehicleJob);

        void inject(BatteryServiceAnalyzer batteryServiceAnalyzer);

        void inject(DtcManager dtcManager);

        void inject(LoginHelperRx loginHelperRx);

        void inject(TripDataManager tripDataManager);

        void inject(AccountAuthenticator accountAuthenticator);

        void inject(ApiHeaders apiHeaders);

        void inject(BootCompletedReceiver bootCompletedReceiver);
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        Security.insertProviderAt(new BouncyCastleProvider(), 1);
        FirebaseApp.initializeApp(this);
        Thread.setDefaultUncaughtExceptionHandler(new RestartExceptionHandler(getApplicationContext()));
        this.component = DaggerCareApplication_ApplicationComponent.builder().careModule(new CareModule(this)).apiModule(new ApiModule(this)).build();
        component().inject(this);
        initLoggers();
        setupActiveAndroid();
        errataCorrige();
        this.mProfile.setServiceProxy(this.mTexaService);
        this.mTexaService.setCareProxy(this.mProfile);
        initNotificationChannel();
    }

    private void initNotificationChannel() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.mNotificationManager.createNotificationChannel(new NotificationChannel(Constants.NOTIFICATION_DEFAULT_PRIORITY, "CARe high priority notification", 3));
            NotificationChannel notificationChannel = new NotificationChannel(Constants.NOTIFICATION_MIN_PRIORITY, "CARe low priority notification", 1);
            notificationChannel.setSound(null, null);
            this.mNotificationManager.createNotificationChannel(notificationChannel);
        }
    }

    private void initLoggers() {
        this.mLogConfigurator.logToFile(this);
        FirebaseCrashlytics.getInstance().setCrashlyticsCollectionEnabled(true);
        FirebaseCrashlytics.getInstance().setCustomKey("library_version", getString(com.texa.care.R.string.carelib_core_version));
        Timber.plant(new CrashlyticsTree());
        CrashlyticsHelper.initSmartphoneInfos();
    }

    private void errataCorrige() {
        new ErrataCorrigeExecutor(Utils.getVersionCode(getApplicationContext()), Arrays.asList(new ContactErrataCorrige())).execute();
    }

    public ApplicationComponent component() {
        return this.component;
    }

    public void setComponent(ApplicationComponent applicationComponent) {
        this.component = applicationComponent;
    }

    private void setupActiveAndroid() {
        ActiveAndroid.initialize(this);
    }

    @Override // androidx.work.Configuration.Provider
    public Configuration getWorkManagerConfiguration() {
        return new Configuration.Builder().setMinimumLoggingLevel(3).setExecutor(Executors.newFixedThreadPool(4)).build();
    }
}

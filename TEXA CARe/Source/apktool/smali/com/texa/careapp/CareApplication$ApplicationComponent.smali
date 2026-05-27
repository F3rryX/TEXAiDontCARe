.class public interface abstract Lcom/texa/careapp/CareApplication$ApplicationComponent;
.super Ljava/lang/Object;
.source "CareApplication.java"


# annotations
.annotation runtime Ldagger/Component;
    modules = {
        Lcom/texa/careapp/dagger/CareModule;,
        Lcom/texa/careapp/dagger/ApiModule;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/CareApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ApplicationComponent"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# virtual methods
.method public abstract inject(Lcom/texa/careapp/CareApplication;)V
.end method

.method public abstract inject(Lcom/texa/careapp/DefaultFlavorDelegator;)V
.end method

.method public abstract inject(Lcom/texa/careapp/FlavorDelegator;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/MainActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/SplashActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/activationSosServices/NoSosServiceActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/activationSosServices/NoSosServiceScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/auth/LoginActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/auth/RecoverPasswordScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/auth/SignInScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/auth/SignUpEmailScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/auth/SignUpPasswordScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/calibration/CalibrationActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/calibration/CalibrationDialogScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/calibration/CalibrationScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/dashboard/PowerSaveScreenDialog;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/dashboard/UnsupportedAndroidDialog;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/diagnosis/DiagnosisActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/diagnosis/DiagnosisAdvancedDialog;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/diagnosis/DiagnosisDataActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/diagnosis/DiagnosisDataScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/ecodriving/hint/HintPresenter;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialAdapter;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/ecodriving/tutorial/TutorialPresenter;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/onboarding/CareSiteScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/onboarding/OnBoardingActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/onboarding/SellerMapScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/onboarding/StartEngineScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorDialog;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/permission/PermissionActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/permission/PermissionAdapter;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/permission/PermissionPresenter;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/schedule/ScheduleActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/schedule/ScheduleScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/schedule/SchedulesAdapter;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/schedule/addThreshold/AddNewThresholdActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultOdometerThresholdScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/service/CareService;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/service/RxCareService;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/settings/SettingsActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/settings/SettingsAdapter;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/settings/SettingsScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/settings/services/SettingsServicesActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/settings/settingscare/SettingsCareActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/settings/settingscare/SettingsCareFwUpdateScreenDialog;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/settings/tyres/TyresOptionsScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/settings/user/SettingsUserActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/settings/user/SettingsUserAddressActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/sos/AlertCentralActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/sos/ContactsActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/sos/ContactsScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/sos/MechanicActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/sos/SosPrerequisiteActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/update/FirmwareUpdateController;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/update/FirmwareUpdateService;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/walkthrough/WalkThroughAdapter;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/walkthrough/WalkthroughActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;)V
.end method

.method public abstract inject(Lcom/texa/careapp/app/walkthrough/WalkthroughPresenter;)V
.end method

.method public abstract inject(Lcom/texa/careapp/base/BaseFragment;)V
.end method

.method public abstract inject(Lcom/texa/careapp/base/NavigationDrawerFragment;)V
.end method

.method public abstract inject(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;)V
.end method

.method public abstract inject(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;)V
.end method

.method public abstract inject(Lcom/texa/careapp/fcm/FcmManager;)V
.end method

.method public abstract inject(Lcom/texa/careapp/fcm/FcmMessagingService;)V
.end method

.method public abstract inject(Lcom/texa/careapp/lamps/LampsManager;)V
.end method

.method public abstract inject(Lcom/texa/careapp/sync/CAReWorkerManager;)V
.end method

.method public abstract inject(Lcom/texa/careapp/sync/jobs/BatteryAnalyzerJob;)V
.end method

.method public abstract inject(Lcom/texa/careapp/sync/jobs/ChangeLockStatusJob;)V
.end method

.method public abstract inject(Lcom/texa/careapp/sync/jobs/CrashLogJob;)V
.end method

.method public abstract inject(Lcom/texa/careapp/sync/jobs/DTCJob;)V
.end method

.method public abstract inject(Lcom/texa/careapp/sync/jobs/EmergencyInfoJob;)V
.end method

.method public abstract inject(Lcom/texa/careapp/sync/jobs/EmergencyInfoMessageJob;)V
.end method

.method public abstract inject(Lcom/texa/careapp/sync/jobs/LampJob;)V
.end method

.method public abstract inject(Lcom/texa/careapp/sync/jobs/LogJob;)V
.end method

.method public abstract inject(Lcom/texa/careapp/sync/jobs/ParameterJob;)V
.end method

.method public abstract inject(Lcom/texa/careapp/sync/jobs/PeriodicTaskJob;)V
.end method

.method public abstract inject(Lcom/texa/careapp/sync/jobs/PurchaseDataJob;)V
.end method

.method public abstract inject(Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;)V
.end method

.method public abstract inject(Lcom/texa/careapp/sync/jobs/ThresholdsJob;)V
.end method

.method public abstract inject(Lcom/texa/careapp/sync/jobs/TripJob;)V
.end method

.method public abstract inject(Lcom/texa/careapp/sync/jobs/UserTaskJob;)V
.end method

.method public abstract inject(Lcom/texa/careapp/sync/jobs/VehicleAlarmsJob;)V
.end method

.method public abstract inject(Lcom/texa/careapp/sync/jobs/VehicleJob;)V
.end method

.method public abstract inject(Lcom/texa/careapp/utils/BatteryServiceAnalyzer;)V
.end method

.method public abstract inject(Lcom/texa/careapp/utils/DtcManager;)V
.end method

.method public abstract inject(Lcom/texa/careapp/utils/LoginHelperRx;)V
.end method

.method public abstract inject(Lcom/texa/careapp/utils/TripDataManager;)V
.end method

.method public abstract inject(Lcom/texa/careapp/utils/authentication/AccountAuthenticator;)V
.end method

.method public abstract inject(Lcom/texa/careapp/utils/authentication/ApiHeaders;)V
.end method

.method public abstract inject(Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver;)V
.end method

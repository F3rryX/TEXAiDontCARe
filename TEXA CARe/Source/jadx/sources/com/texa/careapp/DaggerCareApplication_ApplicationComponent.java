package com.texa.careapp;

import android.accounts.AccountManager;
import android.app.NotificationManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.hardware.SensorManager;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import at.favre.lib.armadillo.ArmadilloSharedPreferences;
import com.texa.care.eco_driving.DrivingStyleManager;
import com.texa.care.eco_driving.RxProfile;
import com.texa.care.eco_driving.RxVehicle;
import com.texa.careapp.CareApplication;
import com.texa.careapp.alarms.AlternatorStaticAnalyzer;
import com.texa.careapp.alarms.VehicleAlarmNotifier;
import com.texa.careapp.app.MainActivity;
import com.texa.careapp.app.MainActivity_MembersInjector;
import com.texa.careapp.app.SplashActivity;
import com.texa.careapp.app.SplashActivity_MembersInjector;
import com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen;
import com.texa.careapp.app.activationSosServices.AcceptationTermsSosServiceScreen_MembersInjector;
import com.texa.careapp.app.activationSosServices.ActivationLightForeignServiceScreen;
import com.texa.careapp.app.activationSosServices.ActivationLightForeignServiceScreen_MembersInjector;
import com.texa.careapp.app.activationSosServices.ActivationLightServiceScreen;
import com.texa.careapp.app.activationSosServices.ActivationLightServiceScreen_MembersInjector;
import com.texa.careapp.app.activationSosServices.ActivationPlusServiceScreen;
import com.texa.careapp.app.activationSosServices.ActivationPlusServiceScreen_MembersInjector;
import com.texa.careapp.app.activationSosServices.ActivationServiceActivity;
import com.texa.careapp.app.activationSosServices.ActivationServiceActivity_MembersInjector;
import com.texa.careapp.app.activationSosServices.ActivationServiceCompletedScreen;
import com.texa.careapp.app.activationSosServices.ActivationServiceCompletedScreen_MembersInjector;
import com.texa.careapp.app.activationSosServices.ActivationServiceVehicleDialog;
import com.texa.careapp.app.activationSosServices.ActivationServiceVehicleDialog_MembersInjector;
import com.texa.careapp.app.activationSosServices.ActivationTrialServiceScreen;
import com.texa.careapp.app.activationSosServices.ActivationTrialServiceScreen_MembersInjector;
import com.texa.careapp.app.activationSosServices.NoSosServiceActivity;
import com.texa.careapp.app.activationSosServices.NoSosServiceActivity_MembersInjector;
import com.texa.careapp.app.activationSosServices.NoSosServiceScreen;
import com.texa.careapp.app.activationSosServices.NoSosServiceScreen_MembersInjector;
import com.texa.careapp.app.activationSosServices.SosInAppBillingSubscription;
import com.texa.careapp.app.activationSosServices.SosInAppBillingSubscription_MembersInjector;
import com.texa.careapp.app.activationSosServices.contact.ActivationServiceContactActivity;
import com.texa.careapp.app.activationSosServices.contact.ActivationServiceContactActivity_MembersInjector;
import com.texa.careapp.app.activationSosServices.contact.ActivationServiceContactScreen;
import com.texa.careapp.app.activationSosServices.contact.ActivationServiceContactScreen_MembersInjector;
import com.texa.careapp.app.activationSosServices.contact.ActivationServiceDeleteContactDialog;
import com.texa.careapp.app.activationSosServices.contact.ActivationServiceDeleteContactDialog_MembersInjector;
import com.texa.careapp.app.activationSosServices.contact.ActivationServiceSelectContactNumberDialog;
import com.texa.careapp.app.activationSosServices.contact.ActivationServiceSelectContactNumberDialog_MembersInjector;
import com.texa.careapp.app.activationSosServices.phone.ActivationPhoneNumberActivity;
import com.texa.careapp.app.activationSosServices.phone.ActivationPhoneNumberActivity_MembersInjector;
import com.texa.careapp.app.activationSosServices.phone.NumberValidatorFinalStepScreen;
import com.texa.careapp.app.activationSosServices.phone.NumberValidatorFinalStepScreen_MembersInjector;
import com.texa.careapp.app.activationSosServices.phone.NumberValidatorScreen;
import com.texa.careapp.app.activationSosServices.phone.NumberValidatorScreen_MembersInjector;
import com.texa.careapp.app.auth.AcceptTermsOfServiceAndPolicyScreenDialog;
import com.texa.careapp.app.auth.AcceptTermsOfServiceAndPolicyScreenDialog_MembersInjector;
import com.texa.careapp.app.auth.LoginActivity;
import com.texa.careapp.app.auth.LoginActivity_MembersInjector;
import com.texa.careapp.app.auth.RecoverPasswordScreen;
import com.texa.careapp.app.auth.RecoverPasswordScreen_MembersInjector;
import com.texa.careapp.app.auth.SignInScreen;
import com.texa.careapp.app.auth.SignInScreen_MembersInjector;
import com.texa.careapp.app.auth.SignUpEmailScreen;
import com.texa.careapp.app.auth.SignUpEmailScreen_MembersInjector;
import com.texa.careapp.app.auth.SignUpPasswordScreen;
import com.texa.careapp.app.auth.SignUpPasswordScreen_MembersInjector;
import com.texa.careapp.app.auth.SignUpPersonalDataScreen;
import com.texa.careapp.app.auth.SignUpPersonalDataScreen_MembersInjector;
import com.texa.careapp.app.calibration.CalibrationActivity;
import com.texa.careapp.app.calibration.CalibrationDialogScreen;
import com.texa.careapp.app.calibration.CalibrationDialogScreen_MembersInjector;
import com.texa.careapp.app.calibration.CalibrationScreen;
import com.texa.careapp.app.calibration.CalibrationScreen_MembersInjector;
import com.texa.careapp.app.dashboard.DashboardScreenAdapter;
import com.texa.careapp.app.dashboard.DashboardScreenAdapter_MembersInjector;
import com.texa.careapp.app.dashboard.DashboardScreenV2;
import com.texa.careapp.app.dashboard.DashboardScreenV2_MembersInjector;
import com.texa.careapp.app.dashboard.PowerSaveScreenDialog;
import com.texa.careapp.app.dashboard.UnsupportedAndroidDialog;
import com.texa.careapp.app.dashboard.card.DiagnosisCardViewPresenter;
import com.texa.careapp.app.dashboard.card.DiagnosisCardViewPresenter_MembersInjector;
import com.texa.careapp.app.dashboard.card.EcoDrivingCardViewPresenter;
import com.texa.careapp.app.dashboard.card.EcoDrivingCardViewPresenter_MembersInjector;
import com.texa.careapp.app.dashboard.card.FindVehicleCardViewPresenter;
import com.texa.careapp.app.dashboard.card.FindVehicleCardViewPresenter_MembersInjector;
import com.texa.careapp.app.dashboard.card.ParametersCardViewPresenter;
import com.texa.careapp.app.dashboard.card.ParametersCardViewPresenter_MembersInjector;
import com.texa.careapp.app.dashboard.card.ParametersChooseChartDialog;
import com.texa.careapp.app.dashboard.card.ParametersChooseChartDialog_MembersInjector;
import com.texa.careapp.app.dashboard.card.ScheduleCardViewPresenter;
import com.texa.careapp.app.dashboard.card.ScheduleCardViewPresenter_MembersInjector;
import com.texa.careapp.app.dashboard.vehicle.VehiclePagerAdapter;
import com.texa.careapp.app.dashboard.vehicle.VehiclePagerAdapter_MembersInjector;
import com.texa.careapp.app.dashboard.vehicle.VehiclePresenter;
import com.texa.careapp.app.dashboard.vehicle.VehiclePresenter_MembersInjector;
import com.texa.careapp.app.diagnosis.DiagnosisActivity;
import com.texa.careapp.app.diagnosis.DiagnosisAdvancedDialog;
import com.texa.careapp.app.diagnosis.DiagnosisDataActivity;
import com.texa.careapp.app.diagnosis.DiagnosisDataPagerAdapter;
import com.texa.careapp.app.diagnosis.DiagnosisDataPagerAdapter_MembersInjector;
import com.texa.careapp.app.diagnosis.DiagnosisDataScreen;
import com.texa.careapp.app.diagnosis.DiagnosisScreen;
import com.texa.careapp.app.diagnosis.DiagnosisScreen_MembersInjector;
import com.texa.careapp.app.diagnosis.tab.errorDTC.ErrorDTCViewPresenter;
import com.texa.careapp.app.diagnosis.tab.errorDTC.ErrorDTCViewPresenter_MembersInjector;
import com.texa.careapp.app.diagnosis.tab.parameters.ParametersViewPresenterV2;
import com.texa.careapp.app.diagnosis.tab.parameters.ParametersViewPresenterV2_MembersInjector;
import com.texa.careapp.app.ecodriving.AcceptationTermsActivity;
import com.texa.careapp.app.ecodriving.AcceptationTermsActivity_MembersInjector;
import com.texa.careapp.app.ecodriving.AcceptationTermsScreen;
import com.texa.careapp.app.ecodriving.AcceptationTermsScreen_MembersInjector;
import com.texa.careapp.app.ecodriving.EcoDrivingActivity;
import com.texa.careapp.app.ecodriving.EcoDrivingActivity_MembersInjector;
import com.texa.careapp.app.ecodriving.EcoDrivingDialogHideTrip;
import com.texa.careapp.app.ecodriving.EcoDrivingDialogHideTrip_MembersInjector;
import com.texa.careapp.app.ecodriving.EcoDrivingScreen;
import com.texa.careapp.app.ecodriving.EcoDrivingScreen_MembersInjector;
import com.texa.careapp.app.ecodriving.EcoDrivingTripDetailMapScreen;
import com.texa.careapp.app.ecodriving.EcoDrivingTripDetailScreen;
import com.texa.careapp.app.ecodriving.EcoDrivingTripDetailScreen_MembersInjector;
import com.texa.careapp.app.ecodriving.hint.EcoDrivingHintActivity;
import com.texa.careapp.app.ecodriving.hint.EcoDrivingHintAdapter;
import com.texa.careapp.app.ecodriving.hint.EcoDrivingHintAdapter_MembersInjector;
import com.texa.careapp.app.ecodriving.hint.HintPresenter;
import com.texa.careapp.app.ecodriving.hint.HintPresenter_MembersInjector;
import com.texa.careapp.app.ecodriving.pager.EcoDrivingScreenDayAdapter;
import com.texa.careapp.app.ecodriving.pager.EcoDrivingScreenDayAdapter_MembersInjector;
import com.texa.careapp.app.ecodriving.pager.WeekPresenter;
import com.texa.careapp.app.ecodriving.pager.WeekPresenter_MembersInjector;
import com.texa.careapp.app.ecodriving.tutorial.EcoDrivingTutorialActivity;
import com.texa.careapp.app.ecodriving.tutorial.EcoDrivingTutorialActivity_MembersInjector;
import com.texa.careapp.app.ecodriving.tutorial.EcoDrivingTutorialAdapter;
import com.texa.careapp.app.ecodriving.tutorial.EcoDrivingTutorialAdapter_MembersInjector;
import com.texa.careapp.app.ecodriving.tutorial.TutorialPresenter;
import com.texa.careapp.app.ecodriving.utils.AvgCalculator;
import com.texa.careapp.app.onboarding.BaseVehicleDataScreen;
import com.texa.careapp.app.onboarding.BaseVehicleDataScreen_MembersInjector;
import com.texa.careapp.app.onboarding.CareAuthenticationScreen;
import com.texa.careapp.app.onboarding.CareAuthenticationScreen_MembersInjector;
import com.texa.careapp.app.onboarding.CareSiteScreen;
import com.texa.careapp.app.onboarding.DongleDiscoveryScreen;
import com.texa.careapp.app.onboarding.DongleDiscoveryScreen_MembersInjector;
import com.texa.careapp.app.onboarding.InstallationHelpScreen;
import com.texa.careapp.app.onboarding.InstallationHelpScreen_MembersInjector;
import com.texa.careapp.app.onboarding.OnBoardingActivity;
import com.texa.careapp.app.onboarding.OnBoardingActivity_MembersInjector;
import com.texa.careapp.app.onboarding.SellerMapScreen;
import com.texa.careapp.app.onboarding.StartEngineScreen;
import com.texa.careapp.app.onboarding.StartEngineScreen_MembersInjector;
import com.texa.careapp.app.onboarding.adapters.CountryDialogAdapter;
import com.texa.careapp.app.onboarding.dialogs.CareConfigurationRequestDialog;
import com.texa.careapp.app.onboarding.dialogs.CareConfigurationRequestDialog_MembersInjector;
import com.texa.careapp.app.onboarding.dialogs.CountryScreenDialog;
import com.texa.careapp.app.onboarding.dialogs.CountryScreenDialog_MembersInjector;
import com.texa.careapp.app.onboarding.dialogs.EnableBluetoothScreenDialog;
import com.texa.careapp.app.onboarding.dialogs.EnableBluetoothScreenDialog_MembersInjector;
import com.texa.careapp.app.onboarding.dialogs.OnBoardingErrorDialog;
import com.texa.careapp.app.onboarding.dialogs.OnBoardingErrorDialog_MembersInjector;
import com.texa.careapp.app.onboarding.dialogs.OnBoardingErrorEngineDialog;
import com.texa.careapp.app.onboarding.dialogs.OnBoardingErrorEngineDialog_MembersInjector;
import com.texa.careapp.app.onboarding.dialogs.PlateValidationScreenDialog;
import com.texa.careapp.app.onboarding.dialogs.PlateValidationScreenDialog_MembersInjector;
import com.texa.careapp.app.onboarding.dialogs.VehicleAlreadyConfiguredScreenDialog;
import com.texa.careapp.app.onboarding.dialogs.VehicleAlreadyConfiguredScreenDialog_MembersInjector;
import com.texa.careapp.app.onboarding.dialogs.VehicleScreenDialog;
import com.texa.careapp.app.onboarding.dialogs.VehicleScreenDialog_MembersInjector;
import com.texa.careapp.app.permission.PermissionActivity;
import com.texa.careapp.app.permission.PermissionActivity_MembersInjector;
import com.texa.careapp.app.permission.PermissionAdapter;
import com.texa.careapp.app.permission.PermissionAdapter_MembersInjector;
import com.texa.careapp.app.permission.PermissionPresenter;
import com.texa.careapp.app.permission.PermissionPresenter_MembersInjector;
import com.texa.careapp.app.schedule.BinderScheduleView;
import com.texa.careapp.app.schedule.ResetExpiredScheduleScreen;
import com.texa.careapp.app.schedule.ResetExpiredScheduleScreen_MembersInjector;
import com.texa.careapp.app.schedule.ScheduleActivity;
import com.texa.careapp.app.schedule.ScheduleActivity_MembersInjector;
import com.texa.careapp.app.schedule.ScheduleScreen;
import com.texa.careapp.app.schedule.ScheduleScreen_MembersInjector;
import com.texa.careapp.app.schedule.SchedulesAdapter;
import com.texa.careapp.app.schedule.SchedulesAdapter_MembersInjector;
import com.texa.careapp.app.schedule.addThreshold.AddNewThresholdActivity;
import com.texa.careapp.app.schedule.addThreshold.AddNewThresholdActivity_MembersInjector;
import com.texa.careapp.app.schedule.addThreshold.SelectNewScheduleScreen;
import com.texa.careapp.app.schedule.addThreshold.SelectNewScheduleScreen_MembersInjector;
import com.texa.careapp.app.schedule.addThreshold.SetDefaultDateThresholdScreen;
import com.texa.careapp.app.schedule.addThreshold.SetDefaultDateThresholdScreen_MembersInjector;
import com.texa.careapp.app.schedule.addThreshold.SetDefaultOdometerThresholdScreen;
import com.texa.careapp.app.schedule.addThreshold.SetDefaultOdometerThresholdScreen_MembersInjector;
import com.texa.careapp.app.schedule.addThreshold.SetInsuranceCompanyScreen;
import com.texa.careapp.app.schedule.addThreshold.SetInsuranceCompanyScreen_MembersInjector;
import com.texa.careapp.app.schedule.addThreshold.SetInsuranceDateThresholdScreen;
import com.texa.careapp.app.schedule.addThreshold.SetInsuranceDateThresholdScreen_MembersInjector;
import com.texa.careapp.app.schedule.addThreshold.tyres.SetTyresOdometerScreen;
import com.texa.careapp.app.schedule.addThreshold.tyres.SetTyresOdometerScreen_MembersInjector;
import com.texa.careapp.app.service.CareService;
import com.texa.careapp.app.service.CareService_MembersInjector;
import com.texa.careapp.app.service.RxCareService;
import com.texa.careapp.app.service.RxCareService_MembersInjector;
import com.texa.careapp.app.service.ServiceNotificationController;
import com.texa.careapp.app.service.SosPrerequisiteNotificationController;
import com.texa.careapp.app.service.SosPrerequisiteNotificationController_MembersInjector;
import com.texa.careapp.app.settings.FactoryResetScreenDialog;
import com.texa.careapp.app.settings.FactoryResetScreenDialog_MembersInjector;
import com.texa.careapp.app.settings.SettingsActivity;
import com.texa.careapp.app.settings.SettingsActivity_MembersInjector;
import com.texa.careapp.app.settings.SettingsAdapter;
import com.texa.careapp.app.settings.SettingsAdapter_MembersInjector;
import com.texa.careapp.app.settings.SettingsScreen;
import com.texa.careapp.app.settings.SettingsScreen_MembersInjector;
import com.texa.careapp.app.settings.companyinfo.CompanyInfoActivity;
import com.texa.careapp.app.settings.companyinfo.CompanyInfoScreen;
import com.texa.careapp.app.settings.companyinfo.CompanyInfoScreen_MembersInjector;
import com.texa.careapp.app.settings.generalsettings.GeneralSettingsActivity;
import com.texa.careapp.app.settings.generalsettings.GeneralSettingsScreen;
import com.texa.careapp.app.settings.generalsettings.GeneralSettingsScreen_MembersInjector;
import com.texa.careapp.app.settings.insertnewthreshold.InsertNewThresholdActivity;
import com.texa.careapp.app.settings.insertnewthreshold.InsertNewThresholdScreen;
import com.texa.careapp.app.settings.insertnewthreshold.InsertNewThresholdScreen_MembersInjector;
import com.texa.careapp.app.settings.services.ServicesSubscriptionManagerActivity;
import com.texa.careapp.app.settings.services.ServicesSubscriptionManagerScreen;
import com.texa.careapp.app.settings.services.ServicesSubscriptionManagerScreen_MembersInjector;
import com.texa.careapp.app.settings.services.SettingsServicesActivity;
import com.texa.careapp.app.settings.services.SettingsServicesScreen;
import com.texa.careapp.app.settings.services.SettingsServicesScreen_MembersInjector;
import com.texa.careapp.app.settings.settingscare.SettingsCareActivity;
import com.texa.careapp.app.settings.settingscare.SettingsCareFwUpdateScreenDialog;
import com.texa.careapp.app.settings.settingscare.SettingsCareScreen;
import com.texa.careapp.app.settings.settingscare.SettingsCareScreen_MembersInjector;
import com.texa.careapp.app.settings.troubleshooting.ProblemResolutionActivity;
import com.texa.careapp.app.settings.troubleshooting.ProblemResolutionScreen;
import com.texa.careapp.app.settings.troubleshooting.ProblemResolutionScreen_MembersInjector;
import com.texa.careapp.app.settings.tyres.SettingsTyresActivity;
import com.texa.careapp.app.settings.tyres.SettingsTyresActivity_MembersInjector;
import com.texa.careapp.app.settings.tyres.TyresInversionScreen;
import com.texa.careapp.app.settings.tyres.TyresInversionScreen_MembersInjector;
import com.texa.careapp.app.settings.tyres.TyresNewInstallScreen;
import com.texa.careapp.app.settings.tyres.TyresNewInstallScreen_MembersInjector;
import com.texa.careapp.app.settings.tyres.TyresOptionsScreen;
import com.texa.careapp.app.settings.user.SettingsUserActivity;
import com.texa.careapp.app.settings.user.SettingsUserAddressActivity;
import com.texa.careapp.app.settings.user.SettingsUserAddressScreen;
import com.texa.careapp.app.settings.user.SettingsUserAddressScreen_MembersInjector;
import com.texa.careapp.app.settings.user.SettingsUserScreen;
import com.texa.careapp.app.settings.user.SettingsUserScreen_MembersInjector;
import com.texa.careapp.app.settings.vehicle.SettingsVehicleActivity;
import com.texa.careapp.app.settings.vehicle.SettingsVehicleScreen;
import com.texa.careapp.app.settings.vehicle.SettingsVehicleScreen_MembersInjector;
import com.texa.careapp.app.sos.AlertCentralActivity;
import com.texa.careapp.app.sos.AlertCentralActivity_MembersInjector;
import com.texa.careapp.app.sos.AutomaticSosPresenter;
import com.texa.careapp.app.sos.AutomaticSosPresenter_MembersInjector;
import com.texa.careapp.app.sos.ContactsActivity;
import com.texa.careapp.app.sos.ContactsScreen;
import com.texa.careapp.app.sos.ContactsScreen_MembersInjector;
import com.texa.careapp.app.sos.MechanicActivity;
import com.texa.careapp.app.sos.MechanicActivity_MembersInjector;
import com.texa.careapp.app.sos.SosPrerequisiteActivity;
import com.texa.careapp.app.sos.SosPrerequisiteActivity_MembersInjector;
import com.texa.careapp.app.sos.SosPrerequisiteScreen;
import com.texa.careapp.app.sos.SosPrerequisiteScreen_MembersInjector;
import com.texa.careapp.app.sos.featuremanager.SosFeatureManager;
import com.texa.careapp.app.update.FirmwareUpdateController;
import com.texa.careapp.app.update.FirmwareUpdateController_MembersInjector;
import com.texa.careapp.app.update.FirmwareUpdateService;
import com.texa.careapp.app.update.FirmwareUpdateService_MembersInjector;
import com.texa.careapp.app.utils.SosFirmwareWarningDialog;
import com.texa.careapp.app.utils.SosFirmwareWarningDialog_MembersInjector;
import com.texa.careapp.app.utils.UpdateFirmwareDialog;
import com.texa.careapp.app.utils.UpdateFirmwareDialog_MembersInjector;
import com.texa.careapp.app.vehicle.VehicleDataConfirmationActivity;
import com.texa.careapp.app.vehicle.VehicleDataConfirmationActivity_MembersInjector;
import com.texa.careapp.app.vehiclefinder.VehicleFinderActivity;
import com.texa.careapp.app.vehiclefinder.VehicleFinderActivity_MembersInjector;
import com.texa.careapp.app.walkthrough.WalkThroughAdapter;
import com.texa.careapp.app.walkthrough.WalkThroughAdapter_MembersInjector;
import com.texa.careapp.app.walkthrough.WalkthroughActivity;
import com.texa.careapp.app.walkthrough.WalkthroughActivityLastStep;
import com.texa.careapp.app.walkthrough.WalkthroughActivityLastStep_MembersInjector;
import com.texa.careapp.app.walkthrough.WalkthroughActivity_MembersInjector;
import com.texa.careapp.app.walkthrough.WalkthroughPresenter;
import com.texa.careapp.app.walkthrough.WalkthroughPresenter_MembersInjector;
import com.texa.careapp.base.BaseActivity_MembersInjector;
import com.texa.careapp.base.BaseFragment;
import com.texa.careapp.base.BaseFragment_MembersInjector;
import com.texa.careapp.base.NavigationDrawerFragment;
import com.texa.careapp.base.NavigationDrawerFragment_MembersInjector;
import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.checks.ChecksFactory;
import com.texa.careapp.configuration.OnBoardingConfigurationActivity;
import com.texa.careapp.configuration.OnBoardingConfigurationActivity_MembersInjector;
import com.texa.careapp.configuration.UpdateConfigurationActivity;
import com.texa.careapp.configuration.UpdateConfigurationActivity_MembersInjector;
import com.texa.careapp.configuration.UpdateConfigurationHelper;
import com.texa.careapp.configuration.UpdateConfigurationIntentService;
import com.texa.careapp.configuration.UpdateConfigurationIntentService_MembersInjector;
import com.texa.careapp.dagger.ApiModule;
import com.texa.careapp.dagger.ApiModule_ProvideApiAuthenticatorClientFactory;
import com.texa.careapp.dagger.ApiModule_ProvideApiAuthenticatorUserFactory;
import com.texa.careapp.dagger.ApiModule_ProvideClientIdFactory;
import com.texa.careapp.dagger.ApiModule_ProvideClientSecretFactory;
import com.texa.careapp.dagger.ApiModule_ProvideTexaCareApiClientFactory;
import com.texa.careapp.dagger.ApiModule_ProvideTexaCareApiServiceUserFactory;
import com.texa.careapp.dagger.ApiModule_ProvideTexaCareAuthServiceFactory;
import com.texa.careapp.dagger.ApiModule_ProvideTexaCareServiceBusFactory;
import com.texa.careapp.dagger.CareModule;
import com.texa.careapp.dagger.CareModule_ProvideAccessTokenManagerClientFactory;
import com.texa.careapp.dagger.CareModule_ProvideAccessTokenManagerUserFactory;
import com.texa.careapp.dagger.CareModule_ProvideAccessoryFactory;
import com.texa.careapp.dagger.CareModule_ProvideAccountManagerFactory;
import com.texa.careapp.dagger.CareModule_ProvideAlternatorStaticAnalyzerFactory;
import com.texa.careapp.dagger.CareModule_ProvideAttitudeFactory;
import com.texa.careapp.dagger.CareModule_ProvideAvgCalculatorFactory;
import com.texa.careapp.dagger.CareModule_ProvideBatteryAnalyzerFactory;
import com.texa.careapp.dagger.CareModule_ProvideBatteryChargeNotifierFactory;
import com.texa.careapp.dagger.CareModule_ProvideBatteryServiceAnalyzerFactory;
import com.texa.careapp.dagger.CareModule_ProvideBinderScheduleViewFactory;
import com.texa.careapp.dagger.CareModule_ProvideCAReWorkerManagerFactory;
import com.texa.careapp.dagger.CareModule_ProvideCareConfigurationHelperFactory;
import com.texa.careapp.dagger.CareModule_ProvideCareObserverFactory;
import com.texa.careapp.dagger.CareModule_ProvideChecksFactoryFactory;
import com.texa.careapp.dagger.CareModule_ProvideCommunicationFactory;
import com.texa.careapp.dagger.CareModule_ProvideCommunicationObservableFactory;
import com.texa.careapp.dagger.CareModule_ProvideContextFactory;
import com.texa.careapp.dagger.CareModule_ProvideCrashLogReaderFactory;
import com.texa.careapp.dagger.CareModule_ProvideCrashlyticsHelperFactory;
import com.texa.careapp.dagger.CareModule_ProvideCurrentTripFactory;
import com.texa.careapp.dagger.CareModule_ProvideDTCResolutionIntegratorFactory;
import com.texa.careapp.dagger.CareModule_ProvideDataManagerConfigurationFactory;
import com.texa.careapp.dagger.CareModule_ProvideDiagnosticConfigurationFactory;
import com.texa.careapp.dagger.CareModule_ProvideDongleDataManagerFactory;
import com.texa.careapp.dagger.CareModule_ProvideDrivingStyleManagerFactory;
import com.texa.careapp.dagger.CareModule_ProvideDtcManagerFactory;
import com.texa.careapp.dagger.CareModule_ProvideEventBusFactory;
import com.texa.careapp.dagger.CareModule_ProvideFcmManagerFactory;
import com.texa.careapp.dagger.CareModule_ProvideFeatureVerifierFactory;
import com.texa.careapp.dagger.CareModule_ProvideFirmwareUpdateControllerFactory;
import com.texa.careapp.dagger.CareModule_ProvideFirmwareUpgradeProcedureFactory;
import com.texa.careapp.dagger.CareModule_ProvideFlavorDelegatorFactory;
import com.texa.careapp.dagger.CareModule_ProvideFormValidatorFactory;
import com.texa.careapp.dagger.CareModule_ProvideImpactDetectionFactory;
import com.texa.careapp.dagger.CareModule_ProvideImpactDetectorFactory;
import com.texa.careapp.dagger.CareModule_ProvideLampsManagerFactory;
import com.texa.careapp.dagger.CareModule_ProvideLocalBroadcastManagerFactory;
import com.texa.careapp.dagger.CareModule_ProvideLocationTrackerFactory;
import com.texa.careapp.dagger.CareModule_ProvideLogConfiguratorFactory;
import com.texa.careapp.dagger.CareModule_ProvideLoggerManagerFactory;
import com.texa.careapp.dagger.CareModule_ProvideLoginHelperRxFactory;
import com.texa.careapp.dagger.CareModule_ProvideMechanicDataManagerFactory;
import com.texa.careapp.dagger.CareModule_ProvideNotificationManagerFactory;
import com.texa.careapp.dagger.CareModule_ProvidePercentColorHelperFactory;
import com.texa.careapp.dagger.CareModule_ProvidePreferenceManagerFactory;
import com.texa.careapp.dagger.CareModule_ProvideProfileFactory;
import com.texa.careapp.dagger.CareModule_ProvideReactiveLocationProviderFactory;
import com.texa.careapp.dagger.CareModule_ProvideRetrofitErrorParserFactory;
import com.texa.careapp.dagger.CareModule_ProvideRxProfileFactory;
import com.texa.careapp.dagger.CareModule_ProvideRxVehicleFactory;
import com.texa.careapp.dagger.CareModule_ProvideScheduleDataManagerFactory;
import com.texa.careapp.dagger.CareModule_ProvideSecurePreferecesFactory;
import com.texa.careapp.dagger.CareModule_ProvideSecurePreferecesV2Factory;
import com.texa.careapp.dagger.CareModule_ProvideSensorManagerFactory;
import com.texa.careapp.dagger.CareModule_ProvideServiceDataManagerFactory;
import com.texa.careapp.dagger.CareModule_ProvideServiceNotificationControllerFactory;
import com.texa.careapp.dagger.CareModule_ProvideSosFeatureManagerFactory;
import com.texa.careapp.dagger.CareModule_ProvideSosPrerequisiteNotificationControllerFactory;
import com.texa.careapp.dagger.CareModule_ProvideSpeakerFactory;
import com.texa.careapp.dagger.CareModule_ProvideTexaCareAuthServiceHelperFactory;
import com.texa.careapp.dagger.CareModule_ProvideTexaProfileDelegateFactory;
import com.texa.careapp.dagger.CareModule_ProvideTexaServiceFactory;
import com.texa.careapp.dagger.CareModule_ProvideTripDataManagerFactory;
import com.texa.careapp.dagger.CareModule_ProvideTripLogBookFactory;
import com.texa.careapp.dagger.CareModule_ProvideTripLogBookReaderFactory;
import com.texa.careapp.dagger.CareModule_ProvideUserDataManagerFactory;
import com.texa.careapp.dagger.CareModule_ProvideVehicleDataManagerFactory;
import com.texa.careapp.dagger.CareModule_ProvideVehicleFactory;
import com.texa.careapp.dagger.CareModule_ProvideVehicleInfoFactory;
import com.texa.careapp.dagger.CareModule_ProvideVehicleParamMapperV2Factory;
import com.texa.careapp.dagger.CareModule_ProvideVehicleParametersManagerV2Factory;
import com.texa.careapp.dagger.CareModule_ProvideVehicleTroublesFactory;
import com.texa.careapp.dagger.CareModule_ProvideWakelockManagerFactory;
import com.texa.careapp.dagger.CareModule_VehicleObserverFactory;
import com.texa.careapp.fcm.FcmManager;
import com.texa.careapp.fcm.FcmMessagingService;
import com.texa.careapp.fcm.FcmMessagingService_MembersInjector;
import com.texa.careapp.impactdetection.ImpactDetector;
import com.texa.careapp.lamps.LampsManager;
import com.texa.careapp.lamps.LampsManager_MembersInjector;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.ScheduleDataManager;
import com.texa.careapp.networking.TexaCareApiServiceClient;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.networking.TexaCareAuthService;
import com.texa.careapp.networking.TexaCareAuthServiceHelper;
import com.texa.careapp.networking.TexaCareServiceBus;
import com.texa.careapp.parameters.VehicleParamMapperV2;
import com.texa.careapp.parameters.VehicleParametersManagerV2;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.sync.jobs.BatteryAnalyzerJob;
import com.texa.careapp.sync.jobs.BatteryAnalyzerJob_MembersInjector;
import com.texa.careapp.sync.jobs.ChangeLockStatusJob;
import com.texa.careapp.sync.jobs.ChangeLockStatusJob_MembersInjector;
import com.texa.careapp.sync.jobs.CrashLogJob;
import com.texa.careapp.sync.jobs.CrashLogJob_MembersInjector;
import com.texa.careapp.sync.jobs.DTCJob;
import com.texa.careapp.sync.jobs.DTCJob_MembersInjector;
import com.texa.careapp.sync.jobs.EmergencyInfoJob;
import com.texa.careapp.sync.jobs.EmergencyInfoJob_MembersInjector;
import com.texa.careapp.sync.jobs.EmergencyInfoMessageJob;
import com.texa.careapp.sync.jobs.EmergencyInfoMessageJob_MembersInjector;
import com.texa.careapp.sync.jobs.LampJob;
import com.texa.careapp.sync.jobs.LampJob_MembersInjector;
import com.texa.careapp.sync.jobs.LogJob;
import com.texa.careapp.sync.jobs.LogJob_MembersInjector;
import com.texa.careapp.sync.jobs.ParameterJob;
import com.texa.careapp.sync.jobs.ParameterJob_MembersInjector;
import com.texa.careapp.sync.jobs.PeriodicTaskJob;
import com.texa.careapp.sync.jobs.PeriodicTaskJob_MembersInjector;
import com.texa.careapp.sync.jobs.PurchaseDataJob;
import com.texa.careapp.sync.jobs.PurchaseDataJob_MembersInjector;
import com.texa.careapp.sync.jobs.ServiceOneOffJob;
import com.texa.careapp.sync.jobs.ServiceOneOffJob_MembersInjector;
import com.texa.careapp.sync.jobs.ThresholdsJob;
import com.texa.careapp.sync.jobs.ThresholdsJob_MembersInjector;
import com.texa.careapp.sync.jobs.TripJob;
import com.texa.careapp.sync.jobs.TripJob_MembersInjector;
import com.texa.careapp.sync.jobs.UserTaskJob;
import com.texa.careapp.sync.jobs.UserTaskJob_MembersInjector;
import com.texa.careapp.sync.jobs.VehicleAlarmsJob;
import com.texa.careapp.sync.jobs.VehicleAlarmsJob_MembersInjector;
import com.texa.careapp.sync.jobs.VehicleJob;
import com.texa.careapp.sync.jobs.VehicleJob_MembersInjector;
import com.texa.careapp.tts.Speaker;
import com.texa.careapp.utils.BatteryServiceAnalyzer;
import com.texa.careapp.utils.BatteryServiceAnalyzer_MembersInjector;
import com.texa.careapp.utils.CrashLogReader;
import com.texa.careapp.utils.CrashlyticsHelper;
import com.texa.careapp.utils.DtcManager;
import com.texa.careapp.utils.DtcManager_MembersInjector;
import com.texa.careapp.utils.FormValidator;
import com.texa.careapp.utils.LocationTracker;
import com.texa.careapp.utils.LogConfigurator;
import com.texa.careapp.utils.LoginHelperRx;
import com.texa.careapp.utils.LoginHelperRx_MembersInjector;
import com.texa.careapp.utils.MechanicDataManager;
import com.texa.careapp.utils.PercentColorHelper;
import com.texa.careapp.utils.RetrofitErrorParser;
import com.texa.careapp.utils.ServiceDataManager;
import com.texa.careapp.utils.TexaProfileDelegate;
import com.texa.careapp.utils.TripDataManager;
import com.texa.careapp.utils.TripLogBookReader;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.VehicleDataManager;
import com.texa.careapp.utils.VehicleObserver;
import com.texa.careapp.utils.authentication.AccessTokenPersistenceManager;
import com.texa.careapp.utils.authentication.AccountAuthenticator;
import com.texa.careapp.utils.authentication.AccountAuthenticator_MembersInjector;
import com.texa.careapp.utils.authentication.ApiAuthenticatorClient;
import com.texa.careapp.utils.authentication.ApiAuthenticatorUser;
import com.texa.careapp.utils.authentication.ApiHeaders;
import com.texa.careapp.utils.authentication.ApiHeaders_MembersInjector;
import com.texa.careapp.utils.broadcastreceiver.BootCompletedReceiver;
import com.texa.careapp.utils.broadcastreceiver.BootCompletedReceiver_MembersInjector;
import com.texa.careapp.utils.wakelock.WakelockManager;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.attitude.Attitude;
import com.texa.carelib.care.batteryanalyzer.BatteryAnalyzer;
import com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration;
import com.texa.carelib.care.diagnosticconfiguration.DiagnosticConfiguration;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.firmwareupgrade.FirmwareUpgradeProcedure;
import com.texa.carelib.care.impacts.ImpactDetection;
import com.texa.carelib.care.trips.CurrentTrip;
import com.texa.carelib.care.trips.TripLogBook;
import com.texa.carelib.care.vehicle.Vehicle;
import com.texa.carelib.care.vehicleinfo.VehicleInfo;
import com.texa.carelib.care.vehicletroubles.VehicleTroubles;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.tools.integrator.DTCResolutionIntegrator;
import com.texa.carelib.webservices.TexaService;
import com.texa.securepreferences.SecurePreferences;
import dagger.internal.DoubleCheck;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;
import pl.charmas.android.reactivelocation2.ReactiveLocationProvider;

/* JADX INFO: loaded from: classes.dex */
public final class DaggerCareApplication_ApplicationComponent implements CareApplication.ApplicationComponent {
    private final ApiModule apiModule;
    private final DaggerCareApplication_ApplicationComponent applicationComponent;
    private final CareModule careModule;
    private Provider<AccessTokenPersistenceManager> provideAccessTokenManagerClientProvider;
    private Provider<AccessTokenPersistenceManager> provideAccessTokenManagerUserProvider;
    private Provider<Accessory> provideAccessoryProvider;
    private Provider<AccountManager> provideAccountManagerProvider;
    private Provider<AlternatorStaticAnalyzer> provideAlternatorStaticAnalyzerProvider;
    private Provider<ApiAuthenticatorClient> provideApiAuthenticatorClientProvider;
    private Provider<ApiAuthenticatorUser> provideApiAuthenticatorUserProvider;
    private Provider<Attitude> provideAttitudeProvider;
    private Provider<AvgCalculator> provideAvgCalculatorProvider;
    private Provider<BatteryAnalyzer> provideBatteryAnalyzerProvider;
    private Provider<VehicleAlarmNotifier> provideBatteryChargeNotifierProvider;
    private Provider<BatteryServiceAnalyzer> provideBatteryServiceAnalyzerProvider;
    private Provider<BinderScheduleView> provideBinderScheduleViewProvider;
    private Provider<CAReWorkerManager> provideCAReWorkerManagerProvider;
    private Provider<UpdateConfigurationHelper> provideCareConfigurationHelperProvider;
    private Provider<ICareObserver> provideCareObserverProvider;
    private Provider<ChecksFactory> provideChecksFactoryProvider;
    private Provider<String> provideClientIdProvider;
    private Provider<String> provideClientSecretProvider;
    private Provider<CommunicationObservable> provideCommunicationObservableProvider;
    private Provider<Communication> provideCommunicationProvider;
    private Provider<Context> provideContextProvider;
    private Provider<CrashLogReader> provideCrashLogReaderProvider;
    private Provider<CrashlyticsHelper> provideCrashlyticsHelperProvider;
    private Provider<CurrentTrip> provideCurrentTripProvider;
    private Provider<DTCResolutionIntegrator> provideDTCResolutionIntegratorProvider;
    private Provider<DataManagerConfiguration> provideDataManagerConfigurationProvider;
    private Provider<DiagnosticConfiguration> provideDiagnosticConfigurationProvider;
    private Provider<DongleDataManager> provideDongleDataManagerProvider;
    private Provider<DrivingStyleManager> provideDrivingStyleManagerProvider;
    private Provider<DtcManager> provideDtcManagerProvider;
    private Provider<EventBus> provideEventBusProvider;
    private Provider<FcmManager> provideFcmManagerProvider;
    private Provider<FeatureVerifier> provideFeatureVerifierProvider;
    private Provider<FirmwareUpdateController> provideFirmwareUpdateControllerProvider;
    private Provider<FirmwareUpgradeProcedure> provideFirmwareUpgradeProcedureProvider;
    private Provider<FlavorDelegator> provideFlavorDelegatorProvider;
    private Provider<FormValidator> provideFormValidatorProvider;
    private Provider<ImpactDetection> provideImpactDetectionProvider;
    private Provider<ImpactDetector> provideImpactDetectorProvider;
    private Provider<LampsManager> provideLampsManagerProvider;
    private Provider<LocalBroadcastManager> provideLocalBroadcastManagerProvider;
    private Provider<LocationTracker> provideLocationTrackerProvider;
    private Provider<LogConfigurator> provideLogConfiguratorProvider;
    private Provider<LoggerManager> provideLoggerManagerProvider;
    private Provider<MechanicDataManager> provideMechanicDataManagerProvider;
    private Provider<NotificationManager> provideNotificationManagerProvider;
    private Provider<PercentColorHelper> providePercentColorHelperProvider;
    private Provider<SharedPreferences> providePreferenceManagerProvider;
    private Provider<Profile> provideProfileProvider;
    private Provider<ReactiveLocationProvider> provideReactiveLocationProvider;
    private Provider<RetrofitErrorParser> provideRetrofitErrorParserProvider;
    private Provider<RxProfile> provideRxProfileProvider;
    private Provider<RxVehicle> provideRxVehicleProvider;
    private Provider<ScheduleDataManager> provideScheduleDataManagerProvider;
    private Provider<SecurePreferences> provideSecurePreferecesProvider;
    private Provider<ArmadilloSharedPreferences> provideSecurePreferecesV2Provider;
    private Provider<SensorManager> provideSensorManagerProvider;
    private Provider<ServiceDataManager> provideServiceDataManagerProvider;
    private Provider<ServiceNotificationController> provideServiceNotificationControllerProvider;
    private Provider<SosFeatureManager> provideSosFeatureManagerProvider;
    private Provider<SosPrerequisiteNotificationController> provideSosPrerequisiteNotificationControllerProvider;
    private Provider<Speaker> provideSpeakerProvider;
    private Provider<TexaCareApiServiceClient> provideTexaCareApiClientProvider;
    private Provider<TexaCareApiServiceUser> provideTexaCareApiServiceUserProvider;
    private Provider<TexaCareAuthService> provideTexaCareAuthServiceProvider;
    private Provider<TexaCareServiceBus> provideTexaCareServiceBusProvider;
    private Provider<TexaProfileDelegate> provideTexaProfileDelegateProvider;
    private Provider<TexaService> provideTexaServiceProvider;
    private Provider<TripDataManager> provideTripDataManagerProvider;
    private Provider<TripLogBook> provideTripLogBookProvider;
    private Provider<TripLogBookReader> provideTripLogBookReaderProvider;
    private Provider<UserDataManager> provideUserDataManagerProvider;
    private Provider<VehicleDataManager> provideVehicleDataManagerProvider;
    private Provider<VehicleInfo> provideVehicleInfoProvider;
    private Provider<VehicleParametersManagerV2> provideVehicleParametersManagerV2Provider;
    private Provider<Vehicle> provideVehicleProvider;
    private Provider<VehicleTroubles> provideVehicleTroublesProvider;
    private Provider<WakelockManager> provideWakelockManagerProvider;
    private Provider<VehicleObserver> vehicleObserverProvider;

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(DefaultFlavorDelegator defaultFlavorDelegator) {
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(FlavorDelegator flavorDelegator) {
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(PowerSaveScreenDialog powerSaveScreenDialog) {
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(UnsupportedAndroidDialog unsupportedAndroidDialog) {
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(DiagnosisAdvancedDialog diagnosisAdvancedDialog) {
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(DiagnosisDataScreen diagnosisDataScreen) {
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(EcoDrivingTripDetailMapScreen ecoDrivingTripDetailMapScreen) {
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(TutorialPresenter tutorialPresenter) {
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(CareSiteScreen careSiteScreen) {
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(SellerMapScreen sellerMapScreen) {
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(CountryDialogAdapter countryDialogAdapter) {
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(SettingsCareFwUpdateScreenDialog settingsCareFwUpdateScreenDialog) {
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(TyresOptionsScreen tyresOptionsScreen) {
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(FcmManager fcmManager) {
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(CAReWorkerManager cAReWorkerManager) {
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(TripDataManager tripDataManager) {
    }

    private DaggerCareApplication_ApplicationComponent(CareModule careModule, ApiModule apiModule) {
        this.applicationComponent = this;
        this.careModule = careModule;
        this.apiModule = apiModule;
        initialize(careModule, apiModule);
    }

    public static Builder builder() {
        return new Builder();
    }

    private ArmadilloSharedPreferences armadilloSharedPreferences() {
        CareModule careModule = this.careModule;
        return CareModule_ProvideSecurePreferecesV2Factory.provideSecurePreferecesV2(careModule, CareModule_ProvideContextFactory.provideContext(careModule));
    }

    private TexaCareAuthServiceHelper texaCareAuthServiceHelper() {
        return CareModule_ProvideTexaCareAuthServiceHelperFactory.provideTexaCareAuthServiceHelper(this.careModule, this.provideTexaCareAuthServiceProvider.get(), ApiModule_ProvideClientIdFactory.provideClientId(this.apiModule), ApiModule_ProvideClientSecretFactory.provideClientSecret(this.apiModule), this.provideAccessTokenManagerClientProvider.get());
    }

    private VehicleParamMapperV2 vehicleParamMapperV2() {
        return CareModule_ProvideVehicleParamMapperV2Factory.provideVehicleParamMapperV2(this.careModule, this.provideCommunicationProvider.get());
    }

    private ChecksFactory checksFactory() {
        return CareModule_ProvideChecksFactoryFactory.provideChecksFactory(this.careModule, this.provideUserDataManagerProvider.get(), this.provideCommunicationObservableProvider.get(), this.provideDongleDataManagerProvider.get(), this.provideReactiveLocationProvider.get(), this.provideServiceDataManagerProvider.get());
    }

    private void initialize(CareModule careModule, ApiModule apiModule) {
        this.provideLogConfiguratorProvider = DoubleCheck.provider(CareModule_ProvideLogConfiguratorFactory.create(careModule));
        this.provideCommunicationProvider = DoubleCheck.provider(CareModule_ProvideCommunicationFactory.create(careModule));
        this.provideFlavorDelegatorProvider = DoubleCheck.provider(CareModule_ProvideFlavorDelegatorFactory.create(careModule));
        this.provideDongleDataManagerProvider = DoubleCheck.provider(CareModule_ProvideDongleDataManagerFactory.create(careModule));
        this.provideSecurePreferecesProvider = CareModule_ProvideSecurePreferecesFactory.create(careModule);
        CareModule_ProvideContextFactory careModule_ProvideContextFactoryCreate = CareModule_ProvideContextFactory.create(careModule);
        this.provideContextProvider = careModule_ProvideContextFactoryCreate;
        CareModule_ProvideSecurePreferecesV2Factory careModule_ProvideSecurePreferecesV2FactoryCreate = CareModule_ProvideSecurePreferecesV2Factory.create(careModule, careModule_ProvideContextFactoryCreate);
        this.provideSecurePreferecesV2Provider = careModule_ProvideSecurePreferecesV2FactoryCreate;
        Provider<TexaProfileDelegate> provider = DoubleCheck.provider(CareModule_ProvideTexaProfileDelegateFactory.create(careModule, this.provideFlavorDelegatorProvider, this.provideDongleDataManagerProvider, this.provideSecurePreferecesProvider, careModule_ProvideSecurePreferecesV2FactoryCreate));
        this.provideTexaProfileDelegateProvider = provider;
        this.provideProfileProvider = DoubleCheck.provider(CareModule_ProvideProfileFactory.create(careModule, this.provideCommunicationProvider, provider));
        this.provideClientIdProvider = ApiModule_ProvideClientIdFactory.create(apiModule);
        ApiModule_ProvideClientSecretFactory apiModule_ProvideClientSecretFactoryCreate = ApiModule_ProvideClientSecretFactory.create(apiModule);
        this.provideClientSecretProvider = apiModule_ProvideClientSecretFactoryCreate;
        this.provideTexaServiceProvider = DoubleCheck.provider(CareModule_ProvideTexaServiceFactory.create(careModule, this.provideClientIdProvider, apiModule_ProvideClientSecretFactoryCreate));
        this.provideNotificationManagerProvider = DoubleCheck.provider(CareModule_ProvideNotificationManagerFactory.create(careModule));
        this.provideUserDataManagerProvider = DoubleCheck.provider(CareModule_ProvideUserDataManagerFactory.create(careModule));
        this.providePreferenceManagerProvider = DoubleCheck.provider(CareModule_ProvidePreferenceManagerFactory.create(careModule));
        this.provideCommunicationObservableProvider = DoubleCheck.provider(CareModule_ProvideCommunicationObservableFactory.create(careModule, this.provideCommunicationProvider));
        this.provideAccessoryProvider = DoubleCheck.provider(CareModule_ProvideAccessoryFactory.create(careModule, this.provideProfileProvider));
        Provider<CAReWorkerManager> provider2 = DoubleCheck.provider(CareModule_ProvideCAReWorkerManagerFactory.create(careModule, this.provideContextProvider));
        this.provideCAReWorkerManagerProvider = provider2;
        this.provideLoggerManagerProvider = DoubleCheck.provider(CareModule_ProvideLoggerManagerFactory.create(careModule, this.provideUserDataManagerProvider, this.provideDongleDataManagerProvider, this.provideCommunicationObservableProvider, this.providePreferenceManagerProvider, this.provideAccessoryProvider, provider2));
        this.provideRxProfileProvider = DoubleCheck.provider(CareModule_ProvideRxProfileFactory.create(careModule, this.provideProfileProvider));
        this.provideLocalBroadcastManagerProvider = DoubleCheck.provider(CareModule_ProvideLocalBroadcastManagerFactory.create(careModule, this.provideContextProvider));
        Provider<FeatureVerifier> provider3 = DoubleCheck.provider(CareModule_ProvideFeatureVerifierFactory.create(careModule, this.provideProfileProvider, this.provideAccessoryProvider));
        this.provideFeatureVerifierProvider = provider3;
        this.provideCurrentTripProvider = DoubleCheck.provider(CareModule_ProvideCurrentTripFactory.create(careModule, this.provideProfileProvider, provider3));
        this.provideVehicleProvider = DoubleCheck.provider(CareModule_ProvideVehicleFactory.create(careModule, this.provideProfileProvider, this.provideAccessoryProvider, this.provideFeatureVerifierProvider));
        this.provideVehicleTroublesProvider = DoubleCheck.provider(CareModule_ProvideVehicleTroublesFactory.create(careModule, this.provideProfileProvider, this.provideAccessoryProvider, this.provideFeatureVerifierProvider));
        Provider<VehicleInfo> provider4 = DoubleCheck.provider(CareModule_ProvideVehicleInfoFactory.create(careModule, this.provideProfileProvider, this.provideFeatureVerifierProvider));
        this.provideVehicleInfoProvider = provider4;
        this.provideCareObserverProvider = DoubleCheck.provider(CareModule_ProvideCareObserverFactory.create(careModule, this.provideDongleDataManagerProvider, this.provideCommunicationProvider, this.provideCurrentTripProvider, this.provideAccessoryProvider, this.provideVehicleProvider, this.provideVehicleTroublesProvider, provider4));
        Provider<AccountManager> provider5 = DoubleCheck.provider(CareModule_ProvideAccountManagerFactory.create(careModule));
        this.provideAccountManagerProvider = provider5;
        this.provideAccessTokenManagerUserProvider = DoubleCheck.provider(CareModule_ProvideAccessTokenManagerUserFactory.create(careModule, provider5));
        Provider<TexaCareAuthService> provider6 = DoubleCheck.provider(ApiModule_ProvideTexaCareAuthServiceFactory.create(apiModule));
        this.provideTexaCareAuthServiceProvider = provider6;
        Provider<ApiAuthenticatorUser> provider7 = DoubleCheck.provider(ApiModule_ProvideApiAuthenticatorUserFactory.create(apiModule, this.provideAccessTokenManagerUserProvider, this.provideClientIdProvider, this.provideClientSecretProvider, provider6, this.provideUserDataManagerProvider, this.provideLocalBroadcastManagerProvider));
        this.provideApiAuthenticatorUserProvider = provider7;
        this.provideTexaCareApiServiceUserProvider = DoubleCheck.provider(ApiModule_ProvideTexaCareApiServiceUserFactory.create(apiModule, provider7, this.provideAccessTokenManagerUserProvider));
        this.provideVehicleDataManagerProvider = DoubleCheck.provider(CareModule_ProvideVehicleDataManagerFactory.create(careModule, this.provideDongleDataManagerProvider));
        Provider<EventBus> provider8 = DoubleCheck.provider(CareModule_ProvideEventBusFactory.create(careModule));
        this.provideEventBusProvider = provider8;
        this.vehicleObserverProvider = DoubleCheck.provider(CareModule_VehicleObserverFactory.create(careModule, this.provideDongleDataManagerProvider, this.provideTexaCareApiServiceUserProvider, this.provideVehicleDataManagerProvider, provider8, this.provideCommunicationProvider));
        Provider<RxVehicle> provider9 = DoubleCheck.provider(CareModule_ProvideRxVehicleFactory.create(careModule, this.provideVehicleProvider));
        this.provideRxVehicleProvider = provider9;
        this.provideVehicleParametersManagerV2Provider = DoubleCheck.provider(CareModule_ProvideVehicleParametersManagerV2Factory.create(careModule, this.provideVehicleProvider, this.provideCurrentTripProvider, this.vehicleObserverProvider, this.provideCAReWorkerManagerProvider, this.provideFeatureVerifierProvider, provider9));
        this.provideServiceDataManagerProvider = DoubleCheck.provider(CareModule_ProvideServiceDataManagerFactory.create(careModule));
        this.provideFcmManagerProvider = DoubleCheck.provider(CareModule_ProvideFcmManagerFactory.create(careModule));
        Provider<ReactiveLocationProvider> provider10 = DoubleCheck.provider(CareModule_ProvideReactiveLocationProviderFactory.create(careModule));
        this.provideReactiveLocationProvider = provider10;
        this.provideChecksFactoryProvider = CareModule_ProvideChecksFactoryFactory.create(careModule, this.provideUserDataManagerProvider, this.provideCommunicationObservableProvider, this.provideDongleDataManagerProvider, provider10, this.provideServiceDataManagerProvider);
        this.provideImpactDetectionProvider = DoubleCheck.provider(CareModule_ProvideImpactDetectionFactory.create(careModule, this.provideProfileProvider, this.provideFeatureVerifierProvider));
        Provider<SensorManager> provider11 = DoubleCheck.provider(CareModule_ProvideSensorManagerFactory.create(careModule, this.provideContextProvider));
        this.provideSensorManagerProvider = provider11;
        this.provideImpactDetectorProvider = DoubleCheck.provider(CareModule_ProvideImpactDetectorFactory.create(careModule, this.provideCommunicationProvider, provider11));
        Provider<CrashLogReader> provider12 = DoubleCheck.provider(CareModule_ProvideCrashLogReaderFactory.create(careModule, this.provideDongleDataManagerProvider, this.provideCAReWorkerManagerProvider));
        this.provideCrashLogReaderProvider = provider12;
        this.provideSosFeatureManagerProvider = DoubleCheck.provider(CareModule_ProvideSosFeatureManagerFactory.create(careModule, this.provideUserDataManagerProvider, this.provideTexaCareApiServiceUserProvider, this.provideDongleDataManagerProvider, this.provideChecksFactoryProvider, this.provideEventBusProvider, this.provideLoggerManagerProvider, this.provideImpactDetectionProvider, this.provideImpactDetectorProvider, this.providePreferenceManagerProvider, this.provideServiceDataManagerProvider, provider12));
        this.provideRetrofitErrorParserProvider = DoubleCheck.provider(CareModule_ProvideRetrofitErrorParserFactory.create(careModule));
        this.provideFormValidatorProvider = DoubleCheck.provider(CareModule_ProvideFormValidatorFactory.create(careModule));
        Provider<DTCResolutionIntegrator> provider13 = DoubleCheck.provider(CareModule_ProvideDTCResolutionIntegratorFactory.create(careModule, this.provideAccessoryProvider, this.provideVehicleTroublesProvider, this.provideTexaServiceProvider));
        this.provideDTCResolutionIntegratorProvider = provider13;
        this.provideDtcManagerProvider = DoubleCheck.provider(CareModule_ProvideDtcManagerFactory.create(careModule, this.provideCareObserverProvider, this.provideProfileProvider, this.provideAccessoryProvider, this.provideFeatureVerifierProvider, this.provideVehicleTroublesProvider, provider13, this.vehicleObserverProvider));
        this.provideLocationTrackerProvider = DoubleCheck.provider(CareModule_ProvideLocationTrackerFactory.create(careModule, this.provideVehicleParametersManagerV2Provider, this.provideCareObserverProvider, this.provideCommunicationObservableProvider, this.provideCurrentTripProvider, this.provideLoggerManagerProvider));
        this.provideCrashlyticsHelperProvider = DoubleCheck.provider(CareModule_ProvideCrashlyticsHelperFactory.create(careModule, this.provideUserDataManagerProvider));
        this.provideCareConfigurationHelperProvider = DoubleCheck.provider(CareModule_ProvideCareConfigurationHelperFactory.create(careModule, this.provideTexaServiceProvider, this.provideCareObserverProvider, this.provideNotificationManagerProvider, this.provideCommunicationObservableProvider, this.provideDongleDataManagerProvider, this.vehicleObserverProvider));
        CareModule_ProvideBatteryChargeNotifierFactory careModule_ProvideBatteryChargeNotifierFactoryCreate = CareModule_ProvideBatteryChargeNotifierFactory.create(careModule, this.provideDongleDataManagerProvider, this.provideNotificationManagerProvider, this.provideCAReWorkerManagerProvider);
        this.provideBatteryChargeNotifierProvider = careModule_ProvideBatteryChargeNotifierFactoryCreate;
        this.provideAlternatorStaticAnalyzerProvider = DoubleCheck.provider(CareModule_ProvideAlternatorStaticAnalyzerFactory.create(careModule, careModule_ProvideBatteryChargeNotifierFactoryCreate));
        this.provideLampsManagerProvider = DoubleCheck.provider(CareModule_ProvideLampsManagerFactory.create(careModule, this.provideDtcManagerProvider, this.provideVehicleParametersManagerV2Provider));
        this.provideSpeakerProvider = DoubleCheck.provider(CareModule_ProvideSpeakerFactory.create(careModule, this.provideCareObserverProvider));
        this.provideWakelockManagerProvider = DoubleCheck.provider(CareModule_ProvideWakelockManagerFactory.create(careModule));
        this.provideServiceNotificationControllerProvider = DoubleCheck.provider(CareModule_ProvideServiceNotificationControllerFactory.create(careModule, this.provideNotificationManagerProvider, this.provideCommunicationObservableProvider, this.provideCareObserverProvider, this.provideLoggerManagerProvider, this.provideDongleDataManagerProvider, this.providePreferenceManagerProvider));
        this.provideSosPrerequisiteNotificationControllerProvider = DoubleCheck.provider(CareModule_ProvideSosPrerequisiteNotificationControllerFactory.create(careModule, this.provideNotificationManagerProvider, this.provideCommunicationObservableProvider, this.provideDongleDataManagerProvider, this.provideSosFeatureManagerProvider));
        this.provideTripLogBookReaderProvider = DoubleCheck.provider(CareModule_ProvideTripLogBookReaderFactory.create(careModule, this.vehicleObserverProvider, this.provideCAReWorkerManagerProvider));
        this.provideTripDataManagerProvider = DoubleCheck.provider(CareModule_ProvideTripDataManagerFactory.create(careModule));
        this.provideDataManagerConfigurationProvider = DoubleCheck.provider(CareModule_ProvideDataManagerConfigurationFactory.create(careModule, this.provideProfileProvider, this.provideFeatureVerifierProvider));
        this.provideTripLogBookProvider = DoubleCheck.provider(CareModule_ProvideTripLogBookFactory.create(careModule, this.provideProfileProvider, this.provideFeatureVerifierProvider));
        this.provideAttitudeProvider = DoubleCheck.provider(CareModule_ProvideAttitudeFactory.create(careModule, this.provideProfileProvider, this.provideFeatureVerifierProvider));
        this.provideDrivingStyleManagerProvider = DoubleCheck.provider(CareModule_ProvideDrivingStyleManagerFactory.create(careModule, this.provideProfileProvider, this.provideDataManagerConfigurationProvider, this.provideCurrentTripProvider, this.provideVehicleProvider, this.provideAccessoryProvider, this.provideFeatureVerifierProvider, this.providePreferenceManagerProvider, this.provideCommunicationProvider, this.provideRxVehicleProvider));
        this.provideBatteryServiceAnalyzerProvider = DoubleCheck.provider(CareModule_ProvideBatteryServiceAnalyzerFactory.create(careModule));
        this.provideAccessTokenManagerClientProvider = DoubleCheck.provider(CareModule_ProvideAccessTokenManagerClientFactory.create(careModule, this.providePreferenceManagerProvider));
        this.provideScheduleDataManagerProvider = DoubleCheck.provider(CareModule_ProvideScheduleDataManagerFactory.create(careModule, this.provideEventBusProvider, this.provideTexaCareApiServiceUserProvider, this.vehicleObserverProvider, this.provideUserDataManagerProvider));
        this.provideMechanicDataManagerProvider = DoubleCheck.provider(CareModule_ProvideMechanicDataManagerFactory.create(careModule, this.providePreferenceManagerProvider, this.provideTexaCareApiServiceUserProvider, this.provideDongleDataManagerProvider));
        this.provideDiagnosticConfigurationProvider = DoubleCheck.provider(CareModule_ProvideDiagnosticConfigurationFactory.create(careModule, this.provideProfileProvider, this.provideAccessoryProvider, this.provideFeatureVerifierProvider));
        Provider<ApiAuthenticatorClient> provider14 = DoubleCheck.provider(ApiModule_ProvideApiAuthenticatorClientFactory.create(apiModule, this.provideAccessTokenManagerClientProvider, this.provideClientIdProvider, this.provideClientSecretProvider, this.provideTexaCareAuthServiceProvider));
        this.provideApiAuthenticatorClientProvider = provider14;
        this.provideTexaCareApiClientProvider = DoubleCheck.provider(ApiModule_ProvideTexaCareApiClientFactory.create(apiModule, provider14, this.provideAccessTokenManagerClientProvider));
        this.provideBinderScheduleViewProvider = DoubleCheck.provider(CareModule_ProvideBinderScheduleViewFactory.create(careModule, this.vehicleObserverProvider));
        this.providePercentColorHelperProvider = DoubleCheck.provider(CareModule_ProvidePercentColorHelperFactory.create(careModule));
        this.provideAvgCalculatorProvider = DoubleCheck.provider(CareModule_ProvideAvgCalculatorFactory.create(careModule));
        this.provideFirmwareUpdateControllerProvider = DoubleCheck.provider(CareModule_ProvideFirmwareUpdateControllerFactory.create(careModule, this.provideTexaServiceProvider, this.provideCareObserverProvider, this.provideNotificationManagerProvider, this.provideDongleDataManagerProvider));
        this.provideBatteryAnalyzerProvider = DoubleCheck.provider(CareModule_ProvideBatteryAnalyzerFactory.create(careModule, this.provideProfileProvider, this.provideFeatureVerifierProvider));
        this.provideFirmwareUpgradeProcedureProvider = DoubleCheck.provider(CareModule_ProvideFirmwareUpgradeProcedureFactory.create(careModule, this.provideProfileProvider, this.provideFeatureVerifierProvider));
        this.provideTexaCareServiceBusProvider = DoubleCheck.provider(ApiModule_ProvideTexaCareServiceBusFactory.create(apiModule));
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(CareApplication careApplication) {
        injectCareApplication(careApplication);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(MainActivity mainActivity) {
        injectMainActivity(mainActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(AlertCentralActivity alertCentralActivity) {
        injectAlertCentralActivity(alertCentralActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(BaseFragment baseFragment) {
        injectBaseFragment(baseFragment);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(AccountAuthenticator accountAuthenticator) {
        injectAccountAuthenticator(accountAuthenticator);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(SignInScreen signInScreen) {
        injectSignInScreen(signInScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(SignUpEmailScreen signUpEmailScreen) {
        injectSignUpEmailScreen(signUpEmailScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(CareService careService) {
        injectCareService(careService);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(ApiHeaders apiHeaders) {
        injectApiHeaders(apiHeaders);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(LoginActivity loginActivity) {
        injectLoginActivity(loginActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(AutomaticSosPresenter automaticSosPresenter) {
        injectAutomaticSosPresenter(automaticSosPresenter);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(LoginHelperRx loginHelperRx) {
        injectLoginHelperRx(loginHelperRx);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(SettingsActivity settingsActivity) {
        injectSettingsActivity(settingsActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(SettingsUserActivity settingsUserActivity) {
        injectSettingsUserActivity(settingsUserActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(SettingsUserAddressActivity settingsUserAddressActivity) {
        injectSettingsUserAddressActivity(settingsUserAddressActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(SettingsVehicleActivity settingsVehicleActivity) {
        injectSettingsVehicleActivity(settingsVehicleActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(ScheduleScreen scheduleScreen) {
        injectScheduleScreen(scheduleScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(ContactsScreen contactsScreen) {
        injectContactsScreen(contactsScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(VehicleFinderActivity vehicleFinderActivity) {
        injectVehicleFinderActivity(vehicleFinderActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(SettingsCareActivity settingsCareActivity) {
        injectSettingsCareActivity(settingsCareActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(UpdateConfigurationIntentService updateConfigurationIntentService) {
        injectUpdateConfigurationIntentService(updateConfigurationIntentService);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(OnBoardingConfigurationActivity onBoardingConfigurationActivity) {
        injectOnBoardingConfigurationActivity(onBoardingConfigurationActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(NavigationDrawerFragment navigationDrawerFragment) {
        injectNavigationDrawerFragment(navigationDrawerFragment);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(VehicleDataConfirmationActivity vehicleDataConfirmationActivity) {
        injectVehicleDataConfirmationActivity(vehicleDataConfirmationActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(InsertNewThresholdActivity insertNewThresholdActivity) {
        injectInsertNewThresholdActivity(insertNewThresholdActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(FcmMessagingService fcmMessagingService) {
        injectFcmMessagingService(fcmMessagingService);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(SplashActivity splashActivity) {
        injectSplashActivity(splashActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(RecoverPasswordScreen recoverPasswordScreen) {
        injectRecoverPasswordScreen(recoverPasswordScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(CareConfigurationRequestDialog careConfigurationRequestDialog) {
        injectCareConfigurationRequestDialog(careConfigurationRequestDialog);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(MechanicActivity mechanicActivity) {
        injectMechanicActivity(mechanicActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(RxCareService rxCareService) {
        injectRxCareService(rxCareService);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(ProblemResolutionActivity problemResolutionActivity) {
        injectProblemResolutionActivity(problemResolutionActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(SettingsTyresActivity settingsTyresActivity) {
        injectSettingsTyresActivity(settingsTyresActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(TyresNewInstallScreen tyresNewInstallScreen) {
        injectTyresNewInstallScreen(tyresNewInstallScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(TyresInversionScreen tyresInversionScreen) {
        injectTyresInversionScreen(tyresInversionScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(ActivationServiceActivity activationServiceActivity) {
        injectActivationServiceActivity(activationServiceActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(SosPrerequisiteActivity sosPrerequisiteActivity) {
        injectSosPrerequisiteActivity(sosPrerequisiteActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(ActivationTrialServiceScreen activationTrialServiceScreen) {
        injectActivationTrialServiceScreen(activationTrialServiceScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(NoSosServiceActivity noSosServiceActivity) {
        injectNoSosServiceActivity(noSosServiceActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(ActivationPlusServiceScreen activationPlusServiceScreen) {
        injectActivationPlusServiceScreen(activationPlusServiceScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(ActivationServiceCompletedScreen activationServiceCompletedScreen) {
        injectActivationServiceCompletedScreen(activationServiceCompletedScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(ResetExpiredScheduleScreen resetExpiredScheduleScreen) {
        injectResetExpiredScheduleScreen(resetExpiredScheduleScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(ScheduleActivity scheduleActivity) {
        injectScheduleActivity(scheduleActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(SchedulesAdapter schedulesAdapter) {
        injectSchedulesAdapter(schedulesAdapter);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(SelectNewScheduleScreen selectNewScheduleScreen) {
        injectSelectNewScheduleScreen(selectNewScheduleScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(SetDefaultDateThresholdScreen setDefaultDateThresholdScreen) {
        injectSetDefaultDateThresholdScreen(setDefaultDateThresholdScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(SetDefaultOdometerThresholdScreen setDefaultOdometerThresholdScreen) {
        injectSetDefaultOdometerThresholdScreen(setDefaultOdometerThresholdScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(AddNewThresholdActivity addNewThresholdActivity) {
        injectAddNewThresholdActivity(addNewThresholdActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(SetInsuranceDateThresholdScreen setInsuranceDateThresholdScreen) {
        injectSetInsuranceDateThresholdScreen(setInsuranceDateThresholdScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(SetTyresOdometerScreen setTyresOdometerScreen) {
        injectSetTyresOdometerScreen(setTyresOdometerScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(SetInsuranceCompanyScreen setInsuranceCompanyScreen) {
        injectSetInsuranceCompanyScreen(setInsuranceCompanyScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(BootCompletedReceiver bootCompletedReceiver) {
        injectBootCompletedReceiver(bootCompletedReceiver);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(DiagnosisActivity diagnosisActivity) {
        injectDiagnosisActivity(diagnosisActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(DiagnosisDataActivity diagnosisDataActivity) {
        injectDiagnosisDataActivity(diagnosisDataActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(DashboardScreenV2 dashboardScreenV2) {
        injectDashboardScreenV2(dashboardScreenV2);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(DashboardScreenAdapter dashboardScreenAdapter) {
        injectDashboardScreenAdapter(dashboardScreenAdapter);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(DiagnosisCardViewPresenter diagnosisCardViewPresenter) {
        injectDiagnosisCardViewPresenter(diagnosisCardViewPresenter);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(ScheduleCardViewPresenter scheduleCardViewPresenter) {
        injectScheduleCardViewPresenter(scheduleCardViewPresenter);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(ParametersCardViewPresenter parametersCardViewPresenter) {
        injectParametersCardViewPresenter(parametersCardViewPresenter);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(FindVehicleCardViewPresenter findVehicleCardViewPresenter) {
        injectFindVehicleCardViewPresenter(findVehicleCardViewPresenter);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(DiagnosisScreen diagnosisScreen) {
        injectDiagnosisScreen(diagnosisScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(DiagnosisDataPagerAdapter diagnosisDataPagerAdapter) {
        injectDiagnosisDataPagerAdapter(diagnosisDataPagerAdapter);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(ErrorDTCViewPresenter errorDTCViewPresenter) {
        injectErrorDTCViewPresenter(errorDTCViewPresenter);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(VehiclePagerAdapter vehiclePagerAdapter) {
        injectVehiclePagerAdapter(vehiclePagerAdapter);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(VehiclePresenter vehiclePresenter) {
        injectVehiclePresenter(vehiclePresenter);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(ParametersChooseChartDialog parametersChooseChartDialog) {
        injectParametersChooseChartDialog(parametersChooseChartDialog);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(ContactsActivity contactsActivity) {
        injectContactsActivity(contactsActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(EcoDrivingActivity ecoDrivingActivity) {
        injectEcoDrivingActivity(ecoDrivingActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(EcoDrivingScreen ecoDrivingScreen) {
        injectEcoDrivingScreen(ecoDrivingScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(EcoDrivingScreenDayAdapter ecoDrivingScreenDayAdapter) {
        injectEcoDrivingScreenDayAdapter(ecoDrivingScreenDayAdapter);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(WeekPresenter weekPresenter) {
        injectWeekPresenter(weekPresenter);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(EcoDrivingTripDetailScreen ecoDrivingTripDetailScreen) {
        injectEcoDrivingTripDetailScreen(ecoDrivingTripDetailScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(EcoDrivingHintActivity ecoDrivingHintActivity) {
        injectEcoDrivingHintActivity(ecoDrivingHintActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(EcoDrivingHintAdapter ecoDrivingHintAdapter) {
        injectEcoDrivingHintAdapter(ecoDrivingHintAdapter);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(HintPresenter hintPresenter) {
        injectHintPresenter(hintPresenter);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(EcoDrivingCardViewPresenter ecoDrivingCardViewPresenter) {
        injectEcoDrivingCardViewPresenter(ecoDrivingCardViewPresenter);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(EcoDrivingTutorialAdapter ecoDrivingTutorialAdapter) {
        injectEcoDrivingTutorialAdapter(ecoDrivingTutorialAdapter);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(EcoDrivingTutorialActivity ecoDrivingTutorialActivity) {
        injectEcoDrivingTutorialActivity(ecoDrivingTutorialActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(GeneralSettingsActivity generalSettingsActivity) {
        injectGeneralSettingsActivity(generalSettingsActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(SettingsAdapter settingsAdapter) {
        injectSettingsAdapter(settingsAdapter);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(EcoDrivingDialogHideTrip ecoDrivingDialogHideTrip) {
        injectEcoDrivingDialogHideTrip(ecoDrivingDialogHideTrip);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(AcceptationTermsActivity acceptationTermsActivity) {
        injectAcceptationTermsActivity(acceptationTermsActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(AcceptationTermsScreen acceptationTermsScreen) {
        injectAcceptationTermsScreen(acceptationTermsScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(ActivationServiceContactActivity activationServiceContactActivity) {
        injectActivationServiceContactActivity(activationServiceContactActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(ActivationServiceContactScreen activationServiceContactScreen) {
        injectActivationServiceContactScreen(activationServiceContactScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(ActivationServiceSelectContactNumberDialog activationServiceSelectContactNumberDialog) {
        injectActivationServiceSelectContactNumberDialog(activationServiceSelectContactNumberDialog);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(SosInAppBillingSubscription sosInAppBillingSubscription) {
        injectSosInAppBillingSubscription(sosInAppBillingSubscription);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(ActivationLightServiceScreen activationLightServiceScreen) {
        injectActivationLightServiceScreen(activationLightServiceScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(ActivationServiceDeleteContactDialog activationServiceDeleteContactDialog) {
        injectActivationServiceDeleteContactDialog(activationServiceDeleteContactDialog);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(NoSosServiceScreen noSosServiceScreen) {
        injectNoSosServiceScreen(noSosServiceScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(ActivationServiceVehicleDialog activationServiceVehicleDialog) {
        injectActivationServiceVehicleDialog(activationServiceVehicleDialog);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(AcceptationTermsSosServiceScreen acceptationTermsSosServiceScreen) {
        injectAcceptationTermsSosServiceScreen(acceptationTermsSosServiceScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(SosPrerequisiteScreen sosPrerequisiteScreen) {
        injectSosPrerequisiteScreen(sosPrerequisiteScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(ActivationLightForeignServiceScreen activationLightForeignServiceScreen) {
        injectActivationLightForeignServiceScreen(activationLightForeignServiceScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(SettingsScreen settingsScreen) {
        injectSettingsScreen(settingsScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(SettingsCareScreen settingsCareScreen) {
        injectSettingsCareScreen(settingsCareScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(ParametersViewPresenterV2 parametersViewPresenterV2) {
        injectParametersViewPresenterV2(parametersViewPresenterV2);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(ProblemResolutionScreen problemResolutionScreen) {
        injectProblemResolutionScreen(problemResolutionScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(CompanyInfoActivity companyInfoActivity) {
        injectCompanyInfoActivity(companyInfoActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(CompanyInfoScreen companyInfoScreen) {
        injectCompanyInfoScreen(companyInfoScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(InsertNewThresholdScreen insertNewThresholdScreen) {
        injectInsertNewThresholdScreen(insertNewThresholdScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(GeneralSettingsScreen generalSettingsScreen) {
        injectGeneralSettingsScreen(generalSettingsScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(SettingsVehicleScreen settingsVehicleScreen) {
        injectSettingsVehicleScreen(settingsVehicleScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(SettingsUserScreen settingsUserScreen) {
        injectSettingsUserScreen(settingsUserScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(SettingsUserAddressScreen settingsUserAddressScreen) {
        injectSettingsUserAddressScreen(settingsUserAddressScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(SosFirmwareWarningDialog sosFirmwareWarningDialog) {
        injectSosFirmwareWarningDialog(sosFirmwareWarningDialog);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(UpdateFirmwareDialog updateFirmwareDialog) {
        injectUpdateFirmwareDialog(updateFirmwareDialog);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(SettingsServicesActivity settingsServicesActivity) {
        injectSettingsServicesActivity(settingsServicesActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(SettingsServicesScreen settingsServicesScreen) {
        injectSettingsServicesScreen(settingsServicesScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(ServicesSubscriptionManagerActivity servicesSubscriptionManagerActivity) {
        injectServicesSubscriptionManagerActivity(servicesSubscriptionManagerActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(ServicesSubscriptionManagerScreen servicesSubscriptionManagerScreen) {
        injectServicesSubscriptionManagerScreen(servicesSubscriptionManagerScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(LampsManager lampsManager) {
        injectLampsManager(lampsManager);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(DtcManager dtcManager) {
        injectDtcManager(dtcManager);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(BatteryServiceAnalyzer batteryServiceAnalyzer) {
        injectBatteryServiceAnalyzer(batteryServiceAnalyzer);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(SignUpPasswordScreen signUpPasswordScreen) {
        injectSignUpPasswordScreen(signUpPasswordScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(SignUpPersonalDataScreen signUpPersonalDataScreen) {
        injectSignUpPersonalDataScreen(signUpPersonalDataScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(WalkthroughActivity walkthroughActivity) {
        injectWalkthroughActivity(walkthroughActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(WalkThroughAdapter walkThroughAdapter) {
        injectWalkThroughAdapter(walkThroughAdapter);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(WalkthroughPresenter walkthroughPresenter) {
        injectWalkthroughPresenter(walkthroughPresenter);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(WalkthroughActivityLastStep walkthroughActivityLastStep) {
        injectWalkthroughActivityLastStep(walkthroughActivityLastStep);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(OnBoardingActivity onBoardingActivity) {
        injectOnBoardingActivity(onBoardingActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(BaseVehicleDataScreen baseVehicleDataScreen) {
        injectBaseVehicleDataScreen(baseVehicleDataScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(InstallationHelpScreen installationHelpScreen) {
        injectInstallationHelpScreen(installationHelpScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(DongleDiscoveryScreen dongleDiscoveryScreen) {
        injectDongleDiscoveryScreen(dongleDiscoveryScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(CareAuthenticationScreen careAuthenticationScreen) {
        injectCareAuthenticationScreen(careAuthenticationScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(PermissionActivity permissionActivity) {
        injectPermissionActivity(permissionActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(PermissionPresenter permissionPresenter) {
        injectPermissionPresenter(permissionPresenter);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(PermissionAdapter permissionAdapter) {
        injectPermissionAdapter(permissionAdapter);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(VehicleScreenDialog vehicleScreenDialog) {
        injectVehicleScreenDialog(vehicleScreenDialog);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(CountryScreenDialog countryScreenDialog) {
        injectCountryScreenDialog(countryScreenDialog);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(SosPrerequisiteNotificationController sosPrerequisiteNotificationController) {
        injectSosPrerequisiteNotificationController(sosPrerequisiteNotificationController);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(AcceptTermsOfServiceAndPolicyScreenDialog acceptTermsOfServiceAndPolicyScreenDialog) {
        injectAcceptTermsOfServiceAndPolicyScreenDialog(acceptTermsOfServiceAndPolicyScreenDialog);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(ActivationPhoneNumberActivity activationPhoneNumberActivity) {
        injectActivationPhoneNumberActivity(activationPhoneNumberActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(NumberValidatorFinalStepScreen numberValidatorFinalStepScreen) {
        injectNumberValidatorFinalStepScreen(numberValidatorFinalStepScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(NumberValidatorScreen numberValidatorScreen) {
        injectNumberValidatorScreen(numberValidatorScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(StartEngineScreen startEngineScreen) {
        injectStartEngineScreen(startEngineScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(PlateValidationScreenDialog plateValidationScreenDialog) {
        injectPlateValidationScreenDialog(plateValidationScreenDialog);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(UpdateConfigurationActivity updateConfigurationActivity) {
        injectUpdateConfigurationActivity(updateConfigurationActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(FirmwareUpdateService firmwareUpdateService) {
        injectFirmwareUpdateService(firmwareUpdateService);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(CalibrationActivity calibrationActivity) {
        injectCalibrationActivity(calibrationActivity);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(CalibrationScreen calibrationScreen) {
        injectCalibrationScreen(calibrationScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(CalibrationDialogScreen calibrationDialogScreen) {
        injectCalibrationDialogScreen(calibrationDialogScreen);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(VehicleAlreadyConfiguredScreenDialog vehicleAlreadyConfiguredScreenDialog) {
        injectVehicleAlreadyConfiguredScreenDialog(vehicleAlreadyConfiguredScreenDialog);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(OnBoardingErrorDialog onBoardingErrorDialog) {
        injectOnBoardingErrorDialog(onBoardingErrorDialog);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(FactoryResetScreenDialog factoryResetScreenDialog) {
        injectFactoryResetScreenDialog(factoryResetScreenDialog);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(EnableBluetoothScreenDialog enableBluetoothScreenDialog) {
        injectEnableBluetoothScreenDialog(enableBluetoothScreenDialog);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(FirmwareUpdateController firmwareUpdateController) {
        injectFirmwareUpdateController(firmwareUpdateController);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(OnBoardingErrorEngineDialog onBoardingErrorEngineDialog) {
        injectOnBoardingErrorEngineDialog(onBoardingErrorEngineDialog);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(EmergencyInfoJob emergencyInfoJob) {
        injectEmergencyInfoJob(emergencyInfoJob);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(BatteryAnalyzerJob batteryAnalyzerJob) {
        injectBatteryAnalyzerJob(batteryAnalyzerJob);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(ChangeLockStatusJob changeLockStatusJob) {
        injectChangeLockStatusJob(changeLockStatusJob);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(CrashLogJob crashLogJob) {
        injectCrashLogJob(crashLogJob);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(DTCJob dTCJob) {
        injectDTCJob(dTCJob);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(LampJob lampJob) {
        injectLampJob(lampJob);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(LogJob logJob) {
        injectLogJob(logJob);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(ParameterJob parameterJob) {
        injectParameterJob(parameterJob);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(PurchaseDataJob purchaseDataJob) {
        injectPurchaseDataJob(purchaseDataJob);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(ThresholdsJob thresholdsJob) {
        injectThresholdsJob(thresholdsJob);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(TripJob tripJob) {
        injectTripJob(tripJob);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(UserTaskJob userTaskJob) {
        injectUserTaskJob(userTaskJob);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(VehicleAlarmsJob vehicleAlarmsJob) {
        injectVehicleAlarmsJob(vehicleAlarmsJob);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(VehicleJob vehicleJob) {
        injectVehicleJob(vehicleJob);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(PeriodicTaskJob periodicTaskJob) {
        injectPeriodicTaskJob(periodicTaskJob);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(ServiceOneOffJob serviceOneOffJob) {
        injectServiceOneOffJob(serviceOneOffJob);
    }

    @Override // com.texa.careapp.CareApplication.ApplicationComponent
    public void inject(EmergencyInfoMessageJob emergencyInfoMessageJob) {
        injectEmergencyInfoMessageJob(emergencyInfoMessageJob);
    }

    private CareApplication injectCareApplication(CareApplication careApplication) {
        CareApplication_MembersInjector.injectMLogConfigurator(careApplication, this.provideLogConfiguratorProvider.get());
        CareApplication_MembersInjector.injectMProfile(careApplication, this.provideProfileProvider.get());
        CareApplication_MembersInjector.injectMTexaService(careApplication, this.provideTexaServiceProvider.get());
        CareApplication_MembersInjector.injectMNotificationManager(careApplication, this.provideNotificationManagerProvider.get());
        return careApplication;
    }

    private MainActivity injectMainActivity(MainActivity mainActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(mainActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(mainActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(mainActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(mainActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(mainActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(mainActivity, this.provideLocalBroadcastManagerProvider.get());
        MainActivity_MembersInjector.injectMDongleDataManager(mainActivity, this.provideDongleDataManagerProvider.get());
        MainActivity_MembersInjector.injectMCareObserver(mainActivity, this.provideCareObserverProvider.get());
        MainActivity_MembersInjector.injectMCommunication(mainActivity, this.provideCommunicationProvider.get());
        MainActivity_MembersInjector.injectMPreferences(mainActivity, this.providePreferenceManagerProvider.get());
        MainActivity_MembersInjector.injectMNotificationManager(mainActivity, this.provideNotificationManagerProvider.get());
        MainActivity_MembersInjector.injectMVehicleObserver(mainActivity, this.vehicleObserverProvider.get());
        MainActivity_MembersInjector.injectMVehicleDataManager(mainActivity, this.provideVehicleDataManagerProvider.get());
        MainActivity_MembersInjector.injectMUserDataManager(mainActivity, this.provideUserDataManagerProvider.get());
        MainActivity_MembersInjector.injectMVehicleParametersManagerV2(mainActivity, this.provideVehicleParametersManagerV2Provider.get());
        MainActivity_MembersInjector.injectMServiceDataManager(mainActivity, this.provideServiceDataManagerProvider.get());
        MainActivity_MembersInjector.injectFcmManager(mainActivity, this.provideFcmManagerProvider.get());
        MainActivity_MembersInjector.injectMSosFeatureManager(mainActivity, this.provideSosFeatureManagerProvider.get());
        MainActivity_MembersInjector.injectMTexaCareApiServiceUser(mainActivity, this.provideTexaCareApiServiceUserProvider.get());
        MainActivity_MembersInjector.injectMLoggerManager(mainActivity, this.provideLoggerManagerProvider.get());
        MainActivity_MembersInjector.injectMCAReWorkerManager(mainActivity, this.provideCAReWorkerManagerProvider.get());
        return mainActivity;
    }

    private AlertCentralActivity injectAlertCentralActivity(AlertCentralActivity alertCentralActivity) {
        AlertCentralActivity_MembersInjector.injectMEventBus(alertCentralActivity, this.provideEventBusProvider.get());
        AlertCentralActivity_MembersInjector.injectMTexaCareApiServiceUser(alertCentralActivity, this.provideTexaCareApiServiceUserProvider.get());
        AlertCentralActivity_MembersInjector.injectMUserDataManager(alertCentralActivity, this.provideUserDataManagerProvider.get());
        AlertCentralActivity_MembersInjector.injectMFlavourDelegator(alertCentralActivity, this.provideFlavorDelegatorProvider.get());
        AlertCentralActivity_MembersInjector.injectMProfile(alertCentralActivity, this.provideProfileProvider.get());
        AlertCentralActivity_MembersInjector.injectMLocationProvider(alertCentralActivity, this.provideReactiveLocationProvider.get());
        AlertCentralActivity_MembersInjector.injectMSharedPreferences(alertCentralActivity, this.providePreferenceManagerProvider.get());
        AlertCentralActivity_MembersInjector.injectMLoggerManager(alertCentralActivity, this.provideLoggerManagerProvider.get());
        AlertCentralActivity_MembersInjector.injectMCaReWorkerManager(alertCentralActivity, this.provideCAReWorkerManagerProvider.get());
        return alertCentralActivity;
    }

    private BaseFragment injectBaseFragment(BaseFragment baseFragment) {
        BaseFragment_MembersInjector.injectMContext(baseFragment, CareModule_ProvideContextFactory.provideContext(this.careModule));
        return baseFragment;
    }

    private AccountAuthenticator injectAccountAuthenticator(AccountAuthenticator accountAuthenticator) {
        AccountAuthenticator_MembersInjector.injectMTexaCareService(accountAuthenticator, this.provideTexaCareAuthServiceProvider.get());
        AccountAuthenticator_MembersInjector.injectClientId(accountAuthenticator, ApiModule_ProvideClientIdFactory.provideClientId(this.apiModule));
        AccountAuthenticator_MembersInjector.injectClientSecret(accountAuthenticator, ApiModule_ProvideClientSecretFactory.provideClientSecret(this.apiModule));
        return accountAuthenticator;
    }

    private SignInScreen injectSignInScreen(SignInScreen signInScreen) {
        SignInScreen_MembersInjector.injectMRetrofitErrorParser(signInScreen, this.provideRetrofitErrorParserProvider.get());
        SignInScreen_MembersInjector.injectMLoginHelper(signInScreen, CareModule_ProvideLoginHelperRxFactory.provideLoginHelperRx(this.careModule));
        SignInScreen_MembersInjector.injectMUserDataManager(signInScreen, this.provideUserDataManagerProvider.get());
        SignInScreen_MembersInjector.injectMFormValidator(signInScreen, this.provideFormValidatorProvider.get());
        SignInScreen_MembersInjector.injectMLogInHelper(signInScreen, CareModule_ProvideLoginHelperRxFactory.provideLoginHelperRx(this.careModule));
        SignInScreen_MembersInjector.injectMEventBus(signInScreen, this.provideEventBusProvider.get());
        SignInScreen_MembersInjector.injectMAccessory(signInScreen, this.provideAccessoryProvider.get());
        SignInScreen_MembersInjector.injectDongleDataManager(signInScreen, this.provideDongleDataManagerProvider.get());
        SignInScreen_MembersInjector.injectNotificationManager(signInScreen, this.provideNotificationManagerProvider.get());
        return signInScreen;
    }

    private SignUpEmailScreen injectSignUpEmailScreen(SignUpEmailScreen signUpEmailScreen) {
        SignUpEmailScreen_MembersInjector.injectMFormValidator(signUpEmailScreen, this.provideFormValidatorProvider.get());
        SignUpEmailScreen_MembersInjector.injectMUserDataManager(signUpEmailScreen, this.provideUserDataManagerProvider.get());
        SignUpEmailScreen_MembersInjector.injectMProfile(signUpEmailScreen, this.provideProfileProvider.get());
        SignUpEmailScreen_MembersInjector.injectMRetrofitErrorParser(signUpEmailScreen, this.provideRetrofitErrorParserProvider.get());
        SignUpEmailScreen_MembersInjector.injectMEventBus(signUpEmailScreen, this.provideEventBusProvider.get());
        return signUpEmailScreen;
    }

    private CareService injectCareService(CareService careService) {
        RxCareService_MembersInjector.injectMCurrentTrip(careService, this.provideCurrentTripProvider.get());
        RxCareService_MembersInjector.injectMAccessory(careService, this.provideAccessoryProvider.get());
        RxCareService_MembersInjector.injectMCommunicationObservable(careService, this.provideCommunicationObservableProvider.get());
        RxCareService_MembersInjector.injectMCommunication(careService, this.provideCommunicationProvider.get());
        CareService_MembersInjector.injectMDtcManager(careService, this.provideDtcManagerProvider.get());
        CareService_MembersInjector.injectMFlavorDelegator(careService, this.provideFlavorDelegatorProvider.get());
        CareService_MembersInjector.injectMCareObserver(careService, this.provideCareObserverProvider.get());
        CareService_MembersInjector.injectMTexaCareApiService(careService, this.provideTexaCareApiServiceUserProvider.get());
        CareService_MembersInjector.injectMDTCResolutionIntegrator(careService, this.provideDTCResolutionIntegratorProvider.get());
        CareService_MembersInjector.injectMLocationTracker(careService, this.provideLocationTrackerProvider.get());
        CareService_MembersInjector.injectMPreferences(careService, this.providePreferenceManagerProvider.get());
        CareService_MembersInjector.injectMNotificationManager(careService, this.provideNotificationManagerProvider.get());
        CareService_MembersInjector.injectMCareCrashlyticsHelper(careService, DoubleCheck.lazy(this.provideCrashlyticsHelperProvider));
        CareService_MembersInjector.injectMCareConfigurationHelper(careService, this.provideCareConfigurationHelperProvider.get());
        CareService_MembersInjector.injectMAlternatorStaticAnalyzer(careService, this.provideAlternatorStaticAnalyzerProvider.get());
        CareService_MembersInjector.injectMLampsManager(careService, this.provideLampsManagerProvider.get());
        CareService_MembersInjector.injectMSosFeatureManager(careService, this.provideSosFeatureManagerProvider.get());
        CareService_MembersInjector.injectMSpeaker(careService, this.provideSpeakerProvider.get());
        CareService_MembersInjector.injectMWakelockManager(careService, this.provideWakelockManagerProvider.get());
        CareService_MembersInjector.injectNotificationManager(careService, this.provideNotificationManagerProvider.get());
        CareService_MembersInjector.injectMEventBus(careService, this.provideEventBusProvider.get());
        CareService_MembersInjector.injectMServiceNotificationController(careService, this.provideServiceNotificationControllerProvider.get());
        CareService_MembersInjector.injectMSosPrerequisiteNotificationController(careService, this.provideSosPrerequisiteNotificationControllerProvider.get());
        CareService_MembersInjector.injectMTripLogBookReader(careService, this.provideTripLogBookReaderProvider.get());
        CareService_MembersInjector.injectMUpdateConfigurationHelper(careService, this.provideCareConfigurationHelperProvider.get());
        CareService_MembersInjector.injectCommunication(careService, this.provideCommunicationProvider.get());
        CareService_MembersInjector.injectMProfile(careService, this.provideProfileProvider.get());
        CareService_MembersInjector.injectMProfileDelegate(careService, this.provideTexaProfileDelegateProvider.get());
        CareService_MembersInjector.injectMTexaService(careService, this.provideTexaServiceProvider.get());
        CareService_MembersInjector.injectMDongleDataManager(careService, this.provideDongleDataManagerProvider.get());
        CareService_MembersInjector.injectMSecurePreferences(careService, CareModule_ProvideSecurePreferecesFactory.provideSecurePrefereces(this.careModule));
        CareService_MembersInjector.injectMArmadilloSharedPreferences(careService, armadilloSharedPreferences());
        CareService_MembersInjector.injectMVehicleParametersManagerV2(careService, this.provideVehicleParametersManagerV2Provider.get());
        CareService_MembersInjector.injectMLocalBroadcastManager(careService, this.provideLocalBroadcastManagerProvider.get());
        CareService_MembersInjector.injectMImpactDetector(careService, this.provideImpactDetectorProvider.get());
        CareService_MembersInjector.injectMUserDataManager(careService, this.provideUserDataManagerProvider.get());
        CareService_MembersInjector.injectMVehicleDataManager(careService, this.provideVehicleDataManagerProvider.get());
        CareService_MembersInjector.injectMTripDataManager(careService, this.provideTripDataManagerProvider.get());
        CareService_MembersInjector.injectMVehicleObserver(careService, this.vehicleObserverProvider.get());
        CareService_MembersInjector.injectMLoggerManager(careService, this.provideLoggerManagerProvider.get());
        CareService_MembersInjector.injectMDataManagerConfiguration(careService, this.provideDataManagerConfigurationProvider.get());
        CareService_MembersInjector.injectMCAReWorkerManager(careService, this.provideCAReWorkerManagerProvider.get());
        CareService_MembersInjector.injectMAccessory(careService, this.provideAccessoryProvider.get());
        CareService_MembersInjector.injectMVehicle(careService, this.provideVehicleProvider.get());
        CareService_MembersInjector.injectMCurrentTrip(careService, this.provideCurrentTripProvider.get());
        CareService_MembersInjector.injectMTripLogBook(careService, this.provideTripLogBookProvider.get());
        CareService_MembersInjector.injectMImpactDetection(careService, this.provideImpactDetectionProvider.get());
        CareService_MembersInjector.injectMAttitude(careService, this.provideAttitudeProvider.get());
        CareService_MembersInjector.injectMCrashLogReader(careService, this.provideCrashLogReaderProvider.get());
        CareService_MembersInjector.injectDrivingStyleManager(careService, this.provideDrivingStyleManagerProvider.get());
        CareService_MembersInjector.injectMBatteryServiceAnalyzer(careService, this.provideBatteryServiceAnalyzerProvider.get());
        CareService_MembersInjector.injectMRxProfile(careService, this.provideRxProfileProvider.get());
        CareService_MembersInjector.injectMCrashlyticsHelper(careService, DoubleCheck.lazy(this.provideCrashlyticsHelperProvider));
        return careService;
    }

    private ApiHeaders injectApiHeaders(ApiHeaders apiHeaders) {
        ApiHeaders_MembersInjector.injectMDongleDataManager(apiHeaders, this.provideDongleDataManagerProvider.get());
        ApiHeaders_MembersInjector.injectMSharedPreferences(apiHeaders, this.providePreferenceManagerProvider.get());
        ApiHeaders_MembersInjector.injectFcmManager(apiHeaders, this.provideFcmManagerProvider.get());
        return apiHeaders;
    }

    private LoginActivity injectLoginActivity(LoginActivity loginActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(loginActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(loginActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(loginActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(loginActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(loginActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(loginActivity, this.provideLocalBroadcastManagerProvider.get());
        LoginActivity_MembersInjector.injectMUserDataManager(loginActivity, this.provideUserDataManagerProvider.get());
        LoginActivity_MembersInjector.injectMAccessory(loginActivity, this.provideAccessoryProvider.get());
        LoginActivity_MembersInjector.injectMDataManagerConfiguration(loginActivity, this.provideDataManagerConfigurationProvider.get());
        LoginActivity_MembersInjector.injectMTexaCareAuthService(loginActivity, this.provideTexaCareAuthServiceProvider.get());
        LoginActivity_MembersInjector.injectMClientId(loginActivity, ApiModule_ProvideClientIdFactory.provideClientId(this.apiModule));
        LoginActivity_MembersInjector.injectMClientSecret(loginActivity, ApiModule_ProvideClientSecretFactory.provideClientSecret(this.apiModule));
        LoginActivity_MembersInjector.injectMAccessTokenPersistenceManagerClient(loginActivity, this.provideAccessTokenManagerClientProvider.get());
        return loginActivity;
    }

    private AutomaticSosPresenter injectAutomaticSosPresenter(AutomaticSosPresenter automaticSosPresenter) {
        AutomaticSosPresenter_MembersInjector.injectMTexaCareApiServiceUser(automaticSosPresenter, this.provideTexaCareApiServiceUserProvider.get());
        AutomaticSosPresenter_MembersInjector.injectMUserDataManager(automaticSosPresenter, this.provideUserDataManagerProvider.get());
        AutomaticSosPresenter_MembersInjector.injectMProfile(automaticSosPresenter, this.provideProfileProvider.get());
        AutomaticSosPresenter_MembersInjector.injectMFlavorDelegator(automaticSosPresenter, this.provideFlavorDelegatorProvider.get());
        AutomaticSosPresenter_MembersInjector.injectReactiveLocationProvider(automaticSosPresenter, this.provideReactiveLocationProvider.get());
        AutomaticSosPresenter_MembersInjector.injectMSharedPreferences(automaticSosPresenter, this.providePreferenceManagerProvider.get());
        AutomaticSosPresenter_MembersInjector.injectMLoggerManager(automaticSosPresenter, this.provideLoggerManagerProvider.get());
        AutomaticSosPresenter_MembersInjector.injectMContext(automaticSosPresenter, CareModule_ProvideContextFactory.provideContext(this.careModule));
        AutomaticSosPresenter_MembersInjector.injectMCaReWorkerManager(automaticSosPresenter, this.provideCAReWorkerManagerProvider.get());
        return automaticSosPresenter;
    }

    private LoginHelperRx injectLoginHelperRx(LoginHelperRx loginHelperRx) {
        LoginHelperRx_MembersInjector.injectMClientId(loginHelperRx, ApiModule_ProvideClientIdFactory.provideClientId(this.apiModule));
        LoginHelperRx_MembersInjector.injectMClientSecret(loginHelperRx, ApiModule_ProvideClientSecretFactory.provideClientSecret(this.apiModule));
        LoginHelperRx_MembersInjector.injectMUserDataManager(loginHelperRx, this.provideUserDataManagerProvider.get());
        LoginHelperRx_MembersInjector.injectMTexaCareApiServiceUser(loginHelperRx, this.provideTexaCareApiServiceUserProvider.get());
        LoginHelperRx_MembersInjector.injectMAccountManager(loginHelperRx, this.provideAccountManagerProvider.get());
        LoginHelperRx_MembersInjector.injectMContext(loginHelperRx, CareModule_ProvideContextFactory.provideContext(this.careModule));
        LoginHelperRx_MembersInjector.injectMTexaCareAuthService(loginHelperRx, this.provideTexaCareAuthServiceProvider.get());
        LoginHelperRx_MembersInjector.injectMAccessTokenPersistenceManagerClient(loginHelperRx, this.provideAccessTokenManagerClientProvider.get());
        LoginHelperRx_MembersInjector.injectMAccessTokenPersistenceManagerUser(loginHelperRx, this.provideAccessTokenManagerUserProvider.get());
        LoginHelperRx_MembersInjector.injectMVehicleDataManager(loginHelperRx, this.provideVehicleDataManagerProvider.get());
        LoginHelperRx_MembersInjector.injectMCrashlyticsHelper(loginHelperRx, DoubleCheck.lazy(this.provideCrashlyticsHelperProvider));
        LoginHelperRx_MembersInjector.injectMFlavorDelegator(loginHelperRx, this.provideFlavorDelegatorProvider.get());
        LoginHelperRx_MembersInjector.injectMDongleDataManager(loginHelperRx, this.provideDongleDataManagerProvider.get());
        LoginHelperRx_MembersInjector.injectMSharedPreferences(loginHelperRx, this.providePreferenceManagerProvider.get());
        LoginHelperRx_MembersInjector.injectMVehicleObserver(loginHelperRx, this.vehicleObserverProvider.get());
        LoginHelperRx_MembersInjector.injectMTexaCareApiService(loginHelperRx, this.provideTexaCareApiServiceUserProvider.get());
        LoginHelperRx_MembersInjector.injectMServiceDataManager(loginHelperRx, this.provideServiceDataManagerProvider.get());
        LoginHelperRx_MembersInjector.injectMCAReWorkerManager(loginHelperRx, this.provideCAReWorkerManagerProvider.get());
        return loginHelperRx;
    }

    private SettingsActivity injectSettingsActivity(SettingsActivity settingsActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(settingsActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(settingsActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(settingsActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(settingsActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(settingsActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(settingsActivity, this.provideLocalBroadcastManagerProvider.get());
        SettingsActivity_MembersInjector.injectMEventBus(settingsActivity, this.provideEventBusProvider.get());
        return settingsActivity;
    }

    private SettingsUserActivity injectSettingsUserActivity(SettingsUserActivity settingsUserActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(settingsUserActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(settingsUserActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(settingsUserActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(settingsUserActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(settingsUserActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(settingsUserActivity, this.provideLocalBroadcastManagerProvider.get());
        return settingsUserActivity;
    }

    private SettingsUserAddressActivity injectSettingsUserAddressActivity(SettingsUserAddressActivity settingsUserAddressActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(settingsUserAddressActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(settingsUserAddressActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(settingsUserAddressActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(settingsUserAddressActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(settingsUserAddressActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(settingsUserAddressActivity, this.provideLocalBroadcastManagerProvider.get());
        return settingsUserAddressActivity;
    }

    private SettingsVehicleActivity injectSettingsVehicleActivity(SettingsVehicleActivity settingsVehicleActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(settingsVehicleActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(settingsVehicleActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(settingsVehicleActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(settingsVehicleActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(settingsVehicleActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(settingsVehicleActivity, this.provideLocalBroadcastManagerProvider.get());
        return settingsVehicleActivity;
    }

    private ScheduleScreen injectScheduleScreen(ScheduleScreen scheduleScreen) {
        ScheduleScreen_MembersInjector.injectMContext(scheduleScreen, CareModule_ProvideContextFactory.provideContext(this.careModule));
        ScheduleScreen_MembersInjector.injectMUserDataManager(scheduleScreen, this.provideUserDataManagerProvider.get());
        ScheduleScreen_MembersInjector.injectMVehicleObserver(scheduleScreen, this.vehicleObserverProvider.get());
        ScheduleScreen_MembersInjector.injectMEventBus(scheduleScreen, this.provideEventBusProvider.get());
        ScheduleScreen_MembersInjector.injectMTexaCareApiServiceUser(scheduleScreen, this.provideTexaCareApiServiceUserProvider.get());
        ScheduleScreen_MembersInjector.injectMVehicleDataManager(scheduleScreen, this.provideVehicleDataManagerProvider.get());
        ScheduleScreen_MembersInjector.injectMScheduleDataManager(scheduleScreen, this.provideScheduleDataManagerProvider.get());
        ScheduleScreen_MembersInjector.injectMSharedPreferences(scheduleScreen, this.providePreferenceManagerProvider.get());
        return scheduleScreen;
    }

    private ContactsScreen injectContactsScreen(ContactsScreen contactsScreen) {
        ContactsScreen_MembersInjector.injectMUserDataManager(contactsScreen, this.provideUserDataManagerProvider.get());
        ContactsScreen_MembersInjector.injectMFlavorDelegator(contactsScreen, this.provideFlavorDelegatorProvider.get());
        ContactsScreen_MembersInjector.injectMCareObserver(contactsScreen, this.provideCareObserverProvider.get());
        ContactsScreen_MembersInjector.injectMCommunication(contactsScreen, this.provideCommunicationProvider.get());
        ContactsScreen_MembersInjector.injectMDongleDataManager(contactsScreen, this.provideDongleDataManagerProvider.get());
        ContactsScreen_MembersInjector.injectMSosFeatureManager(contactsScreen, this.provideSosFeatureManagerProvider.get());
        ContactsScreen_MembersInjector.injectMMechanicDataManager(contactsScreen, this.provideMechanicDataManagerProvider.get());
        ContactsScreen_MembersInjector.injectEventBus(contactsScreen, this.provideEventBusProvider.get());
        ContactsScreen_MembersInjector.injectMLoggerManager(contactsScreen, this.provideLoggerManagerProvider.get());
        ContactsScreen_MembersInjector.injectMServiceDataManager(contactsScreen, this.provideServiceDataManagerProvider.get());
        ContactsScreen_MembersInjector.injectMProfile(contactsScreen, this.provideProfileProvider.get());
        return contactsScreen;
    }

    private VehicleFinderActivity injectVehicleFinderActivity(VehicleFinderActivity vehicleFinderActivity) {
        VehicleFinderActivity_MembersInjector.injectCommunication(vehicleFinderActivity, this.provideCommunicationProvider.get());
        VehicleFinderActivity_MembersInjector.injectMLocationTracker(vehicleFinderActivity, this.provideLocationTrackerProvider.get());
        VehicleFinderActivity_MembersInjector.injectMVehicleObserver(vehicleFinderActivity, this.vehicleObserverProvider.get());
        return vehicleFinderActivity;
    }

    private SettingsCareActivity injectSettingsCareActivity(SettingsCareActivity settingsCareActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(settingsCareActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(settingsCareActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(settingsCareActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(settingsCareActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(settingsCareActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(settingsCareActivity, this.provideLocalBroadcastManagerProvider.get());
        return settingsCareActivity;
    }

    private UpdateConfigurationIntentService injectUpdateConfigurationIntentService(UpdateConfigurationIntentService updateConfigurationIntentService) {
        UpdateConfigurationIntentService_MembersInjector.injectMProfile(updateConfigurationIntentService, this.provideProfileProvider.get());
        UpdateConfigurationIntentService_MembersInjector.injectMDiagnosticConfiguration(updateConfigurationIntentService, this.provideDiagnosticConfigurationProvider.get());
        UpdateConfigurationIntentService_MembersInjector.injectMTexaService(updateConfigurationIntentService, this.provideTexaServiceProvider.get());
        UpdateConfigurationIntentService_MembersInjector.injectMCareObserver(updateConfigurationIntentService, this.provideCareObserverProvider.get());
        UpdateConfigurationIntentService_MembersInjector.injectMDongleDataManager(updateConfigurationIntentService, this.provideDongleDataManagerProvider.get());
        UpdateConfigurationIntentService_MembersInjector.injectMEventBus(updateConfigurationIntentService, this.provideEventBusProvider.get());
        UpdateConfigurationIntentService_MembersInjector.injectMLoggerManager(updateConfigurationIntentService, this.provideLoggerManagerProvider.get());
        return updateConfigurationIntentService;
    }

    private OnBoardingConfigurationActivity injectOnBoardingConfigurationActivity(OnBoardingConfigurationActivity onBoardingConfigurationActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(onBoardingConfigurationActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(onBoardingConfigurationActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(onBoardingConfigurationActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(onBoardingConfigurationActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(onBoardingConfigurationActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(onBoardingConfigurationActivity, this.provideLocalBroadcastManagerProvider.get());
        OnBoardingConfigurationActivity_MembersInjector.injectMFormValidator(onBoardingConfigurationActivity, this.provideFormValidatorProvider.get());
        OnBoardingConfigurationActivity_MembersInjector.injectMEventBus(onBoardingConfigurationActivity, this.provideEventBusProvider.get());
        OnBoardingConfigurationActivity_MembersInjector.injectMCommunication(onBoardingConfigurationActivity, this.provideCommunicationProvider.get());
        OnBoardingConfigurationActivity_MembersInjector.injectMDongleDataManager(onBoardingConfigurationActivity, this.provideDongleDataManagerProvider.get());
        OnBoardingConfigurationActivity_MembersInjector.injectMAccessory(onBoardingConfigurationActivity, this.provideAccessoryProvider.get());
        OnBoardingConfigurationActivity_MembersInjector.injectMVehicleDataManager(onBoardingConfigurationActivity, this.provideVehicleDataManagerProvider.get());
        OnBoardingConfigurationActivity_MembersInjector.injectMSharedPreferences(onBoardingConfigurationActivity, this.providePreferenceManagerProvider.get());
        OnBoardingConfigurationActivity_MembersInjector.injectMTexaCareApiServiceUser(onBoardingConfigurationActivity, this.provideTexaCareApiServiceUserProvider.get());
        OnBoardingConfigurationActivity_MembersInjector.injectMDataManagerConfiguration(onBoardingConfigurationActivity, this.provideDataManagerConfigurationProvider.get());
        OnBoardingConfigurationActivity_MembersInjector.injectMCAReWorkerManager(onBoardingConfigurationActivity, this.provideCAReWorkerManagerProvider.get());
        return onBoardingConfigurationActivity;
    }

    private NavigationDrawerFragment injectNavigationDrawerFragment(NavigationDrawerFragment navigationDrawerFragment) {
        NavigationDrawerFragment_MembersInjector.injectMEventBus(navigationDrawerFragment, this.provideEventBusProvider.get());
        NavigationDrawerFragment_MembersInjector.injectMDongleDataManager(navigationDrawerFragment, this.provideDongleDataManagerProvider.get());
        NavigationDrawerFragment_MembersInjector.injectMVehicleObserver(navigationDrawerFragment, this.vehicleObserverProvider.get());
        NavigationDrawerFragment_MembersInjector.injectMCommunicationObserver(navigationDrawerFragment, this.provideCommunicationObservableProvider.get());
        NavigationDrawerFragment_MembersInjector.injectMCommunication(navigationDrawerFragment, this.provideCommunicationProvider.get());
        NavigationDrawerFragment_MembersInjector.injectMSosFeatureManager(navigationDrawerFragment, this.provideSosFeatureManagerProvider.get());
        NavigationDrawerFragment_MembersInjector.injectMContext(navigationDrawerFragment, CareModule_ProvideContextFactory.provideContext(this.careModule));
        NavigationDrawerFragment_MembersInjector.injectMSharedPreferences(navigationDrawerFragment, this.providePreferenceManagerProvider.get());
        return navigationDrawerFragment;
    }

    private VehicleDataConfirmationActivity injectVehicleDataConfirmationActivity(VehicleDataConfirmationActivity vehicleDataConfirmationActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(vehicleDataConfirmationActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(vehicleDataConfirmationActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(vehicleDataConfirmationActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(vehicleDataConfirmationActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(vehicleDataConfirmationActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(vehicleDataConfirmationActivity, this.provideLocalBroadcastManagerProvider.get());
        VehicleDataConfirmationActivity_MembersInjector.injectMVehicleObserver(vehicleDataConfirmationActivity, this.vehicleObserverProvider.get());
        VehicleDataConfirmationActivity_MembersInjector.injectMVehicleDataManager(vehicleDataConfirmationActivity, this.provideVehicleDataManagerProvider.get());
        VehicleDataConfirmationActivity_MembersInjector.injectMDataManagerConfiguration(vehicleDataConfirmationActivity, this.provideDataManagerConfigurationProvider.get());
        VehicleDataConfirmationActivity_MembersInjector.injectMDongleDataManager(vehicleDataConfirmationActivity, this.provideDongleDataManagerProvider.get());
        VehicleDataConfirmationActivity_MembersInjector.injectMCAReWorkerManager(vehicleDataConfirmationActivity, this.provideCAReWorkerManagerProvider.get());
        return vehicleDataConfirmationActivity;
    }

    private InsertNewThresholdActivity injectInsertNewThresholdActivity(InsertNewThresholdActivity insertNewThresholdActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(insertNewThresholdActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(insertNewThresholdActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(insertNewThresholdActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(insertNewThresholdActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(insertNewThresholdActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(insertNewThresholdActivity, this.provideLocalBroadcastManagerProvider.get());
        return insertNewThresholdActivity;
    }

    private FcmMessagingService injectFcmMessagingService(FcmMessagingService fcmMessagingService) {
        FcmMessagingService_MembersInjector.injectMDongleDataManager(fcmMessagingService, this.provideDongleDataManagerProvider.get());
        FcmMessagingService_MembersInjector.injectMVehicleDataManager(fcmMessagingService, this.provideVehicleDataManagerProvider.get());
        FcmMessagingService_MembersInjector.injectMEventBus(fcmMessagingService, this.provideEventBusProvider.get());
        FcmMessagingService_MembersInjector.injectMServiceDataManager(fcmMessagingService, this.provideServiceDataManagerProvider.get());
        FcmMessagingService_MembersInjector.injectMNotificationManager(fcmMessagingService, this.provideNotificationManagerProvider.get());
        FcmMessagingService_MembersInjector.injectMCAReWorkerManager(fcmMessagingService, this.provideCAReWorkerManagerProvider.get());
        return fcmMessagingService;
    }

    private SplashActivity injectSplashActivity(SplashActivity splashActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(splashActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(splashActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(splashActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(splashActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(splashActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(splashActivity, this.provideLocalBroadcastManagerProvider.get());
        SplashActivity_MembersInjector.injectMPreferences(splashActivity, this.providePreferenceManagerProvider.get());
        SplashActivity_MembersInjector.injectMDongleDataManager(splashActivity, this.provideDongleDataManagerProvider.get());
        SplashActivity_MembersInjector.injectMTexaCareApiService(splashActivity, this.provideTexaCareApiServiceUserProvider.get());
        SplashActivity_MembersInjector.injectMLoginHelperRx(splashActivity, CareModule_ProvideLoginHelperRxFactory.provideLoginHelperRx(this.careModule));
        SplashActivity_MembersInjector.injectMEventBus(splashActivity, this.provideEventBusProvider.get());
        SplashActivity_MembersInjector.injectMAccessory(splashActivity, this.provideAccessoryProvider.get());
        return splashActivity;
    }

    private RecoverPasswordScreen injectRecoverPasswordScreen(RecoverPasswordScreen recoverPasswordScreen) {
        RecoverPasswordScreen_MembersInjector.injectMRetrofitErrorParser(recoverPasswordScreen, this.provideRetrofitErrorParserProvider.get());
        RecoverPasswordScreen_MembersInjector.injectMEventBus(recoverPasswordScreen, this.provideEventBusProvider.get());
        RecoverPasswordScreen_MembersInjector.injectMTexaCareAuthServiceHelper(recoverPasswordScreen, texaCareAuthServiceHelper());
        RecoverPasswordScreen_MembersInjector.injectMTexaCareApiService(recoverPasswordScreen, this.provideTexaCareApiClientProvider.get());
        return recoverPasswordScreen;
    }

    private CareConfigurationRequestDialog injectCareConfigurationRequestDialog(CareConfigurationRequestDialog careConfigurationRequestDialog) {
        CareConfigurationRequestDialog_MembersInjector.injectMDongleDataManager(careConfigurationRequestDialog, this.provideDongleDataManagerProvider.get());
        CareConfigurationRequestDialog_MembersInjector.injectMLogInHelper(careConfigurationRequestDialog, CareModule_ProvideLoginHelperRxFactory.provideLoginHelperRx(this.careModule));
        CareConfigurationRequestDialog_MembersInjector.injectMSharedPreferences(careConfigurationRequestDialog, this.providePreferenceManagerProvider.get());
        return careConfigurationRequestDialog;
    }

    private MechanicActivity injectMechanicActivity(MechanicActivity mechanicActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(mechanicActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(mechanicActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(mechanicActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(mechanicActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(mechanicActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(mechanicActivity, this.provideLocalBroadcastManagerProvider.get());
        MechanicActivity_MembersInjector.injectMMechanicDataManager(mechanicActivity, this.provideMechanicDataManagerProvider.get());
        MechanicActivity_MembersInjector.injectMVehicleDataManager(mechanicActivity, this.provideVehicleDataManagerProvider.get());
        return mechanicActivity;
    }

    private RxCareService injectRxCareService(RxCareService rxCareService) {
        RxCareService_MembersInjector.injectMCurrentTrip(rxCareService, this.provideCurrentTripProvider.get());
        RxCareService_MembersInjector.injectMAccessory(rxCareService, this.provideAccessoryProvider.get());
        RxCareService_MembersInjector.injectMCommunicationObservable(rxCareService, this.provideCommunicationObservableProvider.get());
        RxCareService_MembersInjector.injectMCommunication(rxCareService, this.provideCommunicationProvider.get());
        return rxCareService;
    }

    private ProblemResolutionActivity injectProblemResolutionActivity(ProblemResolutionActivity problemResolutionActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(problemResolutionActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(problemResolutionActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(problemResolutionActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(problemResolutionActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(problemResolutionActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(problemResolutionActivity, this.provideLocalBroadcastManagerProvider.get());
        return problemResolutionActivity;
    }

    private SettingsTyresActivity injectSettingsTyresActivity(SettingsTyresActivity settingsTyresActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(settingsTyresActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(settingsTyresActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(settingsTyresActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(settingsTyresActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(settingsTyresActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(settingsTyresActivity, this.provideLocalBroadcastManagerProvider.get());
        SettingsTyresActivity_MembersInjector.injectMEventBus(settingsTyresActivity, this.provideEventBusProvider.get());
        SettingsTyresActivity_MembersInjector.injectMVehicleDataManager(settingsTyresActivity, this.provideVehicleDataManagerProvider.get());
        return settingsTyresActivity;
    }

    private TyresNewInstallScreen injectTyresNewInstallScreen(TyresNewInstallScreen tyresNewInstallScreen) {
        TyresNewInstallScreen_MembersInjector.injectMEventBus(tyresNewInstallScreen, this.provideEventBusProvider.get());
        TyresNewInstallScreen_MembersInjector.injectMCAReWorkerManager(tyresNewInstallScreen, this.provideCAReWorkerManagerProvider.get());
        return tyresNewInstallScreen;
    }

    private TyresInversionScreen injectTyresInversionScreen(TyresInversionScreen tyresInversionScreen) {
        TyresInversionScreen_MembersInjector.injectMEventBus(tyresInversionScreen, this.provideEventBusProvider.get());
        TyresInversionScreen_MembersInjector.injectMCAReWorkerManager(tyresInversionScreen, this.provideCAReWorkerManagerProvider.get());
        TyresInversionScreen_MembersInjector.injectMTexaCareApiServiceUser(tyresInversionScreen, this.provideTexaCareApiServiceUserProvider.get());
        return tyresInversionScreen;
    }

    private ActivationServiceActivity injectActivationServiceActivity(ActivationServiceActivity activationServiceActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(activationServiceActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(activationServiceActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(activationServiceActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(activationServiceActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(activationServiceActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(activationServiceActivity, this.provideLocalBroadcastManagerProvider.get());
        ActivationServiceActivity_MembersInjector.injectMEventBus(activationServiceActivity, this.provideEventBusProvider.get());
        ActivationServiceActivity_MembersInjector.injectMDongleDataManager(activationServiceActivity, this.provideDongleDataManagerProvider.get());
        ActivationServiceActivity_MembersInjector.injectMServiceDataManager(activationServiceActivity, this.provideServiceDataManagerProvider.get());
        return activationServiceActivity;
    }

    private SosPrerequisiteActivity injectSosPrerequisiteActivity(SosPrerequisiteActivity sosPrerequisiteActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(sosPrerequisiteActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(sosPrerequisiteActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(sosPrerequisiteActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(sosPrerequisiteActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(sosPrerequisiteActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(sosPrerequisiteActivity, this.provideLocalBroadcastManagerProvider.get());
        SosPrerequisiteActivity_MembersInjector.injectMServiceDataManager(sosPrerequisiteActivity, this.provideServiceDataManagerProvider.get());
        return sosPrerequisiteActivity;
    }

    private ActivationTrialServiceScreen injectActivationTrialServiceScreen(ActivationTrialServiceScreen activationTrialServiceScreen) {
        ActivationTrialServiceScreen_MembersInjector.injectMVehicleObserver(activationTrialServiceScreen, this.vehicleObserverProvider.get());
        ActivationTrialServiceScreen_MembersInjector.injectMVehicleDataManager(activationTrialServiceScreen, this.provideVehicleDataManagerProvider.get());
        ActivationTrialServiceScreen_MembersInjector.injectMEventBus(activationTrialServiceScreen, this.provideEventBusProvider.get());
        return activationTrialServiceScreen;
    }

    private NoSosServiceActivity injectNoSosServiceActivity(NoSosServiceActivity noSosServiceActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(noSosServiceActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(noSosServiceActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(noSosServiceActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(noSosServiceActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(noSosServiceActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(noSosServiceActivity, this.provideLocalBroadcastManagerProvider.get());
        NoSosServiceActivity_MembersInjector.injectMEventBus(noSosServiceActivity, this.provideEventBusProvider.get());
        return noSosServiceActivity;
    }

    private ActivationPlusServiceScreen injectActivationPlusServiceScreen(ActivationPlusServiceScreen activationPlusServiceScreen) {
        ActivationPlusServiceScreen_MembersInjector.injectMVehicleObserver(activationPlusServiceScreen, this.vehicleObserverProvider.get());
        ActivationPlusServiceScreen_MembersInjector.injectMTexaCareApiService(activationPlusServiceScreen, this.provideTexaCareApiServiceUserProvider.get());
        ActivationPlusServiceScreen_MembersInjector.injectMVehicleDataManager(activationPlusServiceScreen, this.provideVehicleDataManagerProvider.get());
        ActivationPlusServiceScreen_MembersInjector.injectEventBus(activationPlusServiceScreen, this.provideEventBusProvider.get());
        ActivationPlusServiceScreen_MembersInjector.injectMSharedPreferences(activationPlusServiceScreen, this.providePreferenceManagerProvider.get());
        return activationPlusServiceScreen;
    }

    private ActivationServiceCompletedScreen injectActivationServiceCompletedScreen(ActivationServiceCompletedScreen activationServiceCompletedScreen) {
        ActivationServiceCompletedScreen_MembersInjector.injectMEventBus(activationServiceCompletedScreen, this.provideEventBusProvider.get());
        ActivationServiceCompletedScreen_MembersInjector.injectMUserDataManager(activationServiceCompletedScreen, this.provideUserDataManagerProvider.get());
        ActivationServiceCompletedScreen_MembersInjector.injectMCAReWorkerManager(activationServiceCompletedScreen, this.provideCAReWorkerManagerProvider.get());
        return activationServiceCompletedScreen;
    }

    private ResetExpiredScheduleScreen injectResetExpiredScheduleScreen(ResetExpiredScheduleScreen resetExpiredScheduleScreen) {
        ResetExpiredScheduleScreen_MembersInjector.injectMContext(resetExpiredScheduleScreen, CareModule_ProvideContextFactory.provideContext(this.careModule));
        ResetExpiredScheduleScreen_MembersInjector.injectMVehicleObserver(resetExpiredScheduleScreen, this.vehicleObserverProvider.get());
        ResetExpiredScheduleScreen_MembersInjector.injectMTexaCareApiService(resetExpiredScheduleScreen, this.provideTexaCareApiServiceUserProvider.get());
        ResetExpiredScheduleScreen_MembersInjector.injectMEventBus(resetExpiredScheduleScreen, this.provideEventBusProvider.get());
        ResetExpiredScheduleScreen_MembersInjector.injectMScheduleDataManager(resetExpiredScheduleScreen, this.provideScheduleDataManagerProvider.get());
        return resetExpiredScheduleScreen;
    }

    private ScheduleActivity injectScheduleActivity(ScheduleActivity scheduleActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(scheduleActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(scheduleActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(scheduleActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(scheduleActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(scheduleActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(scheduleActivity, this.provideLocalBroadcastManagerProvider.get());
        ScheduleActivity_MembersInjector.injectMEventBus(scheduleActivity, this.provideEventBusProvider.get());
        return scheduleActivity;
    }

    private SchedulesAdapter injectSchedulesAdapter(SchedulesAdapter schedulesAdapter) {
        SchedulesAdapter_MembersInjector.injectVehicleObserver(schedulesAdapter, this.vehicleObserverProvider.get());
        SchedulesAdapter_MembersInjector.injectMScheduleDataManager(schedulesAdapter, this.provideScheduleDataManagerProvider.get());
        SchedulesAdapter_MembersInjector.injectMBinderScheduleView(schedulesAdapter, this.provideBinderScheduleViewProvider.get());
        return schedulesAdapter;
    }

    private SelectNewScheduleScreen injectSelectNewScheduleScreen(SelectNewScheduleScreen selectNewScheduleScreen) {
        SelectNewScheduleScreen_MembersInjector.injectMVehicleObserver(selectNewScheduleScreen, this.vehicleObserverProvider.get());
        SelectNewScheduleScreen_MembersInjector.injectMEventBus(selectNewScheduleScreen, this.provideEventBusProvider.get());
        SelectNewScheduleScreen_MembersInjector.injectMVehicleDataManager(selectNewScheduleScreen, this.provideVehicleDataManagerProvider.get());
        SelectNewScheduleScreen_MembersInjector.injectMUserDataManager(selectNewScheduleScreen, this.provideUserDataManagerProvider.get());
        return selectNewScheduleScreen;
    }

    private SetDefaultDateThresholdScreen injectSetDefaultDateThresholdScreen(SetDefaultDateThresholdScreen setDefaultDateThresholdScreen) {
        SetDefaultDateThresholdScreen_MembersInjector.injectMScheduleDataManager(setDefaultDateThresholdScreen, this.provideScheduleDataManagerProvider.get());
        SetDefaultDateThresholdScreen_MembersInjector.injectMEventBus(setDefaultDateThresholdScreen, this.provideEventBusProvider.get());
        return setDefaultDateThresholdScreen;
    }

    private SetDefaultOdometerThresholdScreen injectSetDefaultOdometerThresholdScreen(SetDefaultOdometerThresholdScreen setDefaultOdometerThresholdScreen) {
        SetDefaultOdometerThresholdScreen_MembersInjector.injectMScheduleDataManager(setDefaultOdometerThresholdScreen, this.provideScheduleDataManagerProvider.get());
        SetDefaultOdometerThresholdScreen_MembersInjector.injectMEventBus(setDefaultOdometerThresholdScreen, this.provideEventBusProvider.get());
        return setDefaultOdometerThresholdScreen;
    }

    private AddNewThresholdActivity injectAddNewThresholdActivity(AddNewThresholdActivity addNewThresholdActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(addNewThresholdActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(addNewThresholdActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(addNewThresholdActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(addNewThresholdActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(addNewThresholdActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(addNewThresholdActivity, this.provideLocalBroadcastManagerProvider.get());
        AddNewThresholdActivity_MembersInjector.injectMEventBus(addNewThresholdActivity, this.provideEventBusProvider.get());
        return addNewThresholdActivity;
    }

    private SetInsuranceDateThresholdScreen injectSetInsuranceDateThresholdScreen(SetInsuranceDateThresholdScreen setInsuranceDateThresholdScreen) {
        SetInsuranceDateThresholdScreen_MembersInjector.injectMScheduleDataManager(setInsuranceDateThresholdScreen, this.provideScheduleDataManagerProvider.get());
        SetInsuranceDateThresholdScreen_MembersInjector.injectMEventBus(setInsuranceDateThresholdScreen, this.provideEventBusProvider.get());
        return setInsuranceDateThresholdScreen;
    }

    private SetTyresOdometerScreen injectSetTyresOdometerScreen(SetTyresOdometerScreen setTyresOdometerScreen) {
        SetTyresOdometerScreen_MembersInjector.injectMEventBus(setTyresOdometerScreen, this.provideEventBusProvider.get());
        SetTyresOdometerScreen_MembersInjector.injectMScheduleDataManager(setTyresOdometerScreen, this.provideScheduleDataManagerProvider.get());
        return setTyresOdometerScreen;
    }

    private SetInsuranceCompanyScreen injectSetInsuranceCompanyScreen(SetInsuranceCompanyScreen setInsuranceCompanyScreen) {
        SetInsuranceCompanyScreen_MembersInjector.injectMTexaCareApiService(setInsuranceCompanyScreen, this.provideTexaCareApiClientProvider.get());
        return setInsuranceCompanyScreen;
    }

    private BootCompletedReceiver injectBootCompletedReceiver(BootCompletedReceiver bootCompletedReceiver) {
        BootCompletedReceiver_MembersInjector.injectMLoggerManager(bootCompletedReceiver, this.provideLoggerManagerProvider.get());
        BootCompletedReceiver_MembersInjector.injectMPrefs(bootCompletedReceiver, this.providePreferenceManagerProvider.get());
        BootCompletedReceiver_MembersInjector.injectMDongleDataManager(bootCompletedReceiver, this.provideDongleDataManagerProvider.get());
        return bootCompletedReceiver;
    }

    private DiagnosisActivity injectDiagnosisActivity(DiagnosisActivity diagnosisActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(diagnosisActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(diagnosisActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(diagnosisActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(diagnosisActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(diagnosisActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(diagnosisActivity, this.provideLocalBroadcastManagerProvider.get());
        return diagnosisActivity;
    }

    private DiagnosisDataActivity injectDiagnosisDataActivity(DiagnosisDataActivity diagnosisDataActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(diagnosisDataActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(diagnosisDataActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(diagnosisDataActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(diagnosisDataActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(diagnosisDataActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(diagnosisDataActivity, this.provideLocalBroadcastManagerProvider.get());
        return diagnosisDataActivity;
    }

    private DashboardScreenV2 injectDashboardScreenV2(DashboardScreenV2 dashboardScreenV2) {
        DashboardScreenV2_MembersInjector.injectMCommunicationObservable(dashboardScreenV2, this.provideCommunicationObservableProvider.get());
        DashboardScreenV2_MembersInjector.injectMCareObserver(dashboardScreenV2, this.provideCareObserverProvider.get());
        DashboardScreenV2_MembersInjector.injectMLampsManager(dashboardScreenV2, this.provideLampsManagerProvider.get());
        DashboardScreenV2_MembersInjector.injectMSharedPreferences(dashboardScreenV2, this.providePreferenceManagerProvider.get());
        DashboardScreenV2_MembersInjector.injectMUserDataManager(dashboardScreenV2, this.provideUserDataManagerProvider.get());
        DashboardScreenV2_MembersInjector.injectMFlavorDelegator(dashboardScreenV2, this.provideFlavorDelegatorProvider.get());
        DashboardScreenV2_MembersInjector.injectMDongleDataManager(dashboardScreenV2, this.provideDongleDataManagerProvider.get());
        DashboardScreenV2_MembersInjector.injectMContext(dashboardScreenV2, CareModule_ProvideContextFactory.provideContext(this.careModule));
        DashboardScreenV2_MembersInjector.injectMEventBus(dashboardScreenV2, this.provideEventBusProvider.get());
        DashboardScreenV2_MembersInjector.injectMTexaCareApiService(dashboardScreenV2, this.provideTexaCareApiServiceUserProvider.get());
        DashboardScreenV2_MembersInjector.injectMVehicleDataManager(dashboardScreenV2, this.provideVehicleDataManagerProvider.get());
        DashboardScreenV2_MembersInjector.injectMVehicleObserver(dashboardScreenV2, this.vehicleObserverProvider.get());
        DashboardScreenV2_MembersInjector.injectMVehicleParametersManagerV2(dashboardScreenV2, this.provideVehicleParametersManagerV2Provider.get());
        DashboardScreenV2_MembersInjector.injectMLoggerManager(dashboardScreenV2, this.provideLoggerManagerProvider.get());
        DashboardScreenV2_MembersInjector.injectMSosFeatureManager(dashboardScreenV2, this.provideSosFeatureManagerProvider.get());
        DashboardScreenV2_MembersInjector.injectMPercentColorHelper(dashboardScreenV2, this.providePercentColorHelperProvider.get());
        DashboardScreenV2_MembersInjector.injectMCAReWorkerManager(dashboardScreenV2, this.provideCAReWorkerManagerProvider.get());
        return dashboardScreenV2;
    }

    private DashboardScreenAdapter injectDashboardScreenAdapter(DashboardScreenAdapter dashboardScreenAdapter) {
        DashboardScreenAdapter_MembersInjector.injectMContext(dashboardScreenAdapter, CareModule_ProvideContextFactory.provideContext(this.careModule));
        return dashboardScreenAdapter;
    }

    private DiagnosisCardViewPresenter injectDiagnosisCardViewPresenter(DiagnosisCardViewPresenter diagnosisCardViewPresenter) {
        DiagnosisCardViewPresenter_MembersInjector.injectMContext(diagnosisCardViewPresenter, CareModule_ProvideContextFactory.provideContext(this.careModule));
        DiagnosisCardViewPresenter_MembersInjector.injectMDongleDataManager(diagnosisCardViewPresenter, this.provideDongleDataManagerProvider.get());
        DiagnosisCardViewPresenter_MembersInjector.injectMLampsManager(diagnosisCardViewPresenter, this.provideLampsManagerProvider.get());
        DiagnosisCardViewPresenter_MembersInjector.injectMCommunication(diagnosisCardViewPresenter, this.provideCommunicationProvider.get());
        return diagnosisCardViewPresenter;
    }

    private ScheduleCardViewPresenter injectScheduleCardViewPresenter(ScheduleCardViewPresenter scheduleCardViewPresenter) {
        ScheduleCardViewPresenter_MembersInjector.injectMContext(scheduleCardViewPresenter, CareModule_ProvideContextFactory.provideContext(this.careModule));
        ScheduleCardViewPresenter_MembersInjector.injectMUserDataManager(scheduleCardViewPresenter, this.provideUserDataManagerProvider.get());
        ScheduleCardViewPresenter_MembersInjector.injectMVehicleObserver(scheduleCardViewPresenter, this.vehicleObserverProvider.get());
        return scheduleCardViewPresenter;
    }

    private ParametersCardViewPresenter injectParametersCardViewPresenter(ParametersCardViewPresenter parametersCardViewPresenter) {
        ParametersCardViewPresenter_MembersInjector.injectMContext(parametersCardViewPresenter, CareModule_ProvideContextFactory.provideContext(this.careModule));
        ParametersCardViewPresenter_MembersInjector.injectMDongleDataManager(parametersCardViewPresenter, this.provideDongleDataManagerProvider.get());
        ParametersCardViewPresenter_MembersInjector.injectMVehicleParametersManagerV2(parametersCardViewPresenter, this.provideVehicleParametersManagerV2Provider.get());
        ParametersCardViewPresenter_MembersInjector.injectMVehicleParamMapper(parametersCardViewPresenter, vehicleParamMapperV2());
        ParametersCardViewPresenter_MembersInjector.injectMPreferences(parametersCardViewPresenter, this.providePreferenceManagerProvider.get());
        ParametersCardViewPresenter_MembersInjector.injectMCommunication(parametersCardViewPresenter, this.provideCommunicationProvider.get());
        return parametersCardViewPresenter;
    }

    private FindVehicleCardViewPresenter injectFindVehicleCardViewPresenter(FindVehicleCardViewPresenter findVehicleCardViewPresenter) {
        FindVehicleCardViewPresenter_MembersInjector.injectMContext(findVehicleCardViewPresenter, CareModule_ProvideContextFactory.provideContext(this.careModule));
        FindVehicleCardViewPresenter_MembersInjector.injectMCommunication(findVehicleCardViewPresenter, this.provideCommunicationProvider.get());
        FindVehicleCardViewPresenter_MembersInjector.injectMVehicleObserver(findVehicleCardViewPresenter, this.vehicleObserverProvider.get());
        return findVehicleCardViewPresenter;
    }

    private DiagnosisScreen injectDiagnosisScreen(DiagnosisScreen diagnosisScreen) {
        DiagnosisScreen_MembersInjector.injectMDongleDataManager(diagnosisScreen, this.provideDongleDataManagerProvider.get());
        DiagnosisScreen_MembersInjector.injectMPercentColorHelper(diagnosisScreen, this.providePercentColorHelperProvider.get());
        DiagnosisScreen_MembersInjector.injectMCommunicationObservable(diagnosisScreen, this.provideCommunicationObservableProvider.get());
        DiagnosisScreen_MembersInjector.injectMLampsManager(diagnosisScreen, this.provideLampsManagerProvider.get());
        DiagnosisScreen_MembersInjector.injectVehicleParametersManager(diagnosisScreen, this.provideVehicleParametersManagerV2Provider.get());
        DiagnosisScreen_MembersInjector.injectMVehicleObserver(diagnosisScreen, this.vehicleObserverProvider.get());
        return diagnosisScreen;
    }

    private DiagnosisDataPagerAdapter injectDiagnosisDataPagerAdapter(DiagnosisDataPagerAdapter diagnosisDataPagerAdapter) {
        DiagnosisDataPagerAdapter_MembersInjector.injectMContext(diagnosisDataPagerAdapter, CareModule_ProvideContextFactory.provideContext(this.careModule));
        return diagnosisDataPagerAdapter;
    }

    private ErrorDTCViewPresenter injectErrorDTCViewPresenter(ErrorDTCViewPresenter errorDTCViewPresenter) {
        ErrorDTCViewPresenter_MembersInjector.injectMContext(errorDTCViewPresenter, CareModule_ProvideContextFactory.provideContext(this.careModule));
        ErrorDTCViewPresenter_MembersInjector.injectMLampsManager(errorDTCViewPresenter, this.provideLampsManagerProvider.get());
        ErrorDTCViewPresenter_MembersInjector.injectMDongleDataManager(errorDTCViewPresenter, this.provideDongleDataManagerProvider.get());
        return errorDTCViewPresenter;
    }

    private VehiclePagerAdapter injectVehiclePagerAdapter(VehiclePagerAdapter vehiclePagerAdapter) {
        VehiclePagerAdapter_MembersInjector.injectMContext(vehiclePagerAdapter, CareModule_ProvideContextFactory.provideContext(this.careModule));
        return vehiclePagerAdapter;
    }

    private VehiclePresenter injectVehiclePresenter(VehiclePresenter vehiclePresenter) {
        VehiclePresenter_MembersInjector.injectMContext(vehiclePresenter, CareModule_ProvideContextFactory.provideContext(this.careModule));
        return vehiclePresenter;
    }

    private ParametersChooseChartDialog injectParametersChooseChartDialog(ParametersChooseChartDialog parametersChooseChartDialog) {
        ParametersChooseChartDialog_MembersInjector.injectMPreferences(parametersChooseChartDialog, this.providePreferenceManagerProvider.get());
        ParametersChooseChartDialog_MembersInjector.injectMEventBus(parametersChooseChartDialog, this.provideEventBusProvider.get());
        return parametersChooseChartDialog;
    }

    private ContactsActivity injectContactsActivity(ContactsActivity contactsActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(contactsActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(contactsActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(contactsActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(contactsActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(contactsActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(contactsActivity, this.provideLocalBroadcastManagerProvider.get());
        return contactsActivity;
    }

    private EcoDrivingActivity injectEcoDrivingActivity(EcoDrivingActivity ecoDrivingActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(ecoDrivingActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(ecoDrivingActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(ecoDrivingActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(ecoDrivingActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(ecoDrivingActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(ecoDrivingActivity, this.provideLocalBroadcastManagerProvider.get());
        EcoDrivingActivity_MembersInjector.injectMTexaCareApiService(ecoDrivingActivity, this.provideTexaCareApiServiceUserProvider.get());
        EcoDrivingActivity_MembersInjector.injectMSharedPreferences(ecoDrivingActivity, this.providePreferenceManagerProvider.get());
        return ecoDrivingActivity;
    }

    private EcoDrivingScreen injectEcoDrivingScreen(EcoDrivingScreen ecoDrivingScreen) {
        EcoDrivingScreen_MembersInjector.injectMEventBus(ecoDrivingScreen, this.provideEventBusProvider.get());
        EcoDrivingScreen_MembersInjector.injectAvgCalculator(ecoDrivingScreen, this.provideAvgCalculatorProvider.get());
        EcoDrivingScreen_MembersInjector.injectMDongleDataManager(ecoDrivingScreen, this.provideDongleDataManagerProvider.get());
        EcoDrivingScreen_MembersInjector.injectCareObserver(ecoDrivingScreen, this.provideCareObserverProvider.get());
        return ecoDrivingScreen;
    }

    private EcoDrivingScreenDayAdapter injectEcoDrivingScreenDayAdapter(EcoDrivingScreenDayAdapter ecoDrivingScreenDayAdapter) {
        EcoDrivingScreenDayAdapter_MembersInjector.injectMContext(ecoDrivingScreenDayAdapter, CareModule_ProvideContextFactory.provideContext(this.careModule));
        return ecoDrivingScreenDayAdapter;
    }

    private WeekPresenter injectWeekPresenter(WeekPresenter weekPresenter) {
        WeekPresenter_MembersInjector.injectMContext(weekPresenter, CareModule_ProvideContextFactory.provideContext(this.careModule));
        WeekPresenter_MembersInjector.injectMEventBus(weekPresenter, this.provideEventBusProvider.get());
        WeekPresenter_MembersInjector.injectAvgCalculator(weekPresenter, this.provideAvgCalculatorProvider.get());
        return weekPresenter;
    }

    private EcoDrivingTripDetailScreen injectEcoDrivingTripDetailScreen(EcoDrivingTripDetailScreen ecoDrivingTripDetailScreen) {
        EcoDrivingTripDetailScreen_MembersInjector.injectAvgCalculator(ecoDrivingTripDetailScreen, this.provideAvgCalculatorProvider.get());
        return ecoDrivingTripDetailScreen;
    }

    private EcoDrivingHintActivity injectEcoDrivingHintActivity(EcoDrivingHintActivity ecoDrivingHintActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(ecoDrivingHintActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(ecoDrivingHintActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(ecoDrivingHintActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(ecoDrivingHintActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(ecoDrivingHintActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(ecoDrivingHintActivity, this.provideLocalBroadcastManagerProvider.get());
        return ecoDrivingHintActivity;
    }

    private EcoDrivingHintAdapter injectEcoDrivingHintAdapter(EcoDrivingHintAdapter ecoDrivingHintAdapter) {
        EcoDrivingHintAdapter_MembersInjector.injectMContext(ecoDrivingHintAdapter, CareModule_ProvideContextFactory.provideContext(this.careModule));
        return ecoDrivingHintAdapter;
    }

    private HintPresenter injectHintPresenter(HintPresenter hintPresenter) {
        HintPresenter_MembersInjector.injectMContext(hintPresenter, CareModule_ProvideContextFactory.provideContext(this.careModule));
        return hintPresenter;
    }

    private EcoDrivingCardViewPresenter injectEcoDrivingCardViewPresenter(EcoDrivingCardViewPresenter ecoDrivingCardViewPresenter) {
        EcoDrivingCardViewPresenter_MembersInjector.injectMContext(ecoDrivingCardViewPresenter, CareModule_ProvideContextFactory.provideContext(this.careModule));
        EcoDrivingCardViewPresenter_MembersInjector.injectMSharedPreferences(ecoDrivingCardViewPresenter, this.providePreferenceManagerProvider.get());
        EcoDrivingCardViewPresenter_MembersInjector.injectMDongleDataManager(ecoDrivingCardViewPresenter, this.provideDongleDataManagerProvider.get());
        EcoDrivingCardViewPresenter_MembersInjector.injectCareObserver(ecoDrivingCardViewPresenter, this.provideCareObserverProvider.get());
        EcoDrivingCardViewPresenter_MembersInjector.injectAvgCalculator(ecoDrivingCardViewPresenter, this.provideAvgCalculatorProvider.get());
        return ecoDrivingCardViewPresenter;
    }

    private EcoDrivingTutorialAdapter injectEcoDrivingTutorialAdapter(EcoDrivingTutorialAdapter ecoDrivingTutorialAdapter) {
        EcoDrivingTutorialAdapter_MembersInjector.injectMContext(ecoDrivingTutorialAdapter, CareModule_ProvideContextFactory.provideContext(this.careModule));
        return ecoDrivingTutorialAdapter;
    }

    private EcoDrivingTutorialActivity injectEcoDrivingTutorialActivity(EcoDrivingTutorialActivity ecoDrivingTutorialActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(ecoDrivingTutorialActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(ecoDrivingTutorialActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(ecoDrivingTutorialActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(ecoDrivingTutorialActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(ecoDrivingTutorialActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(ecoDrivingTutorialActivity, this.provideLocalBroadcastManagerProvider.get());
        EcoDrivingTutorialActivity_MembersInjector.injectMSharedPreferences(ecoDrivingTutorialActivity, this.providePreferenceManagerProvider.get());
        EcoDrivingTutorialActivity_MembersInjector.injectMUserDataManager(ecoDrivingTutorialActivity, this.provideUserDataManagerProvider.get());
        return ecoDrivingTutorialActivity;
    }

    private GeneralSettingsActivity injectGeneralSettingsActivity(GeneralSettingsActivity generalSettingsActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(generalSettingsActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(generalSettingsActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(generalSettingsActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(generalSettingsActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(generalSettingsActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(generalSettingsActivity, this.provideLocalBroadcastManagerProvider.get());
        return generalSettingsActivity;
    }

    private SettingsAdapter injectSettingsAdapter(SettingsAdapter settingsAdapter) {
        SettingsAdapter_MembersInjector.injectMDongleDataManager(settingsAdapter, this.provideDongleDataManagerProvider.get());
        SettingsAdapter_MembersInjector.injectMCommunicationObservable(settingsAdapter, this.provideCommunicationObservableProvider.get());
        SettingsAdapter_MembersInjector.injectMVehicleObserver(settingsAdapter, this.vehicleObserverProvider.get());
        SettingsAdapter_MembersInjector.injectMServiceDataManager(settingsAdapter, this.provideServiceDataManagerProvider.get());
        return settingsAdapter;
    }

    private EcoDrivingDialogHideTrip injectEcoDrivingDialogHideTrip(EcoDrivingDialogHideTrip ecoDrivingDialogHideTrip) {
        EcoDrivingDialogHideTrip_MembersInjector.injectMTexaCareApiService(ecoDrivingDialogHideTrip, this.provideTexaCareApiServiceUserProvider.get());
        EcoDrivingDialogHideTrip_MembersInjector.injectMEventBus(ecoDrivingDialogHideTrip, this.provideEventBusProvider.get());
        return ecoDrivingDialogHideTrip;
    }

    private AcceptationTermsActivity injectAcceptationTermsActivity(AcceptationTermsActivity acceptationTermsActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(acceptationTermsActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(acceptationTermsActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(acceptationTermsActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(acceptationTermsActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(acceptationTermsActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(acceptationTermsActivity, this.provideLocalBroadcastManagerProvider.get());
        AcceptationTermsActivity_MembersInjector.injectMEventBus(acceptationTermsActivity, this.provideEventBusProvider.get());
        return acceptationTermsActivity;
    }

    private AcceptationTermsScreen injectAcceptationTermsScreen(AcceptationTermsScreen acceptationTermsScreen) {
        AcceptationTermsScreen_MembersInjector.injectMTexaCareApiService(acceptationTermsScreen, this.provideTexaCareApiServiceUserProvider.get());
        AcceptationTermsScreen_MembersInjector.injectMEventBus(acceptationTermsScreen, this.provideEventBusProvider.get());
        AcceptationTermsScreen_MembersInjector.injectMUserDataManager(acceptationTermsScreen, this.provideUserDataManagerProvider.get());
        return acceptationTermsScreen;
    }

    private ActivationServiceContactActivity injectActivationServiceContactActivity(ActivationServiceContactActivity activationServiceContactActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(activationServiceContactActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(activationServiceContactActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(activationServiceContactActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(activationServiceContactActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(activationServiceContactActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(activationServiceContactActivity, this.provideLocalBroadcastManagerProvider.get());
        ActivationServiceContactActivity_MembersInjector.injectMUserDataManager(activationServiceContactActivity, this.provideUserDataManagerProvider.get());
        ActivationServiceContactActivity_MembersInjector.injectMEventBus(activationServiceContactActivity, this.provideEventBusProvider.get());
        return activationServiceContactActivity;
    }

    private ActivationServiceContactScreen injectActivationServiceContactScreen(ActivationServiceContactScreen activationServiceContactScreen) {
        ActivationServiceContactScreen_MembersInjector.injectMTexaCareApiService(activationServiceContactScreen, this.provideTexaCareApiServiceUserProvider.get());
        ActivationServiceContactScreen_MembersInjector.injectMEventBus(activationServiceContactScreen, this.provideEventBusProvider.get());
        ActivationServiceContactScreen_MembersInjector.injectMUserDataManager(activationServiceContactScreen, this.provideUserDataManagerProvider.get());
        ActivationServiceContactScreen_MembersInjector.injectMRetrofitErrorParser(activationServiceContactScreen, this.provideRetrofitErrorParserProvider.get());
        return activationServiceContactScreen;
    }

    private ActivationServiceSelectContactNumberDialog injectActivationServiceSelectContactNumberDialog(ActivationServiceSelectContactNumberDialog activationServiceSelectContactNumberDialog) {
        ActivationServiceSelectContactNumberDialog_MembersInjector.injectMEventBus(activationServiceSelectContactNumberDialog, this.provideEventBusProvider.get());
        return activationServiceSelectContactNumberDialog;
    }

    private SosInAppBillingSubscription injectSosInAppBillingSubscription(SosInAppBillingSubscription sosInAppBillingSubscription) {
        BaseActivity_MembersInjector.injectMUserDataManager(sosInAppBillingSubscription, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(sosInAppBillingSubscription, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(sosInAppBillingSubscription, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(sosInAppBillingSubscription, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(sosInAppBillingSubscription, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(sosInAppBillingSubscription, this.provideLocalBroadcastManagerProvider.get());
        SosInAppBillingSubscription_MembersInjector.injectMEventBus(sosInAppBillingSubscription, this.provideEventBusProvider.get());
        return sosInAppBillingSubscription;
    }

    private ActivationLightServiceScreen injectActivationLightServiceScreen(ActivationLightServiceScreen activationLightServiceScreen) {
        ActivationLightServiceScreen_MembersInjector.injectMDongleDataManager(activationLightServiceScreen, this.provideDongleDataManagerProvider.get());
        ActivationLightServiceScreen_MembersInjector.injectMTexaCareApiService(activationLightServiceScreen, this.provideTexaCareApiServiceUserProvider.get());
        ActivationLightServiceScreen_MembersInjector.injectMSharedPreferences(activationLightServiceScreen, this.providePreferenceManagerProvider.get());
        return activationLightServiceScreen;
    }

    private ActivationServiceDeleteContactDialog injectActivationServiceDeleteContactDialog(ActivationServiceDeleteContactDialog activationServiceDeleteContactDialog) {
        ActivationServiceDeleteContactDialog_MembersInjector.injectMEventBus(activationServiceDeleteContactDialog, this.provideEventBusProvider.get());
        return activationServiceDeleteContactDialog;
    }

    private NoSosServiceScreen injectNoSosServiceScreen(NoSosServiceScreen noSosServiceScreen) {
        NoSosServiceScreen_MembersInjector.injectMEventBus(noSosServiceScreen, this.provideEventBusProvider.get());
        return noSosServiceScreen;
    }

    private ActivationServiceVehicleDialog injectActivationServiceVehicleDialog(ActivationServiceVehicleDialog activationServiceVehicleDialog) {
        ActivationServiceVehicleDialog_MembersInjector.injectMVehicleObserver(activationServiceVehicleDialog, this.vehicleObserverProvider.get());
        ActivationServiceVehicleDialog_MembersInjector.injectMEventBus(activationServiceVehicleDialog, this.provideEventBusProvider.get());
        return activationServiceVehicleDialog;
    }

    private AcceptationTermsSosServiceScreen injectAcceptationTermsSosServiceScreen(AcceptationTermsSosServiceScreen acceptationTermsSosServiceScreen) {
        AcceptationTermsScreen_MembersInjector.injectMTexaCareApiService(acceptationTermsSosServiceScreen, this.provideTexaCareApiServiceUserProvider.get());
        AcceptationTermsScreen_MembersInjector.injectMEventBus(acceptationTermsSosServiceScreen, this.provideEventBusProvider.get());
        AcceptationTermsScreen_MembersInjector.injectMUserDataManager(acceptationTermsSosServiceScreen, this.provideUserDataManagerProvider.get());
        AcceptationTermsSosServiceScreen_MembersInjector.injectUserDataManager(acceptationTermsSosServiceScreen, this.provideUserDataManagerProvider.get());
        AcceptationTermsSosServiceScreen_MembersInjector.injectDongleDataManager(acceptationTermsSosServiceScreen, this.provideDongleDataManagerProvider.get());
        AcceptationTermsSosServiceScreen_MembersInjector.injectMSharedPreferences(acceptationTermsSosServiceScreen, this.providePreferenceManagerProvider.get());
        AcceptationTermsSosServiceScreen_MembersInjector.injectMEventBus(acceptationTermsSosServiceScreen, this.provideEventBusProvider.get());
        AcceptationTermsSosServiceScreen_MembersInjector.injectCaReWorkerManager(acceptationTermsSosServiceScreen, this.provideCAReWorkerManagerProvider.get());
        return acceptationTermsSosServiceScreen;
    }

    private SosPrerequisiteScreen injectSosPrerequisiteScreen(SosPrerequisiteScreen sosPrerequisiteScreen) {
        SosPrerequisiteScreen_MembersInjector.injectMDongleDataManager(sosPrerequisiteScreen, this.provideDongleDataManagerProvider.get());
        SosPrerequisiteScreen_MembersInjector.injectMServiceDataManager(sosPrerequisiteScreen, this.provideServiceDataManagerProvider.get());
        SosPrerequisiteScreen_MembersInjector.injectMCommunication(sosPrerequisiteScreen, this.provideCommunicationProvider.get());
        SosPrerequisiteScreen_MembersInjector.injectMChecksFactory(sosPrerequisiteScreen, checksFactory());
        SosPrerequisiteScreen_MembersInjector.injectMUserDataManager(sosPrerequisiteScreen, this.provideUserDataManagerProvider.get());
        return sosPrerequisiteScreen;
    }

    private ActivationLightForeignServiceScreen injectActivationLightForeignServiceScreen(ActivationLightForeignServiceScreen activationLightForeignServiceScreen) {
        ActivationLightForeignServiceScreen_MembersInjector.injectMTexaCareApiService(activationLightForeignServiceScreen, this.provideTexaCareApiServiceUserProvider.get());
        ActivationLightForeignServiceScreen_MembersInjector.injectMSharedPreferences(activationLightForeignServiceScreen, this.providePreferenceManagerProvider.get());
        return activationLightForeignServiceScreen;
    }

    private SettingsScreen injectSettingsScreen(SettingsScreen settingsScreen) {
        SettingsScreen_MembersInjector.injectMContext(settingsScreen, CareModule_ProvideContextFactory.provideContext(this.careModule));
        SettingsScreen_MembersInjector.injectMProfile(settingsScreen, this.provideProfileProvider.get());
        SettingsScreen_MembersInjector.injectMTexaService(settingsScreen, this.provideTexaServiceProvider.get());
        SettingsScreen_MembersInjector.injectMUserDataManager(settingsScreen, this.provideUserDataManagerProvider.get());
        SettingsScreen_MembersInjector.injectMDongleDataManager(settingsScreen, this.provideDongleDataManagerProvider.get());
        SettingsScreen_MembersInjector.injectMVehicleDataManager(settingsScreen, this.provideVehicleDataManagerProvider.get());
        SettingsScreen_MembersInjector.injectMCommunicationObservable(settingsScreen, this.provideCommunicationObservableProvider.get());
        SettingsScreen_MembersInjector.injectMVehicleObserver(settingsScreen, this.vehicleObserverProvider.get());
        SettingsScreen_MembersInjector.injectMTexaCareApiServiceUser(settingsScreen, this.provideTexaCareApiServiceUserProvider.get());
        SettingsScreen_MembersInjector.injectMLoginHelperRx(settingsScreen, CareModule_ProvideLoginHelperRxFactory.provideLoginHelperRx(this.careModule));
        SettingsScreen_MembersInjector.injectMEventBus(settingsScreen, this.provideEventBusProvider.get());
        return settingsScreen;
    }

    private SettingsCareScreen injectSettingsCareScreen(SettingsCareScreen settingsCareScreen) {
        SettingsCareScreen_MembersInjector.injectMContext(settingsCareScreen, CareModule_ProvideContextFactory.provideContext(this.careModule));
        SettingsCareScreen_MembersInjector.injectMEventBus(settingsCareScreen, this.provideEventBusProvider.get());
        SettingsCareScreen_MembersInjector.injectMCareObserver(settingsCareScreen, this.provideCareObserverProvider.get());
        SettingsCareScreen_MembersInjector.injectMTexaService(settingsCareScreen, this.provideTexaServiceProvider.get());
        SettingsCareScreen_MembersInjector.injectMDongleDataManager(settingsCareScreen, this.provideDongleDataManagerProvider.get());
        SettingsCareScreen_MembersInjector.injectMAccessory(settingsCareScreen, this.provideAccessoryProvider.get());
        return settingsCareScreen;
    }

    private ParametersViewPresenterV2 injectParametersViewPresenterV2(ParametersViewPresenterV2 parametersViewPresenterV2) {
        ParametersViewPresenterV2_MembersInjector.injectMContext(parametersViewPresenterV2, CareModule_ProvideContextFactory.provideContext(this.careModule));
        ParametersViewPresenterV2_MembersInjector.injectMVehicleParametersManagerV2(parametersViewPresenterV2, this.provideVehicleParametersManagerV2Provider.get());
        ParametersViewPresenterV2_MembersInjector.injectMVehicleParamMapper(parametersViewPresenterV2, vehicleParamMapperV2());
        ParametersViewPresenterV2_MembersInjector.injectMDongleDataManager(parametersViewPresenterV2, this.provideDongleDataManagerProvider.get());
        ParametersViewPresenterV2_MembersInjector.injectMCommunication(parametersViewPresenterV2, this.provideCommunicationProvider.get());
        ParametersViewPresenterV2_MembersInjector.injectMCommunicationObservable(parametersViewPresenterV2, this.provideCommunicationObservableProvider.get());
        return parametersViewPresenterV2;
    }

    private ProblemResolutionScreen injectProblemResolutionScreen(ProblemResolutionScreen problemResolutionScreen) {
        ProblemResolutionScreen_MembersInjector.injectMContext(problemResolutionScreen, CareModule_ProvideContextFactory.provideContext(this.careModule));
        ProblemResolutionScreen_MembersInjector.injectMVehicleParametersManagerV2(problemResolutionScreen, this.provideVehicleParametersManagerV2Provider.get());
        ProblemResolutionScreen_MembersInjector.injectMCareObserver(problemResolutionScreen, this.provideCareObserverProvider.get());
        ProblemResolutionScreen_MembersInjector.injectMCurrentTrip(problemResolutionScreen, this.provideCurrentTripProvider.get());
        ProblemResolutionScreen_MembersInjector.injectMAccessory(problemResolutionScreen, this.provideAccessoryProvider.get());
        ProblemResolutionScreen_MembersInjector.injectMVehicleObserver(problemResolutionScreen, this.vehicleObserverProvider.get());
        ProblemResolutionScreen_MembersInjector.injectCommunication(problemResolutionScreen, this.provideCommunicationProvider.get());
        ProblemResolutionScreen_MembersInjector.injectTexaCareApiServiceUser(problemResolutionScreen, this.provideTexaCareApiServiceUserProvider.get());
        return problemResolutionScreen;
    }

    private CompanyInfoActivity injectCompanyInfoActivity(CompanyInfoActivity companyInfoActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(companyInfoActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(companyInfoActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(companyInfoActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(companyInfoActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(companyInfoActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(companyInfoActivity, this.provideLocalBroadcastManagerProvider.get());
        return companyInfoActivity;
    }

    private CompanyInfoScreen injectCompanyInfoScreen(CompanyInfoScreen companyInfoScreen) {
        CompanyInfoScreen_MembersInjector.injectMContext(companyInfoScreen, CareModule_ProvideContextFactory.provideContext(this.careModule));
        return companyInfoScreen;
    }

    private InsertNewThresholdScreen injectInsertNewThresholdScreen(InsertNewThresholdScreen insertNewThresholdScreen) {
        InsertNewThresholdScreen_MembersInjector.injectMVehicleDataManager(insertNewThresholdScreen, this.provideVehicleDataManagerProvider.get());
        InsertNewThresholdScreen_MembersInjector.injectMContext(insertNewThresholdScreen, CareModule_ProvideContextFactory.provideContext(this.careModule));
        return insertNewThresholdScreen;
    }

    private GeneralSettingsScreen injectGeneralSettingsScreen(GeneralSettingsScreen generalSettingsScreen) {
        GeneralSettingsScreen_MembersInjector.injectMSharedPreferences(generalSettingsScreen, this.providePreferenceManagerProvider.get());
        GeneralSettingsScreen_MembersInjector.injectDrivingStyleManager(generalSettingsScreen, this.provideDrivingStyleManagerProvider.get());
        GeneralSettingsScreen_MembersInjector.injectMServiceNotificationController(generalSettingsScreen, this.provideServiceNotificationControllerProvider.get());
        return generalSettingsScreen;
    }

    private SettingsVehicleScreen injectSettingsVehicleScreen(SettingsVehicleScreen settingsVehicleScreen) {
        SettingsVehicleScreen_MembersInjector.injectMTexaCareApiServiceUser(settingsVehicleScreen, this.provideTexaCareApiServiceUserProvider.get());
        SettingsVehicleScreen_MembersInjector.injectMDongleDataManager(settingsVehicleScreen, this.provideDongleDataManagerProvider.get());
        SettingsVehicleScreen_MembersInjector.injectMVehicleDataManager(settingsVehicleScreen, this.provideVehicleDataManagerProvider.get());
        SettingsVehicleScreen_MembersInjector.injectMCommunication(settingsVehicleScreen, this.provideCommunicationProvider.get());
        SettingsVehicleScreen_MembersInjector.injectMCAReWorkerManager(settingsVehicleScreen, this.provideCAReWorkerManagerProvider.get());
        SettingsVehicleScreen_MembersInjector.injectMVehicleParametersManagerV2(settingsVehicleScreen, this.provideVehicleParametersManagerV2Provider.get());
        return settingsVehicleScreen;
    }

    private SettingsUserScreen injectSettingsUserScreen(SettingsUserScreen settingsUserScreen) {
        SettingsUserScreen_MembersInjector.injectMFlavorDelegator(settingsUserScreen, this.provideFlavorDelegatorProvider.get());
        SettingsUserScreen_MembersInjector.injectMContext(settingsUserScreen, CareModule_ProvideContextFactory.provideContext(this.careModule));
        SettingsUserScreen_MembersInjector.injectMCAReWorkerManager(settingsUserScreen, this.provideCAReWorkerManagerProvider.get());
        SettingsUserScreen_MembersInjector.injectMLoginHelperRx(settingsUserScreen, CareModule_ProvideLoginHelperRxFactory.provideLoginHelperRx(this.careModule));
        SettingsUserScreen_MembersInjector.injectMUserDataManager(settingsUserScreen, this.provideUserDataManagerProvider.get());
        return settingsUserScreen;
    }

    private SettingsUserAddressScreen injectSettingsUserAddressScreen(SettingsUserAddressScreen settingsUserAddressScreen) {
        SettingsUserAddressScreen_MembersInjector.injectMContext(settingsUserAddressScreen, CareModule_ProvideContextFactory.provideContext(this.careModule));
        SettingsUserAddressScreen_MembersInjector.injectMUserDataManager(settingsUserAddressScreen, this.provideUserDataManagerProvider.get());
        SettingsUserAddressScreen_MembersInjector.injectMFlavorDelegator(settingsUserAddressScreen, this.provideFlavorDelegatorProvider.get());
        return settingsUserAddressScreen;
    }

    private SosFirmwareWarningDialog injectSosFirmwareWarningDialog(SosFirmwareWarningDialog sosFirmwareWarningDialog) {
        SosFirmwareWarningDialog_MembersInjector.injectMCommunication(sosFirmwareWarningDialog, this.provideCommunicationProvider.get());
        return sosFirmwareWarningDialog;
    }

    private UpdateFirmwareDialog injectUpdateFirmwareDialog(UpdateFirmwareDialog updateFirmwareDialog) {
        UpdateFirmwareDialog_MembersInjector.injectMCareObserver(updateFirmwareDialog, this.provideCareObserverProvider.get());
        UpdateFirmwareDialog_MembersInjector.injectMDongleDataManager(updateFirmwareDialog, this.provideDongleDataManagerProvider.get());
        UpdateFirmwareDialog_MembersInjector.injectMTexaService(updateFirmwareDialog, this.provideTexaServiceProvider.get());
        UpdateFirmwareDialog_MembersInjector.injectMFirmwareUpdateController(updateFirmwareDialog, this.provideFirmwareUpdateControllerProvider.get());
        UpdateFirmwareDialog_MembersInjector.injectMAccessory(updateFirmwareDialog, this.provideAccessoryProvider.get());
        return updateFirmwareDialog;
    }

    private SettingsServicesActivity injectSettingsServicesActivity(SettingsServicesActivity settingsServicesActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(settingsServicesActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(settingsServicesActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(settingsServicesActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(settingsServicesActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(settingsServicesActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(settingsServicesActivity, this.provideLocalBroadcastManagerProvider.get());
        return settingsServicesActivity;
    }

    private SettingsServicesScreen injectSettingsServicesScreen(SettingsServicesScreen settingsServicesScreen) {
        SettingsServicesScreen_MembersInjector.injectMUserDataManager(settingsServicesScreen, this.provideUserDataManagerProvider.get());
        SettingsServicesScreen_MembersInjector.injectMTexaCareApiServiceUser(settingsServicesScreen, this.provideTexaCareApiServiceUserProvider.get());
        SettingsServicesScreen_MembersInjector.injectMServiceDataManager(settingsServicesScreen, this.provideServiceDataManagerProvider.get());
        SettingsServicesScreen_MembersInjector.injectMSosFeatureManager(settingsServicesScreen, this.provideSosFeatureManagerProvider.get());
        SettingsServicesScreen_MembersInjector.injectMDongleDataManager(settingsServicesScreen, this.provideDongleDataManagerProvider.get());
        return settingsServicesScreen;
    }

    private ServicesSubscriptionManagerActivity injectServicesSubscriptionManagerActivity(ServicesSubscriptionManagerActivity servicesSubscriptionManagerActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(servicesSubscriptionManagerActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(servicesSubscriptionManagerActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(servicesSubscriptionManagerActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(servicesSubscriptionManagerActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(servicesSubscriptionManagerActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(servicesSubscriptionManagerActivity, this.provideLocalBroadcastManagerProvider.get());
        return servicesSubscriptionManagerActivity;
    }

    private ServicesSubscriptionManagerScreen injectServicesSubscriptionManagerScreen(ServicesSubscriptionManagerScreen servicesSubscriptionManagerScreen) {
        ServicesSubscriptionManagerScreen_MembersInjector.injectMContext(servicesSubscriptionManagerScreen, CareModule_ProvideContextFactory.provideContext(this.careModule));
        ServicesSubscriptionManagerScreen_MembersInjector.injectMUserDataManager(servicesSubscriptionManagerScreen, this.provideUserDataManagerProvider.get());
        return servicesSubscriptionManagerScreen;
    }

    private LampsManager injectLampsManager(LampsManager lampsManager) {
        LampsManager_MembersInjector.injectMLoggerManager(lampsManager, this.provideLoggerManagerProvider.get());
        LampsManager_MembersInjector.injectMSharedPreferences(lampsManager, this.providePreferenceManagerProvider.get());
        LampsManager_MembersInjector.injectMCareWorkerManager(lampsManager, this.provideCAReWorkerManagerProvider.get());
        return lampsManager;
    }

    private DtcManager injectDtcManager(DtcManager dtcManager) {
        DtcManager_MembersInjector.injectMLoggerManager(dtcManager, this.provideLoggerManagerProvider.get());
        DtcManager_MembersInjector.injectMSharedPreferences(dtcManager, this.providePreferenceManagerProvider.get());
        DtcManager_MembersInjector.injectMCAReWorkerManager(dtcManager, this.provideCAReWorkerManagerProvider.get());
        return dtcManager;
    }

    private BatteryServiceAnalyzer injectBatteryServiceAnalyzer(BatteryServiceAnalyzer batteryServiceAnalyzer) {
        BatteryServiceAnalyzer_MembersInjector.injectMBatteryAnalyzer(batteryServiceAnalyzer, this.provideBatteryAnalyzerProvider.get());
        BatteryServiceAnalyzer_MembersInjector.injectMTexaCareApiServiceUser(batteryServiceAnalyzer, this.provideTexaCareApiServiceUserProvider.get());
        BatteryServiceAnalyzer_MembersInjector.injectMDongleDataManager(batteryServiceAnalyzer, this.provideDongleDataManagerProvider.get());
        BatteryServiceAnalyzer_MembersInjector.injectMCAReWorkerManager(batteryServiceAnalyzer, this.provideCAReWorkerManagerProvider.get());
        return batteryServiceAnalyzer;
    }

    private SignUpPasswordScreen injectSignUpPasswordScreen(SignUpPasswordScreen signUpPasswordScreen) {
        SignUpPasswordScreen_MembersInjector.injectMFormValidator(signUpPasswordScreen, this.provideFormValidatorProvider.get());
        SignUpPasswordScreen_MembersInjector.injectMUserDataManager(signUpPasswordScreen, this.provideUserDataManagerProvider.get());
        SignUpPasswordScreen_MembersInjector.injectMProfile(signUpPasswordScreen, this.provideProfileProvider.get());
        SignUpPasswordScreen_MembersInjector.injectMRetrofitErrorParser(signUpPasswordScreen, this.provideRetrofitErrorParserProvider.get());
        return signUpPasswordScreen;
    }

    private SignUpPersonalDataScreen injectSignUpPersonalDataScreen(SignUpPersonalDataScreen signUpPersonalDataScreen) {
        SignUpPersonalDataScreen_MembersInjector.injectMSharedPreferences(signUpPersonalDataScreen, this.providePreferenceManagerProvider.get());
        SignUpPersonalDataScreen_MembersInjector.injectMFormValidator(signUpPersonalDataScreen, this.provideFormValidatorProvider.get());
        SignUpPersonalDataScreen_MembersInjector.injectMUserDataManager(signUpPersonalDataScreen, this.provideUserDataManagerProvider.get());
        SignUpPersonalDataScreen_MembersInjector.injectMRetrofitErrorParser(signUpPersonalDataScreen, this.provideRetrofitErrorParserProvider.get());
        SignUpPersonalDataScreen_MembersInjector.injectMLoginHelper(signUpPersonalDataScreen, CareModule_ProvideLoginHelperRxFactory.provideLoginHelperRx(this.careModule));
        return signUpPersonalDataScreen;
    }

    private WalkthroughActivity injectWalkthroughActivity(WalkthroughActivity walkthroughActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(walkthroughActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(walkthroughActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(walkthroughActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(walkthroughActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(walkthroughActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(walkthroughActivity, this.provideLocalBroadcastManagerProvider.get());
        WalkthroughActivity_MembersInjector.injectMPreferences(walkthroughActivity, this.providePreferenceManagerProvider.get());
        return walkthroughActivity;
    }

    private WalkThroughAdapter injectWalkThroughAdapter(WalkThroughAdapter walkThroughAdapter) {
        WalkThroughAdapter_MembersInjector.injectMContext(walkThroughAdapter, CareModule_ProvideContextFactory.provideContext(this.careModule));
        return walkThroughAdapter;
    }

    private WalkthroughPresenter injectWalkthroughPresenter(WalkthroughPresenter walkthroughPresenter) {
        WalkthroughPresenter_MembersInjector.injectMContext(walkthroughPresenter, CareModule_ProvideContextFactory.provideContext(this.careModule));
        return walkthroughPresenter;
    }

    private WalkthroughActivityLastStep injectWalkthroughActivityLastStep(WalkthroughActivityLastStep walkthroughActivityLastStep) {
        BaseActivity_MembersInjector.injectMUserDataManager(walkthroughActivityLastStep, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(walkthroughActivityLastStep, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(walkthroughActivityLastStep, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(walkthroughActivityLastStep, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(walkthroughActivityLastStep, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(walkthroughActivityLastStep, this.provideLocalBroadcastManagerProvider.get());
        WalkthroughActivityLastStep_MembersInjector.injectMPreferences(walkthroughActivityLastStep, this.providePreferenceManagerProvider.get());
        WalkthroughActivityLastStep_MembersInjector.injectMDongleDataManager(walkthroughActivityLastStep, this.provideDongleDataManagerProvider.get());
        WalkthroughActivityLastStep_MembersInjector.injectMLoginHelperRx(walkthroughActivityLastStep, CareModule_ProvideLoginHelperRxFactory.provideLoginHelperRx(this.careModule));
        return walkthroughActivityLastStep;
    }

    private OnBoardingActivity injectOnBoardingActivity(OnBoardingActivity onBoardingActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(onBoardingActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(onBoardingActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(onBoardingActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(onBoardingActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(onBoardingActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(onBoardingActivity, this.provideLocalBroadcastManagerProvider.get());
        OnBoardingActivity_MembersInjector.injectMDiagnosticConfiguration(onBoardingActivity, this.provideDiagnosticConfigurationProvider.get());
        OnBoardingActivity_MembersInjector.injectMEventBus(onBoardingActivity, this.provideEventBusProvider.get());
        OnBoardingActivity_MembersInjector.injectMCommunication(onBoardingActivity, this.provideCommunicationProvider.get());
        OnBoardingActivity_MembersInjector.injectMDongleDataManager(onBoardingActivity, this.provideDongleDataManagerProvider.get());
        OnBoardingActivity_MembersInjector.injectMVehicleParametersManagerV2(onBoardingActivity, this.provideVehicleParametersManagerV2Provider.get());
        OnBoardingActivity_MembersInjector.injectMVehicleObserver(onBoardingActivity, this.vehicleObserverProvider.get());
        OnBoardingActivity_MembersInjector.injectMCommunicationObservable(onBoardingActivity, this.provideCommunicationObservableProvider.get());
        return onBoardingActivity;
    }

    private BaseVehicleDataScreen injectBaseVehicleDataScreen(BaseVehicleDataScreen baseVehicleDataScreen) {
        BaseVehicleDataScreen_MembersInjector.injectMFormValidator(baseVehicleDataScreen, this.provideFormValidatorProvider.get());
        BaseVehicleDataScreen_MembersInjector.injectMVehicleDataManager(baseVehicleDataScreen, this.provideVehicleDataManagerProvider.get());
        BaseVehicleDataScreen_MembersInjector.injectMEventBus(baseVehicleDataScreen, this.provideEventBusProvider.get());
        BaseVehicleDataScreen_MembersInjector.injectMLogInHelper(baseVehicleDataScreen, CareModule_ProvideLoginHelperRxFactory.provideLoginHelperRx(this.careModule));
        BaseVehicleDataScreen_MembersInjector.injectMTexaCareApiServiceUser(baseVehicleDataScreen, this.provideTexaCareApiServiceUserProvider.get());
        BaseVehicleDataScreen_MembersInjector.injectMAccessTokenPersistenceManagerClient(baseVehicleDataScreen, this.provideAccessTokenManagerClientProvider.get());
        BaseVehicleDataScreen_MembersInjector.injectMTexaCareAuthService(baseVehicleDataScreen, this.provideTexaCareAuthServiceProvider.get());
        BaseVehicleDataScreen_MembersInjector.injectMClientId(baseVehicleDataScreen, ApiModule_ProvideClientIdFactory.provideClientId(this.apiModule));
        BaseVehicleDataScreen_MembersInjector.injectMClientSecret(baseVehicleDataScreen, ApiModule_ProvideClientSecretFactory.provideClientSecret(this.apiModule));
        return baseVehicleDataScreen;
    }

    private InstallationHelpScreen injectInstallationHelpScreen(InstallationHelpScreen installationHelpScreen) {
        InstallationHelpScreen_MembersInjector.injectMCommunication(installationHelpScreen, this.provideCommunicationProvider.get());
        InstallationHelpScreen_MembersInjector.injectMDongleDataManager(installationHelpScreen, this.provideDongleDataManagerProvider.get());
        InstallationHelpScreen_MembersInjector.injectMPreferences(installationHelpScreen, this.providePreferenceManagerProvider.get());
        InstallationHelpScreen_MembersInjector.injectMEventBus(installationHelpScreen, this.provideEventBusProvider.get());
        return installationHelpScreen;
    }

    private DongleDiscoveryScreen injectDongleDiscoveryScreen(DongleDiscoveryScreen dongleDiscoveryScreen) {
        DongleDiscoveryScreen_MembersInjector.injectMCommunication(dongleDiscoveryScreen, this.provideCommunicationProvider.get());
        DongleDiscoveryScreen_MembersInjector.injectMDongleDataManager(dongleDiscoveryScreen, this.provideDongleDataManagerProvider.get());
        DongleDiscoveryScreen_MembersInjector.injectMTexaProfileDelegate(dongleDiscoveryScreen, this.provideTexaProfileDelegateProvider.get());
        DongleDiscoveryScreen_MembersInjector.injectMTexaCareApiServiceClient(dongleDiscoveryScreen, this.provideTexaCareApiClientProvider.get());
        DongleDiscoveryScreen_MembersInjector.injectMRetrofitErrorParser(dongleDiscoveryScreen, this.provideRetrofitErrorParserProvider.get());
        DongleDiscoveryScreen_MembersInjector.injectMCommunicationObservable(dongleDiscoveryScreen, this.provideCommunicationObservableProvider.get());
        DongleDiscoveryScreen_MembersInjector.injectMEventBus(dongleDiscoveryScreen, this.provideEventBusProvider.get());
        DongleDiscoveryScreen_MembersInjector.injectMTexaCareApiServiceUser(dongleDiscoveryScreen, this.provideTexaCareApiServiceUserProvider.get());
        DongleDiscoveryScreen_MembersInjector.injectMSharedPreferences(dongleDiscoveryScreen, this.providePreferenceManagerProvider.get());
        return dongleDiscoveryScreen;
    }

    private CareAuthenticationScreen injectCareAuthenticationScreen(CareAuthenticationScreen careAuthenticationScreen) {
        CareAuthenticationScreen_MembersInjector.injectMDongleDataManager(careAuthenticationScreen, this.provideDongleDataManagerProvider.get());
        CareAuthenticationScreen_MembersInjector.injectMTexaProfileDelegate(careAuthenticationScreen, this.provideTexaProfileDelegateProvider.get());
        CareAuthenticationScreen_MembersInjector.injectMProfile(careAuthenticationScreen, this.provideProfileProvider.get());
        CareAuthenticationScreen_MembersInjector.injectMLoggerManager(careAuthenticationScreen, this.provideLoggerManagerProvider.get());
        CareAuthenticationScreen_MembersInjector.injectMCommunication(careAuthenticationScreen, this.provideCommunicationProvider.get());
        CareAuthenticationScreen_MembersInjector.injectMICareObserver(careAuthenticationScreen, this.provideCareObserverProvider.get());
        CareAuthenticationScreen_MembersInjector.injectMArmadilloSharedPreferences(careAuthenticationScreen, armadilloSharedPreferences());
        return careAuthenticationScreen;
    }

    private PermissionActivity injectPermissionActivity(PermissionActivity permissionActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(permissionActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(permissionActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(permissionActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(permissionActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(permissionActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(permissionActivity, this.provideLocalBroadcastManagerProvider.get());
        PermissionActivity_MembersInjector.injectMSharedPreferences(permissionActivity, this.providePreferenceManagerProvider.get());
        return permissionActivity;
    }

    private PermissionPresenter injectPermissionPresenter(PermissionPresenter permissionPresenter) {
        PermissionPresenter_MembersInjector.injectMContext(permissionPresenter, CareModule_ProvideContextFactory.provideContext(this.careModule));
        return permissionPresenter;
    }

    private PermissionAdapter injectPermissionAdapter(PermissionAdapter permissionAdapter) {
        PermissionAdapter_MembersInjector.injectMContext(permissionAdapter, CareModule_ProvideContextFactory.provideContext(this.careModule));
        return permissionAdapter;
    }

    private VehicleScreenDialog injectVehicleScreenDialog(VehicleScreenDialog vehicleScreenDialog) {
        VehicleScreenDialog_MembersInjector.injectMEventBus(vehicleScreenDialog, this.provideEventBusProvider.get());
        VehicleScreenDialog_MembersInjector.injectMTexaCareApiServiceUser(vehicleScreenDialog, this.provideTexaCareApiServiceUserProvider.get());
        return vehicleScreenDialog;
    }

    private CountryScreenDialog injectCountryScreenDialog(CountryScreenDialog countryScreenDialog) {
        CountryScreenDialog_MembersInjector.injectMEventBus(countryScreenDialog, this.provideEventBusProvider.get());
        return countryScreenDialog;
    }

    private SosPrerequisiteNotificationController injectSosPrerequisiteNotificationController(SosPrerequisiteNotificationController sosPrerequisiteNotificationController) {
        SosPrerequisiteNotificationController_MembersInjector.injectMServiceDataManager(sosPrerequisiteNotificationController, this.provideServiceDataManagerProvider.get());
        return sosPrerequisiteNotificationController;
    }

    private AcceptTermsOfServiceAndPolicyScreenDialog injectAcceptTermsOfServiceAndPolicyScreenDialog(AcceptTermsOfServiceAndPolicyScreenDialog acceptTermsOfServiceAndPolicyScreenDialog) {
        AcceptTermsOfServiceAndPolicyScreenDialog_MembersInjector.injectMEventBus(acceptTermsOfServiceAndPolicyScreenDialog, this.provideEventBusProvider.get());
        return acceptTermsOfServiceAndPolicyScreenDialog;
    }

    private ActivationPhoneNumberActivity injectActivationPhoneNumberActivity(ActivationPhoneNumberActivity activationPhoneNumberActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(activationPhoneNumberActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(activationPhoneNumberActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(activationPhoneNumberActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(activationPhoneNumberActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(activationPhoneNumberActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(activationPhoneNumberActivity, this.provideLocalBroadcastManagerProvider.get());
        ActivationPhoneNumberActivity_MembersInjector.injectMEventBus(activationPhoneNumberActivity, this.provideEventBusProvider.get());
        return activationPhoneNumberActivity;
    }

    private NumberValidatorFinalStepScreen injectNumberValidatorFinalStepScreen(NumberValidatorFinalStepScreen numberValidatorFinalStepScreen) {
        NumberValidatorFinalStepScreen_MembersInjector.injectMTexaCareApiService(numberValidatorFinalStepScreen, this.provideTexaCareApiServiceUserProvider.get());
        NumberValidatorFinalStepScreen_MembersInjector.injectMUserDataManager(numberValidatorFinalStepScreen, this.provideUserDataManagerProvider.get());
        NumberValidatorFinalStepScreen_MembersInjector.injectMRetrofitErrorParser(numberValidatorFinalStepScreen, this.provideRetrofitErrorParserProvider.get());
        return numberValidatorFinalStepScreen;
    }

    private NumberValidatorScreen injectNumberValidatorScreen(NumberValidatorScreen numberValidatorScreen) {
        NumberValidatorScreen_MembersInjector.injectMTexaCareApiService(numberValidatorScreen, this.provideTexaCareApiServiceUserProvider.get());
        NumberValidatorScreen_MembersInjector.injectMUserDataManager(numberValidatorScreen, this.provideUserDataManagerProvider.get());
        NumberValidatorScreen_MembersInjector.injectMSharedPreferences(numberValidatorScreen, this.providePreferenceManagerProvider.get());
        return numberValidatorScreen;
    }

    private StartEngineScreen injectStartEngineScreen(StartEngineScreen startEngineScreen) {
        StartEngineScreen_MembersInjector.injectMPreferences(startEngineScreen, this.providePreferenceManagerProvider.get());
        StartEngineScreen_MembersInjector.injectMTexaCareApiServiceUser(startEngineScreen, this.provideTexaCareApiServiceUserProvider.get());
        StartEngineScreen_MembersInjector.injectMEventBus(startEngineScreen, this.provideEventBusProvider.get());
        StartEngineScreen_MembersInjector.injectMVehicleDataManager(startEngineScreen, this.provideVehicleDataManagerProvider.get());
        StartEngineScreen_MembersInjector.injectMLoginHelperRx(startEngineScreen, CareModule_ProvideLoginHelperRxFactory.provideLoginHelperRx(this.careModule));
        StartEngineScreen_MembersInjector.injectMRetrofitErrorParser(startEngineScreen, this.provideRetrofitErrorParserProvider.get());
        StartEngineScreen_MembersInjector.injectMVehicleObserver(startEngineScreen, this.vehicleObserverProvider.get());
        StartEngineScreen_MembersInjector.injectMAccessory(startEngineScreen, this.provideAccessoryProvider.get());
        StartEngineScreen_MembersInjector.injectMVehicleInfo(startEngineScreen, this.provideVehicleInfoProvider.get());
        StartEngineScreen_MembersInjector.injectMDongleDataManager(startEngineScreen, this.provideDongleDataManagerProvider.get());
        return startEngineScreen;
    }

    private PlateValidationScreenDialog injectPlateValidationScreenDialog(PlateValidationScreenDialog plateValidationScreenDialog) {
        PlateValidationScreenDialog_MembersInjector.injectMEventBus(plateValidationScreenDialog, this.provideEventBusProvider.get());
        return plateValidationScreenDialog;
    }

    private UpdateConfigurationActivity injectUpdateConfigurationActivity(UpdateConfigurationActivity updateConfigurationActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(updateConfigurationActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(updateConfigurationActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(updateConfigurationActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(updateConfigurationActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(updateConfigurationActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(updateConfigurationActivity, this.provideLocalBroadcastManagerProvider.get());
        UpdateConfigurationActivity_MembersInjector.injectMEventBus(updateConfigurationActivity, this.provideEventBusProvider.get());
        UpdateConfigurationActivity_MembersInjector.injectMCommunication(updateConfigurationActivity, this.provideCommunicationProvider.get());
        UpdateConfigurationActivity_MembersInjector.injectMDongleDataManager(updateConfigurationActivity, this.provideDongleDataManagerProvider.get());
        UpdateConfigurationActivity_MembersInjector.injectMAccessory(updateConfigurationActivity, this.provideAccessoryProvider.get());
        UpdateConfigurationActivity_MembersInjector.injectMCareObserver(updateConfigurationActivity, this.provideCareObserverProvider.get());
        UpdateConfigurationActivity_MembersInjector.injectMVehicleParametersManager(updateConfigurationActivity, this.provideVehicleParametersManagerV2Provider.get());
        UpdateConfigurationActivity_MembersInjector.injectMVehicle(updateConfigurationActivity, this.provideVehicleProvider.get());
        return updateConfigurationActivity;
    }

    private FirmwareUpdateService injectFirmwareUpdateService(FirmwareUpdateService firmwareUpdateService) {
        RxCareService_MembersInjector.injectMCurrentTrip(firmwareUpdateService, this.provideCurrentTripProvider.get());
        RxCareService_MembersInjector.injectMAccessory(firmwareUpdateService, this.provideAccessoryProvider.get());
        RxCareService_MembersInjector.injectMCommunicationObservable(firmwareUpdateService, this.provideCommunicationObservableProvider.get());
        RxCareService_MembersInjector.injectMCommunication(firmwareUpdateService, this.provideCommunicationProvider.get());
        FirmwareUpdateService_MembersInjector.injectMTexaService(firmwareUpdateService, this.provideTexaServiceProvider.get());
        FirmwareUpdateService_MembersInjector.injectMFirmwareUpdateController(firmwareUpdateService, this.provideFirmwareUpdateControllerProvider.get());
        FirmwareUpdateService_MembersInjector.injectMWakelockManager(firmwareUpdateService, this.provideWakelockManagerProvider.get());
        FirmwareUpdateService_MembersInjector.injectMServiceNotificationController(firmwareUpdateService, this.provideServiceNotificationControllerProvider.get());
        FirmwareUpdateService_MembersInjector.injectMAccessory(firmwareUpdateService, this.provideAccessoryProvider.get());
        FirmwareUpdateService_MembersInjector.injectMProfile(firmwareUpdateService, this.provideProfileProvider.get());
        return firmwareUpdateService;
    }

    private CalibrationActivity injectCalibrationActivity(CalibrationActivity calibrationActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(calibrationActivity, this.provideUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(calibrationActivity, this.provideDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(calibrationActivity, this.providePreferenceManagerProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(calibrationActivity, this.provideLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(calibrationActivity, this.provideRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(calibrationActivity, this.provideLocalBroadcastManagerProvider.get());
        return calibrationActivity;
    }

    private CalibrationScreen injectCalibrationScreen(CalibrationScreen calibrationScreen) {
        CalibrationScreen_MembersInjector.injectMEventBus(calibrationScreen, this.provideEventBusProvider.get());
        return calibrationScreen;
    }

    private CalibrationDialogScreen injectCalibrationDialogScreen(CalibrationDialogScreen calibrationDialogScreen) {
        CalibrationDialogScreen_MembersInjector.injectMAttitude(calibrationDialogScreen, this.provideAttitudeProvider.get());
        CalibrationDialogScreen_MembersInjector.injectMEventBus(calibrationDialogScreen, this.provideEventBusProvider.get());
        return calibrationDialogScreen;
    }

    private VehicleAlreadyConfiguredScreenDialog injectVehicleAlreadyConfiguredScreenDialog(VehicleAlreadyConfiguredScreenDialog vehicleAlreadyConfiguredScreenDialog) {
        VehicleAlreadyConfiguredScreenDialog_MembersInjector.injectMTexaCareApiServiceUser(vehicleAlreadyConfiguredScreenDialog, this.provideTexaCareApiServiceUserProvider.get());
        return vehicleAlreadyConfiguredScreenDialog;
    }

    private OnBoardingErrorDialog injectOnBoardingErrorDialog(OnBoardingErrorDialog onBoardingErrorDialog) {
        OnBoardingErrorDialog_MembersInjector.injectMEventBus(onBoardingErrorDialog, this.provideEventBusProvider.get());
        return onBoardingErrorDialog;
    }

    private FactoryResetScreenDialog injectFactoryResetScreenDialog(FactoryResetScreenDialog factoryResetScreenDialog) {
        FactoryResetScreenDialog_MembersInjector.injectMAccessory(factoryResetScreenDialog, this.provideAccessoryProvider.get());
        FactoryResetScreenDialog_MembersInjector.injectMLoginHelperRx(factoryResetScreenDialog, CareModule_ProvideLoginHelperRxFactory.provideLoginHelperRx(this.careModule));
        FactoryResetScreenDialog_MembersInjector.injectMEventBus(factoryResetScreenDialog, this.provideEventBusProvider.get());
        return factoryResetScreenDialog;
    }

    private EnableBluetoothScreenDialog injectEnableBluetoothScreenDialog(EnableBluetoothScreenDialog enableBluetoothScreenDialog) {
        EnableBluetoothScreenDialog_MembersInjector.injectMEventBus(enableBluetoothScreenDialog, this.provideEventBusProvider.get());
        return enableBluetoothScreenDialog;
    }

    private FirmwareUpdateController injectFirmwareUpdateController(FirmwareUpdateController firmwareUpdateController) {
        FirmwareUpdateController_MembersInjector.injectMEventBus(firmwareUpdateController, this.provideEventBusProvider.get());
        FirmwareUpdateController_MembersInjector.injectMFirmwareUpgradeProcedure(firmwareUpdateController, this.provideFirmwareUpgradeProcedureProvider.get());
        FirmwareUpdateController_MembersInjector.injectProfile(firmwareUpdateController, this.provideProfileProvider.get());
        FirmwareUpdateController_MembersInjector.injectAccessory(firmwareUpdateController, this.provideAccessoryProvider.get());
        FirmwareUpdateController_MembersInjector.injectMPrefs(firmwareUpdateController, this.providePreferenceManagerProvider.get());
        return firmwareUpdateController;
    }

    private OnBoardingErrorEngineDialog injectOnBoardingErrorEngineDialog(OnBoardingErrorEngineDialog onBoardingErrorEngineDialog) {
        OnBoardingErrorEngineDialog_MembersInjector.injectMEventBus(onBoardingErrorEngineDialog, this.provideEventBusProvider.get());
        OnBoardingErrorEngineDialog_MembersInjector.injectMDongleDataManager(onBoardingErrorEngineDialog, this.provideDongleDataManagerProvider.get());
        OnBoardingErrorEngineDialog_MembersInjector.injectMUserDataManager(onBoardingErrorEngineDialog, this.provideUserDataManagerProvider.get());
        return onBoardingErrorEngineDialog;
    }

    private EmergencyInfoJob injectEmergencyInfoJob(EmergencyInfoJob emergencyInfoJob) {
        EmergencyInfoJob_MembersInjector.injectTexaCareApiServiceUser(emergencyInfoJob, this.provideTexaCareApiServiceUserProvider.get());
        EmergencyInfoJob_MembersInjector.injectMPreferences(emergencyInfoJob, this.providePreferenceManagerProvider.get());
        return emergencyInfoJob;
    }

    private BatteryAnalyzerJob injectBatteryAnalyzerJob(BatteryAnalyzerJob batteryAnalyzerJob) {
        BatteryAnalyzerJob_MembersInjector.injectMTexaCareApiService(batteryAnalyzerJob, this.provideTexaCareApiServiceUserProvider.get());
        return batteryAnalyzerJob;
    }

    private ChangeLockStatusJob injectChangeLockStatusJob(ChangeLockStatusJob changeLockStatusJob) {
        ChangeLockStatusJob_MembersInjector.injectTexaCareApiServiceUser(changeLockStatusJob, this.provideTexaCareApiServiceUserProvider.get());
        return changeLockStatusJob;
    }

    private CrashLogJob injectCrashLogJob(CrashLogJob crashLogJob) {
        CrashLogJob_MembersInjector.injectMTexaCareApiService(crashLogJob, this.provideTexaCareApiServiceUserProvider.get());
        return crashLogJob;
    }

    private DTCJob injectDTCJob(DTCJob dTCJob) {
        DTCJob_MembersInjector.injectMVehicleDataManager(dTCJob, this.provideVehicleDataManagerProvider.get());
        DTCJob_MembersInjector.injectMTexaCareApiService(dTCJob, this.provideTexaCareApiServiceUserProvider.get());
        return dTCJob;
    }

    private LampJob injectLampJob(LampJob lampJob) {
        LampJob_MembersInjector.injectMTexaCareApiService(lampJob, this.provideTexaCareApiServiceUserProvider.get());
        LampJob_MembersInjector.injectMVehicleDataManager(lampJob, this.provideVehicleDataManagerProvider.get());
        return lampJob;
    }

    private LogJob injectLogJob(LogJob logJob) {
        LogJob_MembersInjector.injectMLoginHelperRx(logJob, CareModule_ProvideLoginHelperRxFactory.provideLoginHelperRx(this.careModule));
        LogJob_MembersInjector.injectMTexaCareServiceBus(logJob, this.provideTexaCareServiceBusProvider.get());
        return logJob;
    }

    private ParameterJob injectParameterJob(ParameterJob parameterJob) {
        ParameterJob_MembersInjector.injectMVehicleDataManager(parameterJob, this.provideVehicleDataManagerProvider.get());
        ParameterJob_MembersInjector.injectMTexaCareApiService(parameterJob, this.provideTexaCareApiServiceUserProvider.get());
        return parameterJob;
    }

    private PurchaseDataJob injectPurchaseDataJob(PurchaseDataJob purchaseDataJob) {
        PurchaseDataJob_MembersInjector.injectTexaCareApiServiceUser(purchaseDataJob, this.provideTexaCareApiServiceUserProvider.get());
        return purchaseDataJob;
    }

    private ThresholdsJob injectThresholdsJob(ThresholdsJob thresholdsJob) {
        ThresholdsJob_MembersInjector.injectMVehicleDataManager(thresholdsJob, this.provideVehicleDataManagerProvider.get());
        ThresholdsJob_MembersInjector.injectMTexaCareApiService(thresholdsJob, this.provideTexaCareApiServiceUserProvider.get());
        return thresholdsJob;
    }

    private TripJob injectTripJob(TripJob tripJob) {
        TripJob_MembersInjector.injectMLoginHelperRx(tripJob, CareModule_ProvideLoginHelperRxFactory.provideLoginHelperRx(this.careModule));
        TripJob_MembersInjector.injectMTripDataManager(tripJob, this.provideTripDataManagerProvider.get());
        TripJob_MembersInjector.injectTexaCareApiServiceUser(tripJob, this.provideTexaCareApiServiceUserProvider.get());
        TripJob_MembersInjector.injectMRetrofitErrorParser(tripJob, this.provideRetrofitErrorParserProvider.get());
        return tripJob;
    }

    private UserTaskJob injectUserTaskJob(UserTaskJob userTaskJob) {
        UserTaskJob_MembersInjector.injectMUserDataManager(userTaskJob, this.provideUserDataManagerProvider.get());
        UserTaskJob_MembersInjector.injectTexaCareApiServiceUser(userTaskJob, this.provideTexaCareApiServiceUserProvider.get());
        return userTaskJob;
    }

    private VehicleAlarmsJob injectVehicleAlarmsJob(VehicleAlarmsJob vehicleAlarmsJob) {
        VehicleAlarmsJob_MembersInjector.injectMVehicleDataManager(vehicleAlarmsJob, this.provideVehicleDataManagerProvider.get());
        VehicleAlarmsJob_MembersInjector.injectTexaCareApiServiceUser(vehicleAlarmsJob, this.provideTexaCareApiServiceUserProvider.get());
        return vehicleAlarmsJob;
    }

    private VehicleJob injectVehicleJob(VehicleJob vehicleJob) {
        VehicleJob_MembersInjector.injectMVehicleDataManager(vehicleJob, this.provideVehicleDataManagerProvider.get());
        VehicleJob_MembersInjector.injectTexaCareApiServiceUser(vehicleJob, this.provideTexaCareApiServiceUserProvider.get());
        return vehicleJob;
    }

    private PeriodicTaskJob injectPeriodicTaskJob(PeriodicTaskJob periodicTaskJob) {
        PeriodicTaskJob_MembersInjector.injectMLoginHelperRx(periodicTaskJob, CareModule_ProvideLoginHelperRxFactory.provideLoginHelperRx(this.careModule));
        PeriodicTaskJob_MembersInjector.injectMTexaCareApiService(periodicTaskJob, this.provideTexaCareApiServiceUserProvider.get());
        PeriodicTaskJob_MembersInjector.injectMServiceDataManager(periodicTaskJob, this.provideServiceDataManagerProvider.get());
        return periodicTaskJob;
    }

    private ServiceOneOffJob injectServiceOneOffJob(ServiceOneOffJob serviceOneOffJob) {
        ServiceOneOffJob_MembersInjector.injectMNotificationManager(serviceOneOffJob, this.provideNotificationManagerProvider.get());
        ServiceOneOffJob_MembersInjector.injectMLoginHelperRx(serviceOneOffJob, CareModule_ProvideLoginHelperRxFactory.provideLoginHelperRx(this.careModule));
        ServiceOneOffJob_MembersInjector.injectMServiceDataManager(serviceOneOffJob, this.provideServiceDataManagerProvider.get());
        ServiceOneOffJob_MembersInjector.injectMTexaCareApiService(serviceOneOffJob, this.provideTexaCareApiServiceUserProvider.get());
        ServiceOneOffJob_MembersInjector.injectMVehicleDataManager(serviceOneOffJob, this.provideVehicleDataManagerProvider.get());
        ServiceOneOffJob_MembersInjector.injectMDongleDataManager(serviceOneOffJob, this.provideDongleDataManagerProvider.get());
        return serviceOneOffJob;
    }

    private EmergencyInfoMessageJob injectEmergencyInfoMessageJob(EmergencyInfoMessageJob emergencyInfoMessageJob) {
        EmergencyInfoMessageJob_MembersInjector.injectTexaCareApiServiceUser(emergencyInfoMessageJob, this.provideTexaCareApiServiceUserProvider.get());
        EmergencyInfoMessageJob_MembersInjector.injectMPreferences(emergencyInfoMessageJob, this.providePreferenceManagerProvider.get());
        return emergencyInfoMessageJob;
    }

    public static final class Builder {
        private ApiModule apiModule;
        private CareModule careModule;

        private Builder() {
        }

        public Builder careModule(CareModule careModule) {
            this.careModule = (CareModule) Preconditions.checkNotNull(careModule);
            return this;
        }

        public Builder apiModule(ApiModule apiModule) {
            this.apiModule = (ApiModule) Preconditions.checkNotNull(apiModule);
            return this;
        }

        public CareApplication.ApplicationComponent build() {
            Preconditions.checkBuilderRequirement(this.careModule, CareModule.class);
            Preconditions.checkBuilderRequirement(this.apiModule, ApiModule.class);
            return new DaggerCareApplication_ApplicationComponent(this.careModule, this.apiModule);
        }
    }
}

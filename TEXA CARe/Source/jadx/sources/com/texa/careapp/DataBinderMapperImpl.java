package com.texa.careapp;

import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.DataBinderMapper;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.texa.careapp.databinding.ActivityAutomaticSosBindingImpl;
import com.texa.careapp.databinding.ActivityCareOnboardingConfigurationBindingImpl;
import com.texa.careapp.databinding.ActivityEcoDrivingHintBindingImpl;
import com.texa.careapp.databinding.ActivityEcoDrivingTutorialBindingImpl;
import com.texa.careapp.databinding.ActivityMainBindingImpl;
import com.texa.careapp.databinding.ActivityMechanicBindingImpl;
import com.texa.careapp.databinding.ActivityOnBoardingBindingImpl;
import com.texa.careapp.databinding.ActivityPermissionBindingImpl;
import com.texa.careapp.databinding.ActivitySectionsBindingImpl;
import com.texa.careapp.databinding.ActivityUpdateConfigurationBindingImpl;
import com.texa.careapp.databinding.ActivityVehicleDataConfirmationBindingImpl;
import com.texa.careapp.databinding.ActivityVehicleFinderBindingImpl;
import com.texa.careapp.databinding.ActivityWalkthroughBindingImpl;
import com.texa.careapp.databinding.AlertCentralBindingImpl;
import com.texa.careapp.databinding.AlertDialogFirmwareVersionBindingImpl;
import com.texa.careapp.databinding.CareDongleItemBindingImpl;
import com.texa.careapp.databinding.ContactsGridBindingImpl;
import com.texa.careapp.databinding.DashboardCardDiagnosisBindingImpl;
import com.texa.careapp.databinding.DashboardCardEcoDrivingBindingImpl;
import com.texa.careapp.databinding.DashboardCardFindVehicleBindingImpl;
import com.texa.careapp.databinding.DashboardCardParametersBindingImpl;
import com.texa.careapp.databinding.DashboardCardScheduleBindingImpl;
import com.texa.careapp.databinding.DiagnosisDataParametersLayoutV2BindingImpl;
import com.texa.careapp.databinding.DiagnosisDataParametersLineChartBindingImpl;
import com.texa.careapp.databinding.DiagnosisDataParametersPieChartBindingImpl;
import com.texa.careapp.databinding.DialogActivationServiceDeleteContactBindingImpl;
import com.texa.careapp.databinding.DialogActivationServiceSelectContactNumberBindingImpl;
import com.texa.careapp.databinding.DialogActivationServiceVehicleBindingImpl;
import com.texa.careapp.databinding.DialogAdvancedDiagnosisBindingImpl;
import com.texa.careapp.databinding.DialogCheckFirmwareSosBindingImpl;
import com.texa.careapp.databinding.DialogChooseChartBindingImpl;
import com.texa.careapp.databinding.DialogOnboardingErrorBindingImpl;
import com.texa.careapp.databinding.DialogPlateValidationBindingImpl;
import com.texa.careapp.databinding.DialogUpdateFirmwareBindingImpl;
import com.texa.careapp.databinding.DialogVehicleAlreadyConfiguredBindingImpl;
import com.texa.careapp.databinding.EditabledateLayoutBindingImpl;
import com.texa.careapp.databinding.ErrorDtcHeaderItemBindingImpl;
import com.texa.careapp.databinding.ErrorDtcItemBindingImpl;
import com.texa.careapp.databinding.FragmentDashboardV2BindingImpl;
import com.texa.careapp.databinding.FragmentDashboardVehicleBindingImpl;
import com.texa.careapp.databinding.NavigationDrawerFragmentBindingImpl;
import com.texa.careapp.databinding.PermissionLocationStepBindingImpl;
import com.texa.careapp.databinding.ScheduleHeaderListItemBindingImpl;
import com.texa.careapp.databinding.ScheduleListItem2BindingImpl;
import com.texa.careapp.databinding.ScreenActivationLightServiceBindingImpl;
import com.texa.careapp.databinding.ScreenActivationPlusServiceBindingImpl;
import com.texa.careapp.databinding.ScreenActivationServiceCompletedBindingImpl;
import com.texa.careapp.databinding.ScreenActivationServiceContactBindingImpl;
import com.texa.careapp.databinding.ScreenActivationTrialServiceBindingImpl;
import com.texa.careapp.databinding.ScreenAlertDialogBindingImpl;
import com.texa.careapp.databinding.ScreenBackgroundLocationPermissionBindingImpl;
import com.texa.careapp.databinding.ScreenBaseVehicleDataBindingImpl;
import com.texa.careapp.databinding.ScreenCalibrationBindingImpl;
import com.texa.careapp.databinding.ScreenCareSiteBindingImpl;
import com.texa.careapp.databinding.ScreenCareValidatorBindingImpl;
import com.texa.careapp.databinding.ScreenCompanyInfoBindingImpl;
import com.texa.careapp.databinding.ScreenDiagnosisBindingImpl;
import com.texa.careapp.databinding.ScreenDiagnosisDataBindingImpl;
import com.texa.careapp.databinding.ScreenDialogCountryBindingImpl;
import com.texa.careapp.databinding.ScreenDialogCountryItemBindingImpl;
import com.texa.careapp.databinding.ScreenDialogFwUpdateBindingImpl;
import com.texa.careapp.databinding.ScreenDialogNewConfigurationRequestBindingImpl;
import com.texa.careapp.databinding.ScreenDialogVehicleBindingImpl;
import com.texa.careapp.databinding.ScreenDialogVehicleHeaderBindingImpl;
import com.texa.careapp.databinding.ScreenDialogVehicleItemBindingImpl;
import com.texa.careapp.databinding.ScreenDongleDiscoveryBindingImpl;
import com.texa.careapp.databinding.ScreenDrawOverlayPermissionBindingImpl;
import com.texa.careapp.databinding.ScreenEcoDrivingBindingImpl;
import com.texa.careapp.databinding.ScreenEcoDrivingDayBindingImpl;
import com.texa.careapp.databinding.ScreenEcoDrivingDialogHideTripBindingImpl;
import com.texa.careapp.databinding.ScreenEcoDrivingHintBindingImpl;
import com.texa.careapp.databinding.ScreenEcoDrivingTripDetailBindingImpl;
import com.texa.careapp.databinding.ScreenEcoDrivingTripEventItemBindingImpl;
import com.texa.careapp.databinding.ScreenEcoDrivingTripItemBindingImpl;
import com.texa.careapp.databinding.ScreenEcoDrivingTripMapBindingImpl;
import com.texa.careapp.databinding.ScreenEcoDrivingTutorialBindingImpl;
import com.texa.careapp.databinding.ScreenEmailAddressBindingImpl;
import com.texa.careapp.databinding.ScreenGeneralSettingsPreferencesBindingImpl;
import com.texa.careapp.databinding.ScreenInsertNewThresholdBindingImpl;
import com.texa.careapp.databinding.ScreenNumberValidatorBindingImpl;
import com.texa.careapp.databinding.ScreenNumberValidatorFinalStepBindingImpl;
import com.texa.careapp.databinding.ScreenPasswordCreationBindingImpl;
import com.texa.careapp.databinding.ScreenPermissionBindingImpl;
import com.texa.careapp.databinding.ScreenPersonalDataBindingImpl;
import com.texa.careapp.databinding.ScreenProblemResolutionBindingImpl;
import com.texa.careapp.databinding.ScreenRecoverPasswordBindingImpl;
import com.texa.careapp.databinding.ScreenResetExpireScheduleBindingImpl;
import com.texa.careapp.databinding.ScreenScheduleGridBindingImpl;
import com.texa.careapp.databinding.ScreenSelectNewScheduleBindingImpl;
import com.texa.careapp.databinding.ScreenSellerMapBindingImpl;
import com.texa.careapp.databinding.ScreenServicesSubscriptionManagerBindingImpl;
import com.texa.careapp.databinding.ScreenSetDefaultDataThresholdBindingImpl;
import com.texa.careapp.databinding.ScreenSetDefaultOdometerThresholdBindingImpl;
import com.texa.careapp.databinding.ScreenSetInsuranceCompanyBindingImpl;
import com.texa.careapp.databinding.ScreenSetInsuranceDataThresholdBindingImpl;
import com.texa.careapp.databinding.ScreenSetTyresOdometerThresholdBindingImpl;
import com.texa.careapp.databinding.ScreenSettingsLayoutBindingImpl;
import com.texa.careapp.databinding.ScreenSettingsServicesBindingImpl;
import com.texa.careapp.databinding.ScreenSettingsUserAddressBindingImpl;
import com.texa.careapp.databinding.ScreenSettingsUserBindingImpl;
import com.texa.careapp.databinding.ScreenSigninLayoutBindingImpl;
import com.texa.careapp.databinding.ScreenSosPrerequisiteBindingImpl;
import com.texa.careapp.databinding.ScreenStartEngineBindingImpl;
import com.texa.careapp.databinding.ScreenTermOfConditionsServicesBindingImpl;
import com.texa.careapp.databinding.ScreenTyresInversionBindingImpl;
import com.texa.careapp.databinding.ScreenTyresNewInstallBindingImpl;
import com.texa.careapp.databinding.ScreenTyresOptionsBindingImpl;
import com.texa.careapp.databinding.ScreenVehicleSettingsBindingImpl;
import com.texa.careapp.databinding.ScreenWalkthroughBindingImpl;
import com.texa.careapp.databinding.SettingsCareScreenBindingImpl;
import com.texa.careapp.databinding.SettingsHeaderItemBindingImpl;
import com.texa.careapp.databinding.SettingsListItemBindingImpl;
import com.texa.careapp.databinding.SettingsMyVehiclesListBindingImpl;
import com.texa.careapp.databinding.SettingsServicesListItemBindingImpl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DataBinderMapperImpl extends DataBinderMapper {
    private static final SparseIntArray INTERNAL_LAYOUT_ID_LOOKUP;
    private static final int LAYOUT_ACTIVITYAUTOMATICSOS = 1;
    private static final int LAYOUT_ACTIVITYCAREONBOARDINGCONFIGURATION = 2;
    private static final int LAYOUT_ACTIVITYECODRIVINGHINT = 3;
    private static final int LAYOUT_ACTIVITYECODRIVINGTUTORIAL = 4;
    private static final int LAYOUT_ACTIVITYMAIN = 5;
    private static final int LAYOUT_ACTIVITYMECHANIC = 6;
    private static final int LAYOUT_ACTIVITYONBOARDING = 7;
    private static final int LAYOUT_ACTIVITYPERMISSION = 8;
    private static final int LAYOUT_ACTIVITYSECTIONS = 9;
    private static final int LAYOUT_ACTIVITYUPDATECONFIGURATION = 10;
    private static final int LAYOUT_ACTIVITYVEHICLEDATACONFIRMATION = 11;
    private static final int LAYOUT_ACTIVITYVEHICLEFINDER = 12;
    private static final int LAYOUT_ACTIVITYWALKTHROUGH = 13;
    private static final int LAYOUT_ALERTCENTRAL = 14;
    private static final int LAYOUT_ALERTDIALOGFIRMWAREVERSION = 15;
    private static final int LAYOUT_CAREDONGLEITEM = 16;
    private static final int LAYOUT_CONTACTSGRID = 17;
    private static final int LAYOUT_DASHBOARDCARDDIAGNOSIS = 18;
    private static final int LAYOUT_DASHBOARDCARDECODRIVING = 19;
    private static final int LAYOUT_DASHBOARDCARDFINDVEHICLE = 20;
    private static final int LAYOUT_DASHBOARDCARDPARAMETERS = 21;
    private static final int LAYOUT_DASHBOARDCARDSCHEDULE = 22;
    private static final int LAYOUT_DIAGNOSISDATAPARAMETERSLAYOUTV2 = 23;
    private static final int LAYOUT_DIAGNOSISDATAPARAMETERSLINECHART = 24;
    private static final int LAYOUT_DIAGNOSISDATAPARAMETERSPIECHART = 25;
    private static final int LAYOUT_DIALOGACTIVATIONSERVICEDELETECONTACT = 26;
    private static final int LAYOUT_DIALOGACTIVATIONSERVICESELECTCONTACTNUMBER = 27;
    private static final int LAYOUT_DIALOGACTIVATIONSERVICEVEHICLE = 28;
    private static final int LAYOUT_DIALOGADVANCEDDIAGNOSIS = 29;
    private static final int LAYOUT_DIALOGCHECKFIRMWARESOS = 30;
    private static final int LAYOUT_DIALOGCHOOSECHART = 31;
    private static final int LAYOUT_DIALOGONBOARDINGERROR = 32;
    private static final int LAYOUT_DIALOGPLATEVALIDATION = 33;
    private static final int LAYOUT_DIALOGUPDATEFIRMWARE = 34;
    private static final int LAYOUT_DIALOGVEHICLEALREADYCONFIGURED = 35;
    private static final int LAYOUT_EDITABLEDATELAYOUT = 36;
    private static final int LAYOUT_ERRORDTCHEADERITEM = 37;
    private static final int LAYOUT_ERRORDTCITEM = 38;
    private static final int LAYOUT_FRAGMENTDASHBOARDV2 = 39;
    private static final int LAYOUT_FRAGMENTDASHBOARDVEHICLE = 40;
    private static final int LAYOUT_NAVIGATIONDRAWERFRAGMENT = 41;
    private static final int LAYOUT_PERMISSIONLOCATIONSTEP = 42;
    private static final int LAYOUT_SCHEDULEHEADERLISTITEM = 43;
    private static final int LAYOUT_SCHEDULELISTITEM2 = 44;
    private static final int LAYOUT_SCREENACTIVATIONLIGHTSERVICE = 45;
    private static final int LAYOUT_SCREENACTIVATIONPLUSSERVICE = 46;
    private static final int LAYOUT_SCREENACTIVATIONSERVICECOMPLETED = 47;
    private static final int LAYOUT_SCREENACTIVATIONSERVICECONTACT = 48;
    private static final int LAYOUT_SCREENACTIVATIONTRIALSERVICE = 49;
    private static final int LAYOUT_SCREENALERTDIALOG = 50;
    private static final int LAYOUT_SCREENBACKGROUNDLOCATIONPERMISSION = 51;
    private static final int LAYOUT_SCREENBASEVEHICLEDATA = 52;
    private static final int LAYOUT_SCREENCALIBRATION = 53;
    private static final int LAYOUT_SCREENCARESITE = 54;
    private static final int LAYOUT_SCREENCAREVALIDATOR = 55;
    private static final int LAYOUT_SCREENCOMPANYINFO = 56;
    private static final int LAYOUT_SCREENDIAGNOSIS = 57;
    private static final int LAYOUT_SCREENDIAGNOSISDATA = 58;
    private static final int LAYOUT_SCREENDIALOGCOUNTRY = 59;
    private static final int LAYOUT_SCREENDIALOGCOUNTRYITEM = 60;
    private static final int LAYOUT_SCREENDIALOGFWUPDATE = 61;
    private static final int LAYOUT_SCREENDIALOGNEWCONFIGURATIONREQUEST = 62;
    private static final int LAYOUT_SCREENDIALOGVEHICLE = 63;
    private static final int LAYOUT_SCREENDIALOGVEHICLEHEADER = 64;
    private static final int LAYOUT_SCREENDIALOGVEHICLEITEM = 65;
    private static final int LAYOUT_SCREENDONGLEDISCOVERY = 66;
    private static final int LAYOUT_SCREENDRAWOVERLAYPERMISSION = 67;
    private static final int LAYOUT_SCREENECODRIVING = 68;
    private static final int LAYOUT_SCREENECODRIVINGDAY = 69;
    private static final int LAYOUT_SCREENECODRIVINGDIALOGHIDETRIP = 70;
    private static final int LAYOUT_SCREENECODRIVINGHINT = 71;
    private static final int LAYOUT_SCREENECODRIVINGTRIPDETAIL = 72;
    private static final int LAYOUT_SCREENECODRIVINGTRIPEVENTITEM = 73;
    private static final int LAYOUT_SCREENECODRIVINGTRIPITEM = 74;
    private static final int LAYOUT_SCREENECODRIVINGTRIPMAP = 75;
    private static final int LAYOUT_SCREENECODRIVINGTUTORIAL = 76;
    private static final int LAYOUT_SCREENEMAILADDRESS = 77;
    private static final int LAYOUT_SCREENGENERALSETTINGSPREFERENCES = 78;
    private static final int LAYOUT_SCREENINSERTNEWTHRESHOLD = 79;
    private static final int LAYOUT_SCREENNUMBERVALIDATOR = 80;
    private static final int LAYOUT_SCREENNUMBERVALIDATORFINALSTEP = 81;
    private static final int LAYOUT_SCREENPASSWORDCREATION = 82;
    private static final int LAYOUT_SCREENPERMISSION = 83;
    private static final int LAYOUT_SCREENPERSONALDATA = 84;
    private static final int LAYOUT_SCREENPROBLEMRESOLUTION = 85;
    private static final int LAYOUT_SCREENRECOVERPASSWORD = 86;
    private static final int LAYOUT_SCREENRESETEXPIRESCHEDULE = 87;
    private static final int LAYOUT_SCREENSCHEDULEGRID = 88;
    private static final int LAYOUT_SCREENSELECTNEWSCHEDULE = 89;
    private static final int LAYOUT_SCREENSELLERMAP = 90;
    private static final int LAYOUT_SCREENSERVICESSUBSCRIPTIONMANAGER = 91;
    private static final int LAYOUT_SCREENSETDEFAULTDATATHRESHOLD = 92;
    private static final int LAYOUT_SCREENSETDEFAULTODOMETERTHRESHOLD = 93;
    private static final int LAYOUT_SCREENSETINSURANCECOMPANY = 94;
    private static final int LAYOUT_SCREENSETINSURANCEDATATHRESHOLD = 95;
    private static final int LAYOUT_SCREENSETTINGSLAYOUT = 97;
    private static final int LAYOUT_SCREENSETTINGSSERVICES = 98;
    private static final int LAYOUT_SCREENSETTINGSUSER = 99;
    private static final int LAYOUT_SCREENSETTINGSUSERADDRESS = 100;
    private static final int LAYOUT_SCREENSETTYRESODOMETERTHRESHOLD = 96;
    private static final int LAYOUT_SCREENSIGNINLAYOUT = 101;
    private static final int LAYOUT_SCREENSOSPREREQUISITE = 102;
    private static final int LAYOUT_SCREENSTARTENGINE = 103;
    private static final int LAYOUT_SCREENTERMOFCONDITIONSSERVICES = 104;
    private static final int LAYOUT_SCREENTYRESINVERSION = 105;
    private static final int LAYOUT_SCREENTYRESNEWINSTALL = 106;
    private static final int LAYOUT_SCREENTYRESOPTIONS = 107;
    private static final int LAYOUT_SCREENVEHICLESETTINGS = 108;
    private static final int LAYOUT_SCREENWALKTHROUGH = 109;
    private static final int LAYOUT_SETTINGSCARESCREEN = 110;
    private static final int LAYOUT_SETTINGSHEADERITEM = 111;
    private static final int LAYOUT_SETTINGSLISTITEM = 112;
    private static final int LAYOUT_SETTINGSMYVEHICLESLIST = 113;
    private static final int LAYOUT_SETTINGSSERVICESLISTITEM = 114;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray(114);
        INTERNAL_LAYOUT_ID_LOOKUP = sparseIntArray;
        sparseIntArray.put(com.texa.care.R.layout.activity_automatic_sos, 1);
        sparseIntArray.put(com.texa.care.R.layout.activity_care_onboarding_configuration, 2);
        sparseIntArray.put(com.texa.care.R.layout.activity_eco_driving_hint, 3);
        sparseIntArray.put(com.texa.care.R.layout.activity_eco_driving_tutorial, 4);
        sparseIntArray.put(com.texa.care.R.layout.activity_main, 5);
        sparseIntArray.put(com.texa.care.R.layout.activity_mechanic, 6);
        sparseIntArray.put(com.texa.care.R.layout.activity_on_boarding, 7);
        sparseIntArray.put(com.texa.care.R.layout.activity_permission, 8);
        sparseIntArray.put(com.texa.care.R.layout.activity_sections, 9);
        sparseIntArray.put(com.texa.care.R.layout.activity_update_configuration, 10);
        sparseIntArray.put(com.texa.care.R.layout.activity_vehicle_data_confirmation, 11);
        sparseIntArray.put(com.texa.care.R.layout.activity_vehicle_finder, 12);
        sparseIntArray.put(com.texa.care.R.layout.activity_walkthrough, 13);
        sparseIntArray.put(com.texa.care.R.layout.alert_central, 14);
        sparseIntArray.put(com.texa.care.R.layout.alert_dialog_firmware_version, 15);
        sparseIntArray.put(com.texa.care.R.layout.care_dongle_item, 16);
        sparseIntArray.put(com.texa.care.R.layout.contacts_grid, 17);
        sparseIntArray.put(com.texa.care.R.layout.dashboard_card_diagnosis, 18);
        sparseIntArray.put(com.texa.care.R.layout.dashboard_card_eco_driving, 19);
        sparseIntArray.put(com.texa.care.R.layout.dashboard_card_find_vehicle, 20);
        sparseIntArray.put(com.texa.care.R.layout.dashboard_card_parameters, 21);
        sparseIntArray.put(com.texa.care.R.layout.dashboard_card_schedule, 22);
        sparseIntArray.put(com.texa.care.R.layout.diagnosis_data_parameters_layout_v2, 23);
        sparseIntArray.put(com.texa.care.R.layout.diagnosis_data_parameters_line_chart, 24);
        sparseIntArray.put(com.texa.care.R.layout.diagnosis_data_parameters_pie_chart, 25);
        sparseIntArray.put(com.texa.care.R.layout.dialog_activation_service_delete_contact, 26);
        sparseIntArray.put(com.texa.care.R.layout.dialog_activation_service_select_contact_number, 27);
        sparseIntArray.put(com.texa.care.R.layout.dialog_activation_service_vehicle, 28);
        sparseIntArray.put(com.texa.care.R.layout.dialog_advanced_diagnosis, 29);
        sparseIntArray.put(com.texa.care.R.layout.dialog_check_firmware_sos, 30);
        sparseIntArray.put(com.texa.care.R.layout.dialog_choose_chart, 31);
        sparseIntArray.put(com.texa.care.R.layout.dialog_onboarding_error, 32);
        sparseIntArray.put(com.texa.care.R.layout.dialog_plate_validation, 33);
        sparseIntArray.put(com.texa.care.R.layout.dialog_update_firmware, 34);
        sparseIntArray.put(com.texa.care.R.layout.dialog_vehicle_already_configured, 35);
        sparseIntArray.put(com.texa.care.R.layout.editabledate_layout, 36);
        sparseIntArray.put(com.texa.care.R.layout.error_dtc_header_item, 37);
        sparseIntArray.put(com.texa.care.R.layout.error_dtc_item, 38);
        sparseIntArray.put(com.texa.care.R.layout.fragment_dashboard_v2, 39);
        sparseIntArray.put(com.texa.care.R.layout.fragment_dashboard_vehicle, 40);
        sparseIntArray.put(com.texa.care.R.layout.navigation_drawer_fragment, 41);
        sparseIntArray.put(com.texa.care.R.layout.permission_location_step, 42);
        sparseIntArray.put(com.texa.care.R.layout.schedule_header_list_item, 43);
        sparseIntArray.put(com.texa.care.R.layout.schedule_list_item2, 44);
        sparseIntArray.put(com.texa.care.R.layout.screen_activation_light_service, 45);
        sparseIntArray.put(com.texa.care.R.layout.screen_activation_plus_service, 46);
        sparseIntArray.put(com.texa.care.R.layout.screen_activation_service_completed, 47);
        sparseIntArray.put(com.texa.care.R.layout.screen_activation_service_contact, 48);
        sparseIntArray.put(com.texa.care.R.layout.screen_activation_trial_service, 49);
        sparseIntArray.put(com.texa.care.R.layout.screen_alert_dialog, 50);
        sparseIntArray.put(com.texa.care.R.layout.screen_background_location_permission, 51);
        sparseIntArray.put(com.texa.care.R.layout.screen_base_vehicle_data, 52);
        sparseIntArray.put(com.texa.care.R.layout.screen_calibration, 53);
        sparseIntArray.put(com.texa.care.R.layout.screen_care_site, 54);
        sparseIntArray.put(com.texa.care.R.layout.screen_care_validator, 55);
        sparseIntArray.put(com.texa.care.R.layout.screen_company_info, 56);
        sparseIntArray.put(com.texa.care.R.layout.screen_diagnosis, 57);
        sparseIntArray.put(com.texa.care.R.layout.screen_diagnosis_data, 58);
        sparseIntArray.put(com.texa.care.R.layout.screen_dialog_country, 59);
        sparseIntArray.put(com.texa.care.R.layout.screen_dialog_country_item, 60);
        sparseIntArray.put(com.texa.care.R.layout.screen_dialog_fw_update, 61);
        sparseIntArray.put(com.texa.care.R.layout.screen_dialog_new_configuration_request, 62);
        sparseIntArray.put(com.texa.care.R.layout.screen_dialog_vehicle, 63);
        sparseIntArray.put(com.texa.care.R.layout.screen_dialog_vehicle_header, 64);
        sparseIntArray.put(com.texa.care.R.layout.screen_dialog_vehicle_item, 65);
        sparseIntArray.put(com.texa.care.R.layout.screen_dongle_discovery, 66);
        sparseIntArray.put(com.texa.care.R.layout.screen_draw_overlay_permission, 67);
        sparseIntArray.put(com.texa.care.R.layout.screen_eco_driving, 68);
        sparseIntArray.put(com.texa.care.R.layout.screen_eco_driving_day, 69);
        sparseIntArray.put(com.texa.care.R.layout.screen_eco_driving_dialog_hide_trip, 70);
        sparseIntArray.put(com.texa.care.R.layout.screen_eco_driving_hint, 71);
        sparseIntArray.put(com.texa.care.R.layout.screen_eco_driving_trip_detail, 72);
        sparseIntArray.put(com.texa.care.R.layout.screen_eco_driving_trip_event_item, 73);
        sparseIntArray.put(com.texa.care.R.layout.screen_eco_driving_trip_item, 74);
        sparseIntArray.put(com.texa.care.R.layout.screen_eco_driving_trip_map, 75);
        sparseIntArray.put(com.texa.care.R.layout.screen_eco_driving_tutorial, 76);
        sparseIntArray.put(com.texa.care.R.layout.screen_email_address, 77);
        sparseIntArray.put(com.texa.care.R.layout.screen_general_settings_preferences, 78);
        sparseIntArray.put(com.texa.care.R.layout.screen_insert_new_threshold, 79);
        sparseIntArray.put(com.texa.care.R.layout.screen_number_validator, 80);
        sparseIntArray.put(com.texa.care.R.layout.screen_number_validator_final_step, 81);
        sparseIntArray.put(com.texa.care.R.layout.screen_password_creation, 82);
        sparseIntArray.put(com.texa.care.R.layout.screen_permission, 83);
        sparseIntArray.put(com.texa.care.R.layout.screen_personal_data, 84);
        sparseIntArray.put(com.texa.care.R.layout.screen_problem_resolution, 85);
        sparseIntArray.put(com.texa.care.R.layout.screen_recover_password, 86);
        sparseIntArray.put(com.texa.care.R.layout.screen_reset_expire_schedule, 87);
        sparseIntArray.put(com.texa.care.R.layout.screen_schedule_grid, 88);
        sparseIntArray.put(com.texa.care.R.layout.screen_select_new_schedule, 89);
        sparseIntArray.put(com.texa.care.R.layout.screen_seller_map, 90);
        sparseIntArray.put(com.texa.care.R.layout.screen_services_subscription_manager, 91);
        sparseIntArray.put(com.texa.care.R.layout.screen_set_default_data_threshold, 92);
        sparseIntArray.put(com.texa.care.R.layout.screen_set_default_odometer_threshold, 93);
        sparseIntArray.put(com.texa.care.R.layout.screen_set_insurance_company, 94);
        sparseIntArray.put(com.texa.care.R.layout.screen_set_insurance_data_threshold, 95);
        sparseIntArray.put(com.texa.care.R.layout.screen_set_tyres_odometer_threshold, 96);
        sparseIntArray.put(com.texa.care.R.layout.screen_settings_layout, 97);
        sparseIntArray.put(com.texa.care.R.layout.screen_settings_services, 98);
        sparseIntArray.put(com.texa.care.R.layout.screen_settings_user, 99);
        sparseIntArray.put(com.texa.care.R.layout.screen_settings_user_address, 100);
        sparseIntArray.put(com.texa.care.R.layout.screen_signin_layout, 101);
        sparseIntArray.put(com.texa.care.R.layout.screen_sos_prerequisite, 102);
        sparseIntArray.put(com.texa.care.R.layout.screen_start_engine, 103);
        sparseIntArray.put(com.texa.care.R.layout.screen_term_of_conditions_services, 104);
        sparseIntArray.put(com.texa.care.R.layout.screen_tyres_inversion, 105);
        sparseIntArray.put(com.texa.care.R.layout.screen_tyres_new_install, 106);
        sparseIntArray.put(com.texa.care.R.layout.screen_tyres_options, 107);
        sparseIntArray.put(com.texa.care.R.layout.screen_vehicle_settings, 108);
        sparseIntArray.put(com.texa.care.R.layout.screen_walkthrough, 109);
        sparseIntArray.put(com.texa.care.R.layout.settings_care_screen, 110);
        sparseIntArray.put(com.texa.care.R.layout.settings_header_item, 111);
        sparseIntArray.put(com.texa.care.R.layout.settings_list_item, 112);
        sparseIntArray.put(com.texa.care.R.layout.settings_my_vehicles_list, 113);
        sparseIntArray.put(com.texa.care.R.layout.settings_services_list_item, 114);
    }

    private final ViewDataBinding internalGetViewDataBinding0(DataBindingComponent dataBindingComponent, View view, int i, Object obj) {
        switch (i) {
            case 1:
                if ("layout/activity_automatic_sos_0".equals(obj)) {
                    return new ActivityAutomaticSosBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_automatic_sos is invalid. Received: " + obj);
            case 2:
                if ("layout/activity_care_onboarding_configuration_0".equals(obj)) {
                    return new ActivityCareOnboardingConfigurationBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_care_onboarding_configuration is invalid. Received: " + obj);
            case 3:
                if ("layout/activity_eco_driving_hint_0".equals(obj)) {
                    return new ActivityEcoDrivingHintBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_eco_driving_hint is invalid. Received: " + obj);
            case 4:
                if ("layout/activity_eco_driving_tutorial_0".equals(obj)) {
                    return new ActivityEcoDrivingTutorialBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_eco_driving_tutorial is invalid. Received: " + obj);
            case 5:
                if ("layout/activity_main_0".equals(obj)) {
                    return new ActivityMainBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_main is invalid. Received: " + obj);
            case 6:
                if ("layout/activity_mechanic_0".equals(obj)) {
                    return new ActivityMechanicBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_mechanic is invalid. Received: " + obj);
            case 7:
                if ("layout/activity_on_boarding_0".equals(obj)) {
                    return new ActivityOnBoardingBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_on_boarding is invalid. Received: " + obj);
            case 8:
                if ("layout/activity_permission_0".equals(obj)) {
                    return new ActivityPermissionBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_permission is invalid. Received: " + obj);
            case 9:
                if ("layout/activity_sections_0".equals(obj)) {
                    return new ActivitySectionsBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_sections is invalid. Received: " + obj);
            case 10:
                if ("layout/activity_update_configuration_0".equals(obj)) {
                    return new ActivityUpdateConfigurationBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_update_configuration is invalid. Received: " + obj);
            case 11:
                if ("layout/activity_vehicle_data_confirmation_0".equals(obj)) {
                    return new ActivityVehicleDataConfirmationBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_vehicle_data_confirmation is invalid. Received: " + obj);
            case 12:
                if ("layout/activity_vehicle_finder_0".equals(obj)) {
                    return new ActivityVehicleFinderBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_vehicle_finder is invalid. Received: " + obj);
            case 13:
                if ("layout/activity_walkthrough_0".equals(obj)) {
                    return new ActivityWalkthroughBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_walkthrough is invalid. Received: " + obj);
            case 14:
                if ("layout/alert_central_0".equals(obj)) {
                    return new AlertCentralBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for alert_central is invalid. Received: " + obj);
            case 15:
                if ("layout/alert_dialog_firmware_version_0".equals(obj)) {
                    return new AlertDialogFirmwareVersionBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for alert_dialog_firmware_version is invalid. Received: " + obj);
            case 16:
                if ("layout/care_dongle_item_0".equals(obj)) {
                    return new CareDongleItemBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for care_dongle_item is invalid. Received: " + obj);
            case 17:
                if ("layout/contacts_grid_0".equals(obj)) {
                    return new ContactsGridBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for contacts_grid is invalid. Received: " + obj);
            case 18:
                if ("layout/dashboard_card_diagnosis_0".equals(obj)) {
                    return new DashboardCardDiagnosisBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dashboard_card_diagnosis is invalid. Received: " + obj);
            case 19:
                if ("layout/dashboard_card_eco_driving_0".equals(obj)) {
                    return new DashboardCardEcoDrivingBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dashboard_card_eco_driving is invalid. Received: " + obj);
            case 20:
                if ("layout/dashboard_card_find_vehicle_0".equals(obj)) {
                    return new DashboardCardFindVehicleBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dashboard_card_find_vehicle is invalid. Received: " + obj);
            case 21:
                if ("layout/dashboard_card_parameters_0".equals(obj)) {
                    return new DashboardCardParametersBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dashboard_card_parameters is invalid. Received: " + obj);
            case 22:
                if ("layout/dashboard_card_schedule_0".equals(obj)) {
                    return new DashboardCardScheduleBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dashboard_card_schedule is invalid. Received: " + obj);
            case 23:
                if ("layout/diagnosis_data_parameters_layout_v2_0".equals(obj)) {
                    return new DiagnosisDataParametersLayoutV2BindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for diagnosis_data_parameters_layout_v2 is invalid. Received: " + obj);
            case 24:
                if ("layout/diagnosis_data_parameters_line_chart_0".equals(obj)) {
                    return new DiagnosisDataParametersLineChartBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for diagnosis_data_parameters_line_chart is invalid. Received: " + obj);
            case 25:
                if ("layout/diagnosis_data_parameters_pie_chart_0".equals(obj)) {
                    return new DiagnosisDataParametersPieChartBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for diagnosis_data_parameters_pie_chart is invalid. Received: " + obj);
            case 26:
                if ("layout/dialog_activation_service_delete_contact_0".equals(obj)) {
                    return new DialogActivationServiceDeleteContactBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_activation_service_delete_contact is invalid. Received: " + obj);
            case 27:
                if ("layout/dialog_activation_service_select_contact_number_0".equals(obj)) {
                    return new DialogActivationServiceSelectContactNumberBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_activation_service_select_contact_number is invalid. Received: " + obj);
            case 28:
                if ("layout/dialog_activation_service_vehicle_0".equals(obj)) {
                    return new DialogActivationServiceVehicleBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_activation_service_vehicle is invalid. Received: " + obj);
            case 29:
                if ("layout/dialog_advanced_diagnosis_0".equals(obj)) {
                    return new DialogAdvancedDiagnosisBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_advanced_diagnosis is invalid. Received: " + obj);
            case 30:
                if ("layout/dialog_check_firmware_sos_0".equals(obj)) {
                    return new DialogCheckFirmwareSosBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_check_firmware_sos is invalid. Received: " + obj);
            case 31:
                if ("layout/dialog_choose_chart_0".equals(obj)) {
                    return new DialogChooseChartBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_choose_chart is invalid. Received: " + obj);
            case 32:
                if ("layout/dialog_onboarding_error_0".equals(obj)) {
                    return new DialogOnboardingErrorBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_onboarding_error is invalid. Received: " + obj);
            case 33:
                if ("layout/dialog_plate_validation_0".equals(obj)) {
                    return new DialogPlateValidationBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_plate_validation is invalid. Received: " + obj);
            case 34:
                if ("layout/dialog_update_firmware_0".equals(obj)) {
                    return new DialogUpdateFirmwareBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_update_firmware is invalid. Received: " + obj);
            case 35:
                if ("layout/dialog_vehicle_already_configured_0".equals(obj)) {
                    return new DialogVehicleAlreadyConfiguredBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_vehicle_already_configured is invalid. Received: " + obj);
            case 36:
                if ("layout/editabledate_layout_0".equals(obj)) {
                    return new EditabledateLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for editabledate_layout is invalid. Received: " + obj);
            case 37:
                if ("layout/error_dtc_header_item_0".equals(obj)) {
                    return new ErrorDtcHeaderItemBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for error_dtc_header_item is invalid. Received: " + obj);
            case 38:
                if ("layout/error_dtc_item_0".equals(obj)) {
                    return new ErrorDtcItemBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for error_dtc_item is invalid. Received: " + obj);
            case 39:
                if ("layout/fragment_dashboard_v2_0".equals(obj)) {
                    return new FragmentDashboardV2BindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_dashboard_v2 is invalid. Received: " + obj);
            case 40:
                if ("layout/fragment_dashboard_vehicle_0".equals(obj)) {
                    return new FragmentDashboardVehicleBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_dashboard_vehicle is invalid. Received: " + obj);
            case 41:
                if ("layout/navigation_drawer_fragment_0".equals(obj)) {
                    return new NavigationDrawerFragmentBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for navigation_drawer_fragment is invalid. Received: " + obj);
            case 42:
                if ("layout/permission_location_step_0".equals(obj)) {
                    return new PermissionLocationStepBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for permission_location_step is invalid. Received: " + obj);
            case 43:
                if ("layout/schedule_header_list_item_0".equals(obj)) {
                    return new ScheduleHeaderListItemBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for schedule_header_list_item is invalid. Received: " + obj);
            case 44:
                if ("layout/schedule_list_item2_0".equals(obj)) {
                    return new ScheduleListItem2BindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for schedule_list_item2 is invalid. Received: " + obj);
            case 45:
                if ("layout/screen_activation_light_service_0".equals(obj)) {
                    return new ScreenActivationLightServiceBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_activation_light_service is invalid. Received: " + obj);
            case 46:
                if ("layout/screen_activation_plus_service_0".equals(obj)) {
                    return new ScreenActivationPlusServiceBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_activation_plus_service is invalid. Received: " + obj);
            case 47:
                if ("layout/screen_activation_service_completed_0".equals(obj)) {
                    return new ScreenActivationServiceCompletedBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_activation_service_completed is invalid. Received: " + obj);
            case 48:
                if ("layout/screen_activation_service_contact_0".equals(obj)) {
                    return new ScreenActivationServiceContactBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_activation_service_contact is invalid. Received: " + obj);
            case 49:
                if ("layout/screen_activation_trial_service_0".equals(obj)) {
                    return new ScreenActivationTrialServiceBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_activation_trial_service is invalid. Received: " + obj);
            case 50:
                if ("layout/screen_alert_dialog_0".equals(obj)) {
                    return new ScreenAlertDialogBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_alert_dialog is invalid. Received: " + obj);
            default:
                return null;
        }
    }

    private final ViewDataBinding internalGetViewDataBinding1(DataBindingComponent dataBindingComponent, View view, int i, Object obj) {
        switch (i) {
            case 51:
                if ("layout/screen_background_location_permission_0".equals(obj)) {
                    return new ScreenBackgroundLocationPermissionBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_background_location_permission is invalid. Received: " + obj);
            case 52:
                if ("layout/screen_base_vehicle_data_0".equals(obj)) {
                    return new ScreenBaseVehicleDataBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_base_vehicle_data is invalid. Received: " + obj);
            case 53:
                if ("layout/screen_calibration_0".equals(obj)) {
                    return new ScreenCalibrationBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_calibration is invalid. Received: " + obj);
            case 54:
                if ("layout/screen_care_site_0".equals(obj)) {
                    return new ScreenCareSiteBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_care_site is invalid. Received: " + obj);
            case 55:
                if ("layout/screen_care_validator_0".equals(obj)) {
                    return new ScreenCareValidatorBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_care_validator is invalid. Received: " + obj);
            case 56:
                if ("layout/screen_company_info_0".equals(obj)) {
                    return new ScreenCompanyInfoBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_company_info is invalid. Received: " + obj);
            case 57:
                if ("layout/screen_diagnosis_0".equals(obj)) {
                    return new ScreenDiagnosisBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_diagnosis is invalid. Received: " + obj);
            case 58:
                if ("layout/screen_diagnosis_data_0".equals(obj)) {
                    return new ScreenDiagnosisDataBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_diagnosis_data is invalid. Received: " + obj);
            case 59:
                if ("layout/screen_dialog_country_0".equals(obj)) {
                    return new ScreenDialogCountryBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_dialog_country is invalid. Received: " + obj);
            case 60:
                if ("layout/screen_dialog_country_item_0".equals(obj)) {
                    return new ScreenDialogCountryItemBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_dialog_country_item is invalid. Received: " + obj);
            case 61:
                if ("layout/screen_dialog_fw_update_0".equals(obj)) {
                    return new ScreenDialogFwUpdateBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_dialog_fw_update is invalid. Received: " + obj);
            case 62:
                if ("layout/screen_dialog_new_configuration_request_0".equals(obj)) {
                    return new ScreenDialogNewConfigurationRequestBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_dialog_new_configuration_request is invalid. Received: " + obj);
            case 63:
                if ("layout/screen_dialog_vehicle_0".equals(obj)) {
                    return new ScreenDialogVehicleBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_dialog_vehicle is invalid. Received: " + obj);
            case 64:
                if ("layout/screen_dialog_vehicle_header_0".equals(obj)) {
                    return new ScreenDialogVehicleHeaderBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_dialog_vehicle_header is invalid. Received: " + obj);
            case 65:
                if ("layout/screen_dialog_vehicle_item_0".equals(obj)) {
                    return new ScreenDialogVehicleItemBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_dialog_vehicle_item is invalid. Received: " + obj);
            case 66:
                if ("layout/screen_dongle_discovery_0".equals(obj)) {
                    return new ScreenDongleDiscoveryBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_dongle_discovery is invalid. Received: " + obj);
            case 67:
                if ("layout/screen_draw_overlay_permission_0".equals(obj)) {
                    return new ScreenDrawOverlayPermissionBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_draw_overlay_permission is invalid. Received: " + obj);
            case 68:
                if ("layout/screen_eco_driving_0".equals(obj)) {
                    return new ScreenEcoDrivingBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_eco_driving is invalid. Received: " + obj);
            case 69:
                if ("layout/screen_eco_driving_day_0".equals(obj)) {
                    return new ScreenEcoDrivingDayBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_eco_driving_day is invalid. Received: " + obj);
            case 70:
                if ("layout/screen_eco_driving_dialog_hide_trip_0".equals(obj)) {
                    return new ScreenEcoDrivingDialogHideTripBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_eco_driving_dialog_hide_trip is invalid. Received: " + obj);
            case 71:
                if ("layout/screen_eco_driving_hint_0".equals(obj)) {
                    return new ScreenEcoDrivingHintBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_eco_driving_hint is invalid. Received: " + obj);
            case 72:
                if ("layout/screen_eco_driving_trip_detail_0".equals(obj)) {
                    return new ScreenEcoDrivingTripDetailBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_eco_driving_trip_detail is invalid. Received: " + obj);
            case 73:
                if ("layout/screen_eco_driving_trip_event_item_0".equals(obj)) {
                    return new ScreenEcoDrivingTripEventItemBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_eco_driving_trip_event_item is invalid. Received: " + obj);
            case 74:
                if ("layout/screen_eco_driving_trip_item_0".equals(obj)) {
                    return new ScreenEcoDrivingTripItemBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_eco_driving_trip_item is invalid. Received: " + obj);
            case 75:
                if ("layout/screen_eco_driving_trip_map_0".equals(obj)) {
                    return new ScreenEcoDrivingTripMapBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_eco_driving_trip_map is invalid. Received: " + obj);
            case 76:
                if ("layout/screen_eco_driving_tutorial_0".equals(obj)) {
                    return new ScreenEcoDrivingTutorialBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_eco_driving_tutorial is invalid. Received: " + obj);
            case 77:
                if ("layout/screen_email_address_0".equals(obj)) {
                    return new ScreenEmailAddressBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_email_address is invalid. Received: " + obj);
            case 78:
                if ("layout/screen_general_settings_preferences_0".equals(obj)) {
                    return new ScreenGeneralSettingsPreferencesBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_general_settings_preferences is invalid. Received: " + obj);
            case 79:
                if ("layout/screen_insert_new_threshold_0".equals(obj)) {
                    return new ScreenInsertNewThresholdBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_insert_new_threshold is invalid. Received: " + obj);
            case 80:
                if ("layout/screen_number_validator_0".equals(obj)) {
                    return new ScreenNumberValidatorBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_number_validator is invalid. Received: " + obj);
            case 81:
                if ("layout/screen_number_validator_final_step_0".equals(obj)) {
                    return new ScreenNumberValidatorFinalStepBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_number_validator_final_step is invalid. Received: " + obj);
            case 82:
                if ("layout/screen_password_creation_0".equals(obj)) {
                    return new ScreenPasswordCreationBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_password_creation is invalid. Received: " + obj);
            case 83:
                if ("layout/screen_permission_0".equals(obj)) {
                    return new ScreenPermissionBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_permission is invalid. Received: " + obj);
            case 84:
                if ("layout/screen_personal_data_0".equals(obj)) {
                    return new ScreenPersonalDataBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_personal_data is invalid. Received: " + obj);
            case 85:
                if ("layout/screen_problem_resolution_0".equals(obj)) {
                    return new ScreenProblemResolutionBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_problem_resolution is invalid. Received: " + obj);
            case 86:
                if ("layout/screen_recover_password_0".equals(obj)) {
                    return new ScreenRecoverPasswordBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_recover_password is invalid. Received: " + obj);
            case 87:
                if ("layout/screen_reset_expire_schedule_0".equals(obj)) {
                    return new ScreenResetExpireScheduleBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_reset_expire_schedule is invalid. Received: " + obj);
            case 88:
                if ("layout/screen_schedule_grid_0".equals(obj)) {
                    return new ScreenScheduleGridBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_schedule_grid is invalid. Received: " + obj);
            case 89:
                if ("layout/screen_select_new_schedule_0".equals(obj)) {
                    return new ScreenSelectNewScheduleBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_select_new_schedule is invalid. Received: " + obj);
            case 90:
                if ("layout/screen_seller_map_0".equals(obj)) {
                    return new ScreenSellerMapBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_seller_map is invalid. Received: " + obj);
            case 91:
                if ("layout/screen_services_subscription_manager_0".equals(obj)) {
                    return new ScreenServicesSubscriptionManagerBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_services_subscription_manager is invalid. Received: " + obj);
            case 92:
                if ("layout/screen_set_default_data_threshold_0".equals(obj)) {
                    return new ScreenSetDefaultDataThresholdBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_set_default_data_threshold is invalid. Received: " + obj);
            case 93:
                if ("layout/screen_set_default_odometer_threshold_0".equals(obj)) {
                    return new ScreenSetDefaultOdometerThresholdBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_set_default_odometer_threshold is invalid. Received: " + obj);
            case 94:
                if ("layout/screen_set_insurance_company_0".equals(obj)) {
                    return new ScreenSetInsuranceCompanyBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_set_insurance_company is invalid. Received: " + obj);
            case 95:
                if ("layout/screen_set_insurance_data_threshold_0".equals(obj)) {
                    return new ScreenSetInsuranceDataThresholdBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_set_insurance_data_threshold is invalid. Received: " + obj);
            case 96:
                if ("layout/screen_set_tyres_odometer_threshold_0".equals(obj)) {
                    return new ScreenSetTyresOdometerThresholdBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_set_tyres_odometer_threshold is invalid. Received: " + obj);
            case 97:
                if ("layout/screen_settings_layout_0".equals(obj)) {
                    return new ScreenSettingsLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_settings_layout is invalid. Received: " + obj);
            case 98:
                if ("layout/screen_settings_services_0".equals(obj)) {
                    return new ScreenSettingsServicesBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_settings_services is invalid. Received: " + obj);
            case 99:
                if ("layout/screen_settings_user_0".equals(obj)) {
                    return new ScreenSettingsUserBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_settings_user is invalid. Received: " + obj);
            case 100:
                if ("layout/screen_settings_user_address_0".equals(obj)) {
                    return new ScreenSettingsUserAddressBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_settings_user_address is invalid. Received: " + obj);
            default:
                return null;
        }
    }

    private final ViewDataBinding internalGetViewDataBinding2(DataBindingComponent dataBindingComponent, View view, int i, Object obj) {
        switch (i) {
            case 101:
                if ("layout/screen_signin_layout_0".equals(obj)) {
                    return new ScreenSigninLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_signin_layout is invalid. Received: " + obj);
            case 102:
                if ("layout/screen_sos_prerequisite_0".equals(obj)) {
                    return new ScreenSosPrerequisiteBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_sos_prerequisite is invalid. Received: " + obj);
            case 103:
                if ("layout/screen_start_engine_0".equals(obj)) {
                    return new ScreenStartEngineBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_start_engine is invalid. Received: " + obj);
            case 104:
                if ("layout/screen_term_of_conditions_services_0".equals(obj)) {
                    return new ScreenTermOfConditionsServicesBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_term_of_conditions_services is invalid. Received: " + obj);
            case 105:
                if ("layout/screen_tyres_inversion_0".equals(obj)) {
                    return new ScreenTyresInversionBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_tyres_inversion is invalid. Received: " + obj);
            case 106:
                if ("layout/screen_tyres_new_install_0".equals(obj)) {
                    return new ScreenTyresNewInstallBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_tyres_new_install is invalid. Received: " + obj);
            case 107:
                if ("layout/screen_tyres_options_0".equals(obj)) {
                    return new ScreenTyresOptionsBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_tyres_options is invalid. Received: " + obj);
            case 108:
                if ("layout/screen_vehicle_settings_0".equals(obj)) {
                    return new ScreenVehicleSettingsBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_vehicle_settings is invalid. Received: " + obj);
            case 109:
                if ("layout/screen_walkthrough_0".equals(obj)) {
                    return new ScreenWalkthroughBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for screen_walkthrough is invalid. Received: " + obj);
            case 110:
                if ("layout/settings_care_screen_0".equals(obj)) {
                    return new SettingsCareScreenBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for settings_care_screen is invalid. Received: " + obj);
            case 111:
                if ("layout/settings_header_item_0".equals(obj)) {
                    return new SettingsHeaderItemBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for settings_header_item is invalid. Received: " + obj);
            case 112:
                if ("layout/settings_list_item_0".equals(obj)) {
                    return new SettingsListItemBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for settings_list_item is invalid. Received: " + obj);
            case 113:
                if ("layout/settings_my_vehicles_list_0".equals(obj)) {
                    return new SettingsMyVehiclesListBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for settings_my_vehicles_list is invalid. Received: " + obj);
            case 114:
                if ("layout/settings_services_list_item_0".equals(obj)) {
                    return new SettingsServicesListItemBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for settings_services_list_item is invalid. Received: " + obj);
            default:
                return null;
        }
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View view, int i) {
        int i2 = INTERNAL_LAYOUT_ID_LOOKUP.get(i);
        if (i2 <= 0) {
            return null;
        }
        Object tag = view.getTag();
        if (tag == null) {
            throw new RuntimeException("view must have a tag");
        }
        int i3 = (i2 - 1) / 50;
        if (i3 == 0) {
            return internalGetViewDataBinding0(dataBindingComponent, view, i2, tag);
        }
        if (i3 == 1) {
            return internalGetViewDataBinding1(dataBindingComponent, view, i2, tag);
        }
        if (i3 != 2) {
            return null;
        }
        return internalGetViewDataBinding2(dataBindingComponent, view, i2, tag);
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View[] viewArr, int i) {
        if (viewArr == null || viewArr.length == 0 || INTERNAL_LAYOUT_ID_LOOKUP.get(i) <= 0 || viewArr[0].getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override // androidx.databinding.DataBinderMapper
    public int getLayoutId(String str) {
        Integer num;
        if (str == null || (num = InnerLayoutIdLookup.sKeys.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }

    @Override // androidx.databinding.DataBinderMapper
    public String convertBrIdToString(int i) {
        return InnerBrLookup.sKeys.get(i);
    }

    @Override // androidx.databinding.DataBinderMapper
    public List<DataBinderMapper> collectDependencies() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new androidx.databinding.library.baseAdapters.DataBinderMapperImpl());
        return arrayList;
    }

    private static class InnerBrLookup {
        static final SparseArray<String> sKeys;

        private InnerBrLookup() {
        }

        static {
            SparseArray<String> sparseArray = new SparseArray<>(7);
            sKeys = sparseArray;
            sparseArray.put(0, "_all");
            sparseArray.put(1, "adapter");
            sparseArray.put(2, "diagnosis");
            sparseArray.put(3, "settingsAdapter");
            sparseArray.put(4, "stepDescription");
            sparseArray.put(5, "stepImage");
            sparseArray.put(6, "stepIndex");
        }
    }

    private static class InnerLayoutIdLookup {
        static final HashMap<String, Integer> sKeys;

        private InnerLayoutIdLookup() {
        }

        static {
            HashMap<String, Integer> map = new HashMap<>(114);
            sKeys = map;
            map.put("layout/activity_automatic_sos_0", Integer.valueOf(com.texa.care.R.layout.activity_automatic_sos));
            map.put("layout/activity_care_onboarding_configuration_0", Integer.valueOf(com.texa.care.R.layout.activity_care_onboarding_configuration));
            map.put("layout/activity_eco_driving_hint_0", Integer.valueOf(com.texa.care.R.layout.activity_eco_driving_hint));
            map.put("layout/activity_eco_driving_tutorial_0", Integer.valueOf(com.texa.care.R.layout.activity_eco_driving_tutorial));
            map.put("layout/activity_main_0", Integer.valueOf(com.texa.care.R.layout.activity_main));
            map.put("layout/activity_mechanic_0", Integer.valueOf(com.texa.care.R.layout.activity_mechanic));
            map.put("layout/activity_on_boarding_0", Integer.valueOf(com.texa.care.R.layout.activity_on_boarding));
            map.put("layout/activity_permission_0", Integer.valueOf(com.texa.care.R.layout.activity_permission));
            map.put("layout/activity_sections_0", Integer.valueOf(com.texa.care.R.layout.activity_sections));
            map.put("layout/activity_update_configuration_0", Integer.valueOf(com.texa.care.R.layout.activity_update_configuration));
            map.put("layout/activity_vehicle_data_confirmation_0", Integer.valueOf(com.texa.care.R.layout.activity_vehicle_data_confirmation));
            map.put("layout/activity_vehicle_finder_0", Integer.valueOf(com.texa.care.R.layout.activity_vehicle_finder));
            map.put("layout/activity_walkthrough_0", Integer.valueOf(com.texa.care.R.layout.activity_walkthrough));
            map.put("layout/alert_central_0", Integer.valueOf(com.texa.care.R.layout.alert_central));
            map.put("layout/alert_dialog_firmware_version_0", Integer.valueOf(com.texa.care.R.layout.alert_dialog_firmware_version));
            map.put("layout/care_dongle_item_0", Integer.valueOf(com.texa.care.R.layout.care_dongle_item));
            map.put("layout/contacts_grid_0", Integer.valueOf(com.texa.care.R.layout.contacts_grid));
            map.put("layout/dashboard_card_diagnosis_0", Integer.valueOf(com.texa.care.R.layout.dashboard_card_diagnosis));
            map.put("layout/dashboard_card_eco_driving_0", Integer.valueOf(com.texa.care.R.layout.dashboard_card_eco_driving));
            map.put("layout/dashboard_card_find_vehicle_0", Integer.valueOf(com.texa.care.R.layout.dashboard_card_find_vehicle));
            map.put("layout/dashboard_card_parameters_0", Integer.valueOf(com.texa.care.R.layout.dashboard_card_parameters));
            map.put("layout/dashboard_card_schedule_0", Integer.valueOf(com.texa.care.R.layout.dashboard_card_schedule));
            map.put("layout/diagnosis_data_parameters_layout_v2_0", Integer.valueOf(com.texa.care.R.layout.diagnosis_data_parameters_layout_v2));
            map.put("layout/diagnosis_data_parameters_line_chart_0", Integer.valueOf(com.texa.care.R.layout.diagnosis_data_parameters_line_chart));
            map.put("layout/diagnosis_data_parameters_pie_chart_0", Integer.valueOf(com.texa.care.R.layout.diagnosis_data_parameters_pie_chart));
            map.put("layout/dialog_activation_service_delete_contact_0", Integer.valueOf(com.texa.care.R.layout.dialog_activation_service_delete_contact));
            map.put("layout/dialog_activation_service_select_contact_number_0", Integer.valueOf(com.texa.care.R.layout.dialog_activation_service_select_contact_number));
            map.put("layout/dialog_activation_service_vehicle_0", Integer.valueOf(com.texa.care.R.layout.dialog_activation_service_vehicle));
            map.put("layout/dialog_advanced_diagnosis_0", Integer.valueOf(com.texa.care.R.layout.dialog_advanced_diagnosis));
            map.put("layout/dialog_check_firmware_sos_0", Integer.valueOf(com.texa.care.R.layout.dialog_check_firmware_sos));
            map.put("layout/dialog_choose_chart_0", Integer.valueOf(com.texa.care.R.layout.dialog_choose_chart));
            map.put("layout/dialog_onboarding_error_0", Integer.valueOf(com.texa.care.R.layout.dialog_onboarding_error));
            map.put("layout/dialog_plate_validation_0", Integer.valueOf(com.texa.care.R.layout.dialog_plate_validation));
            map.put("layout/dialog_update_firmware_0", Integer.valueOf(com.texa.care.R.layout.dialog_update_firmware));
            map.put("layout/dialog_vehicle_already_configured_0", Integer.valueOf(com.texa.care.R.layout.dialog_vehicle_already_configured));
            map.put("layout/editabledate_layout_0", Integer.valueOf(com.texa.care.R.layout.editabledate_layout));
            map.put("layout/error_dtc_header_item_0", Integer.valueOf(com.texa.care.R.layout.error_dtc_header_item));
            map.put("layout/error_dtc_item_0", Integer.valueOf(com.texa.care.R.layout.error_dtc_item));
            map.put("layout/fragment_dashboard_v2_0", Integer.valueOf(com.texa.care.R.layout.fragment_dashboard_v2));
            map.put("layout/fragment_dashboard_vehicle_0", Integer.valueOf(com.texa.care.R.layout.fragment_dashboard_vehicle));
            map.put("layout/navigation_drawer_fragment_0", Integer.valueOf(com.texa.care.R.layout.navigation_drawer_fragment));
            map.put("layout/permission_location_step_0", Integer.valueOf(com.texa.care.R.layout.permission_location_step));
            map.put("layout/schedule_header_list_item_0", Integer.valueOf(com.texa.care.R.layout.schedule_header_list_item));
            map.put("layout/schedule_list_item2_0", Integer.valueOf(com.texa.care.R.layout.schedule_list_item2));
            map.put("layout/screen_activation_light_service_0", Integer.valueOf(com.texa.care.R.layout.screen_activation_light_service));
            map.put("layout/screen_activation_plus_service_0", Integer.valueOf(com.texa.care.R.layout.screen_activation_plus_service));
            map.put("layout/screen_activation_service_completed_0", Integer.valueOf(com.texa.care.R.layout.screen_activation_service_completed));
            map.put("layout/screen_activation_service_contact_0", Integer.valueOf(com.texa.care.R.layout.screen_activation_service_contact));
            map.put("layout/screen_activation_trial_service_0", Integer.valueOf(com.texa.care.R.layout.screen_activation_trial_service));
            map.put("layout/screen_alert_dialog_0", Integer.valueOf(com.texa.care.R.layout.screen_alert_dialog));
            map.put("layout/screen_background_location_permission_0", Integer.valueOf(com.texa.care.R.layout.screen_background_location_permission));
            map.put("layout/screen_base_vehicle_data_0", Integer.valueOf(com.texa.care.R.layout.screen_base_vehicle_data));
            map.put("layout/screen_calibration_0", Integer.valueOf(com.texa.care.R.layout.screen_calibration));
            map.put("layout/screen_care_site_0", Integer.valueOf(com.texa.care.R.layout.screen_care_site));
            map.put("layout/screen_care_validator_0", Integer.valueOf(com.texa.care.R.layout.screen_care_validator));
            map.put("layout/screen_company_info_0", Integer.valueOf(com.texa.care.R.layout.screen_company_info));
            map.put("layout/screen_diagnosis_0", Integer.valueOf(com.texa.care.R.layout.screen_diagnosis));
            map.put("layout/screen_diagnosis_data_0", Integer.valueOf(com.texa.care.R.layout.screen_diagnosis_data));
            map.put("layout/screen_dialog_country_0", Integer.valueOf(com.texa.care.R.layout.screen_dialog_country));
            map.put("layout/screen_dialog_country_item_0", Integer.valueOf(com.texa.care.R.layout.screen_dialog_country_item));
            map.put("layout/screen_dialog_fw_update_0", Integer.valueOf(com.texa.care.R.layout.screen_dialog_fw_update));
            map.put("layout/screen_dialog_new_configuration_request_0", Integer.valueOf(com.texa.care.R.layout.screen_dialog_new_configuration_request));
            map.put("layout/screen_dialog_vehicle_0", Integer.valueOf(com.texa.care.R.layout.screen_dialog_vehicle));
            map.put("layout/screen_dialog_vehicle_header_0", Integer.valueOf(com.texa.care.R.layout.screen_dialog_vehicle_header));
            map.put("layout/screen_dialog_vehicle_item_0", Integer.valueOf(com.texa.care.R.layout.screen_dialog_vehicle_item));
            map.put("layout/screen_dongle_discovery_0", Integer.valueOf(com.texa.care.R.layout.screen_dongle_discovery));
            map.put("layout/screen_draw_overlay_permission_0", Integer.valueOf(com.texa.care.R.layout.screen_draw_overlay_permission));
            map.put("layout/screen_eco_driving_0", Integer.valueOf(com.texa.care.R.layout.screen_eco_driving));
            map.put("layout/screen_eco_driving_day_0", Integer.valueOf(com.texa.care.R.layout.screen_eco_driving_day));
            map.put("layout/screen_eco_driving_dialog_hide_trip_0", Integer.valueOf(com.texa.care.R.layout.screen_eco_driving_dialog_hide_trip));
            map.put("layout/screen_eco_driving_hint_0", Integer.valueOf(com.texa.care.R.layout.screen_eco_driving_hint));
            map.put("layout/screen_eco_driving_trip_detail_0", Integer.valueOf(com.texa.care.R.layout.screen_eco_driving_trip_detail));
            map.put("layout/screen_eco_driving_trip_event_item_0", Integer.valueOf(com.texa.care.R.layout.screen_eco_driving_trip_event_item));
            map.put("layout/screen_eco_driving_trip_item_0", Integer.valueOf(com.texa.care.R.layout.screen_eco_driving_trip_item));
            map.put("layout/screen_eco_driving_trip_map_0", Integer.valueOf(com.texa.care.R.layout.screen_eco_driving_trip_map));
            map.put("layout/screen_eco_driving_tutorial_0", Integer.valueOf(com.texa.care.R.layout.screen_eco_driving_tutorial));
            map.put("layout/screen_email_address_0", Integer.valueOf(com.texa.care.R.layout.screen_email_address));
            map.put("layout/screen_general_settings_preferences_0", Integer.valueOf(com.texa.care.R.layout.screen_general_settings_preferences));
            map.put("layout/screen_insert_new_threshold_0", Integer.valueOf(com.texa.care.R.layout.screen_insert_new_threshold));
            map.put("layout/screen_number_validator_0", Integer.valueOf(com.texa.care.R.layout.screen_number_validator));
            map.put("layout/screen_number_validator_final_step_0", Integer.valueOf(com.texa.care.R.layout.screen_number_validator_final_step));
            map.put("layout/screen_password_creation_0", Integer.valueOf(com.texa.care.R.layout.screen_password_creation));
            map.put("layout/screen_permission_0", Integer.valueOf(com.texa.care.R.layout.screen_permission));
            map.put("layout/screen_personal_data_0", Integer.valueOf(com.texa.care.R.layout.screen_personal_data));
            map.put("layout/screen_problem_resolution_0", Integer.valueOf(com.texa.care.R.layout.screen_problem_resolution));
            map.put("layout/screen_recover_password_0", Integer.valueOf(com.texa.care.R.layout.screen_recover_password));
            map.put("layout/screen_reset_expire_schedule_0", Integer.valueOf(com.texa.care.R.layout.screen_reset_expire_schedule));
            map.put("layout/screen_schedule_grid_0", Integer.valueOf(com.texa.care.R.layout.screen_schedule_grid));
            map.put("layout/screen_select_new_schedule_0", Integer.valueOf(com.texa.care.R.layout.screen_select_new_schedule));
            map.put("layout/screen_seller_map_0", Integer.valueOf(com.texa.care.R.layout.screen_seller_map));
            map.put("layout/screen_services_subscription_manager_0", Integer.valueOf(com.texa.care.R.layout.screen_services_subscription_manager));
            map.put("layout/screen_set_default_data_threshold_0", Integer.valueOf(com.texa.care.R.layout.screen_set_default_data_threshold));
            map.put("layout/screen_set_default_odometer_threshold_0", Integer.valueOf(com.texa.care.R.layout.screen_set_default_odometer_threshold));
            map.put("layout/screen_set_insurance_company_0", Integer.valueOf(com.texa.care.R.layout.screen_set_insurance_company));
            map.put("layout/screen_set_insurance_data_threshold_0", Integer.valueOf(com.texa.care.R.layout.screen_set_insurance_data_threshold));
            map.put("layout/screen_set_tyres_odometer_threshold_0", Integer.valueOf(com.texa.care.R.layout.screen_set_tyres_odometer_threshold));
            map.put("layout/screen_settings_layout_0", Integer.valueOf(com.texa.care.R.layout.screen_settings_layout));
            map.put("layout/screen_settings_services_0", Integer.valueOf(com.texa.care.R.layout.screen_settings_services));
            map.put("layout/screen_settings_user_0", Integer.valueOf(com.texa.care.R.layout.screen_settings_user));
            map.put("layout/screen_settings_user_address_0", Integer.valueOf(com.texa.care.R.layout.screen_settings_user_address));
            map.put("layout/screen_signin_layout_0", Integer.valueOf(com.texa.care.R.layout.screen_signin_layout));
            map.put("layout/screen_sos_prerequisite_0", Integer.valueOf(com.texa.care.R.layout.screen_sos_prerequisite));
            map.put("layout/screen_start_engine_0", Integer.valueOf(com.texa.care.R.layout.screen_start_engine));
            map.put("layout/screen_term_of_conditions_services_0", Integer.valueOf(com.texa.care.R.layout.screen_term_of_conditions_services));
            map.put("layout/screen_tyres_inversion_0", Integer.valueOf(com.texa.care.R.layout.screen_tyres_inversion));
            map.put("layout/screen_tyres_new_install_0", Integer.valueOf(com.texa.care.R.layout.screen_tyres_new_install));
            map.put("layout/screen_tyres_options_0", Integer.valueOf(com.texa.care.R.layout.screen_tyres_options));
            map.put("layout/screen_vehicle_settings_0", Integer.valueOf(com.texa.care.R.layout.screen_vehicle_settings));
            map.put("layout/screen_walkthrough_0", Integer.valueOf(com.texa.care.R.layout.screen_walkthrough));
            map.put("layout/settings_care_screen_0", Integer.valueOf(com.texa.care.R.layout.settings_care_screen));
            map.put("layout/settings_header_item_0", Integer.valueOf(com.texa.care.R.layout.settings_header_item));
            map.put("layout/settings_list_item_0", Integer.valueOf(com.texa.care.R.layout.settings_list_item));
            map.put("layout/settings_my_vehicles_list_0", Integer.valueOf(com.texa.care.R.layout.settings_my_vehicles_list));
            map.put("layout/settings_services_list_item_0", Integer.valueOf(com.texa.care.R.layout.settings_services_list_item));
        }
    }
}

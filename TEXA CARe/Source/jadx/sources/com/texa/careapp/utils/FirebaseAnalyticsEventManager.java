package com.texa.careapp.utils;

import android.content.Context;
import android.os.Bundle;
import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes2.dex */
public class FirebaseAnalyticsEventManager {
    private final Context context;
    private final FirebaseAnalytics mFirebaseAnalytics;

    public FirebaseAnalyticsEventManager(Context context) {
        this.mFirebaseAnalytics = FirebaseAnalytics.getInstance(context);
        this.context = context;
    }

    public enum CAReFirebaseAnalyticsEvent {
        FBA_COMMON_DASHBOARD_EMERGENCY_BUTTON("dash_sos_btn_tap"),
        FBA_COMMON_TERMS_ACCEPTED("sos_terms_accepted"),
        FBA_COMMON_OPENED_DIAGNOSIS_SCREEN("diagnosis_screen_opened"),
        FBA_COMMON_BLUETOOTH_CONNECTED("bluetooth_connected"),
        FBA_OUT_OF_THE_BOX_START("ootb_start"),
        FBA_OUT_OF_THE_BOX_BLUETOOTH_SCANNING("ootb_bluetooth_scanning"),
        FBA_OUT_OF_THE_BOX_NO_DEVICE("ootb_no_device"),
        FBA_OUT_OF_THE_BOX_PIN_REQUEST("pin_request"),
        FBA_OUT_OF_THE_BOX_DONGLE_CONNECTED("ootb_dongle_connected"),
        FBA_OUT_OF_THE_BOX_CONFIG_UPGRADE("config_upgrade"),
        FBA_OUT_OF_THE_BOX_CONFIG_UPGRADE_COMPLETED("config_upgrade_completed"),
        FBA_OUT_OF_THE_BOX_ACCESS_SIGN_IN("access_signin"),
        FBA_OUT_OF_THE_BOX_ACCESS_SING_UP("access_signup"),
        FBA_OUT_OF_THE_BOX_COMPLETED("ootb_completed"),
        FBA_SOS_TRIAL_ACTIVATION_TAPPED_SOS_TRIAL_ACTIVATION_BUTTON("sos_trial_activation_btn_tap"),
        FBA_SOS_TRIAL_ACTIVATION_SOS_TRIAL_ACTIVATED("sos_trial_activated"),
        FBA_SOS_LIGHT_ACTIVATION_SOS_LIGHT_ACTIVATION_BUTTON("sos_light_activation_btn_tap"),
        FBA_SOS_LIGHT_ACTIVATION_SOS_LIGHT_CONTACTS_COMPLETED("sos_light_contacts_completed"),
        FBA_SOS_LIGHT_ACTIVATION_SOS_LIGHT_ACTIVATED("sos_light_activated"),
        FBA_SOS_PREMIUM_ACTIVATION_SOS_PREMIUM_ACTIVATION_BUTTON("sos_premium_activation_btn_tap"),
        FBA_SOS_PREMIUM_ACTIVATION_SOS_PREMIUM_ACTIVATED("sos_premium_activated"),
        FBA_FIND_VEHICLE_TAPPED_LEAD_TO_MY_VEHICLE_BUTTON("find_vehicle_tovehicle_btn_tap"),
        FBA_DASHBOARD_TAPPED_SCHEDULES_DASHBOARD_CARD("dash_schedules_card_tap"),
        FBA_DASHBOARD_TAPPED_DIAGNOSIS_DASHBOARD_CARD("dash_diagnosis_card_tap"),
        FBA_DASHBOARD_TAPPED_PARAMETERS_DASHBOARD_CARD("dash_parameters_card_tap"),
        FBA_DASHBOARD_TAPPED_FIND_VEHICLE_DASHBOARD_CARD("dash_find_vehicle_card_tap"),
        FBA_DASHBOARD_TAPPED_DRIVING_STYLE_CARD("dash_driving_style_card_tap"),
        FBA_SIDE_MENU_TAPPED_DIAGNOSIS_SIDE_MENU_ITEM("menu_diagnosis_item_tap"),
        FBA_SIDE_MENU_TAPPED_SCHEDULES_SIDE_MENU_ITEM("menu_schedules_item_tap"),
        FBA_SIDE_MENU_TAPPED_FIND_VEHICLE_SIDE_MENU("menu_find_vehicle_item_tap"),
        FBA_SIDE_MENU_TAPPED_AVAILABLE_SERVICES_SIDE_MENU_ITEM("menu_available_service_item_tap"),
        FBA_SIDE_MENU_TAPPED_SETTINGS_SIDE_MENU_ITEM("menu_settings_item_tap"),
        FBA_SCHEDULES_TAPPED_ADD_SCHEDULE_BUTTON("schedules_add_schedule_btn_tap"),
        FBA_TAPPED_TRIP_DETAIL("driving_style_trip_detail_tap"),
        FBA_TAPPED_EVENT("driving_style_trip_event_tap"),
        FBA_TAPPED_SUGGESTION("driving_style_suggestion_tap"),
        FBA_TAPPED_DIAGNOSIS_STANDARD_BUTTON("diagnosis_standard_btn_tap"),
        FBA_TAPPED_DIAGNOSIS_ADVANCED_BUTTON("diagnosis_advanced_btn_tap"),
        FBA_TAPPED_DIAGNOSIS_PARAMETERS_BUTTON("diagnosis_parameters_btn_tap"),
        FBA_TAPPED_DIAGNOSIS_MAINTENANCE_BUTTON("diagnosis_mantainance_btn_tap"),
        FBA_TAPPED_DIAGNOSIS_BATTERY_BUTTON("diagnosis_battery_btn_tap"),
        FBA_OPENED_SIDE_MENU("side_menu_opened"),
        FBA_OPENED_SCHEDULES_SCREEN("schedules_screen_opened"),
        FBA_OPENED_PARAMETERS_SCREEN("parameters_screen_opened"),
        FBA_OPENED_FIND_VEHICLE_SCREEN("find_vehicle_screen_opened"),
        FBA_OPENED_DRIVING_STYLE_SCREEN("driving_style_screen_opened"),
        FBA_OPENED_SETTINGS_SCREEN("settings_screen_opened"),
        FBA_TAPPED_REMOTE_NOTIFICATION("remote_notification_tap"),
        FBA_TAPPED_LOCAL_NOTIFICATION("local_notification_tap");

        private final String tag;

        CAReFirebaseAnalyticsEvent(String str) {
            this.tag = str;
        }

        public String getTag() {
            return this.tag;
        }
    }

    public void sendFirebaseAnalyticsEvent(CAReFirebaseAnalyticsEvent cAReFirebaseAnalyticsEvent, Bundle bundle) {
        this.mFirebaseAnalytics.logEvent(cAReFirebaseAnalyticsEvent.getTag(), bundle);
    }
}

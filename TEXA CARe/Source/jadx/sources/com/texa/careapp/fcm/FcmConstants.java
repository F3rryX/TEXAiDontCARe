package com.texa.careapp.fcm;

import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class FcmConstants {
    public static final String ACI_SUBSCRIPTION = "aci_subscription";
    public static final String BATTERY_STATE = "battery_state";
    public static final String DRIVERS_LICENSE = "driver_license";
    public static final String EXHAUST_GAS_CONTROL = "exhaust_gas_control";
    public static final String HIGHWAY_PASS = "highway_pass";
    public static final int ID_NEED_TO_SW_UPDATE = 0;
    public static final int ID_NOTIFICATION_BATTERY = 103;
    public static final int ID_NOTIFICATION_SUBSCRIPTION_TERMINATED = 200;
    public static final int ID_REMEMBER_TO_ACCEPT_TERMS_OF_SERVICE = 300;
    public static final int ID_SERVICE_RENEW = 301;
    public static final int ID_SERVICE_SOS_INFO_ALERT_NOTIFICATION = 302;
    public static final int ID_SERVICE_SOS_PURCHASED_BY_CUSTOMER = 303;
    public static final String INSTALLMENT_FIRE_THEFT_INSURANCE = "installment_fire_theft_insurance";
    public static final String INSTALLMENT_INSURANCE = "installment_insurance";
    public static final String INSTALLMENT_RENT_GARAGE = "installment_rent_garage";
    public static final String INSTALLMENT_VEHICLE = "installment_vehicle";
    public static final String NEED_TO_SW_UPDATE = "need_to_sw_update";
    public static final String NOTIFICATION_ALLARM_STATE = "alarm_state";
    public static final String NOTIFICATION_ALLARM_TYPE = "alarm_type";
    public static final String NOTIFICATION_ALLARM_VALUE = "alarm_value";
    public static final String NOTIFICATION_MESSAGE = "Body";
    public static final String NOTIFICATION_OBJ = "obj";
    public static final String NOTIFICATION_TIME = "send_time";
    public static final String NOTIFICATION_TYPE = "notification_type";
    public static final String NOTIFICATION_USER_ID = "user_id";
    public static final String NOTIFICATION_VEHICLE_ID = "vehicle_id";
    public static final String REMEMBER_TO_ACCEPT_TERMS_OF_SERVICE = "remember_to_accept_terms_of_service";
    public static final String RESTRICTED_AREA_PASS = "restricted_area_pass";
    public static final String SERVICE_RENEW = "service_renew";
    public static final String SERVICE_SOS_INFO_ALERT_NOTIFICATION = "service_sos_infp_alert_notification";
    public static final String SERVICE_SOS_PURCHASED_BY_CUSTOMER = "service_sos_purchased_by_customer";
    public static final String SERVICE_SUBSCRIPTION_TERMINATED = "service_subscription_terminated";
    public static final String SUBSCRIPTION_PARKING = "subscription_parking";
    public static final String TYRES_FITTING = "tyres_fitting";
    public static final String TYRES_SWAP = "tyres_swap";
    public static final String VEHICLE_FIRE_THEFT_INSURANCE = "vehicle_fire_theft_insurance";
    public static final String VEHICLE_INSPECTION = "vehicle_inspection";
    public static final String VEHICLE_INSPECTION_GPL = "vehicle_inspection_gpl";
    public static final String VEHICLE_INSPECTION_METHANE = "vehicle_inspection_methane";
    public static final String VEHICLE_INSURANCE = "vehicle_insurance";
    public static final String VEHICLE_SERVICE_DATE = "vehicle_service_date";
    public static final String VEHICLE_SERVICE_ODOMETER = "vehicle_service_odometer";
    public static final String VEHICLE_TAX = "vehicle_tax";
    public static final String VEHICLE_WARRANTY_DATE = "vehicle_warranty_date";
    public static final String VEHICLE_WARRANTY_ODOMETER = "vehicle_warranty_odometer";
    public static HashMap<String, Integer> notificationId;

    static {
        HashMap<String, Integer> map = new HashMap<>();
        notificationId = map;
        map.put(NEED_TO_SW_UPDATE, 0);
        notificationId.put(DRIVERS_LICENSE, 1);
        notificationId.put(VEHICLE_TAX, 2);
        notificationId.put(VEHICLE_INSURANCE, 3);
        notificationId.put(VEHICLE_INSPECTION, 4);
        notificationId.put(VEHICLE_SERVICE_DATE, 5);
        notificationId.put(VEHICLE_SERVICE_ODOMETER, 6);
        notificationId.put(TYRES_SWAP, 7);
        notificationId.put(TYRES_FITTING, 8);
        notificationId.put(VEHICLE_FIRE_THEFT_INSURANCE, 9);
        notificationId.put(VEHICLE_INSPECTION_GPL, 10);
        notificationId.put(VEHICLE_INSPECTION_METHANE, 11);
        notificationId.put(ACI_SUBSCRIPTION, 12);
        notificationId.put(EXHAUST_GAS_CONTROL, 13);
        notificationId.put(SUBSCRIPTION_PARKING, 14);
        notificationId.put(INSTALLMENT_RENT_GARAGE, 15);
        notificationId.put(INSTALLMENT_INSURANCE, 16);
        notificationId.put(INSTALLMENT_FIRE_THEFT_INSURANCE, 17);
        notificationId.put(INSTALLMENT_VEHICLE, 18);
        notificationId.put(HIGHWAY_PASS, 19);
        notificationId.put(RESTRICTED_AREA_PASS, 20);
        notificationId.put(VEHICLE_WARRANTY_DATE, 21);
        notificationId.put(VEHICLE_WARRANTY_ODOMETER, 22);
        notificationId.put(BATTERY_STATE, 103);
        notificationId.put(REMEMBER_TO_ACCEPT_TERMS_OF_SERVICE, Integer.valueOf(ID_REMEMBER_TO_ACCEPT_TERMS_OF_SERVICE));
        notificationId.put(SERVICE_RENEW, Integer.valueOf(ID_SERVICE_RENEW));
        notificationId.put(SERVICE_SOS_INFO_ALERT_NOTIFICATION, Integer.valueOf(ID_SERVICE_SOS_INFO_ALERT_NOTIFICATION));
        notificationId.put(SERVICE_SOS_PURCHASED_BY_CUSTOMER, Integer.valueOf(ID_SERVICE_SOS_PURCHASED_BY_CUSTOMER));
        notificationId.put(SERVICE_SUBSCRIPTION_TERMINATED, 200);
    }
}

.class public Lcom/texa/careapp/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/Constants$Actions;,
        Lcom/texa/careapp/Constants$WebAPI;
    }
.end annotation


# static fields
.field public static ACCOUNT_TYPE:Ljava/lang/String; = null

.field public static final ACTION_LOGIN:I = 0x1

.field public static final ALARM_TYPE_MEASURE_UNIT_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/texa/careapp/model/AlarmType;",
            "Lcom/texa/careapp/utils/MeasureUnit;",
            ">;"
        }
    .end annotation
.end field

.field public static ALPHA_TRANSPARENT:I = 0x0

.field public static ALPHA_VISIBLE:I = 0x0

.field public static AUTH_TOKEN_TYPE:Ljava/lang/String; = null

.field public static final BATTERY_MAX_VALUE:F = 100.0f

.field public static final BATTERY_RED_PERCENT_VALUE:F = 25.0f

.field public static final BATTERY_YELLOW_PERCENT_VALUE:F = 50.0f

.field public static final CACHED_EMERGENCY_INFO_KEY:Ljava/lang/String; = "emergency-info-cache-key"

.field public static final CARE_ACCESSORY_STATUS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static CARE_DRIVER_PARAMETERS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final CARE_ENVIRONMENT:Ljava/lang/String; = "CARE_ENVIRONMENT"

.field public static CARE_PARAMETERS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static CARE_PARAMETERS_BACKGROUND:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static CARE_PARAMETERS_FOR_MECHANIC:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final CARE_STATUS:Landroid/util/SparseIntArray;

.field public static final CONFIGURED_ENVIRONMENT:Ljava/lang/String; = "CONFIGURED_ENVIRONMENT"

.field public static CONVERSION_SCHEDULE_THRESHOLD:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/texa/careapp/model/ScheduleType;",
            "Lcom/texa/careapp/model/ThresholdModel$Type;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATAID_LABELS:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATAID_MEASURE_UNIT:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/texa/careapp/utils/MeasureUnit;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_FORMAT_DATE:Ljava/lang/String; = "dd/MM/yyyy"

.field public static final ECO_DRIVING_COLOR:Landroid/util/SparseIntArray;

.field public static final ECO_DRIVING_DATA_VERSION:Ljava/lang/String; = "1.0"

.field public static final ECO_DRIVING_IMAGES:Landroid/util/SparseIntArray;

.field public static final ECO_DRIVING_MAP_IMAGES:Landroid/util/SparseIntArray;

.field public static final ECO_DRIVING_PROFILE_TYPE:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final ECO_DRIVING_TEXT:Landroid/util/SparseIntArray;

.field public static final ERROR_KO_CONTACT_NOT_EDITABLE:Ljava/lang/String; = "KO_CONTACT-NOT_EDITABLE"

.field public static final ERROR_KO_CONTENTS_VEHICLE_VIN_MISMATCH:Ljava/lang/String; = "KO_CONTENTS-VEHICLE_VIN_MISMATCH"

.field public static final ERROR_KO_CONTRACT_ALREADY_ACCEPTED:Ljava/lang/String; = "KO_CONTRACT-ALREADY_ACCEPTED"

.field public static final ERROR_KO_CUSTOMER_NOT_FOUND:Ljava/lang/String; = "KO_CUSTOMER-NOT_FOUND"

.field public static final ERROR_KO_DONGLE_STATUS:Ljava/lang/String; = "KO_DONGLE-STATUS"

.field public static final ERROR_KO_DONGLE_USER_LIMIT_EXCEEDED:Ljava/lang/String; = "KO_DONGLE-USER_LIMIT_EXCEEDED"

.field public static final ERROR_KO_INPUT_BASE64_NOT_VALID:Ljava/lang/String; = "KO_INPUT-BASE64_NOT_VALID"

.field public static final ERROR_KO_INPUT_HWID_MISSING:Ljava/lang/String; = "KO_INPUT-HWID_MISSING"

.field public static final ERROR_KO_INPUT_MODEL_ERROR:Ljava/lang/String; = "KO_INPUT-MODEL_ERROR"

.field public static final ERROR_KO_PURCHASE_NOT_FOUND:Ljava/lang/String; = "KO_PURCHASE-NOT_FOUND"

.field public static final ERROR_KO_USERAUTH_CREDENTIALS_WRONG:Ljava/lang/String; = "KO_USERAUTH-CREDENTIALS_WRONG"

.field public static final ERROR_KO_USER_DONGLE_LIMIT_EXCEEDED:Ljava/lang/String; = "KO_USER-DONGLE_LIMIT_EXCEEDED"

.field public static final ERROR_KO_USER_EXISTING:Ljava/lang/String; = "KO_USER-EXISTING"

.field public static final ERROR_KO_USER_NOT_FOUND:Ljava/lang/String; = "KO_USER-NOT_FOUND"

.field public static final ERROR_KO_USER_RECOVERY_IN_PROGRESS:Ljava/lang/String; = "KO_USER-RECOVERY_IN_PROGRESS"

.field public static final ERROR_VEHICLE_ALREADY_CONFIGURED:Ljava/lang/String; = "error_vehicle_already_configured"

.field public static final EXTRA_BLUETOOTH_STATE:Ljava/lang/String; = "EXTRA_BLUETOOTH_STATE"

.field public static final EXTRA_GPS_STATE:Ljava/lang/String; = "EXTRA_GPS_STATE"

.field public static final EXTRA_INTERNET_STATE:Ljava/lang/String; = "EXTRA_INTERNET_STATE"

.field public static final EXTRA_TICKET_ID:Ljava/lang/String; = "extra-ticket-id"

.field public static final EXTRA_TIME_MILLIS_EVENT:Ljava/lang/String; = "EXTRA_TIME_MILLIS_EVENT"

.field public static final FCM_APP_VERSION:Ljava/lang/String; = "fcm_app_version"

.field public static final FCM_CURRENT_TOKEN:Ljava/lang/String; = "fcm_current_token"

.field public static final FCM_REGISTRATION_TOKEN:Ljava/lang/String; = "fcm_registration_token"

.field public static FIRST_CELL_PHONE_CONTACT_VALIDATION:Ljava/lang/String; = null

.field public static final GCM_EXTRA_MESSAGE:Ljava/lang/String; = "message"

.field public static final GCM_PLAY_SERVICES_RESOLUTION_REQUEST:I = 0x2328

.field public static final GCM_PROPERTY_APP_VERSION:Ljava/lang/String; = "appVersion"

.field public static final GCM_PROPERTY_REG_ID:Ljava/lang/String; = "registration_id"

.field public static final GCM_SENDER_ID:Ljava/lang/String; = "796498823739"

.field public static final GUARDIAN_ANGEL_CONTACTS_MAX:I = 0x2

.field public static final GUARDIAN_ANGEL_CONTACTS_NECESSARY:I = 0x1

.field public static final IDLE_ENVIRONMENT:Ljava/lang/String; = "IDLE_ENVIRONMENT"

.field public static final INTENT_ACTION_PERFORM_LOGIN_REFRESHTOKEN_EXPIRED:Ljava/lang/String; = "com.texa.careapp.login_after_refreshtoken_expired"

.field public static final INTENT_EXTRA_NOTIFICATION_TYPE_LOCAL:Ljava/lang/String; = "local_notification"

.field public static final INTENT_EXTRA_NOTIFICATION_TYPE_REMOTE:Ljava/lang/String; = "remote_notification"

.field public static final INVALID_SOS_TYPE:I = -0x1

.field public static final KEY_SOS_SERVICE_TYPE:Ljava/lang/String; = "impact-sos-service-type"

.field public static final KO_API_REMOTE_SERVICE_ERROR:Ljava/lang/String; = "KO_API-REMOTE_SERVICE_ERROR"

.field public static final LAMP_COLORS:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LAMP_DIAGNOSIS:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/texa/careapp/app/diagnosis/DiagnosisType;",
            ">;"
        }
    .end annotation
.end field

.field public static final LAMP_STATUS_IMAGES:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LANGUAGE_EN:Ljava/lang/String; = "en"

.field public static final LANGUAGE_IT:Ljava/lang/String; = "it"

.field public static final LATITUDE_POSITION:Ljava/lang/String; = "LATITUDE_POSITION"

.field public static final LIMIT_DAYS:I = 0x1e

.field public static LIMIT_DAYS_FOR_FAR_SCHEDULE:I = 0x16d

.field public static final LIMIT_KM:I = 0x5dc

.field public static LIMIT_KM_FOR_FAR_SCHEDULE:I = 0x1388

.field public static final LONGITUDE_POSITION:Ljava/lang/String; = "LONGITUDE_POSITION"

.field public static final MAIL_ADDRESS_TEXA_BUGTRACKING:Ljava/lang/String; = "care.bugtrack@texa.com"

.field public static final MIN_ACCURACY_METERS:F = 500.0f

.field public static final NOTIFICATION_DEFAULT_PRIORITY:Ljava/lang/String; = "care_channel"

.field public static final NOTIFICATION_ID_APPLICATION_SERVICE:I = 0x8

.field public static final NOTIFICATION_ID_APPLICATION_SERVICE_BT_NOT_AVAILABLE:I = 0xd

.field public static final NOTIFICATION_ID_APPLICATION_SERVICE_DEBUG:I = 0x8

.field public static final NOTIFICATION_ID_APPLICATION_SERVICE_GPS_NOT_AVAILABLE:I = 0xc

.field public static final NOTIFICATION_ID_ATTITUDE:I = 0x10

.field public static final NOTIFICATION_ID_AUTHENTICATION_PROBLEM:I = 0x11

.field public static final NOTIFICATION_ID_BATTERY_CHARGE:I = 0x5

.field public static final NOTIFICATION_ID_CARE_DONGLE_STATUS:I = 0x4

.field public static final NOTIFICATION_ID_CARE_NOT_CONFIGURED:I = 0x9

.field public static final NOTIFICATION_ID_CONFIGURATION_NEEDS_UPDATE:I = 0x3

.field public static final NOTIFICATION_ID_CONFIRM_ODOMETER:I = 0xa

.field public static final NOTIFICATION_ID_DTC:I = 0x1

.field public static final NOTIFICATION_ID_FIRMWARE_UPDATED:I = 0xe

.field public static final NOTIFICATION_ID_PERMISSION_DENIED:I = 0xf

.field public static final NOTIFICATION_ID_REFRESH_TOKEN_PROBLEM:I = 0x12

.field public static final NOTIFICATION_ID_SERVICE:I = 0x2

.field public static final NOTIFICATION_ID_SOS_PREREQUISITE:I = 0xb

.field public static final NOTIFICATION_ID_UPDATE_FIRMWARE_MAIN:I = 0x6

.field public static final NOTIFICATION_ID_UPDATE_FIRMWARE_SERVICE:I = 0x7

.field public static final NOTIFICATION_MIN_PRIORITY:Ljava/lang/String; = "care_min_channel"

.field public static final ODOMETER_TOLERANCE:I = 0x1f4

.field public static final OOTB_FLAG_DEFAULT:I = 0x0

.field public static final OOTB_FLAG_FIRST_CONFIGURATION:I = 0x1

.field public static final OUT_OF_THE_BOX_COMPLETED:Ljava/lang/String; = "ootb_completed_key"

.field public static PARAMETERS_PERSISTABLE:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARAMETER_CARD_CHART_JSON:Ljava/lang/String; = "parameter_card_chart_json"

.field public static final PENDING_INTENT_REQUEST_CODE_ATTITUDE:I = 0xcb

.field public static final PENDING_INTENT_REQUEST_CODE_CONFIGURATION_UPGRADE:I = 0xca

.field public static final PENDING_INTENT_REQUEST_CODE_LOGIN_AFTER_REFRESH_TOKEN_EXPIRED:I = 0xcd

.field public static final PENDING_INTENT_REQUEST_CODE_ODOMETER_CONFIRM:I = 0xc9

.field public static final PENDING_INTENT_REQUEST_CODE_PIN_CONFIRM:I = 0xcc

.field public static POINT_PROXIMITY_LATITUDE:D = 0.0

.field public static POINT_PROXIMITY_LONGITUDE:D = 0.0

.field public static final POINT_RADIUS:J = 0x64L

.field public static final PREFS_KEY_ADDITIONAL_PHONE_IMPACT_DETECTION:Ljava/lang/String; = "ADDITIONAL_PHONE_IMPACT_DETECTION"

.field public static final PREFS_KEY_CHECK_PROXIMITY_SET:Ljava/lang/String; = "CHECK_PROXIMITY_CHECK"

.field public static final PREFS_KEY_CURRENT_TRIP:Ljava/lang/String; = "PREFS_KEY_CURRENT_TRIP"

.field public static final PREFS_KEY_ECO_DRIVING_ACTIVATION:Ljava/lang/String; = "ECO_DRIVING_ACTIVATION"

.field public static final PREFS_KEY_ECO_DRIVING_HINT_TIME:Ljava/lang/String; = "ECO_DRIVING_HINT_TIMESTAMP"

.field public static final PREFS_KEY_ECO_DRIVING_PROFILE:Ljava/lang/String; = "ECO_DRIVING_PROFILE"

.field public static final PREFS_KEY_ECO_DRIVING_TRIPS_TIME:Ljava/lang/String; = "ECO_DRIVING_TRIPS_TIMESTAMP"

.field public static final PREFS_KEY_ECO_DRIVING_TUTORIAL:Ljava/lang/String; = "ECO_DRIVING_TUTORIAL"

.field public static final PREFS_KEY_FIRMWARE_UPDATE:Ljava/lang/String; = "FIRMWARE_UPDATE"

.field public static final PREFS_KEY_NOTIFICATION:Ljava/lang/String; = "NOTIFICATION_ENABLE"

.field public static final PREFS_KEY_PROXIMITY_LAST_KNOWN_POSITION_LAT:Ljava/lang/String; = "PROXIMITY_LAST_KNOWN_LOCATION_LAT"

.field public static final PREFS_KEY_PROXIMITY_LAST_KNOWN_POSITION_LONG:Ljava/lang/String; = "PROXIMITY_LAST_KNOWN_LOCATION_LONG"

.field public static final PREFS_KEY_PROXIMITY_POSITION_REGISTER:Ljava/lang/String; = "PROXIMITY_POSITION_REGISTER"

.field public static final PREFS_KEY_SOUND_ON_CONNETION:Ljava/lang/String; = "SOUND_ON_CONNECTION"

.field public static final PRIVACY_POLICY:I = 0x2

.field public static final PROX_ALERT_EXPIRATION:J = -0x1L

.field public static final PROX_ALERT_INTENT:Ljava/lang/String; = "com.texa.careapp.service"

.field public static final RC_HANDLE_GMS:I = 0x2329

.field public static final RC_HANDLE_PERM:I = 0x2

.field public static final RC_OCR_CAPTURE:I = 0x232b

.field public static RELATIVE_PARAMS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCHEDULE_IS_EXPIRED:I = -0x1

.field public static final SCHEDULE_IS_EXPIRING:I = 0x0

.field public static final SCHEDULE_IS_FAR:I = 0x2

.field public static final SCHEDULE_IS_NOT_EXPIRED:I = 0x1

.field public static final SETTINGS_ADD_VEHICLE:I = 0x2

.field public static final SETTINGS_ADD_VEHICLE_EXTRA:Ljava/lang/String; = "settings_add_vehicle"

.field public static final SETTINGS_COMPANY_INFO:I = 0x6

.field public static final SETTINGS_CONFIGURATION_HEADER:I = 0x10

.field public static final SETTINGS_FABRIC_RESET:I = 0xc

.field public static final SETTINGS_GENERAL_SETTINGS:I = 0xb

.field public static final SETTINGS_INFO_HEADER:I = 0xf

.field public static final SETTINGS_PRIVACY_POLICY:I = 0x7

.field public static final SETTINGS_SERVICES:I = 0x5

.field public static final SETTINGS_SERVICES_HEADER:I = 0x11

.field public static final SETTINGS_SERVICE_CONTACTS:I = 0x12

.field public static final SETTINGS_SW_FW_VERSION:I = 0x3

.field public static final SETTINGS_TERMS_SERVICE:I = 0x8

.field public static final SETTINGS_TERMS_SOS:I = 0x9

.field public static final SETTINGS_THIRD_PARTS_LICENSE:I = 0xa

.field public static final SETTINGS_TROUBLESHOOTING:I = 0x4

.field public static final SETTINGS_USER:I = 0x0

.field public static final SETTINGS_USER_HEADER:I = 0xd

.field public static final SETTINGS_VEHICLE:I = 0x1

.field public static final SETTINGS_VEHICLE_HEADER:I = 0xe

.field public static final SNACKBAR_CREATION_TIMEOUT:J = 0x3e8L

.field public static final SOS_CONNECTION_TIMEOUT:I = 0x927c0

.field public static final SOS_REQUEST_TYPE_AUTOMATIC_CARE:I = 0x2

.field public static final SOS_REQUEST_TYPE_AUTOMATIC_SMART_PHONE:I = 0x3

.field public static final SOS_REQUEST_TYPE_MANUAL:I = 0x1

.field public static final START_MAIN_ACTIVITY_EXTRA:Ljava/lang/String; = "start_main_activity"

.field public static STATUS_CONVERSION_MAP:Landroid/util/LongSparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static STATUS_CONVERSION_MAP_INVERSE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYNC_DISPATCHER_TAG_BATTERY_ANALYZE:Ljava/lang/String; = "battery_analyze"

.field public static final SYNC_DISPATCHER_TAG_CHANGE_LOCK_STATUS:Ljava/lang/String; = "change_lock_status"

.field public static final SYNC_DISPATCHER_TAG_CRASH_LOG:Ljava/lang/String; = "crash_log"

.field public static final SYNC_DISPATCHER_TAG_DTC:Ljava/lang/String; = "dtc"

.field public static final SYNC_DISPATCHER_TAG_EMERGENCY_INFO:Ljava/lang/String; = "emergency_info"

.field public static final SYNC_DISPATCHER_TAG_EMERGENCY_MESSAGE_INFO:Ljava/lang/String; = "emergency_message_info"

.field public static final SYNC_DISPATCHER_TAG_FAMILY_CONTACT:Ljava/lang/String; = "family_contact"

.field public static final SYNC_DISPATCHER_TAG_LAMPS:Ljava/lang/String; = "lamps"

.field public static final SYNC_DISPATCHER_TAG_LOG:Ljava/lang/String; = "log"

.field public static final SYNC_DISPATCHER_TAG_PARAMETERS:Ljava/lang/String; = "parameters"

.field public static final SYNC_DISPATCHER_TAG_PURCHASE_DATA:Ljava/lang/String; = "purchase_data"

.field public static final SYNC_DISPATCHER_TAG_SERVICE_DATA_ONE_OFF:Ljava/lang/String; = "service_data_one_off"

.field public static final SYNC_DISPATCHER_TAG_SERVICE_DATA_PERIODIC:Ljava/lang/String; = "service_data_periodic"

.field public static final SYNC_DISPATCHER_TAG_THRESHOLDS:Ljava/lang/String; = "thresholds"

.field public static final SYNC_DISPATCHER_TAG_TRIP:Ljava/lang/String; = "trip"

.field public static final SYNC_DISPATCHER_TAG_USER:Ljava/lang/String; = "user"

.field public static final SYNC_DISPATCHER_TAG_VEHICLE:Ljava/lang/String; = "vehicle"

.field public static final SYNC_DISPATCHER_TAG_VEHICLE_ALARMS:Ljava/lang/String; = "vehicle_alarms"

.field public static final TERM_CONDITION_NAME:Ljava/lang/String; = "terms"

.field public static final TERM_CONDITION_VERSION:I = 0x2

.field public static final TERM_OF_SERVICES:I = 0x1

.field public static final TERM_OF_SERVICES_MIN_VERSION_FOR_ECOD_PRIVACY:I = 0x2

.field public static final TERM_OF_SERVICES_NAME_PRIVACY:Ljava/lang/String; = "privacy"

.field public static final TERM_OF_SERVICES_SOS:I = 0x3

.field public static final TERM_OF_SERVICES_VERSION_PRIVACY:I = 0x2

.field public static final TEXA_COMPANY_NAME:Ljava/lang/String; = "TEXA S.p.A"

.field public static final TEXA_NUMBER:Ljava/lang/String; = "0422791777"

.field public static final THIRD_PART_LICENSE:I = 0x4

.field public static final THIRD_PART_LICENSE_NAME:Ljava/lang/String; = "android"

.field public static final THIRD_PART_LICENSE_VERSION:I = 0x3

.field public static final THRESHOLD_OK:F = 0.5f

.field public static final THRESHOLD_WARNING:F = 0.25f

.field public static final TIMEOUT_AFTER_SOS_CALL:I = 0x5

.field public static final TIMESTAMP_POSITION:Ljava/lang/String; = "TIMESTAMP_POSITION"

.field public static TIME_TO_VIBRATE_ON_TOUCH:I = 0x0

.field public static final TROUBLESHOOTING_ENGINE_OFF_RPM_THRESHOLD:F = 200.0f

.field public static final TROUBLESHOOTING_ENGINE_OFF_SPEED_THRESHOLD:F = 5.0f

.field public static final TYPEFACE_DEFAULT:Landroid/graphics/Typeface;

.field public static final TYPE_ERROR:I = -0x1

.field public static final TYPE_HEADER:I = 0x0

.field public static final TYPE_ITEM:I = 0x1

.field public static final TYPE_VEHICLE_LIST:I = 0x2

.field public static final UNIQUE_DEVICE_UUID:Ljava/lang/String; = "unique_device_uuid"

.field public static final UNIT_CELSIUS_KEY:Ljava/lang/String; = "TEMP_C"

.field public static final UNIT_DAYS_KEY:Ljava/lang/String; = "DAYS"

.field public static final UNIT_KILOMETER_KEY:Ljava/lang/String; = "KM"

.field public static final UNIT_LITER_KEY:Ljava/lang/String; = "LITER"

.field public static final UNIT_PERCENT_KEY:Ljava/lang/String; = "PERCENT"

.field public static final UNIT_PRESSURE_MBAR:Ljava/lang/String; = "MBAR"

.field public static final UNIT_RPM_KEY:Ljava/lang/String; = "RPM"

.field public static final UNIT_SPEED_KMH_KEY:Ljava/lang/String; = "KM_H"

.field public static final UNIT_VOLTAGE_KEY:Ljava/lang/String; = "V"

.field public static final USER_PHONE_NUMBER:Ljava/lang/String; = "user_phone_number"

.field public static final VEHICLE_DESCRIPTION_SEPARATOR:Ljava/lang/String; = "||"

.field public static final VEHICLE_PARAM_TYPE_NUMERIC:Ljava/lang/String; = "P_NUMBER"

.field public static final VEHICLE_PARAM_TYPE_STATUS:Ljava/lang/String; = "STATE"

.field public static final VEHICLE_PARAM_TYPE_STRING:Ljava/lang/String; = "P_STRING"

.field public static final VIN_MISMATCH_ENVIRONMENT:Ljava/lang/String; = "VIN_MISMATCH_ENVIRONMENT"

.field public static final defaultAdditionalPhoneImpactDetection:Z = true

.field public static final defaultEcoDriving:Z = true

.field public static final defaultEcoDrivingProfile:I

.field public static final defaultEcoDrivingTutorial:Z = false

.field public static final defaultFirmwareUpdate:Z = false

.field public static final defaultNotificationEnable:Z = true

.field public static final defaultPlaySoundOnConnection:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 32

    .line 180
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Lcom/texa/careapp/Constants;->DATAID_LABELS:Landroid/util/LongSparseArray;

    .line 181
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v1, Lcom/texa/careapp/Constants;->DATAID_MEASURE_UNIT:Landroid/util/LongSparseArray;

    .line 183
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v2, Lcom/texa/careapp/Constants;->LAMP_STATUS_IMAGES:Landroid/util/LongSparseArray;

    .line 184
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v3, Lcom/texa/careapp/Constants;->LAMP_COLORS:Landroid/util/LongSparseArray;

    .line 185
    new-instance v4, Landroid/util/LongSparseArray;

    invoke-direct {v4}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v4, Lcom/texa/careapp/Constants;->LAMP_DIAGNOSIS:Landroid/util/LongSparseArray;

    .line 187
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    sput-object v5, Lcom/texa/careapp/Constants;->CARE_ACCESSORY_STATUS:Landroid/util/SparseArray;

    .line 188
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v6, Lcom/texa/careapp/Constants;->CARE_STATUS:Landroid/util/SparseIntArray;

    .line 213
    new-instance v7, Ljava/util/HashMap;

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    sput-object v7, Lcom/texa/careapp/Constants;->ALARM_TYPE_MEASURE_UNIT_MAP:Ljava/util/HashMap;

    .line 214
    sget-object v9, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    sput-object v9, Lcom/texa/careapp/Constants;->TYPEFACE_DEFAULT:Landroid/graphics/Typeface;

    const-string v9, "com.texa.care"

    .line 269
    sput-object v9, Lcom/texa/careapp/Constants;->ACCOUNT_TYPE:Ljava/lang/String;

    .line 271
    sput-object v9, Lcom/texa/careapp/Constants;->AUTH_TOKEN_TYPE:Ljava/lang/String;

    const-string v9, "first_cell_phone_contact"

    .line 273
    sput-object v9, Lcom/texa/careapp/Constants;->FIRST_CELL_PHONE_CONTACT_VALIDATION:Ljava/lang/String;

    .line 298
    sget-object v9, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->NEWBIE:Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    invoke-virtual {v9}, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->getNumericType()I

    move-result v9

    sput v9, Lcom/texa/careapp/Constants;->defaultEcoDrivingProfile:I

    const/16 v9, 0x64

    .line 309
    sput v9, Lcom/texa/careapp/Constants;->TIME_TO_VIBRATE_ON_TOUCH:I

    const/16 v9, 0x2d

    .line 316
    sput v9, Lcom/texa/careapp/Constants;->ALPHA_TRANSPARENT:I

    const/16 v9, 0xff

    .line 317
    sput v9, Lcom/texa/careapp/Constants;->ALPHA_VISIBLE:I

    .line 328
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    sput-object v10, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    const/16 v10, 0x14

    new-array v10, v10, [Ljava/lang/Long;

    const-wide/32 v11, 0x499602d2

    .line 334
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v14, 0x0

    .line 582
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v13, v10, v14

    .line 334
    sget-object v13, Lcom/texa/carelib/diagresources/DataID$Parameter;->VEHICLE_SPEED:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 335
    invoke-virtual {v13}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v9, 0x1

    .line 586
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v13, v10, v9

    .line 335
    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_RPM:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 336
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x2

    aput-object v12, v10, v13

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_TEMP:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 337
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v8

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_REL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 338
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v8, 0x4

    aput-object v12, v10, v8

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 339
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v8, 0x5

    aput-object v12, v10, v8

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->CRUISING_RANGE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 340
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v8, 0x6

    aput-object v12, v10, v8

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->OIL_LEVEL_REL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 341
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v8, 0x7

    aput-object v12, v10, v8

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->OIL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 342
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/16 v22, 0x8

    aput-object v12, v10, v22

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Enum;->OIL_LEVEL_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    .line 343
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/16 v23, 0x9

    aput-object v12, v10, v23

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Enum;->OIL_QUALITY_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    .line 344
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/16 v8, 0xa

    aput-object v12, v10, v8

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->BATTERY_CHARGE_LEVEL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 345
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/16 v25, 0xb

    aput-object v12, v10, v25

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->MASS_AIR_FLOW:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 346
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/16 v26, 0xc

    aput-object v12, v10, v26

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_RAIL_PRESS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 347
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/16 v27, 0xd

    aput-object v12, v10, v27

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->ACT_EGR_POSITION:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 348
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/16 v28, 0xe

    aput-object v12, v10, v28

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->CMD_EGR_POSITION:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 349
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v29

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/16 v29, 0xf

    aput-object v12, v10, v29

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->BAROMETRIC_PRESS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 350
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/16 v30, 0x10

    aput-object v12, v10, v30

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->ABS_TROTTLE_POSITION:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 351
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/16 v30, 0x11

    aput-object v12, v10, v30

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->LAMBDA_VOLT_1:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 352
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/16 v30, 0x12

    aput-object v12, v10, v30

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->LAMBDA_VOLT_2:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 353
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/16 v30, 0x13

    aput-object v12, v10, v30

    .line 333
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    sput-object v10, Lcom/texa/careapp/Constants;->CARE_DRIVER_PARAMETERS:Ljava/util/List;

    new-array v10, v8, [Ljava/lang/Long;

    .line 359
    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->OIL_LEVEL_REL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 360
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v14

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->OIL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 361
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v9

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Enum;->OIL_LEVEL_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    .line 362
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v13

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Enum;->OIL_QUALITY_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    .line 363
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/16 v18, 0x3

    aput-object v12, v10, v18

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->OIL_QUALITY_VAL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 364
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/16 v19, 0x4

    aput-object v12, v10, v19

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->DISTANCE_NEXT_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 365
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/16 v20, 0x5

    aput-object v12, v10, v20

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->DAYS_NEXT_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 366
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/16 v21, 0x6

    aput-object v12, v10, v21

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->DISTANCE_LAST_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 367
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/16 v24, 0x7

    aput-object v12, v10, v24

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->DAYS_LAST_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 368
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v22

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->BATTERY_CHARGE_LEVEL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 369
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v23

    .line 359
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    sput-object v10, Lcom/texa/careapp/Constants;->CARE_PARAMETERS_FOR_MECHANIC:Ljava/util/List;

    const/16 v10, 0x12

    new-array v10, v10, [Ljava/lang/Long;

    .line 375
    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->ABS_CNG_LEVEL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 376
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v14

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->BATTERY_CHARGE_LEVEL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 377
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v9

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->CRUISING_RANGE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 378
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v13

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->CRUISING_RANGE_GAS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 379
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/16 v18, 0x3

    aput-object v12, v10, v18

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->DAYS_LAST_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 380
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/16 v19, 0x4

    aput-object v12, v10, v19

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->DAYS_NEXT_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 381
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/16 v20, 0x5

    aput-object v12, v10, v20

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->DISTANCE_LAST_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 382
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/16 v21, 0x6

    aput-object v12, v10, v21

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->DISTANCE_NEXT_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 383
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/16 v24, 0x7

    aput-object v12, v10, v24

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 384
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v22

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_REL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 385
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v23

    sget-object v12, Lcom/texa/carelib/diagresources/DataID$Parameter;->OIL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 386
    invoke-virtual {v12}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v8

    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->OIL_LEVEL_REL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 387
    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v10, v25

    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->OIL_QUALITY_VAL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 388
    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v10, v26

    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->REL_GAS_LEVEL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 389
    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v10, v27

    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Enum;->OIL_LEVEL_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    .line 390
    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v10, v28

    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Enum;->OIL_QUALITY_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    .line 391
    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v10, v29

    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Enum;->SERVICE_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    .line 392
    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x10

    aput-object v8, v10, v12

    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Enum;->WATER_IN_FUEL_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    .line 393
    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x11

    aput-object v8, v10, v12

    .line 375
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    sput-object v8, Lcom/texa/careapp/Constants;->CARE_PARAMETERS_BACKGROUND:Ljava/util/List;

    .line 396
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    sput-object v8, Lcom/texa/careapp/Constants;->RELATIVE_PARAMS:Ljava/util/Set;

    .line 398
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    sput-object v8, Lcom/texa/careapp/Constants;->PARAMETERS_PERSISTABLE:Ljava/util/Set;

    .line 399
    new-instance v8, Landroid/util/LongSparseArray;

    invoke-direct {v8}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v8, Lcom/texa/careapp/Constants;->STATUS_CONVERSION_MAP:Landroid/util/LongSparseArray;

    .line 400
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sput-object v8, Lcom/texa/careapp/Constants;->STATUS_CONVERSION_MAP_INVERSE:Ljava/util/HashMap;

    .line 403
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Enum;->BRAKE_PAD_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v9

    const v8, 0x7f11007d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v9, v10, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 404
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Enum;->ABS_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v8

    const v10, 0x7f11001f

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 405
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Enum;->TIRE_PRESS_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v8

    const v10, 0x7f110cea

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 406
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Enum;->MIL_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v8

    const v10, 0x7f110aea

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 407
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Enum;->ALTERNATOR_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v8

    const v10, 0x7f110051

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 408
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Enum;->STEERING_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v8

    const v10, 0x7f110cb6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 409
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Enum;->AIRBAG_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v8

    const v10, 0x7f110046

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 410
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Enum;->WARN_TEMP_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v8

    const v10, 0x7f110d4f

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 411
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Enum;->WARN_ENGINE_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v8

    const v10, 0x7f110d4e

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 412
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Enum;->SERVICE_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v8

    const v10, 0x7f110c04

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 413
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Enum;->LOW_FUEL_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v8

    const v10, 0x7f110ad5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 414
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Enum;->DOORS_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v8

    const v10, 0x7f11096f

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 415
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Enum;->ICE_WRN_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v8

    const v10, 0x7f110aa4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 416
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Enum;->OIL_LPRESS_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v8

    const v10, 0x7f110b26

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 417
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Enum;->SEATBELTS_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v8

    const v10, 0x7f110bf4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 418
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Enum;->ESP_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v8

    const v10, 0x7f110a55

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 419
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Enum;->HEADLAMP_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v8

    const v10, 0x7f110a93

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 420
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Enum;->WASHFLUID_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v8

    const v10, 0x7f110d52

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 421
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Enum;->IMMO_ERR_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v8

    const v10, 0x7f110aa5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 422
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Enum;->PREHEAT_ERR_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v8

    const v10, 0x7f110b7c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 423
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Enum;->BRAKEFLUID_LOW_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v8

    const v10, 0x7f11007e

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 424
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Enum;->COOLANT_LOW_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v8

    const v10, 0x7f1108e8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 425
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Enum;->WATER_IN_FUEL_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v8

    const v10, 0x7f110d53

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 426
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Enum;->SECONDARY_FUEL_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v8

    const v10, 0x7f110bf5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 427
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Enum;->OIL_LEVEL_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v8

    const v10, 0x7f110b25

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 428
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Enum;->OIL_QUALITY_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v8

    const v10, 0x7f110b28

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 429
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Enum;->DPF_ERR_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v8

    const v10, 0x7f110972

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 430
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->VEHICLE_SPEED:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110d39

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 431
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_REL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110a80

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 432
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110a7f

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 433
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->ODOMETER_KM:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110b20

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 434
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->CRUISING_RANGE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f1108ec

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 435
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->OUTSIDE_TEMPERATURE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110b34

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 436
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_RATE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110a82

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 437
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->REL_GAS_LEVEL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110b94

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 438
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->ABS_LPG_LEVEL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110020

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 439
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->ABS_CNG_LEVEL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f11001d

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 440
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->CRUISING_RANGE_GAS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f1108ed

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 441
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->AVERAGE_FUEL_RATE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110062

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 442
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_RATE_DISTANCE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110a83

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 443
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->AVERAGE_FUEL_RATE_DISTANCE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110063

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 444
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->AVERAGE_CNG_RATE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110060

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 445
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->AVERAGE_CNG_RATE_DISTANCE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110061

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 446
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->CNG_RATE_DISTANCE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f1108b6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 447
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->CNG_RATE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f1108b5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 448
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->AVERAGE_LPG_RATE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110064

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 449
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->AVERAGE_LPG_RATE_DISTANCE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110065

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 450
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->LPG_RATE_DISTANCE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110ac6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 451
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->LPG_RATE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110ac5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 452
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_RPM:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f1109ca

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 453
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_TEMP:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f1109cb

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 454
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->OIL_LEVEL_REL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110b24

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 455
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->OIL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110b23

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 456
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->OVERSPEED_CNT:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110b35

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 457
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->OIL_QUALITY_VAL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110b2b

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 458
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->DPF_DIFF_PRESSURE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110971

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 459
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->REL_DPF_SATURATION_VALUE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110b93

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 460
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->ABS_DPF_SATURATION_VALUE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f11001e

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 461
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->BATTERY_VOLT:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110073

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 462
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->BATTERY_CHARGE_LEVEL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f11006c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 463
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->DISTANCE_NEXT_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110967

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 464
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->DAYS_NEXT_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110912

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 465
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->DISTANCE_LAST_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110966

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 466
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->DAYS_LAST_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110911

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 467
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->TRANS_OIL_TEMP:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110cf5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 468
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->MASS_AIR_FLOW:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110ae3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 469
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_RAIL_PRESS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110a81

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 470
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->ACT_EGR_POSITION:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110029

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 471
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->CMD_EGR_POSITION:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f1108b4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 472
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->BAROMETRIC_PRESS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110068

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 473
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->ABS_TROTTLE_POSITION:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110021

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 474
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->LAMBDA_VOLT_1:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110ab9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 475
    sget-object v8, Lcom/texa/carelib/diagresources/DataID$Parameter;->LAMBDA_VOLT_2:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v8}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    const v10, 0x7f110aba

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 479
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->VEHICLE_SPEED:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->SPEED_KHM:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 480
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_REL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->PERCENT:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 481
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->PERCENT:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 482
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->ODOMETER_KM:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->DISTANCE_KILOMETER:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 483
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->CRUISING_RANGE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->DISTANCE_KILOMETER:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 484
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->OUTSIDE_TEMPERATURE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->CELSIUS:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 485
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_RATE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->DISTANCE_KILOMETER:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 486
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->REL_GAS_LEVEL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->PERCENT:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 487
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->ABS_LPG_LEVEL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->LITER:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 488
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->ABS_CNG_LEVEL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->PERCENT:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 489
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->CRUISING_RANGE_GAS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->DISTANCE_KILOMETER:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 490
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->AVERAGE_FUEL_RATE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->DISTANCE_KILOMETER:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 491
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_RATE_DISTANCE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->DISTANCE_KILOMETER:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 492
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->AVERAGE_FUEL_RATE_DISTANCE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->DISTANCE_KILOMETER:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 493
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->AVERAGE_CNG_RATE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->DISTANCE_KILOMETER:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 494
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->AVERAGE_CNG_RATE_DISTANCE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->DISTANCE_KILOMETER:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 495
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->CNG_RATE_DISTANCE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->DISTANCE_KILOMETER:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 496
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->CNG_RATE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->DISTANCE_KILOMETER:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 497
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->AVERAGE_LPG_RATE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->DISTANCE_KILOMETER:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 498
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->AVERAGE_LPG_RATE_DISTANCE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->DISTANCE_KILOMETER:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 499
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->LPG_RATE_DISTANCE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->DISTANCE_KILOMETER:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 500
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->LPG_RATE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->DISTANCE_KILOMETER:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 501
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_RPM:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->RPM:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 502
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_TEMP:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->CELSIUS:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 503
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->OIL_LEVEL_REL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->PERCENT:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 504
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->OIL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->PERCENT:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 505
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->OIL_QUALITY_VAL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->PERCENT:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 506
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->DPF_DIFF_PRESSURE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->PRESSURE_MBAR:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 507
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->REL_DPF_SATURATION_VALUE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->PERCENT:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 508
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->ABS_DPF_SATURATION_VALUE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->PERCENT:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 509
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->BATTERY_VOLT:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->VOLTAGE:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 510
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->BATTERY_CHARGE_LEVEL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->PERCENT:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 511
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->DISTANCE_NEXT_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->DISTANCE_KILOMETER:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 512
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->DAYS_NEXT_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->DAYS:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 513
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->DISTANCE_LAST_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->DISTANCE_KILOMETER:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 514
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->DAYS_LAST_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->DAYS:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 515
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->TRANS_OIL_TEMP:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->CELSIUS:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 516
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->MASS_AIR_FLOW:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->GRAMS_SEC:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 517
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_RAIL_PRESS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->KPA:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 518
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->ACT_EGR_POSITION:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->PERCENT:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 519
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->CMD_EGR_POSITION:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->PERCENT:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 520
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->BAROMETRIC_PRESS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->KPA:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 521
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->ABS_TROTTLE_POSITION:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->PERCENT:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 522
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->LAMBDA_VOLT_1:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->VOLTAGE:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 523
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->LAMBDA_VOLT_2:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v8

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->VOLTAGE:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 524
    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->VOLTAGE:Lcom/texa/careapp/utils/MeasureUnit;

    const-wide/32 v8, 0x499602d2

    invoke-virtual {v1, v8, v9, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 528
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->BRAKE_PAD_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    sget-object v8, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->ADVANCED:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    invoke-virtual {v4, v0, v1, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 529
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->ABS_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    sget-object v8, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->ADVANCED:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    invoke-virtual {v4, v0, v1, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 530
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->TIRE_PRESS_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    sget-object v8, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->ADVANCED:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    invoke-virtual {v4, v0, v1, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 531
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->MIL_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    sget-object v8, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->STANDARD:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    invoke-virtual {v4, v0, v1, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 532
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->ALTERNATOR_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    sget-object v8, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->ADVANCED:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    invoke-virtual {v4, v0, v1, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 533
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->STEERING_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    sget-object v8, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->ADVANCED:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    invoke-virtual {v4, v0, v1, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 534
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->AIRBAG_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    sget-object v8, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->ADVANCED:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    invoke-virtual {v4, v0, v1, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 535
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->WARN_TEMP_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    sget-object v8, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->ADVANCED:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    invoke-virtual {v4, v0, v1, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 536
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->WARN_ENGINE_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    sget-object v8, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->ADVANCED:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    invoke-virtual {v4, v0, v1, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 537
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->SERVICE_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    sget-object v8, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->ADVANCED:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    invoke-virtual {v4, v0, v1, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 538
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->LOW_FUEL_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    sget-object v8, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->ADVANCED:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    invoke-virtual {v4, v0, v1, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 539
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->DOORS_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    sget-object v8, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->ADVANCED:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    invoke-virtual {v4, v0, v1, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 540
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->ICE_WRN_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    sget-object v8, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->ADVANCED:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    invoke-virtual {v4, v0, v1, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 541
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->OIL_LPRESS_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    sget-object v8, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->ADVANCED:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    invoke-virtual {v4, v0, v1, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 542
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->SEATBELTS_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    sget-object v8, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->ADVANCED:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    invoke-virtual {v4, v0, v1, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 543
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->ESP_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    sget-object v8, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->ADVANCED:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    invoke-virtual {v4, v0, v1, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 544
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->HEADLAMP_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    sget-object v8, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->ADVANCED:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    invoke-virtual {v4, v0, v1, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 545
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->WASHFLUID_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    sget-object v8, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->ADVANCED:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    invoke-virtual {v4, v0, v1, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 546
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->IMMO_ERR_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    sget-object v8, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->ADVANCED:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    invoke-virtual {v4, v0, v1, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 547
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->PREHEAT_ERR_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    sget-object v8, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->ADVANCED:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    invoke-virtual {v4, v0, v1, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 548
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->BRAKEFLUID_LOW_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    sget-object v8, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->ADVANCED:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    invoke-virtual {v4, v0, v1, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 549
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->COOLANT_LOW_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    sget-object v8, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->ADVANCED:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    invoke-virtual {v4, v0, v1, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 550
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->WATER_IN_FUEL_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    sget-object v8, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->ADVANCED:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    invoke-virtual {v4, v0, v1, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 551
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->DPF_ERR_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    sget-object v8, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->ADVANCED:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    invoke-virtual {v4, v0, v1, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 555
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->BRAKE_PAD_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    const v4, 0x7f0800eb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 556
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->ABS_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    const v4, 0x7f0800c5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 557
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->TIRE_PRESS_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    const v4, 0x7f080149

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 558
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->MIL_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    const v4, 0x7f080120

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 559
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->ALTERNATOR_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    const v4, 0x7f0800d1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 560
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->STEERING_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    const v4, 0x7f080145

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 561
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->AIRBAG_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    const v4, 0x7f0800ce

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 562
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->WARN_TEMP_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    const v4, 0x7f080104

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 563
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->WARN_ENGINE_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    const v4, 0x7f08014b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 564
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->SERVICE_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    const v4, 0x7f08013e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 565
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->LOW_FUEL_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    const v4, 0x7f08011e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 566
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->DOORS_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    const v4, 0x7f080109

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 567
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->ICE_WRN_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    const v4, 0x7f080119

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 568
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->OIL_LPRESS_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    const v4, 0x7f080127

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 569
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->SEATBELTS_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    const v4, 0x7f08013c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 570
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->ESP_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    const v4, 0x7f080114

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 571
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->HEADLAMP_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    const v4, 0x7f080118

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 572
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->WASHFLUID_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    const v4, 0x7f08014d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 573
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->IMMO_ERR_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    const v4, 0x7f08011b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 574
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->PREHEAT_ERR_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    const v4, 0x7f080131

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 575
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->BRAKEFLUID_LOW_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    const v4, 0x7f0800ec

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 576
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->COOLANT_LOW_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    const v4, 0x7f080104

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 577
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->WATER_IN_FUEL_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    const v4, 0x7f08014e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 578
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->DPF_ERR_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    const v4, 0x7f08010a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 582
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->BRAKE_PAD_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 583
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->ABS_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 584
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->TIRE_PRESS_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 585
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->MIL_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 586
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->ALTERNATOR_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 587
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->STEERING_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 588
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->AIRBAG_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 589
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->WARN_TEMP_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 590
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->WARN_ENGINE_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 591
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->SERVICE_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 592
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->LOW_FUEL_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 593
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->DOORS_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 594
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->ICE_WRN_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 595
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->OIL_LPRESS_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 596
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->SEATBELTS_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 597
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->ESP_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 598
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->HEADLAMP_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 599
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->WASHFLUID_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 600
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->IMMO_ERR_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 601
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->PREHEAT_ERR_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 602
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->BRAKEFLUID_LOW_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 603
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->COOLANT_LOW_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 604
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->WATER_IN_FUEL_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 605
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->DPF_ERR_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 609
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->VEHICLE_SPEED:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 610
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_REL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 611
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 612
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->ODOMETER_KM:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 613
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->CRUISING_RANGE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 614
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->OUTSIDE_TEMPERATURE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 615
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_RATE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 616
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->REL_GAS_LEVEL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 617
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->ABS_LPG_LEVEL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 618
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->ABS_CNG_LEVEL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 619
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->CRUISING_RANGE_GAS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 620
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->AVERAGE_FUEL_RATE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 621
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_RATE_DISTANCE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 622
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->AVERAGE_FUEL_RATE_DISTANCE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 623
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->AVERAGE_CNG_RATE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 624
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->AVERAGE_CNG_RATE_DISTANCE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 625
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->CNG_RATE_DISTANCE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 626
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->CNG_RATE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 627
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->AVERAGE_LPG_RATE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 628
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->AVERAGE_LPG_RATE_DISTANCE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 629
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->LPG_RATE_DISTANCE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 630
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->LPG_RATE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 631
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_RPM:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 632
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_TEMP:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 633
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->OIL_LEVEL_REL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 634
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->OIL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 635
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->OVERSPEED_CNT:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 636
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->OIL_QUALITY_VAL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 637
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->DPF_DIFF_PRESSURE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 638
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->REL_DPF_SATURATION_VALUE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 639
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->ABS_DPF_SATURATION_VALUE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 640
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->BATTERY_VOLT:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 641
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->BATTERY_CHARGE_LEVEL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 642
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->DISTANCE_NEXT_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 643
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->DAYS_NEXT_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 644
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->DISTANCE_LAST_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 645
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->DAYS_LAST_SERVICE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 646
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->TRANS_OIL_TEMP:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 650
    sget-object v0, Lcom/texa/careapp/Constants;->RELATIVE_PARAMS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_REL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 651
    sget-object v0, Lcom/texa/careapp/Constants;->RELATIVE_PARAMS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->REL_GAS_LEVEL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 652
    sget-object v0, Lcom/texa/careapp/Constants;->RELATIVE_PARAMS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->REL_DPF_SATURATION_VALUE:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 653
    sget-object v0, Lcom/texa/careapp/Constants;->RELATIVE_PARAMS:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->OIL_LEVEL_REL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 657
    sget-object v0, Lcom/texa/careapp/Constants;->PARAMETERS_PERSISTABLE:Ljava/util/Set;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->ODOMETER_KM:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "UNDEF"

    const/16 v1, 0xff

    .line 661
    invoke-virtual {v5, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "BUSY"

    .line 662
    invoke-virtual {v5, v14, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "CONFIGURATION_VERIFY_IN_PROGRESS"

    const/4 v1, 0x1

    .line 663
    invoke-virtual {v5, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "CONFIGURED_BUT_OBD_NOT_CONNECTED"

    .line 664
    invoke-virtual {v5, v13, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "NOT_CONFIGURED_BUT_OBD_CONNECTED"

    const/4 v1, 0x3

    .line 665
    invoke-virtual {v5, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x82

    const-string v1, "BASIC_CONFIGURATION_BUT_OBD_NOT_CONNECTED"

    .line 666
    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v1, "BASIC_CONFIGURATION_BUT_OBD_NOT_CONNECTED"

    .line 667
    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v1, "CONFIGURED_AND_OBD_CONNECTED"

    const/4 v2, 0x4

    .line 668
    invoke-virtual {v5, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v1, "CORRUPTED_DEVICE"

    const/4 v2, 0x5

    .line 669
    invoke-virtual {v5, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v1, "MEMORY_PROBLEM"

    const/4 v2, 0x6

    .line 670
    invoke-virtual {v5, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v1, "NOT_CONFIGURED_AND_OBD_NOT_CONNECTED"

    const/4 v2, 0x7

    .line 671
    invoke-virtual {v5, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x7f110cb2

    const/16 v2, 0xff

    .line 675
    invoke-virtual {v6, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f110caf

    const/4 v2, 0x1

    .line 676
    invoke-virtual {v6, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f110cb0

    .line 677
    invoke-virtual {v6, v13, v1}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f1108e5

    const/4 v2, 0x3

    .line 678
    invoke-virtual {v6, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f110cad

    .line 679
    invoke-virtual {v6, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x84

    const v1, 0x7f110cac

    .line 680
    invoke-virtual {v6, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    const v0, 0x7f1108e4

    const/4 v1, 0x4

    .line 681
    invoke-virtual {v6, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    const v0, 0x7f110cb1

    const/4 v1, 0x5

    .line 682
    invoke-virtual {v6, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    const v0, 0x7f110cb2

    const/4 v1, 0x6

    .line 683
    invoke-virtual {v6, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    const v0, 0x7f110cb4

    const/4 v1, 0x7

    .line 684
    invoke-virtual {v6, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    const v0, 0x7f110cae

    .line 685
    invoke-virtual {v6, v14, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 689
    sget-object v0, Lcom/texa/careapp/model/AlarmType;->ALTERNATOR_LOW:Lcom/texa/careapp/model/AlarmType;

    sget-object v1, Lcom/texa/careapp/utils/MeasureUnit;->VOLTAGE:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    sget-object v0, Lcom/texa/careapp/model/AlarmType;->ALTERNATOR_HIGH:Lcom/texa/careapp/model/AlarmType;

    sget-object v1, Lcom/texa/careapp/utils/MeasureUnit;->VOLTAGE:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    sget-object v0, Lcom/texa/careapp/model/AlarmType;->ENGINE_TEMP:Lcom/texa/careapp/model/AlarmType;

    sget-object v1, Lcom/texa/careapp/utils/MeasureUnit;->CELSIUS:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    sget-object v0, Lcom/texa/careapp/Constants;->STATUS_CONVERSION_MAP:Landroid/util/LongSparseArray;

    sget-object v1, Lcom/texa/carelib/diagresources/EnumValue;->N_A:Lcom/texa/carelib/diagresources/EnumValue;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/EnumValue;->getId()J

    move-result-wide v1

    const-string v3, "UNAVAILABLE"

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 696
    sget-object v0, Lcom/texa/careapp/Constants;->STATUS_CONVERSION_MAP:Landroid/util/LongSparseArray;

    sget-object v1, Lcom/texa/carelib/diagresources/EnumValue;->NOT_ACTIVE:Lcom/texa/carelib/diagresources/EnumValue;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/EnumValue;->getId()J

    move-result-wide v1

    const-string v3, "NOT_ACTIVE"

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 697
    sget-object v0, Lcom/texa/careapp/Constants;->STATUS_CONVERSION_MAP:Landroid/util/LongSparseArray;

    sget-object v1, Lcom/texa/carelib/diagresources/EnumValue;->ACTIVE:Lcom/texa/carelib/diagresources/EnumValue;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/EnumValue;->getId()J

    move-result-wide v1

    const-string v3, "ACTIVE"

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 698
    sget-object v0, Lcom/texa/careapp/Constants;->STATUS_CONVERSION_MAP:Landroid/util/LongSparseArray;

    sget-object v1, Lcom/texa/carelib/diagresources/EnumValue;->BLINK:Lcom/texa/carelib/diagresources/EnumValue;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/EnumValue;->getId()J

    move-result-wide v1

    const-string v3, "BLINK"

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 699
    sget-object v0, Lcom/texa/careapp/Constants;->STATUS_CONVERSION_MAP:Landroid/util/LongSparseArray;

    sget-object v1, Lcom/texa/carelib/diagresources/EnumValue;->ERROR:Lcom/texa/carelib/diagresources/EnumValue;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/EnumValue;->getId()J

    move-result-wide v1

    const-string v3, "ERROR"

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 701
    sget-object v0, Lcom/texa/careapp/Constants;->STATUS_CONVERSION_MAP_INVERSE:Ljava/util/HashMap;

    sget-object v1, Lcom/texa/carelib/diagresources/EnumValue;->N_A:Lcom/texa/carelib/diagresources/EnumValue;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/EnumValue;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "UNAVAILABLE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    sget-object v0, Lcom/texa/careapp/Constants;->STATUS_CONVERSION_MAP_INVERSE:Ljava/util/HashMap;

    sget-object v1, Lcom/texa/carelib/diagresources/EnumValue;->NOT_ACTIVE:Lcom/texa/carelib/diagresources/EnumValue;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/EnumValue;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "NOT_ACTIVE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    sget-object v0, Lcom/texa/careapp/Constants;->STATUS_CONVERSION_MAP_INVERSE:Ljava/util/HashMap;

    sget-object v1, Lcom/texa/carelib/diagresources/EnumValue;->ACTIVE:Lcom/texa/carelib/diagresources/EnumValue;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/EnumValue;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ACTIVE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    sget-object v0, Lcom/texa/careapp/Constants;->STATUS_CONVERSION_MAP_INVERSE:Ljava/util/HashMap;

    sget-object v1, Lcom/texa/carelib/diagresources/EnumValue;->BLINK:Lcom/texa/carelib/diagresources/EnumValue;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/EnumValue;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "BLINK"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    sget-object v0, Lcom/texa/careapp/Constants;->STATUS_CONVERSION_MAP_INVERSE:Ljava/util/HashMap;

    sget-object v1, Lcom/texa/carelib/diagresources/EnumValue;->ERROR:Lcom/texa/carelib/diagresources/EnumValue;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/EnumValue;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ERROR"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/texa/careapp/Constants;->CONVERSION_SCHEDULE_THRESHOLD:Ljava/util/HashMap;

    .line 711
    sget-object v1, Lcom/texa/careapp/model/ScheduleType;->LICENSE:Lcom/texa/careapp/model/ScheduleType;

    sget-object v2, Lcom/texa/careapp/model/ThresholdModel$Type;->LICENCE:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    sget-object v0, Lcom/texa/careapp/Constants;->CONVERSION_SCHEDULE_THRESHOLD:Ljava/util/HashMap;

    sget-object v1, Lcom/texa/careapp/model/ScheduleType;->TAX:Lcom/texa/careapp/model/ScheduleType;

    sget-object v2, Lcom/texa/careapp/model/ThresholdModel$Type;->TAX_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    sget-object v0, Lcom/texa/careapp/Constants;->CONVERSION_SCHEDULE_THRESHOLD:Ljava/util/HashMap;

    sget-object v1, Lcom/texa/careapp/model/ScheduleType;->INSURANCE:Lcom/texa/careapp/model/ScheduleType;

    sget-object v2, Lcom/texa/careapp/model/ThresholdModel$Type;->INSURANCE_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    sget-object v0, Lcom/texa/careapp/Constants;->CONVERSION_SCHEDULE_THRESHOLD:Ljava/util/HashMap;

    sget-object v1, Lcom/texa/careapp/model/ScheduleType;->INSPECTION:Lcom/texa/careapp/model/ScheduleType;

    sget-object v2, Lcom/texa/careapp/model/ThresholdModel$Type;->INSPECTION:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    sget-object v0, Lcom/texa/careapp/Constants;->CONVERSION_SCHEDULE_THRESHOLD:Ljava/util/HashMap;

    sget-object v1, Lcom/texa/careapp/model/ScheduleType;->TYRES_SWAP:Lcom/texa/careapp/model/ScheduleType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    sget-object v0, Lcom/texa/careapp/Constants;->CONVERSION_SCHEDULE_THRESHOLD:Ljava/util/HashMap;

    sget-object v1, Lcom/texa/careapp/model/ScheduleType;->INSURANCE_2:Lcom/texa/careapp/model/ScheduleType;

    sget-object v2, Lcom/texa/careapp/model/ThresholdModel$Type;->INSURANCE_2_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    sget-object v0, Lcom/texa/careapp/Constants;->CONVERSION_SCHEDULE_THRESHOLD:Ljava/util/HashMap;

    sget-object v1, Lcom/texa/careapp/model/ScheduleType;->AC_SUBSCR:Lcom/texa/careapp/model/ScheduleType;

    sget-object v2, Lcom/texa/careapp/model/ThresholdModel$Type;->AC_SUBSCR_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    sget-object v0, Lcom/texa/careapp/Constants;->CONVERSION_SCHEDULE_THRESHOLD:Ljava/util/HashMap;

    sget-object v1, Lcom/texa/careapp/model/ScheduleType;->EXAUST:Lcom/texa/careapp/model/ScheduleType;

    sget-object v2, Lcom/texa/careapp/model/ThresholdModel$Type;->EXHAUST_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    sget-object v0, Lcom/texa/careapp/Constants;->CONVERSION_SCHEDULE_THRESHOLD:Ljava/util/HashMap;

    sget-object v1, Lcom/texa/careapp/model/ScheduleType;->PARK_SUBSCR:Lcom/texa/careapp/model/ScheduleType;

    sget-object v2, Lcom/texa/careapp/model/ThresholdModel$Type;->PARK_SUBSCR_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    sget-object v0, Lcom/texa/careapp/Constants;->CONVERSION_SCHEDULE_THRESHOLD:Ljava/util/HashMap;

    sget-object v1, Lcom/texa/careapp/model/ScheduleType;->GARAGE_RENT:Lcom/texa/careapp/model/ScheduleType;

    sget-object v2, Lcom/texa/careapp/model/ThresholdModel$Type;->GARAGE_RENT_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    sget-object v0, Lcom/texa/careapp/Constants;->CONVERSION_SCHEDULE_THRESHOLD:Ljava/util/HashMap;

    sget-object v1, Lcom/texa/careapp/model/ScheduleType;->INS_PAYM:Lcom/texa/careapp/model/ScheduleType;

    sget-object v2, Lcom/texa/careapp/model/ThresholdModel$Type;->INS_PAYM_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    sget-object v0, Lcom/texa/careapp/Constants;->CONVERSION_SCHEDULE_THRESHOLD:Ljava/util/HashMap;

    sget-object v1, Lcom/texa/careapp/model/ScheduleType;->INS_2_PAYM:Lcom/texa/careapp/model/ScheduleType;

    sget-object v2, Lcom/texa/careapp/model/ThresholdModel$Type;->INS_2_PAYM_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    sget-object v0, Lcom/texa/careapp/Constants;->CONVERSION_SCHEDULE_THRESHOLD:Ljava/util/HashMap;

    sget-object v1, Lcom/texa/careapp/model/ScheduleType;->CAR_PAYM:Lcom/texa/careapp/model/ScheduleType;

    sget-object v2, Lcom/texa/careapp/model/ThresholdModel$Type;->CAR_PAYM_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    sget-object v0, Lcom/texa/careapp/Constants;->CONVERSION_SCHEDULE_THRESHOLD:Ljava/util/HashMap;

    sget-object v1, Lcom/texa/careapp/model/ScheduleType;->HWY_PASS:Lcom/texa/careapp/model/ScheduleType;

    sget-object v2, Lcom/texa/careapp/model/ThresholdModel$Type;->HWY_PASS_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    sget-object v0, Lcom/texa/careapp/Constants;->CONVERSION_SCHEDULE_THRESHOLD:Ljava/util/HashMap;

    sget-object v1, Lcom/texa/careapp/model/ScheduleType;->ZTL_PASS:Lcom/texa/careapp/model/ScheduleType;

    sget-object v2, Lcom/texa/careapp/model/ThresholdModel$Type;->ZTL_PASS_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/texa/careapp/Constants;->ECO_DRIVING_IMAGES:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    const v2, 0x7f0800cf

    .line 770
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 771
    sget-object v2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_START:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v2

    const v3, 0x7f080143

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 772
    sget-object v2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_STOP:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v2

    const v3, 0x7f08010e

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 773
    sget-object v2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->ACCELERATIONS:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v2

    const v3, 0x7f0800d7

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 774
    sget-object v2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->BRAKES:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v2

    const v3, 0x7f0800dc

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 775
    sget-object v2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->HIGH_RPM_ENGINE_COLD:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v2

    const v3, 0x7f0800da

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 776
    sget-object v2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->PARKED_ENGINE_ON:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v2

    const v3, 0x7f0800e0

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 777
    sget-object v2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->PARKED_ENGINE_ON_COLD:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v2

    const v3, 0x7f0800e2

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 778
    sget-object v2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->HIGH_SPEED:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v2

    const v3, 0x7f0800de

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 779
    sget-object v2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_STOP_TEMP:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v2

    const v3, 0x7f080147

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 782
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/texa/careapp/Constants;->ECO_DRIVING_MAP_IMAGES:Landroid/util/SparseIntArray;

    const v2, 0x7f0800d0

    .line 785
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 786
    sget-object v2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_START:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v2

    const v3, 0x7f080144

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 787
    sget-object v2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_STOP:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v2

    const v3, 0x7f08010f

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 788
    sget-object v2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->ACCELERATIONS:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v2

    const v3, 0x7f0800d8

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 789
    sget-object v2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->BRAKES:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v2

    const v3, 0x7f0800dd

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 790
    sget-object v2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->HIGH_RPM_ENGINE_COLD:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v2

    const v3, 0x7f0800db

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 791
    sget-object v2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->PARKED_ENGINE_ON:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v2

    const v3, 0x7f0800e1

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 792
    sget-object v2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->PARKED_ENGINE_ON_COLD:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v2

    const v3, 0x7f0800e3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 793
    sget-object v2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->HIGH_SPEED:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v2

    const v3, 0x7f0800df

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 794
    sget-object v2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_STOP_TEMP:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v2

    const v3, 0x7f080148

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 797
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/texa/careapp/Constants;->ECO_DRIVING_TEXT:Landroid/util/SparseIntArray;

    const v2, 0x7f11097c

    .line 800
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 801
    sget-object v2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_START:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v2

    const v3, 0x7f11097e

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 802
    sget-object v2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_STOP:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v2

    const v3, 0x7f11097f

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 803
    sget-object v2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->ACCELERATIONS:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v2

    const v3, 0x7f11097b

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 804
    sget-object v2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->BRAKES:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v2

    const v3, 0x7f11097d

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 805
    sget-object v2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->HIGH_RPM_ENGINE_COLD:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v2

    const v3, 0x7f110981

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 806
    sget-object v2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->PARKED_ENGINE_ON:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v2

    const v3, 0x7f110984

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 807
    sget-object v2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->PARKED_ENGINE_ON_COLD:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v2

    const v3, 0x7f110983

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 808
    sget-object v2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->HIGH_SPEED:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v2

    const v3, 0x7f110982

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 809
    sget-object v2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_STOP_TEMP:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v2

    const v3, 0x7f110980

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 812
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/texa/careapp/Constants;->ECO_DRIVING_COLOR:Landroid/util/SparseIntArray;

    const v2, 0x7f06006e

    .line 815
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 816
    sget-object v1, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_START:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 817
    sget-object v1, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_STOP:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 818
    sget-object v1, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->ACCELERATIONS:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v1

    const v3, 0x7f06006f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 819
    sget-object v1, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->BRAKES:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 820
    sget-object v1, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->HIGH_RPM_ENGINE_COLD:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 821
    sget-object v1, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->PARKED_ENGINE_ON:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 822
    sget-object v1, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->PARKED_ENGINE_ON_COLD:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 823
    sget-object v1, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->HIGH_SPEED:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v1

    const v3, 0x7f060071

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 824
    sget-object v1, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_STOP_TEMP:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 827
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/texa/careapp/Constants;->ECO_DRIVING_PROFILE_TYPE:Landroid/util/SparseArray;

    .line 830
    sget-object v1, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->CHAUFFEUR:Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->getNumericType()I

    move-result v1

    sget-object v2, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->CHAUFFEUR:Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 831
    sget-object v1, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->EXPERIENCED:Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->getNumericType()I

    move-result v1

    sget-object v2, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->EXPERIENCED:Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 832
    sget-object v1, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->NEWBIE:Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->getNumericType()I

    move-result v1

    sget-object v2, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->NEWBIE:Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

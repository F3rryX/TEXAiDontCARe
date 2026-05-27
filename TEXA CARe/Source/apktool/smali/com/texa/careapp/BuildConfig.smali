.class public final Lcom/texa/careapp/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.texa.care"

.field public static final API_LOGGER_LEVEL:Lokhttp3/logging/HttpLoggingInterceptor$Level;

.field public static final APPLICATION_ID:Ljava/lang/String; = "com.texa.care"

.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field public static final CARE_PORTAL_URL:Ljava/lang/String; = "https://care.texa.com"

.field public static final COMMUNICATION_TYPE:Lcom/texa/carelib/communication/CommunicationType;

.field public static final DEBUG:Z = false

.field public static final DEFAULT_PASSWORD:Ljava/lang/String; = ""

.field public static final DEFAULT_USERNAME:Ljava/lang/String; = ""

.field public static final FEATURE_AUTOMATIC_FW_UPDATE:Z = true

.field public static final FEATURE_CHECK_GPS_WHEN_CARE_CONNECTED:Z = true

.field public static final FEATURE_CRASH_REPORTING:Z = true

.field public static final FEATURE_DISPLAY_ADVANCED_CARE_INFOS:Z = false

.field public static final FEATURE_DISPLAY_ALL_PARAMETERS:Z = false

.field public static final FEATURE_ENABLED_FAMILY_CONTACT:Z = false

.field public static final FEATURE_ENABLED_LOGOUT:Z = false

.field public static final FEATURE_LOG_DEBUG_ENABLED:Z = false

.field public static final FEATURE_LOG_TO_FILE_ON_SD:Z = false

.field public static final FEATURE_MAIL_SENDER_ENABLED:Z = false

.field public static final FEATURE_SETTINGS_SERVICES_ACTIVITY_ENABLED:Z = false

.field public static final FEATURE_SOS_ENABLE_POLICY:Ljava/lang/Integer;

.field public static final FEATURE_SYSTEM_CHECK:Z = true

.field public static final FEATURE_VALIDATE_PHONE_AT_LOGIN:Z = true

.field public static final FLAVOR:Ljava/lang/String; = "productionOfficial"

.field public static final FLAVOR_server:Ljava/lang/String; = "production"

.field public static final FLAVOR_target:Ljava/lang/String; = "official"

.field public static final HEADER_CARE_HWID:Ljava/lang/String; = ""

.field public static final MAX_VEHICLE_TO_ADD:Ljava/lang/Integer;

.field public static final NOTIFICATION_SOUND_FILTER_NOT_ANNOYNG_ENABLED:Z = true

.field public static final ONSCREEN_LOGGER_ENABLED:Z = false

.field public static final PREF_LOG_LEVEL:Ljava/lang/Integer;

.field public static final PREF_USER_LEARNED_DRAWER:Z = true

.field public static final SERVER_API_URL:Ljava/lang/String; = "https://careapi.texa.com/"

.field public static final SERVER_AUTH_URL:Ljava/lang/String; = "https://careauth.texa.com/"

.field public static final SERVER_CONTENT_URL:Ljava/lang/String; = "https://care.texa.com/"

.field public static final SERVER_HOST_SERVICE_BUS:Ljava/lang/String; = "https://carequeue-production.servicebus.windows.net/"

.field public static final SERVICE_BUS_HOST:Ljava/lang/String; = "carequeue-production.servicebus.windows.net"

.field public static final SERVICE_BUS_SHARED_ACCESS_KEY:Ljava/lang/String; = "NOES6YcOITD3rmjnKyeC0axR0YMuamjDNdjHAZCwjC0="

.field public static final SERVICE_BUS_SHARED_ACCESS_KEY_NAME:Ljava/lang/String; = "logsender_android"

.field public static final SERVICE_HUB_NAME:Ljava/lang/String; = "careapplog-production"

.field public static final SHAKE_FOR_SOS:Z = false

.field public static final SMARTPHONE_IMPACT_DETECTION_ENABLED:Z = true

.field public static final SOS_ALWAYS_DISABLED:I = 0x66

.field public static final SOS_ALWAYS_ENABLED:I = 0x65

.field public static final SOS_ENABLED_BY_PURCHASE:I = 0x67

.field public static final TIMEOUT_MANUAL_SOS_REQUEST:Ljava/lang/Integer;

.field public static final TTS_ENABLED:Z = false

.field public static final USE_FOREGROUND_SERVICE:Z = true

.field public static final VERSION_CODE:I = 0x9d

.field public static final VERSION_NAME:Ljava/lang/String; = "2.3.0"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    sput-object v0, Lcom/texa/careapp/BuildConfig;->API_LOGGER_LEVEL:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 22
    sget-object v0, Lcom/texa/carelib/communication/CommunicationType;->BLUETOOTH:Lcom/texa/carelib/communication/CommunicationType;

    sput-object v0, Lcom/texa/careapp/BuildConfig;->COMMUNICATION_TYPE:Lcom/texa/carelib/communication/CommunicationType;

    const/16 v0, 0x67

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/texa/careapp/BuildConfig;->FEATURE_SOS_ENABLE_POLICY:Ljava/lang/Integer;

    const/4 v0, 0x5

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/texa/careapp/BuildConfig;->MAX_VEHICLE_TO_ADD:Ljava/lang/Integer;

    const/4 v0, 0x4

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/texa/careapp/BuildConfig;->PREF_LOG_LEVEL:Ljava/lang/Integer;

    const/16 v0, 0xa

    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/texa/careapp/BuildConfig;->TIMEOUT_MANUAL_SOS_REQUEST:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

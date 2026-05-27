.class public Lcom/texa/careapp/model/ServerLogModel$LogNote;
.super Ljava/lang/Object;
.source "ServerLogModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/model/ServerLogModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogNote"
.end annotation


# static fields
.field public static BLUETOOTH_DISABLED:Ljava/lang/String; = "Bluetooth is disabled"

.field public static BLUETOOTH_ENABLED:Ljava/lang/String; = "Bluetooth is enabled"

.field public static CARE_CONFIGURATION_LOADED:Ljava/lang/String; = "new configuration loaded"

.field public static CARE_CONNECTED:Ljava/lang/String; = "connected"

.field public static CARE_CONNECTING:Ljava/lang/String; = "connectiong"

.field public static CARE_CONNECTION_LOST:Ljava/lang/String; = "connection lost"

.field public static CARE_DISCONNECTED:Ljava/lang/String; = "disconnected"

.field public static CARE_FIRST_CONFIGURATION:Ljava/lang/String; = "first configuration"

.field public static CARE_RECONNECTING:Ljava/lang/String; = "reconnecting"

.field public static CARE_SCANNING:Ljava/lang/String; = "scanning"

.field public static CRASH_DETECTED_WITHOUT_ACCEPT_SERVICE:Ljava/lang/String; = "SOS service not accepted"

.field public static CRASH_DETECTED_WITHOUT_ACTIVE_SERVICE:Ljava/lang/String; = "SOS service not activated"

.field public static CRASH_DETECTED_WITHOUT_PHONE_NUMBER:Ljava/lang/String; = "phone number missing/not validated"

.field public static CRASH_DETECTED_WITHOUT_PURCHASED_SERVICE:Ljava/lang/String; = "SOS service not purchased"

.field public static GET_GPS_DISABLED:Ljava/lang/String; = "GPS is disabled"

.field public static IMPACT_DETECTED_BY_SMARTPHONE_NOT_SUPPORTED:Ljava/lang/String; = "phone impact detection NOT available"

.field public static LAUNCH_SERVICE_ON_BOOT:Ljava/lang/String; = "system boot"

.field public static OTHER_CRASH_DETECTED:Ljava/lang/String; = "emergency countdown already fired"

.field public static PIN_ERROR:Ljava/lang/String; = "PIN error"

.field public static SERVICE_DESTROYED:Ljava/lang/String; = "service destroyed"

.field public static SOS_CALL_TICKET_FAILED:Ljava/lang/String; = "SOS request failed"

.field public static SOS_COUNTDOWN_STOPPED:Ljava/lang/String; = "SOS countdown stopped by user"

.field public static START_ON_SERVICE_LAUNCH:Ljava/lang/String; = "service launched"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lcom/texa/careapp/fcm/FcmAlarmNotification;
.super Ljava/lang/Object;
.source "FcmAlarmNotification.java"


# static fields
.field public static ALARM_STATE_ACTIVE:Ljava/lang/String; = "ACTIVE"

.field public static ALARM_STATE_IDLE:Ljava/lang/String; = "IDLE"

.field public static ALARM_STATE_WARNING:Ljava/lang/String; = "WARNING"


# instance fields
.field private alarm_state:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private alarm_type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private alarm_value:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private notification_type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private send_time:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private user_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private vehicle_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "obj"

    .line 65
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    const-string v1, "notification_type"

    .line 68
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/texa/careapp/fcm/FcmAlarmNotification;->notification_type:Ljava/lang/String;

    .line 69
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string/jumbo v1, "user_id"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/fcm/FcmAlarmNotification;->user_id:Ljava/lang/String;

    .line 70
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string/jumbo v1, "vehicle_id"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/fcm/FcmAlarmNotification;->vehicle_id:Ljava/lang/String;

    .line 71
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v1, "alarm_type"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/fcm/FcmAlarmNotification;->alarm_type:Ljava/lang/String;

    .line 72
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v0, "alarm_state"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/fcm/FcmAlarmNotification;->alarm_state:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAlarm_state()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/texa/careapp/fcm/FcmAlarmNotification;->alarm_state:Ljava/lang/String;

    return-object v0
.end method

.method public getAlarm_type()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/texa/careapp/fcm/FcmAlarmNotification;->alarm_type:Ljava/lang/String;

    return-object v0
.end method

.method public getAlarm_value()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/texa/careapp/fcm/FcmAlarmNotification;->alarm_value:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/texa/careapp/fcm/FcmAlarmNotification;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getNotification_type()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/texa/careapp/fcm/FcmAlarmNotification;->notification_type:Ljava/lang/String;

    return-object v0
.end method

.method public getSend_time()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/texa/careapp/fcm/FcmAlarmNotification;->send_time:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/texa/careapp/fcm/FcmAlarmNotification;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public getVehicle_id()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/texa/careapp/fcm/FcmAlarmNotification;->vehicle_id:Ljava/lang/String;

    return-object v0
.end method

.method public setAlarm_state(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/texa/careapp/fcm/FcmAlarmNotification;->alarm_state:Ljava/lang/String;

    return-void
.end method

.method public setAlarm_type(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/texa/careapp/fcm/FcmAlarmNotification;->alarm_type:Ljava/lang/String;

    return-void
.end method

.method public setAlarm_value(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/texa/careapp/fcm/FcmAlarmNotification;->alarm_value:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/texa/careapp/fcm/FcmAlarmNotification;->message:Ljava/lang/String;

    return-void
.end method

.method public setNotification_type(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/texa/careapp/fcm/FcmAlarmNotification;->notification_type:Ljava/lang/String;

    return-void
.end method

.method public setSend_time(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/texa/careapp/fcm/FcmAlarmNotification;->send_time:Ljava/lang/String;

    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/texa/careapp/fcm/FcmAlarmNotification;->user_id:Ljava/lang/String;

    return-void
.end method

.method public setVehicle_id(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/texa/careapp/fcm/FcmAlarmNotification;->vehicle_id:Ljava/lang/String;

    return-void
.end method

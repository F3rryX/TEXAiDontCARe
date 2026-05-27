.class synthetic Lcom/texa/careapp/alarms/VehicleAlarmNotifier$1;
.super Ljava/lang/Object;
.source "VehicleAlarmNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/alarms/VehicleAlarmNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$texa$careapp$model$AlarmType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 68
    invoke-static {}, Lcom/texa/careapp/model/AlarmType;->values()[Lcom/texa/careapp/model/AlarmType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/texa/careapp/alarms/VehicleAlarmNotifier$1;->$SwitchMap$com$texa$careapp$model$AlarmType:[I

    :try_start_0
    sget-object v1, Lcom/texa/careapp/model/AlarmType;->ALTERNATOR_HIGH:Lcom/texa/careapp/model/AlarmType;

    invoke-virtual {v1}, Lcom/texa/careapp/model/AlarmType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/texa/careapp/alarms/VehicleAlarmNotifier$1;->$SwitchMap$com$texa$careapp$model$AlarmType:[I

    sget-object v1, Lcom/texa/careapp/model/AlarmType;->ALTERNATOR_LOW:Lcom/texa/careapp/model/AlarmType;

    invoke-virtual {v1}, Lcom/texa/careapp/model/AlarmType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.class synthetic Lcom/texa/careapp/alarms/BatteryChargeObserver$2;
.super Ljava/lang/Object;
.source "BatteryChargeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/alarms/BatteryChargeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$texa$careapp$model$AlarmStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 74
    invoke-static {}, Lcom/texa/careapp/model/AlarmStatus;->values()[Lcom/texa/careapp/model/AlarmStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/texa/careapp/alarms/BatteryChargeObserver$2;->$SwitchMap$com$texa$careapp$model$AlarmStatus:[I

    :try_start_0
    sget-object v1, Lcom/texa/careapp/model/AlarmStatus;->RED:Lcom/texa/careapp/model/AlarmStatus;

    invoke-virtual {v1}, Lcom/texa/careapp/model/AlarmStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/texa/careapp/alarms/BatteryChargeObserver$2;->$SwitchMap$com$texa$careapp$model$AlarmStatus:[I

    sget-object v1, Lcom/texa/careapp/model/AlarmStatus;->YELLOW:Lcom/texa/careapp/model/AlarmStatus;

    invoke-virtual {v1}, Lcom/texa/careapp/model/AlarmStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/texa/careapp/alarms/BatteryChargeObserver$2;->$SwitchMap$com$texa$careapp$model$AlarmStatus:[I

    sget-object v1, Lcom/texa/careapp/model/AlarmStatus;->GREEN:Lcom/texa/careapp/model/AlarmStatus;

    invoke-virtual {v1}, Lcom/texa/careapp/model/AlarmStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

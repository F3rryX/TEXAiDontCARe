.class synthetic Lcom/texa/careapp/model/ScheduleDataManager$1;
.super Ljava/lang/Object;
.source "ScheduleDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/model/ScheduleDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$texa$careapp$model$ScheduleType:[I

.field static final synthetic $SwitchMap$com$texa$careapp$model$ThresholdModel$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 187
    invoke-static {}, Lcom/texa/careapp/model/ScheduleType;->values()[Lcom/texa/careapp/model/ScheduleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/texa/careapp/model/ScheduleDataManager$1;->$SwitchMap$com$texa$careapp$model$ScheduleType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/texa/careapp/model/ScheduleType;->LICENSE:Lcom/texa/careapp/model/ScheduleType;

    invoke-virtual {v2}, Lcom/texa/careapp/model/ScheduleType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :catch_0
    invoke-static {}, Lcom/texa/careapp/model/ThresholdModel$Type;->values()[Lcom/texa/careapp/model/ThresholdModel$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/texa/careapp/model/ScheduleDataManager$1;->$SwitchMap$com$texa$careapp$model$ThresholdModel$Type:[I

    :try_start_1
    sget-object v2, Lcom/texa/careapp/model/ThresholdModel$Type;->LICENCE:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-virtual {v2}, Lcom/texa/careapp/model/ThresholdModel$Type;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/texa/careapp/model/ScheduleDataManager$1;->$SwitchMap$com$texa$careapp$model$ThresholdModel$Type:[I

    sget-object v1, Lcom/texa/careapp/model/ThresholdModel$Type;->TYRES_SWAP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-virtual {v1}, Lcom/texa/careapp/model/ThresholdModel$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/texa/careapp/model/ScheduleDataManager$1;->$SwitchMap$com$texa$careapp$model$ThresholdModel$Type:[I

    sget-object v1, Lcom/texa/careapp/model/ThresholdModel$Type;->TYRES_FITTING:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-virtual {v1}, Lcom/texa/careapp/model/ThresholdModel$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

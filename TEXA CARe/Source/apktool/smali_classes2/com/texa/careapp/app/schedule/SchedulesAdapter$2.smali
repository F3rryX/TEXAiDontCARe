.class synthetic Lcom/texa/careapp/app/schedule/SchedulesAdapter$2;
.super Ljava/lang/Object;
.source "SchedulesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/schedule/SchedulesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$texa$careapp$model$ScheduleType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 173
    invoke-static {}, Lcom/texa/careapp/model/ScheduleType;->values()[Lcom/texa/careapp/model/ScheduleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/texa/careapp/app/schedule/SchedulesAdapter$2;->$SwitchMap$com$texa$careapp$model$ScheduleType:[I

    :try_start_0
    sget-object v1, Lcom/texa/careapp/model/ScheduleType;->TYRES_SWAP:Lcom/texa/careapp/model/ScheduleType;

    invoke-virtual {v1}, Lcom/texa/careapp/model/ScheduleType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.class synthetic Lcom/texa/careapp/utils/RxCareLifecycle$1;
.super Ljava/lang/Object;
.source "RxCareLifecycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/utils/RxCareLifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$texa$careapp$utils$RxCareLifecycle$CareEvent:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    invoke-static {}, Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;->values()[Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/texa/careapp/utils/RxCareLifecycle$1;->$SwitchMap$com$texa$careapp$utils$RxCareLifecycle$CareEvent:[I

    :try_start_0
    sget-object v1, Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;->CONNECTED:Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/texa/careapp/utils/RxCareLifecycle$1;->$SwitchMap$com$texa$careapp$utils$RxCareLifecycle$CareEvent:[I

    sget-object v1, Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;->TRIP_START:Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.class synthetic Lcom/texa/careapp/views/CirclePageIndicator$2;
.super Ljava/lang/Object;
.source "CirclePageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/views/CirclePageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$texa$careapp$views$CirclePageIndicator$Mode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 150
    invoke-static {}, Lcom/texa/careapp/views/CirclePageIndicator$Mode;->values()[Lcom/texa/careapp/views/CirclePageIndicator$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/texa/careapp/views/CirclePageIndicator$2;->$SwitchMap$com$texa$careapp$views$CirclePageIndicator$Mode:[I

    :try_start_0
    sget-object v1, Lcom/texa/careapp/views/CirclePageIndicator$Mode;->INSIDE:Lcom/texa/careapp/views/CirclePageIndicator$Mode;

    invoke-virtual {v1}, Lcom/texa/careapp/views/CirclePageIndicator$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/texa/careapp/views/CirclePageIndicator$2;->$SwitchMap$com$texa$careapp$views$CirclePageIndicator$Mode:[I

    sget-object v1, Lcom/texa/careapp/views/CirclePageIndicator$Mode;->OUTSIDE:Lcom/texa/careapp/views/CirclePageIndicator$Mode;

    invoke-virtual {v1}, Lcom/texa/careapp/views/CirclePageIndicator$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/texa/careapp/views/CirclePageIndicator$2;->$SwitchMap$com$texa$careapp$views$CirclePageIndicator$Mode:[I

    sget-object v1, Lcom/texa/careapp/views/CirclePageIndicator$Mode;->SOLO:Lcom/texa/careapp/views/CirclePageIndicator$Mode;

    invoke-virtual {v1}, Lcom/texa/careapp/views/CirclePageIndicator$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

.class synthetic Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure$2;
.super Ljava/lang/Object;
.source "MockFirmwareUpgradeProcedure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$texa$carelib$core$AppType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 197
    invoke-static {}, Lcom/texa/carelib/core/AppType;->values()[Lcom/texa/carelib/core/AppType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure$2;->$SwitchMap$com$texa$carelib$core$AppType:[I

    :try_start_0
    sget-object v1, Lcom/texa/carelib/core/AppType;->MAIN:Lcom/texa/carelib/core/AppType;

    invoke-virtual {v1}, Lcom/texa/carelib/core/AppType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure$2;->$SwitchMap$com$texa$carelib$core$AppType:[I

    sget-object v1, Lcom/texa/carelib/core/AppType;->SERVICE:Lcom/texa/carelib/core/AppType;

    invoke-virtual {v1}, Lcom/texa/carelib/core/AppType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

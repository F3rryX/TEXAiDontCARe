.class synthetic Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$2;
.super Ljava/lang/Object;
.source "HttpServiceFirmwareDownloadProcedure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$texa$carelib$webservices$FirmwareType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 183
    invoke-static {}, Lcom/texa/carelib/webservices/FirmwareType;->values()[Lcom/texa/carelib/webservices/FirmwareType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$2;->$SwitchMap$com$texa$carelib$webservices$FirmwareType:[I

    :try_start_0
    sget-object v1, Lcom/texa/carelib/webservices/FirmwareType;->Main:Lcom/texa/carelib/webservices/FirmwareType;

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/FirmwareType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareDownloadProcedure$2;->$SwitchMap$com$texa$carelib$webservices$FirmwareType:[I

    sget-object v1, Lcom/texa/carelib/webservices/FirmwareType;->Service:Lcom/texa/carelib/webservices/FirmwareType;

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/FirmwareType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

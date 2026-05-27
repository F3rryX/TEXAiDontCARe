.class public Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrierFactory;
.super Ljava/lang/Object;
.source "SerialFileCarrierFactory.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SerialFileCarrierFactory"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTransferBlockCount(Lcom/texa/carelib/profile/Profile;)I
    .locals 3

    .line 46
    invoke-interface {p1}, Lcom/texa/carelib/profile/Profile;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "com.texa.carelib.profile.Profile#EXTRA_TRANSFER_BLOCK_COUNT"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, p1

    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    sget-object p1, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrierFactory;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Invalid argument: EXTRA_TRANSFER_BLOCK_COUNT. Default value will be used."

    invoke-static {p1, v2, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return v1
.end method


# virtual methods
.method public create(Lcom/texa/carelib/profile/internal/SerialProfile;I)Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;
    .locals 4

    .line 28
    sget-object v0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrierFactory;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Creating FileCarrier for file type: %d"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrierFactory;->getTransferBlockCount(Lcom/texa/carelib/profile/Profile;)I

    move-result v0

    const/16 v1, 0x14

    if-ne v1, p2, :cond_0

    .line 34
    new-instance p2, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialCrashInformationFileCarrier;

    invoke-direct {p2, p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialCrashInformationFileCarrier;-><init>(Lcom/texa/carelib/profile/internal/SerialProfile;)V

    return-object p2

    :cond_0
    const/16 v1, 0x13

    if-ne v1, p2, :cond_1

    .line 38
    new-instance p2, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;

    invoke-direct {p2, p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;-><init>(Lcom/texa/carelib/profile/internal/SerialProfile;)V

    return-object p2

    .line 42
    :cond_1
    new-instance p2, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;

    invoke-direct {p2, p1, v0}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;-><init>(Lcom/texa/carelib/profile/internal/SerialProfile;I)V

    return-object p2
.end method

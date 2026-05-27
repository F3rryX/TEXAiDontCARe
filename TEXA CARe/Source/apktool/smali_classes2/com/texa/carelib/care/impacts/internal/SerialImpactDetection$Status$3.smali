.class final enum Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status$3;
.super Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;
.source "SerialImpactDetection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 532
    invoke-direct {p0, p1, p2, v0}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;-><init>(Ljava/lang/String;ILcom/texa/carelib/care/impacts/internal/SerialImpactDetection$1;)V

    return-void
.end method

.method private onMessageReceivedBeginFileDataCrash(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 5

    if-nez p3, :cond_1

    .line 545
    invoke-static {p2}, Lcom/texa/carelib/care/impacts/internal/parser/BeginFileDataCrashParser;->parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/care/impacts/internal/parser/BeginFileDataCrashParser$BeginFileDataCrashResponse;

    move-result-object p2

    .line 547
    sget-object p3, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/texa/carelib/care/impacts/internal/parser/BeginFileDataCrashParser$BeginFileDataCrashResponse;->getFileType()I

    move-result v1

    invoke-static {v1}, Lcom/texa/carelib/profile/internal/filecarrier/FileType;->getName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p2}, Lcom/texa/carelib/care/impacts/internal/parser/BeginFileDataCrashParser$BeginFileDataCrashResponse;->getFileType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    invoke-virtual {p2}, Lcom/texa/carelib/care/impacts/internal/parser/BeginFileDataCrashParser$BeginFileDataCrashResponse;->getFileSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const-string v1, "Received file_type %s(%d) with size: %d"

    invoke-static {p3, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 549
    invoke-virtual {p2}, Lcom/texa/carelib/care/impacts/internal/parser/BeginFileDataCrashParser$BeginFileDataCrashResponse;->getFileSize()I

    move-result p3

    if-lez p3, :cond_0

    .line 550
    invoke-static {p1}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->access$400(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;)Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    move-result-object p3

    invoke-interface {p3}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->getSerialFileCarrier()Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;

    move-result-object p3

    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->getProfile()Lcom/texa/carelib/profile/Profile;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/profile/Profile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/profile/ProfileDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/texa/carelib/care/impacts/internal/parser/BeginFileDataCrashParser$BeginFileDataCrashResponse;->getFileType()I

    move-result v1

    invoke-virtual {p2}, Lcom/texa/carelib/care/impacts/internal/parser/BeginFileDataCrashParser$BeginFileDataCrashResponse;->getFileSize()I

    move-result p2

    new-instance v4, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status$3$1;

    invoke-direct {v4, p0, p1}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status$3$1;-><init>(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status$3;Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;)V

    invoke-virtual {p3, v0, v1, p2, v4}, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->receiveFileWithType(Landroid/content/Context;IILcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 600
    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->getImpacts()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->getAccelerationEvents()Ljava/util/List;

    move-result-object p3

    new-instance v0, Lcom/texa/carelib/core/CareError$Builder;

    const/16 v1, 0xa

    invoke-direct {v0, v3, v1}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->getProfile()Lcom/texa/carelib/profile/Profile;

    move-result-object v1

    invoke-interface {v1}, Lcom/texa/carelib/profile/Profile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/profile/ProfileDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/texa/carelib/profile/R$string;->error_could_not_receive_file:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->access$200(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;Ljava/util/List;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    .line 601
    sget-object p1, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->TAG:Ljava/lang/String;

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "Could not receive crash report file."

    invoke-static {p1, p3, p2}, Lcom/texa/carelib/core/logging/CareLog;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 604
    :cond_0
    sget-object p2, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->TAG:Ljava/lang/String;

    new-array p3, v2, [Ljava/lang/Object;

    const-string v0, "Invalid file size."

    invoke-static {p2, v0, p3}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 608
    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->getImpacts()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->getAccelerationEvents()Ljava/util/List;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->access$200(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;Ljava/util/List;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 611
    :cond_1
    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->getImpacts()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->getAccelerationEvents()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2, v0, p3}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->access$200(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;Ljava/util/List;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method onMessageReceived(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 2

    .line 535
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v0

    const/16 v1, 0x37

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 537
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status$3;->onMessageReceivedBeginFileDataCrash(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    :goto_0
    return-void
.end method

.class public Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;
.super Ljava/lang/Object;
.source "FirmwareUpdateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/update/FirmwareUpdateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FwUpdateInfos"
.end annotation


# instance fields
.field private final main:Lcom/texa/carelib/core/utils/FirmwareVersion;

.field private final mainPending:Lcom/texa/carelib/core/utils/FirmwareVersion;

.field public final serialNumber:Ljava/lang/String;

.field private final service:Lcom/texa/carelib/core/utils/FirmwareVersion;

.field private final servicePending:Lcom/texa/carelib/core/utils/FirmwareVersion;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;)V
    .locals 0

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput-object p1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;->serialNumber:Ljava/lang/String;

    .line 452
    iput-object p2, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;->main:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 453
    iput-object p3, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;->mainPending:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 454
    iput-object p4, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;->service:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 455
    iput-object p5, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;->servicePending:Lcom/texa/carelib/core/utils/FirmwareVersion;

    return-void
.end method


# virtual methods
.method public getCurrentMainAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;->mainPending:Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isFirmwareVersionValid(Lcom/texa/carelib/core/utils/FirmwareVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;->mainPending:Lcom/texa/carelib/core/utils/FirmwareVersion;

    return-object v0

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;->main:Lcom/texa/carelib/core/utils/FirmwareVersion;

    return-object v0
.end method

.method public getCurrentServiceAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;->servicePending:Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isFirmwareVersionValid(Lcom/texa/carelib/core/utils/FirmwareVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;->servicePending:Lcom/texa/carelib/core/utils/FirmwareVersion;

    return-object v0

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;->service:Lcom/texa/carelib/core/utils/FirmwareVersion;

    return-object v0
.end method

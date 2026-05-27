.class public final synthetic Lcom/texa/careapp/app/update/FirmwareUpdateController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/update/FirmwareUpdateController;

.field public final synthetic f$1:Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/update/FirmwareUpdateController;Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/app/update/FirmwareUpdateController;

    iput-object p2, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController$$ExternalSyntheticLambda0;->f$1:Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/app/update/FirmwareUpdateController;

    iget-object v1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController$$ExternalSyntheticLambda0;->f$1:Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;

    check-cast p1, Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;

    invoke-virtual {v0, v1, p1}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->lambda$checkForUpdatesOnServer$1$com-texa-careapp-app-update-FirmwareUpdateController(Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;)V

    return-void
.end method

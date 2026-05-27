.class public final synthetic Lcom/texa/careapp/app/update/FirmwareUpdateController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/update/FirmwareUpdateController;

.field public final synthetic f$1:Lcom/texa/carelib/webservices/FirmwareType;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/update/FirmwareUpdateController;Lcom/texa/carelib/webservices/FirmwareType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/app/update/FirmwareUpdateController;

    iput-object p2, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController$$ExternalSyntheticLambda1;->f$1:Lcom/texa/carelib/webservices/FirmwareType;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/app/update/FirmwareUpdateController;

    iget-object v1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController$$ExternalSyntheticLambda1;->f$1:Lcom/texa/carelib/webservices/FirmwareType;

    check-cast p1, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadCompletedEvent;

    invoke-virtual {v0, v1, p1}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->lambda$beginUpgrade$2$com-texa-careapp-app-update-FirmwareUpdateController(Lcom/texa/carelib/webservices/FirmwareType;Lcom/texa/carelib/webservices/ServiceFirmwareDownloadCompletedEvent;)V

    return-void
.end method

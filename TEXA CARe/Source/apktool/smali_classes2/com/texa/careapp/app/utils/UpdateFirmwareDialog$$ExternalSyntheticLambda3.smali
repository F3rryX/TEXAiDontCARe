.class public final synthetic Lcom/texa/careapp/app/utils/UpdateFirmwareDialog$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;

.field public final synthetic f$1:Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog$$ExternalSyntheticLambda3;->f$0:Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;

    iput-object p2, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog$$ExternalSyntheticLambda3;->f$1:Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog$$ExternalSyntheticLambda3;->f$0:Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;

    iget-object v1, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog$$ExternalSyntheticLambda3;->f$1:Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;

    check-cast p1, Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;

    invoke-virtual {v0, v1, p1}, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->lambda$checkForUpdatesOnServer$1$com-texa-careapp-app-utils-UpdateFirmwareDialog(Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;)V

    return-void
.end method

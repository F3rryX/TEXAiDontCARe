.class public final synthetic Lcom/texa/careapp/app/utils/UpdateFirmwareDialog$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;

.field public final synthetic f$1:Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog$$ExternalSyntheticLambda6;->f$0:Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;

    iput-object p2, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog$$ExternalSyntheticLambda6;->f$1:Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog$$ExternalSyntheticLambda6;->f$0:Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;

    iget-object v1, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog$$ExternalSyntheticLambda6;->f$1:Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->lambda$parseServerResponse$5$com-texa-careapp-app-utils-UpdateFirmwareDialog(Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;)V

    return-void
.end method

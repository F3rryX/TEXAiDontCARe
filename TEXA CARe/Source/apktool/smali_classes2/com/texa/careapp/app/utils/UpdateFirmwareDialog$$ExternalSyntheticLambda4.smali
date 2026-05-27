.class public final synthetic Lcom/texa/careapp/app/utils/UpdateFirmwareDialog$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog$$ExternalSyntheticLambda4;->f$0:Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog$$ExternalSyntheticLambda4;->f$0:Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;

    check-cast p1, Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;

    invoke-static {v0, p1}, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->$r8$lambda$bM5mXl4s5HFPw8gTADQlgcwPojU(Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;)V

    return-void
.end method

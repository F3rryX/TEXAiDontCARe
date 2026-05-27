.class public final synthetic Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;

.field public final synthetic f$1:Lcom/texa/careapp/model/DongleModel;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;Lcom/texa/careapp/model/DongleModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen$$ExternalSyntheticLambda4;->f$0:Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;

    iput-object p2, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen$$ExternalSyntheticLambda4;->f$1:Lcom/texa/careapp/model/DongleModel;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen$$ExternalSyntheticLambda4;->f$0:Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen$$ExternalSyntheticLambda4;->f$1:Lcom/texa/careapp/model/DongleModel;

    check-cast p1, Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;

    invoke-virtual {v0, v1, p1}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->lambda$loadUpdateInfos$9$com-texa-careapp-app-settings-settingscare-SettingsCareScreen(Lcom/texa/careapp/model/DongleModel;Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;)V

    return-void
.end method

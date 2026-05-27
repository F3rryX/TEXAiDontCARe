.class public final synthetic Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen$$ExternalSyntheticLambda5;->f$0:Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen$$ExternalSyntheticLambda5;->f$0:Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;

    check-cast p1, Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->lambda$updateCareInfos$4$com-texa-careapp-app-settings-settingscare-SettingsCareScreen(Lcom/texa/careapp/model/DongleModel;)V

    return-void
.end method

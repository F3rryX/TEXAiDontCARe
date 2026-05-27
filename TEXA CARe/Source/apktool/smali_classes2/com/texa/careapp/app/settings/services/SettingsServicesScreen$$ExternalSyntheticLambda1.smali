.class public final synthetic Lcom/texa/careapp/app/settings/services/SettingsServicesScreen$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;

    check-cast p1, Lcom/texa/careapp/networking/response/ServiceListResponse;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->lambda$afterViewInjection$0$com-texa-careapp-app-settings-services-SettingsServicesScreen(Lcom/texa/careapp/networking/response/ServiceListResponse;)V

    return-void
.end method

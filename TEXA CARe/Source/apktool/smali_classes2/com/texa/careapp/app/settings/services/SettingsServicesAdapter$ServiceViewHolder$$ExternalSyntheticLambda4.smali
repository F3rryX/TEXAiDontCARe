.class public final synthetic Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda4;->f$0:Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda4;->f$0:Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;

    check-cast p1, Lcom/texa/careapp/checks/Check$Result;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->lambda$checkSosPrerequisite$4$com-texa-careapp-app-settings-services-SettingsServicesAdapter$ServiceViewHolder(Lcom/texa/careapp/checks/Check$Result;)V

    return-void
.end method

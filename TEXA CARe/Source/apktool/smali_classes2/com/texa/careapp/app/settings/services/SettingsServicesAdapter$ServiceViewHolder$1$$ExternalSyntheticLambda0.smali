.class public final synthetic Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$1;

.field public final synthetic f$1:Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$UpdateData;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$1;Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$UpdateData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$1$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$1;

    iput-object p2, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$1$$ExternalSyntheticLambda0;->f$1:Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$UpdateData;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$1$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$1;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$1$$ExternalSyntheticLambda0;->f$1:Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$UpdateData;

    check-cast p1, Lcom/texa/careapp/model/ServiceDataModel;

    invoke-virtual {v0, v1, p1}, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$1;->lambda$acceptedCondition$0$com-texa-careapp-app-settings-services-SettingsServicesAdapter$ServiceViewHolder$1(Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$UpdateData;Lcom/texa/careapp/model/ServiceDataModel;)V

    return-void
.end method

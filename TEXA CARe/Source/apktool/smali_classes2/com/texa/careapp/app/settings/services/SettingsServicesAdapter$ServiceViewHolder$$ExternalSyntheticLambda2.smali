.class public final synthetic Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;

.field public final synthetic f$1:Lcom/texa/care/navigation/Navigator;

.field public final synthetic f$2:Lcom/texa/careapp/model/ServiceDataModel;

.field public final synthetic f$3:Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$UpdateData;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;Lcom/texa/care/navigation/Navigator;Lcom/texa/careapp/model/ServiceDataModel;Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$UpdateData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda2;->f$0:Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;

    iput-object p2, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda2;->f$1:Lcom/texa/care/navigation/Navigator;

    iput-object p3, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda2;->f$2:Lcom/texa/careapp/model/ServiceDataModel;

    iput-object p4, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda2;->f$3:Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$UpdateData;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda2;->f$0:Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda2;->f$1:Lcom/texa/care/navigation/Navigator;

    iget-object v2, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda2;->f$2:Lcom/texa/careapp/model/ServiceDataModel;

    iget-object v3, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda2;->f$3:Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$UpdateData;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->lambda$bindView$0$com-texa-careapp-app-settings-services-SettingsServicesAdapter$ServiceViewHolder(Lcom/texa/care/navigation/Navigator;Lcom/texa/careapp/model/ServiceDataModel;Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$UpdateData;Landroid/view/View;)V

    return-void
.end method

.class public final synthetic Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/model/DongleDataManager;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/texa/careapp/model/ServiceDataModel;

.field public final synthetic f$3:Lcom/texa/care/navigation/Navigator;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/model/DongleDataManager;Landroid/content/Context;Lcom/texa/careapp/model/ServiceDataModel;Lcom/texa/care/navigation/Navigator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda3;->f$0:Lcom/texa/careapp/model/DongleDataManager;

    iput-object p2, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda3;->f$2:Lcom/texa/careapp/model/ServiceDataModel;

    iput-object p4, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda3;->f$3:Lcom/texa/care/navigation/Navigator;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda3;->f$0:Lcom/texa/careapp/model/DongleDataManager;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda3;->f$2:Lcom/texa/careapp/model/ServiceDataModel;

    iget-object v3, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda3;->f$3:Lcom/texa/care/navigation/Navigator;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->lambda$bindView$3(Lcom/texa/careapp/model/DongleDataManager;Landroid/content/Context;Lcom/texa/careapp/model/ServiceDataModel;Lcom/texa/care/navigation/Navigator;Landroid/view/View;)V

    return-void
.end method

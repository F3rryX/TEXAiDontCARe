.class public final synthetic Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/texa/careapp/model/ServiceDataModel;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/texa/careapp/model/ServiceDataModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda1;->f$1:Lcom/texa/careapp/model/ServiceDataModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda1;->f$1:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-static {v0, v1, p1}, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->lambda$bindView$2(Landroid/content/Context;Lcom/texa/careapp/model/ServiceDataModel;Landroid/view/View;)V

    return-void
.end method

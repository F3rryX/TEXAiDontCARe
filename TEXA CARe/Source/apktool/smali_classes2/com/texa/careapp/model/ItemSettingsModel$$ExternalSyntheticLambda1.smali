.class public final synthetic Lcom/texa/careapp/model/ItemSettingsModel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/widget/RelativeLayout;

.field public final synthetic f$2:Lcom/texa/careapp/model/ServiceDataModel;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/texa/careapp/model/ServiceDataModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/model/ItemSettingsModel$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/texa/careapp/model/ItemSettingsModel$$ExternalSyntheticLambda1;->f$1:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/texa/careapp/model/ItemSettingsModel$$ExternalSyntheticLambda1;->f$2:Lcom/texa/careapp/model/ServiceDataModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/texa/careapp/model/ItemSettingsModel$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/texa/careapp/model/ItemSettingsModel$$ExternalSyntheticLambda1;->f$1:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/texa/careapp/model/ItemSettingsModel$$ExternalSyntheticLambda1;->f$2:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-static {v0, v1, v2, p1}, Lcom/texa/careapp/model/ItemSettingsModel;->lambda$setOnCLickListener$2(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/texa/careapp/model/ServiceDataModel;Landroid/view/View;)V

    return-void
.end method

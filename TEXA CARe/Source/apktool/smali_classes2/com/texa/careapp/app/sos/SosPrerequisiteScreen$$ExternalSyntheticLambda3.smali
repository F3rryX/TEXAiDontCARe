.class public final synthetic Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;

.field public final synthetic f$1:Lcom/texa/careapp/model/ServiceDataModel;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;Lcom/texa/careapp/model/ServiceDataModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$$ExternalSyntheticLambda3;->f$0:Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;

    iput-object p2, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$$ExternalSyntheticLambda3;->f$1:Lcom/texa/careapp/model/ServiceDataModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$$ExternalSyntheticLambda3;->f$0:Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;

    iget-object v1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$$ExternalSyntheticLambda3;->f$1:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-virtual {v0, v1, p1}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->lambda$clickOnTermsOfService$4$com-texa-careapp-app-sos-SosPrerequisiteScreen(Lcom/texa/careapp/model/ServiceDataModel;Landroid/view/View;)V

    return-void
.end method

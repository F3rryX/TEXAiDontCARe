.class Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog$1;
.super Ljava/util/ArrayList;
.source "ActivationServiceSelectContactNumberDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;->lambda$afterViewInjection$0(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;

.field final synthetic val$finalI:I


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;I)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog$1;->this$0:Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;

    iput p2, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog$1;->val$finalI:I

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-static {p1}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;->access$000(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;)Lcom/texa/careapp/model/ContactModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/careapp/model/ContactModel;->getPhoneNumbers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog$1;->add(Ljava/lang/Object;)Z

    return-void
.end method

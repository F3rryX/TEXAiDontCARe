.class Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$3;
.super Ljava/lang/Object;
.source "ActivationServiceContactScreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->setValues(Lcom/texa/careapp/model/ContactModel;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Spinner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;

.field final synthetic val$contact:Lcom/texa/careapp/model/ContactModel;

.field final synthetic val$spinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;Lcom/texa/careapp/model/ContactModel;Landroid/widget/Spinner;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$3;->this$0:Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;

    iput-object p2, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$3;->val$contact:Lcom/texa/careapp/model/ContactModel;

    iput-object p3, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$3;->val$spinner:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 379
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$3;->val$contact:Lcom/texa/careapp/model/ContactModel;

    iget-object p2, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$3;->val$spinner:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p2

    check-cast p2, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceNumberPrefixSpinnerAdapter;

    invoke-virtual {p2, p3}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceNumberPrefixSpinnerAdapter;->getPrefix(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/careapp/model/ContactModel;->setPrefix(Ljava/lang/String;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 384
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$3;->val$contact:Lcom/texa/careapp/model/ContactModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/texa/careapp/model/ContactModel;->setPrefix(Ljava/lang/String;)V

    return-void
.end method

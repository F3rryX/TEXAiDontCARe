.class Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen$1;
.super Ljava/lang/Object;
.source "NumberValidatorFinalStepScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->initInsertValidatorCodeView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen$1;->this$0:Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen$1;->this$0:Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;

    invoke-static {v0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->access$000(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen$1;->this$0:Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;

    invoke-static {v0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->access$000(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-gtz p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen$1;->this$0:Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->access$000(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen$1;->this$0:Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;

    invoke-static {v0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->access$100(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110a0e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen$1;->this$0:Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->access$000(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;)Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.class Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen$2;
.super Ljava/lang/Object;
.source "NumberValidatorScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->initInsertNumberView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen$2;->this$0:Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen$2;->this$0:Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;

    invoke-static {v0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->access$200(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 150
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-gtz p1, :cond_0

    .line 151
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen$2;->this$0:Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->access$200(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen$2;->this$0:Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;

    invoke-static {v0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->access$300(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110a0f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen$2;->this$0:Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->access$200(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;)Landroid/widget/EditText;

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

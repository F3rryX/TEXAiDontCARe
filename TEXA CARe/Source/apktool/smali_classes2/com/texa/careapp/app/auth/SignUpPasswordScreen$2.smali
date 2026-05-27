.class Lcom/texa/careapp/app/auth/SignUpPasswordScreen$2;
.super Ljava/lang/Object;
.source "SignUpPasswordScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->checkPasswordInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/auth/SignUpPasswordScreen;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/auth/SignUpPasswordScreen;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen$2;->this$0:Lcom/texa/careapp/app/auth/SignUpPasswordScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen$2;->this$0:Lcom/texa/careapp/app/auth/SignUpPasswordScreen;

    invoke-static {v0}, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->access$300(Lcom/texa/careapp/app/auth/SignUpPasswordScreen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-gtz p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen$2;->this$0:Lcom/texa/careapp/app/auth/SignUpPasswordScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->access$500(Lcom/texa/careapp/app/auth/SignUpPasswordScreen;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen$2;->this$0:Lcom/texa/careapp/app/auth/SignUpPasswordScreen;

    invoke-static {v0}, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->access$400(Lcom/texa/careapp/app/auth/SignUpPasswordScreen;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110a0a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen$2;->this$0:Lcom/texa/careapp/app/auth/SignUpPasswordScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->access$500(Lcom/texa/careapp/app/auth/SignUpPasswordScreen;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

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

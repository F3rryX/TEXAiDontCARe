.class Lcom/texa/careapp/app/auth/SignUpEmailScreen$1;
.super Ljava/lang/Object;
.source "SignUpEmailScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/auth/SignUpEmailScreen;->checkEmailInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/auth/SignUpEmailScreen;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/auth/SignUpEmailScreen;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen$1;->this$0:Lcom/texa/careapp/app/auth/SignUpEmailScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 105
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-gtz p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen$1;->this$0:Lcom/texa/careapp/app/auth/SignUpEmailScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->access$100(Lcom/texa/careapp/app/auth/SignUpEmailScreen;)Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;->screenSignupEmailAddressEmailInput:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen$1;->this$0:Lcom/texa/careapp/app/auth/SignUpEmailScreen;

    invoke-static {v0}, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->access$000(Lcom/texa/careapp/app/auth/SignUpEmailScreen;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110a0b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen$1;->this$0:Lcom/texa/careapp/app/auth/SignUpEmailScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->access$100(Lcom/texa/careapp/app/auth/SignUpEmailScreen;)Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;->screenSignupEmailAddressEmailInput:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

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

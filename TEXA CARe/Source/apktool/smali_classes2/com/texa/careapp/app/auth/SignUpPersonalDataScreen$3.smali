.class Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen$3;
.super Ljava/lang/Object;
.source "SignUpPersonalDataScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->checkPersonalDataInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen$3;->this$0:Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 201
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-gtz p1, :cond_0

    .line 203
    iget-object p1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen$3;->this$0:Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->access$700(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen$3;->this$0:Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;

    invoke-static {v0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->access$600(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110a0f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 204
    :cond_0
    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 205
    iget-object p1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen$3;->this$0:Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->access$700(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen$3;->this$0:Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;

    invoke-static {v0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->access$800(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1108ad

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 207
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen$3;->this$0:Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->access$700(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

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

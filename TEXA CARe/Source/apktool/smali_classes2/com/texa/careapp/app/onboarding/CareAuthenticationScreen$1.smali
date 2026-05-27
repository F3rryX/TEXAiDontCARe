.class Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen$1;
.super Ljava/lang/Object;
.source "CareAuthenticationScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->initEditTextCareCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen$1;->this$0:Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 188
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->access$000()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 189
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen$1;->this$0:Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->access$100(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 191
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen$1;->this$0:Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->access$200(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->access$300(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;Landroid/widget/EditText;)V

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

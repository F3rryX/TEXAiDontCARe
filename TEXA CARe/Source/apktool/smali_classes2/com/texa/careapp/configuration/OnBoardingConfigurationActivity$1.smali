.class Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity$1;
.super Ljava/lang/Object;
.source "OnBoardingConfigurationActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->checkInformation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;


# direct methods
.method constructor <init>(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity$1;->this$0:Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 360
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-gtz p1, :cond_0

    .line 361
    iget-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity$1;->this$0:Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;

    invoke-static {p1}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->access$000(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity$1;->this$0:Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;

    const v1, 0x7f1108db

    invoke-virtual {v0, v1}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 363
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity$1;->this$0:Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;

    invoke-static {p1}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;->access$000(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;)Lcom/google/android/material/textfield/TextInputLayout;

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

.class Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$1;
.super Ljava/lang/Object;
.source "CountryScreenDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;->afterViewInjection(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$1;->this$0:Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 90
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    .line 91
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$1;->this$0:Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;

    invoke-static {p1}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;->access$000(Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;)V

    :cond_0
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

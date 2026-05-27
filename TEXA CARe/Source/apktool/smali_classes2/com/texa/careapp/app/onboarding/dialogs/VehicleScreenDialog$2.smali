.class Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$2;
.super Ljava/lang/Object;
.source "VehicleScreenDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->initSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$2;->this$0:Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 197
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    .line 198
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$2;->this$0:Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;

    invoke-static {p1}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->access$100(Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;)V

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

.class Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "EnableBluetoothScreenDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog$1;->this$0:Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog$1;->this$0:Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;

    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/navigation/Navigator;->onBackPressed()Z

    return-void
.end method

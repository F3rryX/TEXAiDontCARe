.class Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothStateManagementFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment$1;->this$0:Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "ACTION_CHECK_BLUETOOTH_STATE"

    .line 37
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "EXTRA_BLUETOOTH_STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 p1, -0x80000000

    .line 38
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xa

    if-eq p1, p2, :cond_0

    const/16 p2, 0xd

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment$1;->this$0:Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;

    invoke-static {p1}, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;->access$000(Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;)Landroid/app/Activity;

    move-result-object p2

    const-string v0, "Internet Connection"

    const-string v1, "No internet connection available.\n\nPlease check your internet connection and try again."

    invoke-virtual {p1, p2, v0, v1}, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;->showAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment$1;->this$0:Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;

    invoke-static {p1}, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;->access$100(Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment$1;->this$0:Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;

    invoke-static {p1}, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;->access$100(Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 51
    iget-object p1, p0, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment$1;->this$0:Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;

    invoke-static {p1}, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;->access$100(Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 52
    iget-object p1, p0, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment$1;->this$0:Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;->access$102(Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;Landroidx/appcompat/app/AlertDialog;)Landroidx/appcompat/app/AlertDialog;

    :cond_2
    :goto_0
    return-void
.end method

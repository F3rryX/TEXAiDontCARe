.class Lcom/texa/careapp/app/utils/NetworkStateManagementFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateManagementFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment$1;->this$0:Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "ACTION_CHECK_INTERNET_STATE"

    .line 42
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const-string v0, "EXTRA_INTERNET_STATE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 43
    iget-object p1, p0, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment$1;->this$0:Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;

    invoke-static {p1}, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;->access$000(Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;)Landroid/app/Activity;

    move-result-object p2

    const-string v0, "Internet Connection"

    const-string v1, "No internet connection available.\n\nPlease check your internet connection and try again."

    invoke-virtual {p1, p2, v0, v1}, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;->showAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment$1;->this$0:Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;

    invoke-static {p1}, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;->access$100(Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment$1;->this$0:Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;

    invoke-static {p1}, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;->access$100(Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 48
    iget-object p1, p0, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment$1;->this$0:Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;

    invoke-static {p1}, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;->access$100(Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 49
    iget-object p1, p0, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment$1;->this$0:Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;->access$102(Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;Landroidx/appcompat/app/AlertDialog;)Landroidx/appcompat/app/AlertDialog;

    :cond_1
    :goto_0
    return-void
.end method

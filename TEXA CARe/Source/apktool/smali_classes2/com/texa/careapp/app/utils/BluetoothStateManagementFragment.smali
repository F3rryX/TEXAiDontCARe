.class public Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;
.super Landroidx/fragment/app/Fragment;
.source "BluetoothStateManagementFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BluetoothStateManagementFragment"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field private onNotice:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 33
    new-instance v0, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment$1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment$1;-><init>(Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;)V

    iput-object v0, p0, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;->onNotice:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;)Landroid/app/Activity;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$102(Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;Landroidx/appcompat/app/AlertDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p1
.end method

.method public static isBluetoothEnabled()Ljava/lang/Boolean;
    .locals 2

    .line 140
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 144
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v1, v0, :cond_2

    const/16 v1, 0xb

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 146
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;
    .locals 1

    .line 60
    new-instance v0, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;

    invoke-direct {v0}, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public synthetic lambda$showAlertDialog$0$com-texa-careapp-app-utils-BluetoothStateManagementFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 126
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, 0x0

    .line 127
    iput-object p1, p0, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 76
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 77
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;->mActivity:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 70
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 103
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 97
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 98
    iget-object v0, p0, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;->onNotice:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 83
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "ACTION_CHECK_BLUETOOTH_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;->onNotice:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 87
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {}, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;->isBluetoothEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "Bluetooth Connection"

    const-string v2, "No Bluetooth connection available.\n\nPlease check your bluetooth adapted status try again."

    invoke-virtual {p0, v0, v1, v2}, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;->showAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 114
    :cond_1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 117
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    iget-object p1, p0, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1, p3}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 123
    iget-object p1, p0, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 p2, -0x1

    const p3, 0x104000a

    .line 124
    invoke-virtual {p0, p3}, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;)V

    .line 123
    invoke-virtual {p1, p2, p3, v0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 131
    iget-object p1, p0, Lcom/texa/careapp/app/utils/BluetoothStateManagementFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

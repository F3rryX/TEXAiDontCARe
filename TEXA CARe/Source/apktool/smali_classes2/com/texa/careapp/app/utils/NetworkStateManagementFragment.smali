.class public Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;
.super Landroidx/fragment/app/Fragment;
.source "NetworkStateManagementFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "NetworkStateManagementFragment"


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

    .line 59
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 38
    new-instance v0, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment$1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment$1;-><init>(Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;)V

    iput-object v0, p0, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;->onNotice:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;)Landroid/app/Activity;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$102(Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;Landroidx/appcompat/app/AlertDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p1
.end method

.method public static isInternetConnected(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "connectivity"

    .line 131
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 135
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x15

    if-lt v1, v4, :cond_2

    .line 136
    invoke-static {p0}, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;->isMobileDataConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;->isWifiConnected(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2

    .line 140
    :cond_2
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    .line 142
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz p0, :cond_3

    .line 144
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_3

    return v3

    :cond_3
    if-eqz v0, :cond_4

    .line 146
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_4

    return v3

    :cond_4
    return v2
.end method

.method public static isMobileDataConnected(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    .line 178
    invoke-static {p0, v0}, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;->isNetworkConnected(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static isNetworkConnected(Landroid/content/Context;I)Z
    .locals 7

    const-string v0, "connectivity"

    .line 156
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 158
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    .line 159
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 160
    invoke-virtual {p0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v4

    if-nez v4, :cond_0

    return v2

    .line 164
    :cond_0
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    .line 173
    invoke-static {p0, v0}, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;->isNetworkConnected(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static newInstance()Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;
    .locals 1

    .line 56
    new-instance v0, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;

    invoke-direct {v0}, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public synthetic lambda$showAlertDialog$0$com-texa-careapp-app-utils-NetworkStateManagementFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 122
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, 0x0

    .line 123
    iput-object p1, p0, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 72
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 73
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;->mActivity:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 66
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 99
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 93
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 94
    iget-object v0, p0, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;->onNotice:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 79
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "ACTION_CHECK_INTERNET_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;->onNotice:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 83
    iget-object v0, p0, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;->isInternetConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "Internet Connection"

    const-string v2, "No internet connection available.\n\nPlease check your internet connection and try again."

    invoke-virtual {p0, v0, v1, v2}, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;->showAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 110
    :cond_1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 113
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    iget-object p1, p0, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1, p3}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 119
    iget-object p1, p0, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 p2, -0x1

    const p3, 0x104000a

    .line 120
    invoke-virtual {p0, p3}, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;)V

    .line 119
    invoke-virtual {p1, p2, p3, v0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 127
    iget-object p1, p0, Lcom/texa/careapp/app/utils/NetworkStateManagementFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

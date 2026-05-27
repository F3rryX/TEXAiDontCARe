.class public Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;
.super Lcom/texa/care/navigation/Screen;
.source "EnableBluetoothScreenDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog$BluetoothEnabledEvent;
    }
.end annotation


# instance fields
.field private filter:Landroid/content/IntentFilter;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/CareApplication;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 30
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 31
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;->filter:Landroid/content/IntentFilter;

    .line 37
    new-instance v0, Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog$1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog$1;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;)V

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 34
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;)V

    return-void
.end method

.method private enableBluetooth()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 63
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;->goBack()V

    .line 64
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog$BluetoothEnabledEvent;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog$BluetoothEnabledEvent;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a0174

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 79
    const-class v0, Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0076

    return v0
.end method

.method public getType()Lcom/texa/care/navigation/ScreenType;
    .locals 1

    .line 74
    sget-object v0, Lcom/texa/care/navigation/ScreenType;->DIALOG:Lcom/texa/care/navigation/ScreenType;

    return-object v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-onboarding-dialogs-EnableBluetoothScreenDialog(Landroid/view/View;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;->enableBluetooth()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 57
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onPause()V

    .line 58
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 51
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    .line 52
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

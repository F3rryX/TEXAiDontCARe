.class Lcom/texa/careapp/checks/CheckBluetooth;
.super Ljava/lang/Object;
.source "CheckBluetooth.java"

# interfaces
.implements Lcom/texa/careapp/checks/Check;


# static fields
.field private static final TAG:Ljava/lang/String; = "CheckBluetooth"


# instance fields
.field private filter:Landroid/content/IntentFilter;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/checks/CheckBluetooth;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 23
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/texa/careapp/checks/CheckBluetooth;->filter:Landroid/content/IntentFilter;

    .line 26
    iput-object p1, p0, Lcom/texa/careapp/checks/CheckBluetooth;->mContext:Landroid/content/Context;

    return-void
.end method

.method private bluetoothObservable()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/texa/careapp/checks/CheckBluetooth$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/checks/CheckBluetooth$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/checks/CheckBluetooth;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private isBluetoothAvailable()Z
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/texa/careapp/checks/CheckBluetooth;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$check$1(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/texa/careapp/checks/CheckBluetooth;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "BT#check() failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    sget-object p0, Lcom/texa/careapp/checks/Check$Result;->WARNING:Lcom/texa/careapp/checks/Check$Result;

    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    return-void
.end method


# virtual methods
.method public check()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/checks/Check$Result;",
            ">;"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lcom/texa/careapp/checks/CheckBluetooth;->bluetoothObservable()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/checks/CheckBluetooth$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/texa/careapp/checks/CheckBluetooth$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/checks/CheckBluetooth;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lcom/texa/careapp/checks/CheckBluetooth;->checkCurrentStatus()Lcom/texa/careapp/checks/Check$Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/checks/CheckBluetooth$$ExternalSyntheticLambda2;->INSTANCE:Lcom/texa/careapp/checks/CheckBluetooth$$ExternalSyntheticLambda2;

    .line 55
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public checkCurrentStatus()Lcom/texa/careapp/checks/Check$Result;
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/texa/careapp/checks/CheckBluetooth;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/texa/careapp/checks/Check$Result;->OK:Lcom/texa/careapp/checks/Check$Result;

    return-object v0

    .line 39
    :cond_0
    sget-object v0, Lcom/texa/careapp/checks/Check$Result;->WARNING:Lcom/texa/careapp/checks/Check$Result;

    return-object v0
.end method

.method public description()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic lambda$bluetoothObservable$2$com-texa-careapp-checks-CheckBluetooth(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/texa/careapp/checks/CheckBluetooth;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public synthetic lambda$bluetoothObservable$3$com-texa-careapp-checks-CheckBluetooth(Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/texa/careapp/checks/CheckBluetooth$1;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/checks/CheckBluetooth$1;-><init>(Lcom/texa/careapp/checks/CheckBluetooth;Lio/reactivex/ObservableEmitter;)V

    .line 80
    new-instance v1, Lcom/texa/careapp/checks/CheckBluetooth$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/texa/careapp/checks/CheckBluetooth$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/checks/CheckBluetooth;Landroid/content/BroadcastReceiver;)V

    invoke-interface {p1, v1}, Lio/reactivex/ObservableEmitter;->setCancellable(Lio/reactivex/functions/Cancellable;)V

    .line 81
    iget-object p1, p0, Lcom/texa/careapp/checks/CheckBluetooth;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/texa/careapp/checks/CheckBluetooth;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public synthetic lambda$check$0$com-texa-careapp-checks-CheckBluetooth(Landroid/content/Intent;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/texa/careapp/checks/CheckBluetooth;->checkCurrentStatus()Lcom/texa/careapp/checks/Check$Result;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public resolve()V
    .locals 0

    return-void
.end method

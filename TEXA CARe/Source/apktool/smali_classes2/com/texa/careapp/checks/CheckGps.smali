.class public Lcom/texa/careapp/checks/CheckGps;
.super Ljava/lang/Object;
.source "CheckGps.java"

# interfaces
.implements Lcom/texa/careapp/checks/Check;


# static fields
.field private static final TAG:Ljava/lang/String; = "CheckGps"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/texa/careapp/checks/CheckGps;->mIntentFilter:Landroid/content/IntentFilter;

    .line 28
    iput-object p1, p0, Lcom/texa/careapp/checks/CheckGps;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic lambda$check$1(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/texa/careapp/checks/CheckGps;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GPS#check() failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    sget-object p0, Lcom/texa/careapp/checks/Check$Result;->BLOCKING:Lcom/texa/careapp/checks/Check$Result;

    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    return-void
.end method

.method private networkObservable()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/texa/careapp/checks/CheckGps$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/checks/CheckGps$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/checks/CheckGps;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
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

    .line 40
    invoke-direct {p0}, Lcom/texa/careapp/checks/CheckGps;->networkObservable()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/checks/CheckGps$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/texa/careapp/checks/CheckGps$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/checks/CheckGps;)V

    .line 41
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Lcom/texa/careapp/checks/CheckGps;->checkCurrentStatus()Lcom/texa/careapp/checks/Check$Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/checks/CheckGps$$ExternalSyntheticLambda2;->INSTANCE:Lcom/texa/careapp/checks/CheckGps$$ExternalSyntheticLambda2;

    .line 43
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public checkCurrentStatus()Lcom/texa/careapp/checks/Check$Result;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/texa/careapp/checks/CheckGps;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isGpsAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/texa/careapp/checks/Check$Result;->OK:Lcom/texa/careapp/checks/Check$Result;

    return-object v0

    .line 55
    :cond_0
    sget-object v0, Lcom/texa/careapp/checks/Check$Result;->BLOCKING:Lcom/texa/careapp/checks/Check$Result;

    return-object v0
.end method

.method public description()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public synthetic lambda$check$0$com-texa-careapp-checks-CheckGps(Landroid/content/Intent;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcom/texa/careapp/checks/CheckGps;->checkCurrentStatus()Lcom/texa/careapp/checks/Check$Result;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$networkObservable$2$com-texa-careapp-checks-CheckGps(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/texa/careapp/checks/CheckGps;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public synthetic lambda$networkObservable$3$com-texa-careapp-checks-CheckGps(Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    new-instance v0, Lcom/texa/careapp/checks/CheckGps$1;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/checks/CheckGps$1;-><init>(Lcom/texa/careapp/checks/CheckGps;Lio/reactivex/ObservableEmitter;)V

    .line 78
    new-instance v1, Lcom/texa/careapp/checks/CheckGps$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/texa/careapp/checks/CheckGps$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/checks/CheckGps;Landroid/content/BroadcastReceiver;)V

    invoke-interface {p1, v1}, Lio/reactivex/ObservableEmitter;->setCancellable(Lio/reactivex/functions/Cancellable;)V

    .line 79
    iget-object p1, p0, Lcom/texa/careapp/checks/CheckGps;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/texa/careapp/checks/CheckGps;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public resolve()V
    .locals 0

    return-void
.end method

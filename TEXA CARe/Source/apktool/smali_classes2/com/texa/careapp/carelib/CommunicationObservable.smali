.class public Lcom/texa/careapp/carelib/CommunicationObservable;
.super Ljava/lang/Object;
.source "CommunicationObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/carelib/CommunicationObservable$Status;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CommunicationObservable"


# instance fields
.field private mCommunication:Lcom/texa/carelib/communication/Communication;

.field private mCommunicationChangeListener:Ljava/beans/PropertyChangeListener;

.field private mCommunicationStatusSubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lcom/texa/carelib/communication/CommunicationStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$BxJaP418p068WAuvi4IENGqKZfw(Lcom/texa/careapp/carelib/CommunicationObservable;Lcom/texa/carelib/communication/CommunicationStatus;)Lio/reactivex/Observable;
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/careapp/carelib/CommunicationObservable;->convertStatus(Lcom/texa/carelib/communication/CommunicationStatus;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/texa/carelib/communication/Communication;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/carelib/CommunicationObservable;->mCommunicationStatusSubject:Lio/reactivex/subjects/PublishSubject;

    .line 35
    new-instance v0, Lcom/texa/careapp/carelib/CommunicationObservable$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/texa/careapp/carelib/CommunicationObservable$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/carelib/CommunicationObservable;)V

    iput-object v0, p0, Lcom/texa/careapp/carelib/CommunicationObservable;->mCommunicationChangeListener:Ljava/beans/PropertyChangeListener;

    .line 45
    iput-object p1, p0, Lcom/texa/careapp/carelib/CommunicationObservable;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/texa/careapp/carelib/CommunicationObservable;->mCommunication:Lcom/texa/carelib/communication/Communication;

    .line 48
    invoke-interface {p2, v0}, Lcom/texa/carelib/communication/Communication;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/carelib/CommunicationObservable;)Lcom/texa/carelib/communication/Communication;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/texa/careapp/carelib/CommunicationObservable;->mCommunication:Lcom/texa/carelib/communication/Communication;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/texa/careapp/carelib/CommunicationObservable;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/texa/careapp/carelib/CommunicationObservable;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/texa/careapp/carelib/CommunicationObservable;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private convertStatus(Lcom/texa/carelib/communication/CommunicationStatus;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/communication/CommunicationStatus;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/carelib/CommunicationObservable$Status;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Communication status changed: %s"

    .line 77
    invoke-static {v1, v0}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-direct {p0, p1}, Lcom/texa/careapp/carelib/CommunicationObservable;->convertStatusSimple(Lcom/texa/carelib/communication/CommunicationStatus;)Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private convertStatusSimple(Lcom/texa/carelib/communication/CommunicationStatus;)Lcom/texa/careapp/carelib/CommunicationObservable$Status;
    .locals 1

    .line 83
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne v0, p1, :cond_0

    .line 84
    sget-object p1, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    return-object p1

    .line 86
    :cond_0
    sget-object p1, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_NOT_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    return-object p1
.end method

.method public static filterStatus(Lcom/texa/careapp/carelib/CommunicationObservable$Status;)Lio/reactivex/ObservableTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/carelib/CommunicationObservable$Status;",
            ")",
            "Lio/reactivex/ObservableTransformer<",
            "Lcom/texa/careapp/carelib/CommunicationObservable$Status;",
            "Lcom/texa/careapp/carelib/CommunicationObservable$Status;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/texa/careapp/carelib/CommunicationObservable$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/carelib/CommunicationObservable$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V

    return-object v0
.end method

.method static synthetic lambda$filterStatus$1(Lcom/texa/careapp/carelib/CommunicationObservable$Status;Lcom/texa/careapp/carelib/CommunicationObservable$Status;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$filterStatus$2(Lcom/texa/careapp/carelib/CommunicationObservable$Status;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1

    .line 53
    new-instance v0, Lcom/texa/careapp/carelib/CommunicationObservable$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/texa/careapp/carelib/CommunicationObservable$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$observeConnection$5(Lcom/texa/careapp/carelib/CommunicationObservable$Status;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    sget-object v0, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$observeConnectionStatus$4(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "mCommunicationStatusSubject error"

    .line 62
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public connect(Lcom/texa/carelib/communication/DeviceInfo;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Lcom/texa/careapp/carelib/CommunicationObservable$1;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/carelib/CommunicationObservable$1;-><init>(Lcom/texa/careapp/carelib/CommunicationObservable;Lcom/texa/carelib/communication/DeviceInfo;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public disconnect()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/texa/careapp/carelib/CommunicationObservable$2;

    invoke-direct {v0, p0}, Lcom/texa/careapp/carelib/CommunicationObservable$2;-><init>(Lcom/texa/careapp/carelib/CommunicationObservable;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method protected getCommunicationListener()Ljava/beans/PropertyChangeListener;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/texa/careapp/carelib/CommunicationObservable;->mCommunicationChangeListener:Ljava/beans/PropertyChangeListener;

    return-object v0
.end method

.method public getCurrentDeviceInfo()Lcom/texa/carelib/communication/DeviceInfo;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/texa/careapp/carelib/CommunicationObservable;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getCurrentDevice()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentStatus()Lcom/texa/careapp/carelib/CommunicationObservable$Status;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/texa/careapp/carelib/CommunicationObservable;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/careapp/carelib/CommunicationObservable;->convertStatusSimple(Lcom/texa/carelib/communication/CommunicationStatus;)Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$new$0$com-texa-careapp-carelib-CommunicationObservable(Ljava/beans/PropertyChangeEvent;)V
    .locals 3

    .line 36
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    .line 38
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.texa.carelib.communication.Communication#PROPERTY_STATUS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 39
    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v2

    aput-object v2, p1, v1

    const-string v1, "CommunicationObservable, received status: %s"

    invoke-static {v1, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object p1, p0, Lcom/texa/careapp/carelib/CommunicationObservable;->mCommunicationStatusSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeConnectionStatus$3$com-texa-careapp-carelib-CommunicationObservable()Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/texa/careapp/carelib/CommunicationObservable;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeConnection()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/carelib/CommunicationObservable$Status;",
            ">;"
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lcom/texa/careapp/carelib/CommunicationObservable;->observeConnectionStatus()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/carelib/CommunicationObservable$$ExternalSyntheticLambda4;->INSTANCE:Lcom/texa/careapp/carelib/CommunicationObservable$$ExternalSyntheticLambda4;

    .line 72
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeConnectionStatus()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/carelib/CommunicationObservable$Status;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/texa/careapp/carelib/CommunicationObservable;->mCommunicationStatusSubject:Lio/reactivex/subjects/PublishSubject;

    new-instance v1, Lcom/texa/careapp/carelib/CommunicationObservable$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/texa/careapp/carelib/CommunicationObservable$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/carelib/CommunicationObservable;)V

    .line 60
    invoke-static {v1}, Lio/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->startWith(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/carelib/CommunicationObservable$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/texa/careapp/carelib/CommunicationObservable$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/carelib/CommunicationObservable;)V

    .line 61
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/carelib/CommunicationObservable$$ExternalSyntheticLambda1;->INSTANCE:Lcom/texa/careapp/carelib/CommunicationObservable$$ExternalSyntheticLambda1;

    .line 62
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public prepareForScan()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;"
        }
    .end annotation

    .line 192
    new-instance v0, Lcom/texa/careapp/carelib/CommunicationObservable$3;

    invoke-direct {v0, p0}, Lcom/texa/careapp/carelib/CommunicationObservable$3;-><init>(Lcom/texa/careapp/carelib/CommunicationObservable;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

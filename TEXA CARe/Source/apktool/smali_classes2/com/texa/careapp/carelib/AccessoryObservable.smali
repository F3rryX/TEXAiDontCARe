.class public Lcom/texa/careapp/carelib/AccessoryObservable;
.super Ljava/lang/Object;
.source "AccessoryObservable.java"


# instance fields
.field private mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

.field private mPropertyChangeListener:Ljava/beans/PropertyChangeListener;

.field private mPublishSubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/beans/PropertyChangeEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/texa/carelib/care/accessory/Accessory;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/carelib/AccessoryObservable;->mPublishSubject:Lio/reactivex/subjects/PublishSubject;

    .line 30
    new-instance v0, Lcom/texa/careapp/carelib/AccessoryObservable$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/texa/careapp/carelib/AccessoryObservable$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/carelib/AccessoryObservable;)V

    iput-object v0, p0, Lcom/texa/careapp/carelib/AccessoryObservable;->mPropertyChangeListener:Ljava/beans/PropertyChangeListener;

    .line 33
    iput-object p1, p0, Lcom/texa/careapp/carelib/AccessoryObservable;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    .line 34
    invoke-interface {p1, v0}, Lcom/texa/carelib/care/accessory/Accessory;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    return-void
.end method

.method private static checkNullValue(Ljava/lang/Integer;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private static isFirmwareVersionValid(Lcom/texa/carelib/core/utils/FirmwareVersion;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/core/utils/Version;->getBuild()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/carelib/AccessoryObservable;->checkNullValue(Ljava/lang/Integer;)I

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/core/utils/Version;->getMajor()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/carelib/AccessoryObservable;->checkNullValue(Ljava/lang/Integer;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/core/utils/Version;->getMinor()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/carelib/AccessoryObservable;->checkNullValue(Ljava/lang/Integer;)I

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/core/utils/Version;->getRevision()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/carelib/AccessoryObservable;->checkNullValue(Ljava/lang/Integer;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getApplicationName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getBoardName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getCustomerName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getProductName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$isAuthenticated$3(Ljava/lang/Boolean;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$isConfiguredAndObdConnected$5(Ljava/lang/Integer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected getPropertyChangeListener()Ljava/beans/PropertyChangeListener;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/texa/careapp/carelib/AccessoryObservable;->mPropertyChangeListener:Ljava/beans/PropertyChangeListener;

    return-object v0
.end method

.method public getSerialNumber()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/texa/careapp/carelib/AccessoryObservable;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v0}, Lcom/texa/carelib/care/accessory/Accessory;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/carelib/AccessoryObservable;->observeSerialNumber()Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getServiceAppVersion()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/core/utils/FirmwareVersion;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/texa/careapp/carelib/AccessoryObservable;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v0}, Lcom/texa/carelib/care/accessory/Accessory;->getServiceAPPVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v0

    .line 99
    invoke-static {v0}, Lcom/texa/careapp/carelib/AccessoryObservable;->isFirmwareVersionValid(Lcom/texa/carelib/core/utils/FirmwareVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/carelib/AccessoryObservable;->observeServiceAppVersion()Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public isAuthenticated()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/texa/careapp/carelib/AccessoryObservable;->mPublishSubject:Lio/reactivex/subjects/PublishSubject;

    const-string v1, "com.texa.carelib.care.accessory.Accessory#PROPERTY_IS_AUTHENTICATED"

    .line 62
    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->filterProperty(Ljava/lang/String;)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/carelib/AccessoryObservable$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/carelib/AccessoryObservable$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/carelib/AccessoryObservable;)V

    .line 63
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/carelib/AccessoryObservable;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    .line 64
    invoke-interface {v1}, Lcom/texa/carelib/care/accessory/Accessory;->isHostAuthenticated()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->startWith(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/carelib/AccessoryObservable$$ExternalSyntheticLambda4;->INSTANCE:Lcom/texa/careapp/carelib/AccessoryObservable$$ExternalSyntheticLambda4;

    .line 65
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public isConfiguredAndObdConnected()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/texa/careapp/carelib/AccessoryObservable;->mPublishSubject:Lio/reactivex/subjects/PublishSubject;

    const-string v1, "com.texa.carelib.care.accessory.Accessory#PROPERTY_STATUS"

    .line 70
    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->filterProperty(Ljava/lang/String;)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/carelib/AccessoryObservable$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/carelib/AccessoryObservable$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/carelib/AccessoryObservable;)V

    .line 71
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/carelib/AccessoryObservable;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    .line 72
    invoke-interface {v1}, Lcom/texa/carelib/care/accessory/Accessory;->getStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->startWith(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/carelib/AccessoryObservable$$ExternalSyntheticLambda5;->INSTANCE:Lcom/texa/careapp/carelib/AccessoryObservable$$ExternalSyntheticLambda5;

    .line 73
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$isAuthenticated$2$com-texa-careapp-carelib-AccessoryObservable(Ljava/beans/PropertyChangeEvent;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    iget-object p1, p0, Lcom/texa/careapp/carelib/AccessoryObservable;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {p1}, Lcom/texa/carelib/care/accessory/Accessory;->isHostAuthenticated()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$isConfiguredAndObdConnected$4$com-texa-careapp-carelib-AccessoryObservable(Ljava/beans/PropertyChangeEvent;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    iget-object p1, p0, Lcom/texa/careapp/carelib/AccessoryObservable;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {p1}, Lcom/texa/carelib/care/accessory/Accessory;->getStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$new$0$com-texa-careapp-carelib-AccessoryObservable(Ljava/beans/PropertyChangeEvent;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/texa/careapp/carelib/AccessoryObservable;->mPublishSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$observeSerialNumber$1$com-texa-careapp-carelib-AccessoryObservable(Ljava/beans/PropertyChangeEvent;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    iget-object p1, p0, Lcom/texa/careapp/carelib/AccessoryObservable;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {p1}, Lcom/texa/carelib/care/accessory/Accessory;->getSerialNumber()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    iget-object p1, p0, Lcom/texa/careapp/carelib/AccessoryObservable;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {p1}, Lcom/texa/carelib/care/accessory/Accessory;->getSerialNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 56
    :cond_0
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$observeServiceAppVersion$6$com-texa-careapp-carelib-AccessoryObservable(Ljava/beans/PropertyChangeEvent;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    iget-object p1, p0, Lcom/texa/careapp/carelib/AccessoryObservable;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {p1}, Lcom/texa/carelib/care/accessory/Accessory;->getServiceAPPVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/texa/careapp/carelib/AccessoryObservable;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {p1}, Lcom/texa/carelib/care/accessory/Accessory;->getServiceAPPVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 92
    :cond_0
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public observeSerialNumber()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/texa/careapp/carelib/AccessoryObservable;->mPublishSubject:Lio/reactivex/subjects/PublishSubject;

    const-string v1, "com.texa.carelib.care.accessory.Accessory#PROPERTY_SERIAL_NUMBER"

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->filterProperty(Ljava/lang/String;)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/carelib/AccessoryObservable$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/texa/careapp/carelib/AccessoryObservable$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/carelib/AccessoryObservable;)V

    .line 53
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeServiceAppVersion()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/core/utils/FirmwareVersion;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/texa/careapp/carelib/AccessoryObservable;->mPublishSubject:Lio/reactivex/subjects/PublishSubject;

    const-string v1, "com.texa.carelib.care.accessory.Accessory#PROPERTY_SERVICE_APP_VERSION"

    .line 88
    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->filterProperty(Ljava/lang/String;)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/carelib/AccessoryObservable$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/texa/careapp/carelib/AccessoryObservable$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/carelib/AccessoryObservable;)V

    .line 89
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

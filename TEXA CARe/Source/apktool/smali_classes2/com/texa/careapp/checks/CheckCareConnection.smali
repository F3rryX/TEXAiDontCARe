.class public Lcom/texa/careapp/checks/CheckCareConnection;
.super Ljava/lang/Object;
.source "CheckCareConnection.java"

# interfaces
.implements Lcom/texa/careapp/checks/Check;


# static fields
.field private static final TAG:Ljava/lang/String; = "CheckCareConnection"

.field private static final TEN_MINUTES:I = 0x927c0


# instance fields
.field private mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

.field private mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/carelib/CommunicationObservable;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/texa/careapp/checks/CheckCareConnection;->mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

    .line 31
    iput-object p2, p0, Lcom/texa/careapp/checks/CheckCareConnection;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method private check(Lcom/texa/careapp/carelib/CommunicationObservable$Status;)Lcom/texa/careapp/checks/Check$Result;
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/texa/careapp/checks/CheckCareConnection;->isCareConnectedWithinInterval(Lcom/texa/careapp/carelib/CommunicationObservable$Status;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 61
    sget-object p1, Lcom/texa/careapp/checks/Check$Result;->OK:Lcom/texa/careapp/checks/Check$Result;

    return-object p1

    .line 63
    :cond_0
    sget-object p1, Lcom/texa/careapp/checks/Check$Result;->BLOCKING:Lcom/texa/careapp/checks/Check$Result;

    return-object p1
.end method

.method private getIntervalObservable()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 77
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2, v0}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private isCareConnectedWithinInterval(Lcom/texa/careapp/carelib/CommunicationObservable$Status;)Z
    .locals 7

    .line 82
    sget-object v0, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    .line 85
    :cond_0
    sget-object v0, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_NOT_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_3

    .line 86
    iget-object p1, p0, Lcom/texa/careapp/checks/CheckCareConnection;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object p1

    if-nez p1, :cond_1

    return v2

    .line 92
    :cond_1
    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleModel;->getLastParametersUpdate()Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_2

    return v2

    .line 97
    :cond_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, 0x927c0

    cmp-long p1, v3, v5

    if-gtz p1, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method static synthetic lambda$check$1(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/texa/careapp/checks/CheckCareConnection;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CRCN#check() failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    sget-object p0, Lcom/texa/careapp/checks/Check$Result;->BLOCKING:Lcom/texa/careapp/checks/Check$Result;

    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    return-void
.end method


# virtual methods
.method public check()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/checks/Check$Result;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/texa/careapp/checks/CheckCareConnection;->mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

    .line 44
    invoke-virtual {v0}, Lcom/texa/careapp/carelib/CommunicationObservable;->observeConnectionStatus()Lio/reactivex/Observable;

    move-result-object v0

    .line 45
    invoke-direct {p0}, Lcom/texa/careapp/checks/CheckCareConnection;->getIntervalObservable()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/checks/CheckCareConnection$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/texa/careapp/checks/CheckCareConnection$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/checks/CheckCareConnection;)V

    .line 43
    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->combineLatest(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/checks/CheckCareConnection$$ExternalSyntheticLambda1;->INSTANCE:Lcom/texa/careapp/checks/CheckCareConnection$$ExternalSyntheticLambda1;

    .line 47
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public checkCurrentStatus()Lcom/texa/careapp/checks/Check$Result;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/texa/careapp/checks/CheckCareConnection;->mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-virtual {v0}, Lcom/texa/careapp/carelib/CommunicationObservable;->getCurrentStatus()Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/careapp/checks/CheckCareConnection;->check(Lcom/texa/careapp/carelib/CommunicationObservable$Status;)Lcom/texa/careapp/checks/Check$Result;

    move-result-object v0

    return-object v0
.end method

.method public description()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public synthetic lambda$check$0$com-texa-careapp-checks-CheckCareConnection(Lcom/texa/careapp/carelib/CommunicationObservable$Status;Ljava/lang/Long;)Lcom/texa/careapp/checks/Check$Result;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Lcom/texa/careapp/checks/CheckCareConnection;->check(Lcom/texa/careapp/carelib/CommunicationObservable$Status;)Lcom/texa/careapp/checks/Check$Result;

    move-result-object p1

    return-object p1
.end method

.method public resolve()V
    .locals 0

    return-void
.end method

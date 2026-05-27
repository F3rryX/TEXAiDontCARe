.class public Lcom/texa/careapp/checks/CheckCurrentService;
.super Ljava/lang/Object;
.source "CheckCurrentService.java"

# interfaces
.implements Lcom/texa/careapp/checks/Check;


# instance fields
.field private mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

.field private mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/utils/ServiceDataManager;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/texa/careapp/checks/CheckCurrentService;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    .line 26
    iput-object p2, p0, Lcom/texa/careapp/checks/CheckCurrentService;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    return-void
.end method


# virtual methods
.method public check()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/checks/Check$Result;",
            ">;"
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcom/texa/careapp/checks/CheckCurrentService;->checkCurrentStatus()Lcom/texa/careapp/checks/Check$Result;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public checkCurrentStatus()Lcom/texa/careapp/checks/Check$Result;
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/texa/careapp/checks/CheckCurrentService;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 40
    sget-object v0, Lcom/texa/careapp/checks/Check$Result;->BLOCKING:Lcom/texa/careapp/checks/Check$Result;

    return-object v0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/checks/CheckCurrentService;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    iget-object v1, p0, Lcom/texa/careapp/checks/CheckCurrentService;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    .line 45
    invoke-virtual {v1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/texa/careapp/checks/CheckCurrentService;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    .line 46
    invoke-virtual {v2}, Lcom/texa/careapp/utils/ServiceDataManager;->getActiveGenericSosServices()Ljava/util/List;

    move-result-object v2

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/texa/careapp/utils/ServiceDataManager;->filterActiveSosServicesForHwId(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/texa/careapp/utils/ServiceDataManager;->getServicePriority(Ljava/util/List;)Lcom/texa/careapp/model/ServiceDataModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 49
    invoke-virtual {v0}, Lcom/texa/careapp/model/ServiceDataModel;->isTermsAccepted()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    sget-object v0, Lcom/texa/careapp/checks/Check$Result;->OK:Lcom/texa/careapp/checks/Check$Result;

    return-object v0

    .line 50
    :cond_2
    :goto_0
    sget-object v0, Lcom/texa/careapp/checks/Check$Result;->BLOCKING:Lcom/texa/careapp/checks/Check$Result;

    return-object v0
.end method

.method public description()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public resolve()V
    .locals 0

    return-void
.end method

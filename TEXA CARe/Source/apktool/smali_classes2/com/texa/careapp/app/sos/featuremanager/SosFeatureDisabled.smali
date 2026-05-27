.class public Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDisabled;
.super Ljava/lang/Object;
.source "SosFeatureDisabled.java"

# interfaces
.implements Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mServiceDisabledString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDisabled;->mContext:Landroid/content/Context;

    const v0, 0x7f110ca1

    .line 26
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDisabled;->mServiceDisabledString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getButtonObservableSubscription()Lio/reactivex/disposables/Disposable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSosServiceStatusDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f110c05

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSosServiceStatusDescription(Landroid/content/Context;Lcom/texa/careapp/model/ServiceDataModel;)Ljava/lang/String;
    .locals 0

    const p2, 0x7f110c05

    .line 82
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public initData(Lcom/texa/careapp/model/ServiceDataModel;)V
    .locals 0

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public observeChecks()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/checks/Check$Result;",
            ">;"
        }
    .end annotation

    .line 87
    sget-object v0, Lcom/texa/careapp/checks/Check$Result;->OK:Lcom/texa/careapp/checks/Check$Result;

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeChecksForNotification()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/checks/Check$Result;",
            ">;"
        }
    .end annotation

    .line 92
    sget-object v0, Lcom/texa/careapp/checks/Check$Result;->OK:Lcom/texa/careapp/checks/Check$Result;

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeChecksForServices()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/checks/Check$Result;",
            ">;"
        }
    .end annotation

    .line 97
    sget-object v0, Lcom/texa/careapp/checks/Check$Result;->OK:Lcom/texa/careapp/checks/Check$Result;

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public registerImpactDetectionListener()V
    .locals 0

    return-void
.end method

.method public registerImpactDetectorListener()V
    .locals 0

    return-void
.end method

.method public setFragmentManager(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    return-void
.end method

.method public shouldCheckSosPrerequisites()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public startButtonObserver()V
    .locals 0

    return-void
.end method

.method public unregisterImpactDetectionListener()V
    .locals 0

    return-void
.end method

.method public unregisterImpactDetectorListener()V
    .locals 0

    return-void
.end method

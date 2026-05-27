.class public Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;
.super Ljava/lang/Object;
.source "SosFeatureEnabled.java"

# interfaces
.implements Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mImpactDetection:Lcom/texa/carelib/care/impacts/ImpactDetection;

.field private mImpactDetectionListener:Lcom/texa/carelib/care/impacts/ImpactDetectionListener;

.field private final mImpactDetector:Lcom/texa/careapp/impactdetection/ImpactDetector;

.field private mImpactDetectorListener:Lcom/texa/careapp/impactdetection/ImpactDetectorListener;

.field private final mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/texa/careapp/utils/UserDataManager;Lcom/texa/carelib/care/impacts/ImpactDetection;Lcom/texa/careapp/impactdetection/ImpactDetector;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled$1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled$1;-><init>(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;)V

    iput-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;->mImpactDetectionListener:Lcom/texa/carelib/care/impacts/ImpactDetectionListener;

    .line 64
    new-instance v0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled$2;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled$2;-><init>(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;)V

    iput-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;->mImpactDetectorListener:Lcom/texa/careapp/impactdetection/ImpactDetectorListener;

    .line 80
    iput-object p1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    .line 82
    iput-object p3, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;->mImpactDetection:Lcom/texa/carelib/care/impacts/ImpactDetection;

    .line 83
    iput-object p4, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;->mImpactDetector:Lcom/texa/careapp/impactdetection/ImpactDetector;

    const-string/jumbo p2, "vibrator"

    .line 85
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;)Lcom/texa/careapp/impactdetection/ImpactDetector;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;->mImpactDetector:Lcom/texa/careapp/impactdetection/ImpactDetector;

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private onManualSosButtonClicked()V
    .locals 0

    .line 164
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;->startAlertActivity()V

    return-void
.end method


# virtual methods
.method public getButtonObservableSubscription()Lio/reactivex/disposables/Disposable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSosServiceStatusDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public getSosServiceStatusDescription(Landroid/content/Context;Lcom/texa/careapp/model/ServiceDataModel;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public initData(Lcom/texa/careapp/model/ServiceDataModel;)V
    .locals 0

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

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

    .line 150
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

    .line 155
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

    .line 160
    sget-object v0, Lcom/texa/careapp/checks/Check$Result;->OK:Lcom/texa/careapp/checks/Check$Result;

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public registerImpactDetectionListener()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;->mImpactDetection:Lcom/texa/carelib/care/impacts/ImpactDetection;

    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;->mImpactDetectionListener:Lcom/texa/carelib/care/impacts/ImpactDetectionListener;

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/impacts/ImpactDetection;->addImpactDetectionListener(Lcom/texa/carelib/care/impacts/ImpactDetectionListener;)Lcom/texa/carelib/care/impacts/ImpactDetectionListener;

    return-void
.end method

.method public registerImpactDetectorListener()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;->mImpactDetector:Lcom/texa/careapp/impactdetection/ImpactDetector;

    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;->mImpactDetectorListener:Lcom/texa/careapp/impactdetection/ImpactDetectorListener;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/impactdetection/ImpactDetector;->setImpactDetectorListener(Lcom/texa/careapp/impactdetection/ImpactDetectorListener;)V

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

.method protected startAlertActivity()V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getUserCellPhoneContact()Lcom/texa/careapp/model/ContactModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Lcom/texa/careapp/model/ContactModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    invoke-virtual {v1}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/texa/careapp/app/sos/AlertCentralActivity;->buildIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110d25

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public startButtonObserver()V
    .locals 0

    return-void
.end method

.method public unregisterImpactDetectionListener()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;->mImpactDetection:Lcom/texa/carelib/care/impacts/ImpactDetection;

    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;->mImpactDetectionListener:Lcom/texa/carelib/care/impacts/ImpactDetectionListener;

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/impacts/ImpactDetection;->removeImpactDetectionListener(Lcom/texa/carelib/care/impacts/ImpactDetectionListener;)V

    return-void
.end method

.method public unregisterImpactDetectorListener()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;->mImpactDetector:Lcom/texa/careapp/impactdetection/ImpactDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/texa/careapp/impactdetection/ImpactDetector;->setImpactDetectorListener(Lcom/texa/careapp/impactdetection/ImpactDetectorListener;)V

    return-void
.end method

.method protected vibrate()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;->mVibrator:Landroid/os/Vibrator;

    sget v1, Lcom/texa/careapp/Constants;->TIME_TO_VIBRATE_ON_TOUCH:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

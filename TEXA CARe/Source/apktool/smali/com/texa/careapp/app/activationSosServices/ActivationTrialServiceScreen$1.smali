.class Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen$1;
.super Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;
.source "ActivationTrialServiceScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;->finalStep()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;Lcom/texa/careapp/model/ServiceDataModel;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen$1;->this$0:Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;

    invoke-direct {p0, p2}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;-><init>(Lcom/texa/careapp/model/ServiceDataModel;)V

    return-void
.end method


# virtual methods
.method public acceptedCondition()V
    .locals 3

    .line 108
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen$1;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_COMMON_TERMS_ACCEPTED:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen$1;->getDisposable()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 110
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen$1;->observerForPlusTrialActivation()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen$1$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen$1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen$1;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public synthetic lambda$acceptedCondition$0$com-texa-careapp-app-activationSosServices-ActivationTrialServiceScreen$1(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen$1;->scheduleSyncServiceDataTask()V

    return-void
.end method

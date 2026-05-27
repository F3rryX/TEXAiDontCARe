.class Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen$1;
.super Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;
.source "ActivationPlusServiceScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->finalStep()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;Lcom/texa/careapp/model/ServiceDataModel;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen$1;->this$0:Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;

    invoke-direct {p0, p2}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;-><init>(Lcom/texa/careapp/model/ServiceDataModel;)V

    return-void
.end method

.method static synthetic lambda$acceptedCondition$0(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "PLUS OBSERVABLE onNext"

    .line 199
    invoke-static {v0, p0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$acceptedCondition$1(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "error accepting sos service terms"

    .line 200
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public acceptedCondition()V
    .locals 4

    .line 196
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen$1;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_COMMON_TERMS_ACCEPTED:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 197
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen$1;->getDisposable()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 198
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen$1;->observerForPlusActivation()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen$1$$ExternalSyntheticLambda2;->INSTANCE:Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen$1$$ExternalSyntheticLambda2;

    sget-object v2, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen$1$$ExternalSyntheticLambda1;->INSTANCE:Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen$1$$ExternalSyntheticLambda1;

    new-instance v3, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen$1$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen$1;)V

    .line 199
    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 198
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen$1;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public synthetic lambda$acceptedCondition$2$com-texa-careapp-app-activationSosServices-ActivationPlusServiceScreen$1()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen$1;->scheduleSyncServiceDataTask()V

    .line 203
    new-instance v0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;

    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen$1;->getService()Lcom/texa/careapp/model/ServiceDataModel;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;-><init>(Lcom/texa/careapp/model/ServiceDataModel;)V

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen$1;->goTo(Lcom/texa/care/navigation/Screen;)V

    .line 204
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen$1;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$ActivationCompletedEvent;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$ActivationCompletedEvent;-><init>(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.class Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen$2;
.super Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;
.source "ActivationLightServiceScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->buttonGoToServiceLightTOS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;Lcom/texa/careapp/model/ServiceDataModel;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen$2;->this$0:Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;

    invoke-direct {p0, p2}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;-><init>(Lcom/texa/careapp/model/ServiceDataModel;)V

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

    const-string v1, "error accepting conditions"

    .line 139
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public acceptedCondition()V
    .locals 3

    .line 135
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen$2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_COMMON_TERMS_ACCEPTED:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen$2;->getDisposable()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 137
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen$2;->observerForLightActivation()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen$2$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen$2;)V

    sget-object v2, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen$2$$ExternalSyntheticLambda1;->INSTANCE:Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen$2$$ExternalSyntheticLambda1;

    .line 138
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 137
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen$2;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public synthetic lambda$acceptedCondition$0$com-texa-careapp-app-activationSosServices-ActivationLightServiceScreen$2(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen$2;->scheduleSyncServiceDataTask()V

    return-void
.end method

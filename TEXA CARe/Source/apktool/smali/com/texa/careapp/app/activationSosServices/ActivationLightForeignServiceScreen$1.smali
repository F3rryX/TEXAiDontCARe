.class Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen$1;
.super Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;
.source "ActivationLightForeignServiceScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;->buttonGoToServiceLightTOS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;Lcom/texa/careapp/model/ServiceDataModel;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen$1;->this$0:Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;

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

    .line 67
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public acceptedCondition()V
    .locals 3

    .line 64
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen$1;->getDisposable()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 65
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen$1;->observerForLightActivation()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen$1$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen$1;)V

    sget-object v2, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen$1$$ExternalSyntheticLambda1;->INSTANCE:Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen$1$$ExternalSyntheticLambda1;

    .line 66
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 65
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen$1;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public synthetic lambda$acceptedCondition$0$com-texa-careapp-app-activationSosServices-ActivationLightForeignServiceScreen$1(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen$1;->scheduleSyncServiceDataTask()V

    return-void
.end method

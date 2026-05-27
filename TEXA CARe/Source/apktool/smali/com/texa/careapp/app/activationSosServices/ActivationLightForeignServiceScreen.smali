.class public Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;
.super Lcom/texa/care/navigation/Screen;
.source "ActivationLightForeignServiceScreen.java"


# instance fields
.field private isSosLightPurchasable:Z

.field private final mDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field protected mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final serviceSosLight:Lcom/texa/careapp/model/ServiceDataModel;


# direct methods
.method constructor <init>(Lcom/texa/careapp/model/ServiceDataModel;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;->isSosLightPurchasable:Z

    .line 35
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 39
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;->serviceSosLight:Lcom/texa/careapp/model/ServiceDataModel;

    return-void
.end method

.method private buttonGoToServiceLightTOS()V
    .locals 3

    .line 60
    iget-boolean v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;->isSosLightPurchasable:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen$1;

    iget-object v2, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;->serviceSosLight:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-direct {v1, p0, v2}, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen$1;-><init>(Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;Lcom/texa/careapp/model/ServiceDataModel;)V

    invoke-virtual {v0, v1}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110c80

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method static synthetic lambda$onResume$2(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "error checking lock status"

    .line 55
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;)V

    const v0, 0x7f0a02ff

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "ActivationLightForeignServiceScreen"

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00a2

    return v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-activationSosServices-ActivationLightForeignServiceScreen(Landroid/view/View;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;->buttonGoToServiceLightTOS()V

    return-void
.end method

.method public synthetic lambda$onResume$1$com-texa-careapp-app-activationSosServices-ActivationLightForeignServiceScreen(Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;->isAlreadyPending()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;->isSosLightPurchasable:Z

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 87
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onDestroyView()V

    .line 88
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method public onResume()V
    .locals 6

    .line 50
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    .line 51
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    new-instance v2, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockEntity;

    sget-object v3, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS_LIGHT:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    .line 52
    invoke-virtual {v3}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v4}, Lcom/texa/careapp/utils/Utils;->getUniqueDeviceId(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-direct {v2, v3, v5, v4}, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-interface {v1, v2}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->checkLockStatus(Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockEntity;)Lio/reactivex/Observable;

    move-result-object v1

    .line 53
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->applySchedulers()Lio/reactivex/ObservableTransformer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;)V

    sget-object v3, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen$$ExternalSyntheticLambda2;->INSTANCE:Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen$$ExternalSyntheticLambda2;

    .line 54
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

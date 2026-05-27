.class public Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;
.super Lcom/texa/care/navigation/Screen;
.source "EcoDrivingDialogHideTrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip$ShouldHideTrip;
    }
.end annotation


# instance fields
.field private dateFormat:Ljava/text/SimpleDateFormat;

.field private final mDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;)V
    .locals 3

    .line 47
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 37
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "EEEE dd MMMM yyyy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 45
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 48
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    return-void
.end method

.method private closeDialog()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip$ShouldHideTrip;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip$ShouldHideTrip;-><init>(Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 78
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->goBack()Z

    return-void
.end method

.method private onHideClick()V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    new-instance v2, Lcom/texa/careapp/app/ecodriving/serviceserializer/HideTripEntity;

    iget-object v3, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {v3}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HideTripEntity;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->hideEcoDrivingTrip(Lcom/texa/careapp/app/ecodriving/serviceserializer/HideTripEntity;)Lio/reactivex/Observable;

    move-result-object v1

    .line 64
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 65
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;)V

    new-instance v3, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;)V

    .line 66
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 5

    .line 53
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;)V

    .line 54
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingDialogHideTripBinding;

    .line 56
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingDialogHideTripBinding;->ecoDrivingDialogHideTripBtnHide:Landroid/widget/TextView;

    new-instance v1, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingDialogHideTripBinding;->ecoDrivingDialogHideTripBtnUndo:Landroid/widget/TextView;

    new-instance v1, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingDialogHideTripBinding;->ecoDrivingDialogHideTripText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f11098a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;->dateFormat:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    .line 59
    invoke-virtual {v3}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartTrip()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 58
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 93
    const-class v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00c0

    return v0
.end method

.method public getType()Lcom/texa/care/navigation/ScreenType;
    .locals 1

    .line 88
    sget-object v0, Lcom/texa/care/navigation/ScreenType;->DIALOG:Lcom/texa/care/navigation/ScreenType;

    return-object v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-ecodriving-EcoDrivingDialogHideTrip(Landroid/view/View;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;->onHideClick()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$1$com-texa-careapp-app-ecodriving-EcoDrivingDialogHideTrip(Landroid/view/View;)V
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/navigation/Navigator;->goBack()Z

    return-void
.end method

.method public synthetic lambda$onHideClick$2$com-texa-careapp-app-ecodriving-EcoDrivingDialogHideTrip(Lcom/texa/careapp/networking/response/ServerResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/careapp/app/ecodriving/model/EcoDrivingEventsDataManager;->hideTrip(Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;->closeDialog()V

    return-void
.end method

.method public synthetic lambda$onHideClick$3$com-texa-careapp-app-ecodriving-EcoDrivingDialogHideTrip(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "UNABLE TO SYNC HIDE TRIP"

    .line 70
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;->trip:Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/careapp/app/ecodriving/model/EcoDrivingEventsDataManager;->hideAndSyncTrip(Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;->closeDialog()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 101
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onDestroyView()V

    .line 102
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

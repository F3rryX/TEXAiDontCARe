.class public Lcom/texa/careapp/app/MainActivityPresenter;
.super Ljava/lang/Object;
.source "MainActivityPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/MainActivityPresenter$CareColor;
    }
.end annotation


# static fields
.field public static final CARE_COLOR_GREEN:I = 0x1

.field public static final CARE_COLOR_ORANGE:I = 0x0

.field public static final CARE_COLOR_RED:I = 0x3

.field public static final CARE_COLOR_WHITE:I = 0x2

.field public static CHECK_VEHICLE_DATA_ENABLED:Z = true

.field private static final TAG:Ljava/lang/String; = "MainActivityPresenter"


# instance fields
.field private defaultCareColor:I

.field private defaultTitle:Ljava/lang/String;

.field private mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

.field private mCareStatusDisposable:Lio/reactivex/disposables/Disposable;

.field private mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

.field private mContext:Landroid/content/Context;

.field private mDefaultTheme:Landroid/content/res/Resources$Theme;

.field private mMenuIcon:Landroid/graphics/drawable/Drawable;

.field private mMenuItem:Landroid/view/MenuItem;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 58
    iput v0, p0, Lcom/texa/careapp/app/MainActivityPresenter;->defaultCareColor:I

    return-void
.end method

.method private chooseTitle(Ljava/lang/Integer;Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V
    .locals 1

    .line 141
    sget-object v0, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_NOT_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    if-ne p2, v0, :cond_0

    .line 142
    iget-object p1, p0, Lcom/texa/careapp/app/MainActivityPresenter;->mResources:Landroid/content/res/Resources;

    const p2, 0x7f110b12

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/MainActivityPresenter;->defaultTitle:Ljava/lang/String;

    return-void

    .line 146
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_1

    .line 147
    iget-object p2, p0, Lcom/texa/careapp/app/MainActivityPresenter;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/texa/careapp/utils/Utils;->getCareStatus(Landroid/content/Context;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/MainActivityPresenter;->defaultTitle:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private getColor(I)I
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivityPresenter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method static synthetic lambda$observeCareStatus$3(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "error observing care status"

    .line 133
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private observeCareStatus()Lio/reactivex/disposables/Disposable;
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivityPresenter;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    .line 116
    invoke-interface {v0}, Lcom/texa/careapp/carelib/ICareObserver;->observeCareStatus()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/MainActivityPresenter;->mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

    .line 117
    invoke-virtual {v1}, Lcom/texa/careapp/carelib/CommunicationObservable;->observeConnectionStatus()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/app/MainActivityPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/MainActivityPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/MainActivityPresenter;)V

    .line 115
    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->combineLatest(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/MainActivityPresenter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/MainActivityPresenter$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/MainActivityPresenter;)V

    .line 123
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 129
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 130
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/MainActivityPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/MainActivityPresenter$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/MainActivityPresenter;)V

    sget-object v2, Lcom/texa/careapp/app/MainActivityPresenter$$ExternalSyntheticLambda3;->INSTANCE:Lcom/texa/careapp/app/MainActivityPresenter$$ExternalSyntheticLambda3;

    .line 132
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method

.method private setMenuIcon(Landroid/view/MenuItem;Landroid/graphics/drawable/Drawable;I)Z
    .locals 5

    .line 74
    iput p3, p0, Lcom/texa/careapp/app/MainActivityPresenter;->defaultCareColor:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz p3, :cond_3

    if-eq p3, v3, :cond_2

    if-eq p3, v1, :cond_4

    const/4 v4, 0x3

    if-eq p3, v4, :cond_1

    goto :goto_0

    :cond_1
    const v2, 0x7f060074

    .line 89
    invoke-direct {p0, v2}, Lcom/texa/careapp/app/MainActivityPresenter;->getColor(I)I

    move-result v2

    goto :goto_0

    :cond_2
    const v2, 0x7f0600a8

    .line 83
    invoke-direct {p0, v2}, Lcom/texa/careapp/app/MainActivityPresenter;->getColor(I)I

    move-result v2

    goto :goto_0

    :cond_3
    const v2, 0x7f0600f3

    .line 86
    invoke-direct {p0, v2}, Lcom/texa/careapp/app/MainActivityPresenter;->getColor(I)I

    move-result v2

    :cond_4
    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 96
    sget-object v4, Lcom/texa/careapp/app/MainActivityPresenter;->TAG:Ljava/lang/String;

    aput-object v4, v1, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, v3

    const-string p3, "%s setMenuIcon - value: %s"

    invoke-static {p3, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v2, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 99
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 100
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/MainActivityPresenter;->setTitleMenuItem(Landroid/view/MenuItem;)V

    return v3
.end method

.method private setTitleMenuItem(Landroid/view/MenuItem;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivityPresenter;->defaultTitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivityPresenter;->defaultTitle:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method


# virtual methods
.method protected careColorCondition(Ljava/lang/Integer;Lcom/texa/careapp/carelib/CommunicationObservable$Status;)Ljava/lang/Integer;
    .locals 1

    .line 157
    sget-object v0, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_NOT_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    if-ne p2, v0, :cond_0

    const/4 p1, 0x2

    .line 158
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 160
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    const/4 p1, 0x1

    .line 161
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 162
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x5

    if-eq p2, v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x6

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 165
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const/4 p1, 0x3

    .line 163
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public checkVehicleDataConfirmation(Landroid/app/Activity;Lcom/texa/careapp/model/VehicleModel;)Z
    .locals 2

    .line 220
    sget-boolean v0, Lcom/texa/careapp/app/MainActivityPresenter;->CHECK_VEHICLE_DATA_ENABLED:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    new-array p1, v0, [Ljava/lang/Object;

    const-string/jumbo p2, "vehicleModel is NULL"

    .line 225
    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 229
    :cond_1
    invoke-virtual {p2}, Lcom/texa/careapp/model/VehicleModel;->isConfirmedByUser()Z

    move-result p2

    if-nez p2, :cond_2

    .line 230
    new-instance p2, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;

    invoke-direct {p2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return v0

    :cond_2
    return v1
.end method

.method public synthetic lambda$observeCareStatus$0$com-texa-careapp-app-MainActivityPresenter(Ljava/lang/Integer;Lcom/texa/careapp/carelib/CommunicationObservable$Status;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/MainActivityPresenter;->chooseTitle(Ljava/lang/Integer;Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/app/MainActivityPresenter;->careColorCondition(Ljava/lang/Integer;Lcom/texa/careapp/carelib/CommunicationObservable$Status;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$observeCareStatus$1$com-texa-careapp-app-MainActivityPresenter(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Error in observeCareStatus()"

    .line 124
    invoke-static {p1, v0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0xff

    .line 125
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_NOT_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    invoke-direct {p0, p1, v0}, Lcom/texa/careapp/app/MainActivityPresenter;->chooseTitle(Ljava/lang/Integer;Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V

    .line 126
    sget-object v0, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_NOT_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    invoke-virtual {p0, p1, v0}, Lcom/texa/careapp/app/MainActivityPresenter;->careColorCondition(Ljava/lang/Integer;Lcom/texa/careapp/carelib/CommunicationObservable$Status;)Ljava/lang/Integer;

    .line 127
    iget-object p1, p0, Lcom/texa/careapp/app/MainActivityPresenter;->mMenuItem:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/texa/careapp/app/MainActivityPresenter;->mMenuIcon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/texa/careapp/app/MainActivityPresenter;->setMenuIcon(Landroid/view/MenuItem;Landroid/graphics/drawable/Drawable;I)Z

    return-void
.end method

.method public synthetic lambda$observeCareStatus$2$com-texa-careapp-app-MainActivityPresenter(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivityPresenter;->mMenuItem:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/texa/careapp/app/MainActivityPresenter;->mMenuIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/texa/careapp/app/MainActivityPresenter;->setMenuIcon(Landroid/view/MenuItem;Landroid/graphics/drawable/Drawable;I)Z

    return-void
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1

    .line 171
    iput-object p1, p0, Lcom/texa/careapp/app/MainActivityPresenter;->mContext:Landroid/content/Context;

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/MainActivityPresenter;->mResources:Landroid/content/res/Resources;

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/MainActivityPresenter;->mDefaultTheme:Landroid/content/res/Resources$Theme;

    return-void
.end method

.method public onStart(Lcom/texa/careapp/carelib/ICareObserver;Lcom/texa/careapp/carelib/CommunicationObservable;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/texa/careapp/app/MainActivityPresenter;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    .line 196
    iput-object p2, p0, Lcom/texa/careapp/app/MainActivityPresenter;->mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

    .line 198
    iget-object p1, p0, Lcom/texa/careapp/app/MainActivityPresenter;->mCareStatusDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 199
    invoke-direct {p0}, Lcom/texa/careapp/app/MainActivityPresenter;->observeCareStatus()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/MainActivityPresenter;->mCareStatusDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivityPresenter;->mCareStatusDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method protected setupDefaultMenuItem(Landroid/view/MenuItem;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 251
    invoke-direct {p0, p1, p2, p3}, Lcom/texa/careapp/app/MainActivityPresenter;->setMenuIcon(Landroid/view/MenuItem;Landroid/graphics/drawable/Drawable;I)Z

    return-void
.end method

.class public Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;
.super Ljava/lang/Object;
.source "FindVehicleCardViewPresenter.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# static fields
.field public static final TAG:Ljava/lang/String; = "FindVehicleCardViewPresenter"


# instance fields
.field private address:Ljava/lang/String;

.field private addressCity:Ljava/lang/String;

.field private firstLocation:Z

.field private isSmallScreen:Z

.field private locCar:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private locationObservable:Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Single<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAddress:Landroid/widget/TextView;

.field private mCard:Landroidx/cardview/widget/CardView;

.field private mCity:Landroidx/appcompat/widget/AppCompatTextView;

.field protected mCommunication:Lcom/texa/carelib/communication/Communication;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mIcon:Landroid/widget/ImageView;

.field private mLocation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

.field private mMapContainer:Landroid/widget/RelativeLayout;

.field private mNavigator:Lcom/texa/care/navigation/Navigator;

.field protected mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private negativeColor:I

.field private positiveColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;Lcom/texa/care/navigation/Navigator;Z)V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->locCar:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->firstLocation:Z

    .line 87
    new-instance v0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;)V

    invoke-static {v0}, Lio/reactivex/Single;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->locationObservable:Lio/reactivex/Single;

    .line 111
    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;)V

    .line 112
    iput-object p2, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mNavigator:Lcom/texa/care/navigation/Navigator;

    .line 113
    iput-boolean p3, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->isSmallScreen:Z

    return-void
.end method

.method static synthetic access$002(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->firstLocation:Z

    return p1
.end method

.method static synthetic access$100(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;Z)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->setPositiveCard(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;)Landroid/widget/TextView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mAddress:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;)Landroidx/appcompat/widget/AppCompatTextView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mCity:Landroidx/appcompat/widget/AppCompatTextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->address:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->addressCity:Ljava/lang/String;

    return-object p0
.end method

.method private addMarker(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 201
    new-instance v0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$$ExternalSyntheticLambda7;-><init>(Ljava/util/HashMap;)V

    invoke-static {v0}, Lio/reactivex/Single;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object v0

    .line 213
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 214
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;Ljava/util/HashMap;)V

    sget-object p1, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$$ExternalSyntheticLambda5;->INSTANCE:Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$$ExternalSyntheticLambda5;

    .line 215
    invoke-virtual {v0, v1, p1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private animateCamera(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2

    .line 232
    :try_start_0
    iget-boolean v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->firstLocation:Z

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p1, v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    new-instance v1, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$1;-><init>(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    goto :goto_0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Map is null"

    .line 248
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private findVehicleCardClicked()V
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_DASHBOARD_TAPPED_FIND_VEHICLE_DASHBOARD_CARD:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 309
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isCareConnected(Lcom/texa/carelib/communication/Communication;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->getLocationCar()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 310
    sput-boolean v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCanMoveCard:Z

    .line 311
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private initMap()V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setAllGesturesEnabled(Z)V

    .line 296
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 300
    invoke-virtual {p0}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->updateCard()V

    return-void
.end method

.method static synthetic lambda$addMarker$3(Ljava/util/HashMap;Lio/reactivex/SingleEmitter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 204
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    const-string v1, "LATITUDE_POSITION"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-string v3, "LONGITUDE_POSITION"

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 205
    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 207
    invoke-interface {p1, p0}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$addMarker$4(Ljava/util/HashMap;)Lio/reactivex/SingleSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 201
    new-instance v0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$$ExternalSyntheticLambda3;-><init>(Ljava/util/HashMap;)V

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$addMarker$6(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "got exception"

    .line 226
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private locateDisconnected()V
    .locals 1

    .line 152
    invoke-virtual {p0}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->getLocationCar()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->locCar:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0, v0}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->addMarker(Ljava/util/HashMap;)V

    goto :goto_0

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->setNegativeCard()V

    :goto_0
    return-void
.end method

.method private setLocationText(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 253
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mLocation:Ljava/util/HashMap;

    .line 254
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->locationObservable:Lio/reactivex/Single;

    .line 255
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 256
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$2;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$2;-><init>(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;)V

    .line 257
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/SingleObserver;)V

    return-void
.end method

.method private setNegativeCard()V
    .locals 5

    .line 187
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->viewsNotNull()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    iget-boolean v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->isSmallScreen:Z

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mIcon:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->negativeColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 191
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mMapContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 192
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mAddress:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mCity:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f110901

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    :cond_2
    return-void
.end method

.method private setPositiveCard(Z)V
    .locals 4

    .line 172
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 174
    iget p1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->positiveColor:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f060045

    invoke-static {p1, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 178
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mMapContainer:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 179
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 182
    :cond_2
    iget-boolean p1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->isSmallScreen:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    .line 183
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private viewsNotNull()Z
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mAddress:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mCity:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public afterViewInjection(Lcom/texa/careapp/databinding/DashboardCardFindVehicleBinding;)V
    .locals 1

    .line 117
    iget-object v0, p1, Lcom/texa/careapp/databinding/DashboardCardFindVehicleBinding;->dashboardCardFindVehicleCity:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mCity:Landroidx/appcompat/widget/AppCompatTextView;

    .line 118
    iget-object v0, p1, Lcom/texa/careapp/databinding/DashboardCardFindVehicleBinding;->dashboardCardFindVehicleAddress:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mAddress:Landroid/widget/TextView;

    .line 119
    iget-object v0, p1, Lcom/texa/careapp/databinding/DashboardCardFindVehicleBinding;->dashboardCardFindVehicleMapContainer:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mMapContainer:Landroid/widget/RelativeLayout;

    .line 120
    iget-object v0, p1, Lcom/texa/careapp/databinding/DashboardCardFindVehicleBinding;->dashboardCardFindVehicleIcon:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mIcon:Landroid/widget/ImageView;

    .line 121
    iget-object v0, p1, Lcom/texa/careapp/databinding/DashboardCardFindVehicleBinding;->dashboardCardFindVehicleCard:Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mCard:Landroidx/cardview/widget/CardView;

    .line 122
    iget-object p1, p1, Lcom/texa/careapp/databinding/DashboardCardFindVehicleBinding;->dashboardCardFindVehicleCard:Landroidx/cardview/widget/CardView;

    new-instance v0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;)V

    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge p1, v0, :cond_0

    .line 125
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mCard:Landroidx/cardview/widget/CardView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setPreventCornerOverlap(Z)V

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mContext:Landroid/content/Context;

    const v0, 0x7f060046

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->positiveColor:I

    .line 128
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mContext:Landroid/content/Context;

    const v0, 0x7f060044

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->negativeColor:I

    .line 130
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez p1, :cond_1

    .line 131
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {p1}, Lcom/texa/care/navigation/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f0a0263

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/SupportMapFragment;

    .line 132
    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    goto :goto_0

    .line 134
    :cond_1
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->initMap()V

    :goto_0
    return-void
.end method

.method public getLocationCar()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Get car location"

    .line 161
    invoke-static {v1, v0}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 166
    :cond_0
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getLastLocation()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->locCar:Ljava/util/HashMap;

    return-object v0
.end method

.method public synthetic lambda$addMarker$5$com-texa-careapp-app-dashboard-card-FindVehicleCardViewPresenter(Ljava/util/HashMap;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 218
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 219
    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x3f4ccccd    # 0.8f

    .line 220
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    const v1, 0x7f08007c

    .line 221
    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 223
    invoke-direct {p0, p2}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->animateCamera(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 225
    :cond_0
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->setLocationText(Ljava/util/HashMap;)V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$2$com-texa-careapp-app-dashboard-card-FindVehicleCardViewPresenter(Landroid/view/View;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->findVehicleCardClicked()V

    return-void
.end method

.method public synthetic lambda$initMap$7$com-texa-careapp-app-dashboard-card-FindVehicleCardViewPresenter(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    .line 297
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 298
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$new$0$com-texa-careapp-app-dashboard-card-FindVehicleCardViewPresenter(Lio/reactivex/SingleEmitter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    const/4 v6, 0x0

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mLocation:Ljava/util/HashMap;

    const-string v2, "LATITUDE_POSITION"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget-object v3, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mLocation:Ljava/util/HashMap;

    const-string v4, "LONGITUDE_POSITION"

    .line 91
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const/4 v5, 0x1

    .line 90
    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 94
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 95
    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->checkDoubleAddress(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->address:Ljava/lang/String;

    .line 96
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->addressCity:Ljava/lang/String;

    goto :goto_0

    .line 98
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110b00

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->address:Ljava/lang/String;

    .line 99
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->addressCity:Ljava/lang/String;

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 102
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "got exception"

    .line 104
    invoke-static {v0, v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$new$1$com-texa-careapp-app-dashboard-card-FindVehicleCardViewPresenter()Lio/reactivex/SingleSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    new-instance v0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;)V

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 291
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->initMap()V

    return-void
.end method

.method public updateCard()V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isCareConnected(Lcom/texa/carelib/communication/Communication;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->setNegativeCard()V

    goto :goto_0

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->viewsNotNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f060045

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 144
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mCity:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f110902

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 145
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->mAddress:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_1
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->locateDisconnected()V

    :goto_0
    return-void
.end method

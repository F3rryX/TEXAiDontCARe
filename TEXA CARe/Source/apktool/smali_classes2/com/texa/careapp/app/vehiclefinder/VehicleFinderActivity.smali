.class public Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;
.super Lcom/texa/careapp/base/GooglePlayServicesActivity;
.source "VehicleFinderActivity.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "VehicleFinderActivity"


# instance fields
.field private address:Ljava/lang/String;

.field private addressCity:Ljava/lang/String;

.field communication:Lcom/texa/carelib/communication/Communication;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private firstLocation:Z

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

.field private mAccelerometer:Landroid/hardware/Sensor;

.field private mActionBarToolbar:Landroidx/appcompat/widget/Toolbar;

.field private mAddress:Landroid/widget/TextView;

.field private mAddressCity:Landroid/widget/TextView;

.field private mCommunicationChangeListener:Ljava/beans/PropertyChangeListener;

.field private mCompass:Landroid/widget/ImageView;

.field private mCurrentDegree:F

.field private mDistanceAsyncTask:Landroid/os/AsyncTask;

.field private mDistanceContainer:Landroid/widget/LinearLayout;

.field private mDistanceRoadText:Landroid/widget/TextView;

.field private mDistanceText:Landroid/widget/TextView;

.field private mGeoCoderAsyncTask:Landroid/os/AsyncTask;

.field private mLastAccelerometer:[F

.field private mLastAccelerometerSet:Z

.field private mLastMagnetometer:[F

.field private mLastMagnetometerSet:Z

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

.field public mLocationManager:Landroid/location/LocationManager;

.field mLocationTracker:Lcom/texa/careapp/utils/LocationTracker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mMagnetometer:Landroid/hardware/Sensor;

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

.field private mMarker:Lcom/google/android/gms/maps/model/MarkerOptions;

.field private mNavigatorButton:Landroid/widget/RelativeLayout;

.field private mOrientation:[F

.field private mPermissionRequest:Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

.field private mR:[F

.field private mSensorEventSubject:Lio/reactivex/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/Subject<",
            "Landroid/hardware/SensorEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTimeAgoContainer:Landroid/widget/LinearLayout;

.field private mTimeAgoText:Landroid/widget/TextView;

.field private mUnit:Landroidx/appcompat/widget/AppCompatTextView;

.field private mUnitRoad:Landroid/widget/TextView;

.field mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mWhyText:Landroid/widget/TextView;

.field private myLocationChangeListener:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;

.field private myLocationChangeListenerDisconnected:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;

.field private sensorSubjectDisposable:Lio/reactivex/disposables/Disposable;


# direct methods
.method public static synthetic $r8$lambda$F9JD0beJngatU2w6LrHc0W6GtCs(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->locateDisconnected()V

    return-void
.end method

.method public static synthetic $r8$lambda$bRvleJgurhbKgQ5Idu_xX_4K2P4(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->locateConnected()V

    return-void
.end method

.method public static synthetic $r8$lambda$jyLRLNm2QtsRcHVCu7PGTAS97nQ(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->clickGoToNavigator(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 77
    invoke-direct {p0}, Lcom/texa/careapp/base/GooglePlayServicesActivity;-><init>()V

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mLocation:Ljava/util/HashMap;

    .line 106
    iput-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->locCar:Ljava/util/HashMap;

    .line 107
    iput-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mMarker:Lcom/google/android/gms/maps/model/MarkerOptions;

    const/4 v1, 0x1

    .line 110
    iput-boolean v1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->firstLocation:Z

    .line 111
    iput-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mGeoCoderAsyncTask:Landroid/os/AsyncTask;

    .line 112
    iput-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mDistanceAsyncTask:Landroid/os/AsyncTask;

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 115
    iput-object v1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mLastAccelerometer:[F

    new-array v1, v0, [F

    .line 116
    iput-object v1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mLastMagnetometer:[F

    const/4 v1, 0x0

    .line 117
    iput-boolean v1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mLastAccelerometerSet:Z

    .line 118
    iput-boolean v1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mLastMagnetometerSet:Z

    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 119
    iput-object v1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mR:[F

    new-array v0, v0, [F

    .line 120
    iput-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mOrientation:[F

    const/4 v0, 0x0

    .line 121
    iput v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mCurrentDegree:F

    .line 123
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mSensorEventSubject:Lio/reactivex/subjects/Subject;

    .line 131
    new-instance v0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$$ExternalSyntheticLambda7;-><init>(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;)V

    iput-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->myLocationChangeListener:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;

    .line 142
    new-instance v0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$$ExternalSyntheticLambda8;-><init>(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;)V

    iput-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->myLocationChangeListenerDisconnected:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;

    .line 163
    new-instance v0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;)V

    iput-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mCommunicationChangeListener:Ljava/beans/PropertyChangeListener;

    .line 181
    new-instance v0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;)V

    invoke-static {v0}, Lio/reactivex/Single;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->locationObservable:Lio/reactivex/Single;

    return-void
.end method

.method static synthetic access$002(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->firstLocation:Z

    return p1
.end method

.method private addCircle(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 425
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    const-string v1, "LATITUDE_POSITION"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-string v3, "LONGITUDE_POSITION"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 426
    new-instance p1, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {p1}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    .line 427
    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    const v0, 0x7f0600f1

    .line 428
    invoke-static {p0, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    const v0, 0x7f0600f2

    .line 429
    invoke-static {p0, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 430
    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;

    .line 431
    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    return-void
.end method

.method private bearing(DDDD)D
    .locals 4

    .line 375
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    .line 376
    invoke-static {p5, p6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p5

    sub-double/2addr p7, p3

    .line 377
    invoke-static {p7, p8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p3

    .line 378
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p7

    invoke-static {p5, p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double p7, p7, v0

    .line 379
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {p5, p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    invoke-static {p5, p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide p5

    mul-double p1, p1, p5

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    mul-double p1, p1, p3

    sub-double/2addr v0, p1

    .line 381
    invoke-static {p7, p8, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    const-wide p3, 0x4076800000000000L    # 360.0

    add-double/2addr p1, p3

    rem-double/2addr p1, p3

    return-wide p1
.end method

.method public static buildIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 207
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000000

    .line 208
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private clickGoToNavigator(Landroid/view/View;)V
    .locals 2

    .line 590
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_FIND_VEHICLE_TAPPED_LEAD_TO_MY_VEHICLE_BUTTON:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 591
    iget-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {p1}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    .line 592
    invoke-virtual {p1}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getLastLocation()Ljava/util/HashMap;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 595
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {p1}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getLastLocation()Ljava/util/HashMap;

    move-result-object p1

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "google.navigation:q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LATITUDE_POSITION"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LONGITUDE_POSITION"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "&mode=w"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 597
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "com.google.android.apps.maps"

    .line 598
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    invoke-virtual {p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 600
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 593
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110b0d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_1
    return-void
.end method

.method private clickWhy()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Click why text -> show dialog"

    .line 268
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 270
    invoke-virtual {p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110b0d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 271
    invoke-virtual {p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110b0e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 272
    sget-object v1, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$$ExternalSyntheticLambda0;->INSTANCE:Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$$ExternalSyntheticLambda0;

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 274
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic lambda$clickWhy$6(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 272
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$observeSensorChange$8(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 369
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic lambda$setLocationText$10(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 580
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private locateConnected()V
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 511
    iget-object v1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->myLocationChangeListener:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMyLocationChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;)V

    .line 512
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->hideTextsAndButton()V

    .line 513
    invoke-virtual {p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->removeMarker()V

    .line 514
    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mLocation:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 515
    invoke-virtual {p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->viewNoLocation()V

    :cond_1
    return-void
.end method

.method private locateDisconnected()V
    .locals 2

    .line 520
    invoke-virtual {p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->getLocationCar()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->locCar:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->myLocationChangeListenerDisconnected:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMyLocationChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;)V

    .line 523
    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->locCar:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->addMarker(Ljava/util/HashMap;)V

    goto :goto_0

    .line 525
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->viewNoLocation()V

    :goto_0
    return-void
.end method

.method private observeSensorChange()V
    .locals 4

    .line 336
    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mSensorEventSubject:Lio/reactivex/subjects/Subject;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/subjects/Subject;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 337
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 338
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$$ExternalSyntheticLambda10;-><init>(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;)V

    sget-object v2, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$$ExternalSyntheticLambda12;->INSTANCE:Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$$ExternalSyntheticLambda12;

    .line 339
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->sensorSubjectDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private requestPermission()V
    .locals 2

    .line 294
    invoke-static {p0}, Lcom/texa/careapp/utils/permission/CorePermission;->with(Landroidx/appcompat/app/AppCompatActivity;)Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/permission/CorePermission;->USE_ACCESS_LOCATION:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;->request([Ljava/lang/String;)Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$3;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$3;-><init>(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;)V

    .line 295
    invoke-virtual {v0, v1}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->onAllGranted(Lcom/texa/careapp/utils/permission/Func;)Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$2;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$2;-><init>(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;)V

    .line 303
    invoke-virtual {v0, v1}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->onAnyDenied(Lcom/texa/careapp/utils/permission/Func;)Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    move-result-object v0

    const/4 v1, 0x1

    .line 308
    invoke-virtual {v0, v1}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->ask(I)Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mPermissionRequest:Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    return-void
.end method

.method private setDistanceBetween(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 8

    .line 549
    invoke-virtual {p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->viewTextsAndButton()V

    .line 550
    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->setDistanceText(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 553
    iget-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {p1}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 555
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getLastLocation()Ljava/util/HashMap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    const-string p2, "TIMESTAMP_POSITION"

    .line 559
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->longValue()J

    move-result-wide p1

    move-wide v2, p1

    goto :goto_1

    :cond_1
    move-wide v2, v0

    :goto_1
    cmp-long p1, v2, v0

    if-eqz p1, :cond_2

    .line 562
    iget-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mTimeAgoText:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 564
    :cond_2
    iget-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mTimeAgoContainer:Landroid/widget/LinearLayout;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private setDistanceBetween(Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 541
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    const-string v1, "LATITUDE_POSITION"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-string v4, "LONGITUDE_POSITION"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-direct {v0, v2, v3, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 542
    new-instance p1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 543
    invoke-direct {p0, v0, p1}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->setDistanceBetween(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method

.method private setLocationText(Ljava/util/HashMap;)V
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

    .line 569
    iput-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mLocation:Ljava/util/HashMap;

    .line 570
    iget-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->locationObservable:Lio/reactivex/Single;

    .line 571
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 572
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$$ExternalSyntheticLambda11;-><init>(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;)V

    sget-object v1, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$$ExternalSyntheticLambda13;->INSTANCE:Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$$ExternalSyntheticLambda13;

    .line 573
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    .line 584
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 585
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addMarker(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 409
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    const-string v1, "LATITUDE_POSITION"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-string v3, "LONGITUDE_POSITION"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Add marker"

    .line 410
    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    iget-object v1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mMarker:Lcom/google/android/gms/maps/model/MarkerOptions;

    if-nez v1, :cond_0

    .line 412
    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 413
    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    const v3, 0x3f4ccccd    # 0.8f

    .line 414
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    const v2, 0x7f08007c

    .line 415
    invoke-static {v2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mMarker:Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 416
    iget-object v2, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 417
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->addCircle(Ljava/util/HashMap;)V

    .line 418
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->animateCamera(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 420
    :cond_0
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->setLocationText(Ljava/util/HashMap;)V

    const/4 p1, 0x1

    .line 421
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->setNavigatorButtonVisibility(Z)V

    return-void
.end method

.method public animateCamera(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2

    .line 214
    :try_start_0
    iget-boolean v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->firstLocation:Z

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p1, v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    new-instance v1, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$1;-><init>(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Map is null"

    .line 230
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

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

    const-string v1, "Get car mLocation"

    .line 438
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 443
    :cond_0
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getLastLocation()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->locCar:Ljava/util/HashMap;

    return-object v0
.end method

.method public hideTextsAndButton()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Hide button and texts"

    .line 386
    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    iget-object v1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mDistanceContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 388
    iget-object v1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mTimeAgoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 389
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->setNavigatorButtonVisibility(Z)V

    return-void
.end method

.method public initActionBar()V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mActionBarToolbar:Landroidx/appcompat/widget/Toolbar;

    if-nez v0, :cond_0

    const v0, 0x7f0a0489

    .line 487
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mActionBarToolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 490
    invoke-virtual {p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 492
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    const/4 v1, 0x1

    .line 493
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 494
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$0$com-texa-careapp-app-vehiclefinder-VehicleFinderActivity(Landroid/location/Location;)V
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Location changed"

    .line 132
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 134
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->animateCamera(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 136
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "LATITUDE_POSITION"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v1, "LONGITUDE_POSITION"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iput-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mLocation:Ljava/util/HashMap;

    .line 139
    invoke-direct {p0, v0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->setLocationText(Ljava/util/HashMap;)V

    return-void
.end method

.method public synthetic lambda$new$1$com-texa-careapp-app-vehiclefinder-VehicleFinderActivity(Landroid/location/Location;)V
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Location changed - disconnected"

    .line 143
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 145
    iget-object v1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->locCar:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 148
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "LATITUDE_POSITION"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v1, "LONGITUDE_POSITION"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mLocation:Ljava/util/HashMap;

    if-eq p1, v0, :cond_1

    .line 152
    iput-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mLocation:Ljava/util/HashMap;

    .line 153
    iget-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->locCar:Ljava/util/HashMap;

    invoke-direct {p0, v0, p1}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->setDistanceBetween(Ljava/util/HashMap;Ljava/util/HashMap;)V

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->animateCamera(Lcom/google/android/gms/maps/model/LatLng;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$new$2$com-texa-careapp-app-vehiclefinder-VehicleFinderActivity(Ljava/beans/PropertyChangeEvent;)V
    .locals 3

    .line 164
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    .line 166
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.texa.carelib.communication.Communication#PROPERTY_STATUS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 167
    sget-object p1, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$4;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    .line 174
    sget-object v1, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->TAG:Ljava/lang/String;

    aput-object v1, p1, v0

    const-string v0, "CARE DONGLE CONNECT NOW ON %s"

    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    new-instance p1, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;)V

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    .line 170
    sget-object v1, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->TAG:Ljava/lang/String;

    aput-object v1, p1, v0

    const-string v0, "CARE DISCONNECT NOW ON %s"

    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    new-instance p1, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;)V

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$new$3$com-texa-careapp-app-vehiclefinder-VehicleFinderActivity(Lio/reactivex/SingleEmitter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 182
    new-instance v0, Landroid/location/Geocoder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    const/4 v6, 0x0

    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mLocation:Ljava/util/HashMap;

    const-string v2, "LATITUDE_POSITION"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget-object v3, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mLocation:Ljava/util/HashMap;

    const-string v4, "LONGITUDE_POSITION"

    .line 185
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const/4 v5, 0x1

    .line 184
    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    .line 187
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 189
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, " "

    if-eqz v1, :cond_0

    .line 190
    :try_start_1
    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->checkDoubleAddress(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->address:Ljava/lang/String;

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Address;

    invoke-virtual {v3}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->addressCity:Ljava/lang/String;

    goto :goto_0

    .line 193
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110b00

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->address:Ljava/lang/String;

    .line 194
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->addressCity:Ljava/lang/String;

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 197
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "got exception"

    .line 200
    invoke-static {v0, v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$new$4$com-texa-careapp-app-vehiclefinder-VehicleFinderActivity()Lio/reactivex/SingleSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 181
    new-instance v0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$$ExternalSyntheticLambda9;-><init>(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;)V

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$observeSensorChange$7$com-texa-careapp-app-vehiclefinder-VehicleFinderActivity(Landroid/hardware/SensorEvent;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 340
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mAccelerometer:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 341
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mLastAccelerometer:[F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length p1, p1

    invoke-static {v0, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    iput-boolean v2, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mLastAccelerometerSet:Z

    goto :goto_0

    .line 343
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mMagnetometer:Landroid/hardware/Sensor;

    if-ne v0, v1, :cond_1

    .line 344
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mLastMagnetometer:[F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length p1, p1

    invoke-static {v0, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    iput-boolean v2, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mLastMagnetometerSet:Z

    .line 347
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mLastAccelerometerSet:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mLastMagnetometerSet:Z

    if-eqz p1, :cond_2

    .line 348
    iget-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mR:[F

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mLastAccelerometer:[F

    iget-object v4, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mLastMagnetometer:[F

    invoke-static {p1, v0, v1, v4}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 349
    iget-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mR:[F

    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mOrientation:[F

    invoke-static {p1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 350
    iget-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mOrientation:[F

    aget p1, p1, v3

    float-to-double v0, p1

    .line 351
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    const-wide v3, 0x4076800000000000L    # 360.0

    add-double/2addr v0, v3

    double-to-float p1, v0

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    .line 352
    invoke-virtual {p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->getLocationCar()Ljava/util/HashMap;

    move-result-object v0

    float-to-double v3, p1

    .line 353
    iget-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mLocation:Ljava/util/HashMap;

    const-string v1, "LATITUDE_POSITION"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mLocation:Ljava/util/HashMap;

    const-string v5, "LONGITUDE_POSITION"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    move-object v5, p0

    invoke-direct/range {v5 .. v13}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->bearing(DDDD)D

    move-result-wide v0

    sub-double/2addr v3, v0

    double-to-float p1, v3

    .line 355
    new-instance v0, Landroid/view/animation/RotateAnimation;

    iget v4, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mCurrentDegree:F

    neg-float p1, p1

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v3, v0

    move v5, p1

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v3, 0xfa

    .line 362
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 364
    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 366
    iget-object v1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mCompass:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 367
    iput p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mCurrentDegree:F

    :cond_2
    return-void
.end method

.method public synthetic lambda$onCreate$5$com-texa-careapp-app-vehiclefinder-VehicleFinderActivity(Landroid/view/View;)V
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->clickWhy()V

    return-void
.end method

.method public synthetic lambda$setLocationText$9$com-texa-careapp-app-vehiclefinder-VehicleFinderActivity(Ljava/lang/Boolean;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 574
    sget-object v0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "location retrieved successfully"

    goto :goto_0

    :cond_0
    const-string v2, "error retrieving location"

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 575
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 576
    iget-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mWhyText:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 577
    iget-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mAddress:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->address:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 578
    iget-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mAddressCity:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->addressCity:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 236
    invoke-super {p0, p1}, Lcom/texa/careapp/base/GooglePlayServicesActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0042

    .line 237
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;

    .line 238
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;->address:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mAddress:Landroid/widget/TextView;

    .line 239
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;->addressCity:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mAddressCity:Landroid/widget/TextView;

    .line 240
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;->distance:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mDistanceText:Landroid/widget/TextView;

    .line 241
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;->unit:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mUnit:Landroidx/appcompat/widget/AppCompatTextView;

    .line 242
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;->distanceRoad:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mDistanceRoadText:Landroid/widget/TextView;

    .line 243
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;->unitRoad:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mUnitRoad:Landroid/widget/TextView;

    .line 244
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;->timeago:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mTimeAgoText:Landroid/widget/TextView;

    .line 245
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;->compass:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mCompass:Landroid/widget/ImageView;

    .line 246
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;->navigatorButton:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mNavigatorButton:Landroid/widget/RelativeLayout;

    .line 247
    new-instance v1, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;->distanceContainer:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mDistanceContainer:Landroid/widget/LinearLayout;

    .line 249
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;->timeagoContainer:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mTimeAgoContainer:Landroid/widget/LinearLayout;

    .line 250
    iget-object p1, p1, Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;->whyText:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mWhyText:Landroid/widget/TextView;

    .line 251
    new-instance v0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_OPENED_FIND_VEHICLE_SCREEN:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 255
    invoke-virtual {p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/CareApplication;

    .line 256
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;)V

    .line 258
    invoke-virtual {p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->initActionBar()V

    const-string p1, "location"

    .line 259
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string p1, "sensor"

    .line 260
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    .line 261
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mAccelerometer:Landroid/hardware/Sensor;

    .line 262
    iget-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mMagnetometer:Landroid/hardware/Sensor;

    .line 264
    invoke-virtual {p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f0a0262

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 1

    .line 281
    iput-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 282
    sget-object p1, Lcom/texa/careapp/utils/permission/CorePermission;->USE_ACCESS_LOCATION:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/texa/careapp/utils/Utils;->isPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 283
    iget-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 284
    iget-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->communication:Lcom/texa/carelib/communication/Communication;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->isCareConnected(Lcom/texa/carelib/communication/Communication;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->locateConnected()V

    goto :goto_0

    .line 287
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->locateDisconnected()V

    goto :goto_0

    .line 290
    :cond_1
    invoke-direct {p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->requestPermission()V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 501
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 505
    :cond_0
    invoke-super {p0, p1}, Lcom/texa/careapp/base/GooglePlayServicesActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 3

    .line 458
    invoke-super {p0}, Lcom/texa/careapp/base/GooglePlayServicesActivity;->onPause()V

    .line 459
    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 460
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMyLocationChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;)V

    .line 461
    iput-object v1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->communication:Lcom/texa/carelib/communication/Communication;

    iget-object v1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mCommunicationChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-interface {v0, v1}, Lcom/texa/carelib/communication/Communication;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 465
    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mGeoCoderAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mGeoCoderAsyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mDistanceAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 469
    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mDistanceAsyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 471
    :cond_2
    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mAccelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 472
    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mMagnetometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 473
    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->sensorSubjectDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mPermissionRequest:Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v0, p1, p2, p3}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 315
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/texa/careapp/base/GooglePlayServicesActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 320
    invoke-super {p0}, Lcom/texa/careapp/base/GooglePlayServicesActivity;->onResume()V

    .line 322
    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->communication:Lcom/texa/carelib/communication/Communication;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isCareConnected(Lcom/texa/carelib/communication/Communication;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-direct {p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->locateConnected()V

    goto :goto_0

    .line 326
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->locateDisconnected()V

    .line 329
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mAccelerometer:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 330
    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mMagnetometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 331
    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->communication:Lcom/texa/carelib/communication/Communication;

    iget-object v1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mCommunicationChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-interface {v0, v1}, Lcom/texa/carelib/communication/Communication;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    .line 332
    invoke-direct {p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->observeSensorChange()V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mSensorEventSubject:Lio/reactivex/subjects/Subject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public removeMarker()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Remove marker"

    .line 394
    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    iget-object v1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v1, :cond_0

    .line 396
    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    :cond_0
    const/4 v1, 0x0

    .line 397
    iput-object v1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mMarker:Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 398
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->setNavigatorButtonVisibility(Z)V

    return-void
.end method

.method public setDistanceText(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 4

    .line 530
    invoke-static {p1, p2}, Lcom/google/maps/android/SphericalUtil;->computeDistanceBetween(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 531
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    cmpl-double p2, v0, v2

    if-ltz p2, :cond_0

    .line 532
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    div-double/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 533
    iget-object p2, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mUnit:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110d0b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 535
    :cond_0
    iget-object p2, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mUnit:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110ae9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    :goto_0
    iget-object p2, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mDistanceText:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNavigatorButtonVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 478
    iget-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mNavigatorButton:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 480
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mNavigatorButton:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public viewNoLocation()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "View no mLocation"

    .line 450
    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 451
    iget-object v1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mAddress:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110b0d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mAddressCity:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mWhyText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public viewTextsAndButton()V
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mDistanceContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mTimeAgoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 404
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->setNavigatorButtonVisibility(Z)V

    return-void
.end method

.class public Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;
.super Lcom/texa/care/navigation/Screen;
.source "EcoDrivingTripDetailMapScreen.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# instance fields
.field private distance:Ljava/lang/String;

.field private duration:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private locations:Landroid/widget/TextView;

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

.field private mScoreCircle:Lcom/texa/careapp/views/CircleDisplay;

.field private mTripDistance:Landroid/widget/TextView;

.field private mTripDistanceLabel:Landroid/widget/TextView;

.field private mTripDuration:Landroid/widget/TextView;

.field private mTripDurationLabel:Landroid/widget/TextView;

.field private tripEvent:Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

.field private tripEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripEventModel;",
            ">;"
        }
    .end annotation
.end field

.field private tripScore:I


# direct methods
.method constructor <init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/CareApplication$ApplicationComponent;",
            "I",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripEventModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->tripEvent:Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    .line 55
    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;)V

    .line 56
    iput-object p3, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->tripEvents:Ljava/util/List;

    .line 57
    iput p2, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->tripScore:I

    .line 58
    iput-object p5, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->distance:Ljava/lang/String;

    .line 59
    iput-object p6, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->duration:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->location:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/texa/careapp/app/ecodriving/model/TripEventModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/CareApplication$ApplicationComponent;",
            "I",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripEventModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/texa/careapp/app/ecodriving/model/TripEventModel;",
            ")V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->tripEvent:Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    .line 67
    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;)V

    .line 68
    iput-object p3, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->tripEvents:Ljava/util/List;

    .line 69
    iput p2, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->tripScore:I

    .line 70
    iput-object p5, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->distance:Ljava/lang/String;

    .line 71
    iput-object p6, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->duration:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->location:Ljava/lang/String;

    .line 73
    iput-object p7, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->tripEvent:Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    return-void
.end method

.method private initMap()V
    .locals 9

    .line 111
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 114
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->tripEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    .line 115
    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getLat()Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getLng()Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 116
    new-instance v3, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    .line 117
    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getLat()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getLng()Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    .line 118
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/texa/careapp/Constants;->ECO_DRIVING_TEXT:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTypeId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    sget-object v4, Lcom/texa/careapp/Constants;->ECO_DRIVING_MAP_IMAGES:Landroid/util/SparseIntArray;

    .line 119
    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTypeId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    .line 120
    iget-object v3, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    if-nez v1, :cond_1

    .line 122
    new-instance v1, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V

    .line 123
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    goto :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->tripEvent:Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    if-eqz v0, :cond_3

    .line 128
    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getLat()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->tripEvent:Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getLng()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 129
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->tripEvent:Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    .line 130
    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getLat()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->tripEvent:Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    invoke-virtual {v4}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getLng()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/texa/careapp/Constants;->ECO_DRIVING_TEXT:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->tripEvent:Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    invoke-virtual {v3}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTypeId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/Constants;->ECO_DRIVING_MAP_IMAGES:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->tripEvent:Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    .line 132
    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTypeId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 134
    new-instance v1, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V

    .line 135
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    :cond_3
    if-eqz v1, :cond_4

    .line 140
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    .line 141
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 145
    :cond_4
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/permission/CorePermission;->USE_ACCESS_LOCATION:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->isPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 146
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    :cond_5
    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 5

    .line 79
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripMapBinding;

    .line 80
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripMapBinding;->screenEcoDrivingTripMapScore:Lcom/texa/careapp/views/CircleDisplay;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->mScoreCircle:Lcom/texa/careapp/views/CircleDisplay;

    .line 81
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripMapBinding;->screenEcoDrivingTripMapLocations:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->locations:Landroid/widget/TextView;

    .line 82
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripMapBinding;->screenEcoDrivingTripMapDuration:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->mTripDuration:Landroid/widget/TextView;

    .line 83
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripMapBinding;->screenEcoDrivingTripMapDistance:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->mTripDistance:Landroid/widget/TextView;

    .line 84
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripMapBinding;->screenEcoDrivingTripMapDurationLabel:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->mTripDurationLabel:Landroid/widget/TextView;

    .line 85
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripMapBinding;->screenEcoDrivingTripMapDistanceLabel:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->mTripDistanceLabel:Landroid/widget/TextView;

    .line 87
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->mTripDistance:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->distance:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->mTripDuration:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->duration:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->tripScore:I

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/EcoDrivingUtils;->getReferenceColor(Landroid/content/Context;I)I

    move-result p1

    .line 92
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->mScoreCircle:Lcom/texa/careapp/views/CircleDisplay;

    iget v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->tripScore:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget v3, Lcom/texa/careapp/utils/EcoDrivingUtils;->MAX_VALUE:I

    int-to-float v3, v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v4}, Lcom/texa/careapp/views/CircleDisplay;->showValue(FFZ)V

    .line 93
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->mScoreCircle:Lcom/texa/careapp/views/CircleDisplay;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/CircleDisplay;->setAnimDuration(I)V

    .line 94
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->mScoreCircle:Lcom/texa/careapp/views/CircleDisplay;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->tripScore:I

    invoke-static {v1, v3}, Lcom/texa/careapp/utils/EcoDrivingUtils;->getReferenceColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/CircleDisplay;->setColor(I)V

    .line 95
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->mScoreCircle:Lcom/texa/careapp/views/CircleDisplay;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/views/CircleDisplay;->setTextColor(I)V

    .line 96
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->mScoreCircle:Lcom/texa/careapp/views/CircleDisplay;

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/CircleDisplay;->setTypeface(I)V

    .line 97
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->mScoreCircle:Lcom/texa/careapp/views/CircleDisplay;

    iget v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->tripScore:I

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1109a6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/CircleDisplay;->setCustomText(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->location:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->locations:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->locations:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    :goto_2
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->mTripDistanceLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->mTripDurationLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "EcoDrivingTripDetailMapScreen"

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00c7

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->goBack()V

    const/4 v0, 0x1

    return v0
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 152
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->initMap()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 163
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    .line 164
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a037c

    .line 165
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment;

    .line 166
    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    return-void
.end method

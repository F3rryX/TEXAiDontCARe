.class public Lcom/google/android/gms/location/places/Places;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final GEO_DATA_API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/location/places/PlacesOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final GeoDataApi:Lcom/google/android/gms/location/places/GeoDataApi;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PLACE_DETECTION_API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/location/places/PlacesOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final PlaceDetectionApi:Lcom/google/android/gms/location/places/PlaceDetectionApi;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final zzaq:Lcom/google/android/gms/common/api/Api$ClientKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$ClientKey<",
            "Lcom/google/android/gms/location/places/internal/zzq;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzar:Lcom/google/android/gms/common/api/Api$ClientKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$ClientKey<",
            "Lcom/google/android/gms/location/places/internal/zzae;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 18
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/Places;->zzaq:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 19
    new-instance v1, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v1, Lcom/google/android/gms/location/places/Places;->zzar:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 20
    new-instance v2, Lcom/google/android/gms/common/api/Api;

    new-instance v3, Lcom/google/android/gms/location/places/internal/zzs;

    invoke-direct {v3}, Lcom/google/android/gms/location/places/internal/zzs;-><init>()V

    const-string v4, "Places.GEO_DATA_API"

    invoke-direct {v2, v4, v3, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v2, Lcom/google/android/gms/location/places/Places;->GEO_DATA_API:Lcom/google/android/gms/common/api/Api;

    .line 21
    new-instance v0, Lcom/google/android/gms/common/api/Api;

    new-instance v2, Lcom/google/android/gms/location/places/internal/zzaf;

    invoke-direct {v2}, Lcom/google/android/gms/location/places/internal/zzaf;-><init>()V

    const-string v3, "Places.PLACE_DETECTION_API"

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v0, Lcom/google/android/gms/location/places/Places;->PLACE_DETECTION_API:Lcom/google/android/gms/common/api/Api;

    .line 22
    new-instance v0, Lcom/google/android/gms/location/places/internal/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/internal/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/Places;->GeoDataApi:Lcom/google/android/gms/location/places/GeoDataApi;

    .line 23
    new-instance v0, Lcom/google/android/gms/location/places/internal/zzz;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/internal/zzz;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/Places;->PlaceDetectionApi:Lcom/google/android/gms/location/places/PlaceDetectionApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGeoDataClient(Landroid/app/Activity;)Lcom/google/android/gms/location/places/GeoDataClient;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 10
    invoke-static {p0, v0}, Lcom/google/android/gms/location/places/Places;->getGeoDataClient(Landroid/app/Activity;Lcom/google/android/gms/location/places/PlacesOptions;)Lcom/google/android/gms/location/places/GeoDataClient;

    move-result-object p0

    return-object p0
.end method

.method public static getGeoDataClient(Landroid/app/Activity;Lcom/google/android/gms/location/places/PlacesOptions;)Lcom/google/android/gms/location/places/GeoDataClient;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11
    new-instance v0, Lcom/google/android/gms/location/places/GeoDataClient;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Lcom/google/android/gms/location/places/PlacesOptions$Builder;

    invoke-direct {p1}, Lcom/google/android/gms/location/places/PlacesOptions$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/PlacesOptions$Builder;->build()Lcom/google/android/gms/location/places/PlacesOptions;

    move-result-object p1

    :goto_0
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/location/places/GeoDataClient;-><init>(Landroid/app/Activity;Lcom/google/android/gms/location/places/PlacesOptions;)V

    return-object v0
.end method

.method public static getGeoDataClient(Landroid/content/Context;)Lcom/google/android/gms/location/places/GeoDataClient;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 14
    invoke-static {p0, v0}, Lcom/google/android/gms/location/places/Places;->getGeoDataClient(Landroid/content/Context;Lcom/google/android/gms/location/places/PlacesOptions;)Lcom/google/android/gms/location/places/GeoDataClient;

    move-result-object p0

    return-object p0
.end method

.method public static getGeoDataClient(Landroid/content/Context;Lcom/google/android/gms/location/places/PlacesOptions;)Lcom/google/android/gms/location/places/GeoDataClient;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 15
    new-instance v0, Lcom/google/android/gms/location/places/GeoDataClient;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Lcom/google/android/gms/location/places/PlacesOptions$Builder;

    invoke-direct {p1}, Lcom/google/android/gms/location/places/PlacesOptions$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/PlacesOptions$Builder;->build()Lcom/google/android/gms/location/places/PlacesOptions;

    move-result-object p1

    :goto_0
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/location/places/GeoDataClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/location/places/PlacesOptions;)V

    return-object v0
.end method

.method public static getPlaceDetectionClient(Landroid/app/Activity;)Lcom/google/android/gms/location/places/PlaceDetectionClient;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/google/android/gms/location/places/Places;->getPlaceDetectionClient(Landroid/app/Activity;Lcom/google/android/gms/location/places/PlacesOptions;)Lcom/google/android/gms/location/places/PlaceDetectionClient;

    move-result-object p0

    return-object p0
.end method

.method public static getPlaceDetectionClient(Landroid/app/Activity;Lcom/google/android/gms/location/places/PlacesOptions;)Lcom/google/android/gms/location/places/PlaceDetectionClient;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    new-instance v0, Lcom/google/android/gms/location/places/PlaceDetectionClient;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcom/google/android/gms/location/places/PlacesOptions$Builder;

    invoke-direct {p1}, Lcom/google/android/gms/location/places/PlacesOptions$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/PlacesOptions$Builder;->build()Lcom/google/android/gms/location/places/PlacesOptions;

    move-result-object p1

    :goto_0
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/location/places/PlaceDetectionClient;-><init>(Landroid/app/Activity;Lcom/google/android/gms/location/places/PlacesOptions;)V

    return-object v0
.end method

.method public static getPlaceDetectionClient(Landroid/content/Context;)Lcom/google/android/gms/location/places/PlaceDetectionClient;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 6
    invoke-static {p0, v0}, Lcom/google/android/gms/location/places/Places;->getPlaceDetectionClient(Landroid/content/Context;Lcom/google/android/gms/location/places/PlacesOptions;)Lcom/google/android/gms/location/places/PlaceDetectionClient;

    move-result-object p0

    return-object p0
.end method

.method public static getPlaceDetectionClient(Landroid/content/Context;Lcom/google/android/gms/location/places/PlacesOptions;)Lcom/google/android/gms/location/places/PlaceDetectionClient;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/gms/location/places/PlaceDetectionClient;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lcom/google/android/gms/location/places/PlacesOptions$Builder;

    invoke-direct {p1}, Lcom/google/android/gms/location/places/PlacesOptions$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/PlacesOptions$Builder;->build()Lcom/google/android/gms/location/places/PlacesOptions;

    move-result-object p1

    :goto_0
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/location/places/PlaceDetectionClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/location/places/PlacesOptions;)V

    return-object v0
.end method

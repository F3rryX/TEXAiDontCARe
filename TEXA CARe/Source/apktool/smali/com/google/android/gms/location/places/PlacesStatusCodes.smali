.class public Lcom/google/android/gms/location/places/PlacesStatusCodes;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ACCESS_NOT_CONFIGURED:I = 0x232b

.field public static final DEVICE_RATE_LIMIT_EXCEEDED:I = 0x232e

.field public static final INVALID_APP:I = 0x2330

.field public static final INVALID_ARGUMENT:I = 0x232c

.field public static final KEY_EXPIRED:I = 0x232f

.field public static final KEY_INVALID:I = 0x232a

.field public static final RATE_LIMIT_EXCEEDED:I = 0x232d

.field public static final USAGE_LIMIT_EXCEEDED:I = 0x2329


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x235b

    if-eq p0, v0, :cond_5

    const/16 v0, 0x23be

    if-eq p0, v0, :cond_4

    const/16 v0, 0x238d

    if-eq p0, v0, :cond_3

    const/16 v0, 0x238e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x23f1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23f2

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 18
    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "INSUFFICIENT_LOCATION_PERMISSION_FOR_BACKGROUND_PLACES"

    return-object p0

    :pswitch_1
    const-string p0, "PLACES_API_INVALID_APP"

    return-object p0

    :pswitch_2
    const-string p0, "PLACES_API_KEY_EXPIRED"

    return-object p0

    :pswitch_3
    const-string p0, "PLACES_API_DEVICE_RATE_LIMIT_EXCEEDED"

    return-object p0

    :pswitch_4
    const-string p0, "PLACES_API_RATE_LIMIT_EXCEEDED"

    return-object p0

    :pswitch_5
    const-string p0, "PLACES_API_INVALID_ARGUMENT"

    return-object p0

    :pswitch_6
    const-string p0, "PLACES_API_ACCESS_NOT_CONFIGURED"

    return-object p0

    :pswitch_7
    const-string p0, "PLACES_API_KEY_INVALID"

    return-object p0

    :pswitch_8
    const-string p0, "PLACES_API_USAGE_LIMIT_EXCEEDED"

    return-object p0

    :pswitch_9
    const-string p0, "PLACES_API_QUOTA_FAILED"

    return-object p0

    :cond_0
    const-string p0, "PLACES_API_PERSONALIZED_DATA_ACCESS_REJECTED"

    return-object p0

    :cond_1
    const-string p0, "PLACES_API_PERSONALIZED_DATA_ACCESS_APPROVED"

    return-object p0

    :cond_2
    const-string p0, "NEARBY_ALERTS_NOT_AVAILABLE"

    return-object p0

    :cond_3
    const-string p0, "PLACE_PROXIMITY_UNKNOWN"

    return-object p0

    :cond_4
    const-string p0, "PLACEFENCING_NOT_AVAILABLE"

    return-object p0

    :cond_5
    const-string p0, "PLACE_ALIAS_NOT_FOUND"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2328
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzb(I)Lcom/google/android/gms/common/api/Status;
    .locals 2

    .line 21
    invoke-static {p0}, Lcom/google/android/gms/location/places/PlacesStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

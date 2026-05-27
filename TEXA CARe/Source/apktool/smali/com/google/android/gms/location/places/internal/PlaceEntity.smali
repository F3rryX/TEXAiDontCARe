.class public final Lcom/google/android/gms/location/places/internal/PlaceEntity;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;
.implements Lcom/google/android/gms/location/places/Place;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/places/internal/PlaceEntity$zzb;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/location/places/internal/PlaceEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final latLng:Lcom/google/android/gms/maps/model/LatLng;

.field private locale:Ljava/util/Locale;

.field private final name:Ljava/lang/String;

.field private final zzbw:Ljava/lang/String;

.field private final zzbx:F

.field private final zzby:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private final zzbz:Ljava/lang/String;

.field private final zzca:Z

.field private final zzcb:F

.field private final zzcc:I

.field private final zzcd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzce:Lcom/google/android/gms/location/places/internal/zzal;

.field private final zzcf:Lcom/google/android/gms/location/places/internal/zzai;

.field private final zzcg:Ljava/lang/String;

.field private final zzf:Ljava/lang/String;

.field private final zzg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zzh:Ljava/lang/String;

.field private final zzi:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 124
    new-instance v0, Lcom/google/android/gms/location/places/internal/zzag;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/internal/zzag;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/maps/model/LatLng;FLcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;Landroid/net/Uri;ZFILcom/google/android/gms/location/places/internal/zzal;Lcom/google/android/gms/location/places/internal/zzai;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "F",
            "Lcom/google/android/gms/maps/model/LatLngBounds;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "ZFI",
            "Lcom/google/android/gms/location/places/internal/zzal;",
            "Lcom/google/android/gms/location/places/internal/zzai;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbw:Ljava/lang/String;

    .line 3
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzg:Ljava/util/List;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->name:Ljava/lang/String;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzf:Ljava/lang/String;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzh:Ljava/lang/String;

    if-eqz p6, :cond_0

    move-object v1, p6

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzcd:Ljava/util/List;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->latLng:Lcom/google/android/gms/maps/model/LatLng;

    move v1, p8

    .line 9
    iput v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbx:F

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzby:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-eqz p10, :cond_1

    move-object v1, p10

    goto :goto_1

    :cond_1
    const-string v1, "UTC"

    .line 11
    :goto_1
    iput-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbz:Ljava/lang/String;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzi:Landroid/net/Uri;

    move v1, p12

    .line 13
    iput-boolean v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzca:Z

    move v1, p13

    .line 14
    iput v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzcb:F

    move/from16 v1, p14

    .line 15
    iput v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzcc:I

    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->locale:Ljava/util/Locale;

    move-object/from16 v1, p15

    .line 17
    iput-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzce:Lcom/google/android/gms/location/places/internal/zzal;

    move-object/from16 v1, p16

    .line 18
    iput-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzcf:Lcom/google/android/gms/location/places/internal/zzai;

    move-object/from16 v1, p17

    .line 19
    iput-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzcg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 49
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/location/places/internal/PlaceEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 51
    :cond_1
    check-cast p1, Lcom/google/android/gms/location/places/internal/PlaceEntity;

    .line 52
    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbw:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbw:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->locale:Ljava/util/Locale;

    iget-object p1, p1, Lcom/google/android/gms/location/places/internal/PlaceEntity;->locale:Ljava/util/Locale;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final bridge synthetic freeze()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public final synthetic getAddress()Ljava/lang/CharSequence;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final getAttributions()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzcd:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/location/places/internal/zzi;->zzc(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbw:Ljava/lang/String;

    return-object v0
.end method

.method public final getLatLng()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->latLng:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public final getLocale()Ljava/util/Locale;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public final synthetic getName()Ljava/lang/CharSequence;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic getPhoneNumber()Ljava/lang/CharSequence;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlaceTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzg:Ljava/util/List;

    return-object v0
.end method

.method public final getPriceLevel()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzcc:I

    return v0
.end method

.method public final getRating()F
    .locals 1

    .line 30
    iget v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzcb:F

    return v0
.end method

.method public final getViewport()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzby:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public final getWebsiteUri()Landroid/net/Uri;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzi:Landroid/net/Uri;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 46
    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbw:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->locale:Ljava/util/Locale;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final setLocale(Ljava/util/Locale;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->locale:Ljava/util/Locale;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 32
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbw:Ljava/lang/String;

    const-string v2, "id"

    .line 33
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzg:Ljava/util/List;

    const-string v2, "placeTypes"

    .line 34
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->locale:Ljava/util/Locale;

    const-string v2, "locale"

    .line 35
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->name:Ljava/lang/String;

    const-string v2, "name"

    .line 36
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzf:Ljava/lang/String;

    const-string v2, "address"

    .line 37
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzh:Ljava/lang/String;

    const-string v2, "phoneNumber"

    .line 38
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->latLng:Lcom/google/android/gms/maps/model/LatLng;

    const-string v2, "latlng"

    .line 39
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzby:Lcom/google/android/gms/maps/model/LatLngBounds;

    const-string/jumbo v2, "viewport"

    .line 40
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzi:Landroid/net/Uri;

    const-string/jumbo v2, "websiteUri"

    .line 41
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzca:Z

    .line 42
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isPermanentlyClosed"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzcc:I

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "priceLevel"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 54
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceEntity;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 57
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceEntity;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    const/4 v2, 0x4

    .line 60
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 62
    iget v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbx:F

    const/4 v2, 0x5

    .line 63
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 65
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceEntity;->getViewport()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    const/4 v2, 0x6

    .line 66
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 68
    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzbz:Ljava/lang/String;

    const/4 v2, 0x7

    .line 70
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 72
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceEntity;->getWebsiteUri()Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0x8

    .line 73
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 75
    iget-boolean v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzca:Z

    const/16 v2, 0x9

    .line 76
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 78
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceEntity;->getRating()F

    move-result v1

    const/16 v2, 0xa

    .line 79
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceEntity;->getPriceLevel()I

    move-result v1

    const/16 v2, 0xb

    .line 82
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 84
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceEntity;->getAddress()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0xe

    .line 85
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 87
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceEntity;->getPhoneNumber()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0xf

    .line 88
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 90
    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzcd:Ljava/util/List;

    const/16 v2, 0x11

    .line 92
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 94
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceEntity;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x13

    .line 95
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 97
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceEntity;->getPlaceTypes()Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x14

    .line 98
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIntegerList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 100
    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzce:Lcom/google/android/gms/location/places/internal/zzal;

    const/16 v2, 0x15

    .line 102
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 104
    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzcf:Lcom/google/android/gms/location/places/internal/zzai;

    const/16 v2, 0x16

    .line 106
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 108
    iget-object p2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->zzcg:Ljava/lang/String;

    const/16 v1, 0x17

    .line 110
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 111
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

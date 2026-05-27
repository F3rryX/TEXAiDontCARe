.class public final Lcom/google/android/gms/location/places/zzf;
.super Lcom/google/android/gms/location/places/internal/zzy;


# instance fields
.field private final zzn:Lcom/google/android/gms/location/places/zzg;

.field private final zzo:Lcom/google/android/gms/location/places/zze;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/places/zze;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzy;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/location/places/zzf;->zzn:Lcom/google/android/gms/location/places/zzg;

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/location/places/zzf;->zzo:Lcom/google/android/gms/location/places/zze;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/places/zzg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzy;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/location/places/zzf;->zzn:Lcom/google/android/gms/location/places/zzg;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/location/places/zzf;->zzo:Lcom/google/android/gms/location/places/zze;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/location/places/zzf;->zzn:Lcom/google/android/gms/location/places/zzg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/location/places/zzg;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/location/places/PlacePhotoResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/location/places/zzf;->zzo:Lcom/google/android/gms/location/places/zze;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/location/places/zze;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

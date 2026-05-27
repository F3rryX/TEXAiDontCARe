.class final Lcom/google/android/gms/location/places/internal/zzm;
.super Lcom/google/android/gms/location/places/zze;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/location/places/zze<",
        "Lcom/google/android/gms/location/places/internal/zzq;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzbm:Ljava/lang/String;

.field private final synthetic zzbn:I

.field private final synthetic zzbo:I

.field private final synthetic zzbp:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/places/internal/zzh;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;III)V
    .locals 0

    .line 1
    iput-object p4, p0, Lcom/google/android/gms/location/places/internal/zzm;->zzbm:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/location/places/internal/zzm;->zzbn:I

    iput p6, p0, Lcom/google/android/gms/location/places/internal/zzm;->zzbo:I

    iput p7, p0, Lcom/google/android/gms/location/places/internal/zzm;->zzbp:I

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/location/places/zze;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/location/places/internal/zzq;

    .line 3
    new-instance v1, Lcom/google/android/gms/location/places/zzf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/location/places/zzf;-><init>(Lcom/google/android/gms/location/places/zze;)V

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/zzm;->zzbm:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/location/places/internal/zzm;->zzbn:I

    iget v4, p0, Lcom/google/android/gms/location/places/internal/zzm;->zzbo:I

    iget v5, p0, Lcom/google/android/gms/location/places/internal/zzm;->zzbp:I

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/location/places/internal/zzq;->zzb(Lcom/google/android/gms/location/places/zzf;Ljava/lang/String;III)V

    return-void
.end method

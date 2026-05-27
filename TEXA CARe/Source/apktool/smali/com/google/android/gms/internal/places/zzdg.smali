.class final Lcom/google/android/gms/internal/places/zzdg;
.super Lcom/google/android/gms/internal/places/zzdm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/places/zzdm;"
    }
.end annotation


# instance fields
.field private final synthetic zzma:Lcom/google/android/gms/internal/places/zzdb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/places/zzdb;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/places/zzdg;->zzma:Lcom/google/android/gms/internal/places/zzdb;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/places/zzdm;-><init>(Lcom/google/android/gms/internal/places/zzdb;Lcom/google/android/gms/internal/places/zzde;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/places/zzdb;Lcom/google/android/gms/internal/places/zzde;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/places/zzdg;-><init>(Lcom/google/android/gms/internal/places/zzdb;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/places/zzdd;

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzdg;->zzma:Lcom/google/android/gms/internal/places/zzdb;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/places/zzdd;-><init>(Lcom/google/android/gms/internal/places/zzdb;Lcom/google/android/gms/internal/places/zzde;)V

    return-object v0
.end method

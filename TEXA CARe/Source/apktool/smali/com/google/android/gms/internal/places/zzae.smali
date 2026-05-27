.class final Lcom/google/android/gms/internal/places/zzae;
.super Ljava/lang/Object;


# instance fields
.field private final buffer:[B

.field private final zzem:Lcom/google/android/gms/internal/places/zzaj;


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/places/zzae;->buffer:[B

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/places/zzaj;->zzc([B)Lcom/google/android/gms/internal/places/zzaj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/places/zzae;->zzem:Lcom/google/android/gms/internal/places/zzaj;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/places/zzv;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/places/zzae;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzah()Lcom/google/android/gms/internal/places/zzw;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzae;->zzem:Lcom/google/android/gms/internal/places/zzaj;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/places/zzaj;->zzak()I

    move-result v0

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/places/zzag;

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzae;->buffer:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/places/zzag;-><init>([B)V

    return-object v0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzai()Lcom/google/android/gms/internal/places/zzaj;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzae;->zzem:Lcom/google/android/gms/internal/places/zzaj;

    return-object v0
.end method

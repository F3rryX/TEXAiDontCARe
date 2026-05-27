.class abstract Lcom/google/android/gms/internal/places/zzbu;
.super Ljava/lang/Object;


# static fields
.field private static final zzkb:Lcom/google/android/gms/internal/places/zzbu;

.field private static final zzkc:Lcom/google/android/gms/internal/places/zzbu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/places/zzbw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/places/zzbw;-><init>(Lcom/google/android/gms/internal/places/zzbt;)V

    sput-object v0, Lcom/google/android/gms/internal/places/zzbu;->zzkb:Lcom/google/android/gms/internal/places/zzbu;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/places/zzbv;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/places/zzbv;-><init>(Lcom/google/android/gms/internal/places/zzbt;)V

    sput-object v0, Lcom/google/android/gms/internal/places/zzbu;->zzkc:Lcom/google/android/gms/internal/places/zzbu;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/places/zzbt;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/places/zzbu;-><init>()V

    return-void
.end method

.method static zzca()Lcom/google/android/gms/internal/places/zzbu;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/places/zzbu;->zzkb:Lcom/google/android/gms/internal/places/zzbu;

    return-object v0
.end method

.method static zzcb()Lcom/google/android/gms/internal/places/zzbu;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/places/zzbu;->zzkc:Lcom/google/android/gms/internal/places/zzbu;

    return-object v0
.end method


# virtual methods
.method abstract zzb(Ljava/lang/Object;J)V
.end method

.method abstract zzb(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method

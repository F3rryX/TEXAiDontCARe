.class public final Lcom/google/android/gms/internal/places/zzdt;
.super Ljava/util/AbstractList;

# interfaces
.implements Lcom/google/android/gms/internal/places/zzbr;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/android/gms/internal/places/zzbr;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final zzmj:Lcom/google/android/gms/internal/places/zzbr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/places/zzbr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/places/zzdt;->zzmj:Lcom/google/android/gms/internal/places/zzbr;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/places/zzdt;)Lcom/google/android/gms/internal/places/zzbr;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/google/android/gms/internal/places/zzdt;->zzmj:Lcom/google/android/gms/internal/places/zzbr;

    return-object p0
.end method


# virtual methods
.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzdt;->zzmj:Lcom/google/android/gms/internal/places/zzbr;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/places/zzbr;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/places/zzdv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/places/zzdv;-><init>(Lcom/google/android/gms/internal/places/zzdt;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/places/zzdw;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/places/zzdw;-><init>(Lcom/google/android/gms/internal/places/zzdt;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzdt;->zzmj:Lcom/google/android/gms/internal/places/zzbr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/places/zzbr;->size()I

    move-result v0

    return v0
.end method

.method public final zzae(I)Ljava/lang/Object;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzdt;->zzmj:Lcom/google/android/gms/internal/places/zzbr;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/places/zzbr;->zzae(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzby()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzdt;->zzmj:Lcom/google/android/gms/internal/places/zzbr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/places/zzbr;->zzby()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzbz()Lcom/google/android/gms/internal/places/zzbr;
    .locals 0

    return-object p0
.end method

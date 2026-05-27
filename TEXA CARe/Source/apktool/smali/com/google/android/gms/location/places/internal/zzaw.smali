.class public Lcom/google/android/gms/location/places/internal/zzaw;
.super Lcom/google/android/gms/common/data/DataBufferRef;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataBufferRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method

.method private final zzb(Ljava/lang/String;[B)[B
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzaw;->hasColumn(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzaw;->hasNull(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzaw;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected final zzb(Ljava/lang/String;F)F
    .locals 1

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzaw;->hasColumn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzaw;->hasNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzaw;->getFloat(Ljava/lang/String;)F

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method protected final zzb(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable$Creator<",
            "TE;>;)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/location/places/internal/zzaw;->zzb(Ljava/lang/String;[B)[B

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 36
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->deserializeFromBytes([BLandroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object p1

    return-object p1
.end method

.method protected final zzb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 46
    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzaw;->hasColumn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzaw;->hasNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzaw;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method protected final zzb(Ljava/lang/String;Landroid/os/Parcelable$Creator;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable$Creator<",
            "TE;>;",
            "Ljava/util/List<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/location/places/internal/zzaw;->zzb(Ljava/lang/String;[B)[B

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    .line 18
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/places/zzl;->zzb([B)Lcom/google/android/gms/internal/places/zzl;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzl;->zzt()I

    move-result v0

    if-nez v0, :cond_1

    return-object p3

    .line 21
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzl;->zzt()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzl;->zzs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/places/zzw;

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/internal/places/zzw;->toByteArray()[B

    move-result-object v1

    .line 25
    invoke-static {v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->deserializeFromBytes([BLandroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v1

    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/android/gms/internal/places/zzbk; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v0

    :catch_0
    move-exception p1

    const/4 p2, 0x6

    const-string v0, "SafeDataBufferRef"

    .line 30
    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "Cannot parse byte[]"

    .line 31
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-object p3
.end method

.method protected final zzb(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/location/places/internal/zzaw;->zzb(Ljava/lang/String;[B)[B

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 8
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/places/zzl;->zzb([B)Lcom/google/android/gms/internal/places/zzl;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzl;->zzr()I

    move-result v0

    if-nez v0, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzl;->zzq()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/places/zzbk; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 v0, 0x6

    const-string v1, "SafeDataBufferRef"

    .line 11
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Cannot parse byte[]"

    .line 12
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object p2
.end method

.method protected final zzc(Ljava/lang/String;I)I
    .locals 1

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzaw;->hasColumn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzaw;->hasNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/zzaw;->getInteger(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method protected final zzc(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/location/places/internal/zzaw;->zzb(Ljava/lang/String;[B)[B

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 40
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/places/zzl;->zzb([B)Lcom/google/android/gms/internal/places/zzl;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzl;->zzp()I

    move-result v0

    if-nez v0, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/places/zzl;->zzo()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/places/zzbk; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 v0, 0x6

    const-string v1, "SafeDataBufferRef"

    .line 43
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Cannot parse byte[]"

    .line 44
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object p2
.end method

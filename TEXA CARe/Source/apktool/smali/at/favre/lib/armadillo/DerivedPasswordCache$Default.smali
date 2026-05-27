.class public final Lat/favre/lib/armadillo/DerivedPasswordCache$Default;
.super Ljava/lang/Object;
.source "DerivedPasswordCache.java"

# interfaces
.implements Lat/favre/lib/armadillo/DerivedPasswordCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/armadillo/DerivedPasswordCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation


# instance fields
.field private final cache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Long;",
            "Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;",
            ">;"
        }
    .end annotation
.end field

.field private final enabled:Z

.field private key:J

.field private final secureRandom:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(ZLjava/security/SecureRandom;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean p1, p0, Lat/favre/lib/armadillo/DerivedPasswordCache$Default;->enabled:Z

    .line 52
    iput-object p2, p0, Lat/favre/lib/armadillo/DerivedPasswordCache$Default;->secureRandom:Ljava/security/SecureRandom;

    .line 53
    new-instance p1, Landroid/util/LruCache;

    const/16 p2, 0xc

    invoke-direct {p1, p2}, Landroid/util/LruCache;-><init>(I)V

    iput-object p1, p0, Lat/favre/lib/armadillo/DerivedPasswordCache$Default;->cache:Landroid/util/LruCache;

    return-void
.end method

.method private getPwKey([C)J
    .locals 2

    .line 85
    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->from([C)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->hashSha256()Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lat/favre/lib/bytes/Bytes;->longAt(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getSaltKey([B)J
    .locals 2

    .line 89
    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->from([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->hashSha256()Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lat/favre/lib/bytes/Bytes;->longAt(I)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public get([B[C)[B
    .locals 6

    .line 59
    iget-boolean v0, p0, Lat/favre/lib/armadillo/DerivedPasswordCache$Default;->enabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 61
    :cond_0
    iget-wide v2, p0, Lat/favre/lib/armadillo/DerivedPasswordCache$Default;->key:J

    invoke-direct {p0, p2}, Lat/favre/lib/armadillo/DerivedPasswordCache$Default;->getPwKey([C)J

    move-result-wide v4

    cmp-long p2, v2, v4

    if-nez p2, :cond_2

    .line 62
    iget-object p2, p0, Lat/favre/lib/armadillo/DerivedPasswordCache$Default;->cache:Landroid/util/LruCache;

    invoke-direct {p0, p1}, Lat/favre/lib/armadillo/DerivedPasswordCache$Default;->getSaltKey([B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;

    if-eqz p1, :cond_1

    .line 63
    invoke-interface {p1}, Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;->getBytes()[B

    move-result-object v1

    :cond_1
    return-object v1

    .line 66
    :cond_2
    invoke-virtual {p0}, Lat/favre/lib/armadillo/DerivedPasswordCache$Default;->wipe()V

    return-object v1
.end method

.method public put([B[C[B)V
    .locals 4

    .line 72
    iget-boolean v0, p0, Lat/favre/lib/armadillo/DerivedPasswordCache$Default;->enabled:Z

    if-eqz v0, :cond_1

    .line 73
    invoke-direct {p0, p2}, Lat/favre/lib/armadillo/DerivedPasswordCache$Default;->getPwKey([C)J

    move-result-wide v0

    .line 74
    iget-wide v2, p0, Lat/favre/lib/armadillo/DerivedPasswordCache$Default;->key:J

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p0}, Lat/favre/lib/armadillo/DerivedPasswordCache$Default;->wipe()V

    .line 78
    :cond_0
    iput-wide v0, p0, Lat/favre/lib/armadillo/DerivedPasswordCache$Default;->key:J

    .line 79
    invoke-direct {p0, p1}, Lat/favre/lib/armadillo/DerivedPasswordCache$Default;->getSaltKey([B)J

    move-result-wide p1

    .line 80
    iget-object v0, p0, Lat/favre/lib/armadillo/DerivedPasswordCache$Default;->cache:Landroid/util/LruCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-instance p2, Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator$Default;

    iget-object v1, p0, Lat/favre/lib/armadillo/DerivedPasswordCache$Default;->secureRandom:Ljava/security/SecureRandom;

    invoke-direct {p2, p3, v1}, Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator$Default;-><init>([BLjava/security/SecureRandom;)V

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public wipe()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 94
    iput-wide v0, p0, Lat/favre/lib/armadillo/DerivedPasswordCache$Default;->key:J

    .line 95
    iget-object v0, p0, Lat/favre/lib/armadillo/DerivedPasswordCache$Default;->cache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lat/favre/lib/armadillo/DerivedPasswordCache$Default;->cache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;

    .line 97
    invoke-interface {v1}, Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;->wipe()V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lat/favre/lib/armadillo/DerivedPasswordCache$Default;->cache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

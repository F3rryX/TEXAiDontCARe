.class public final Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator$Default;
.super Ljava/lang/Object;
.source "ByteArrayRuntimeObfuscator.java"

# interfaces
.implements Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation


# instance fields
.field private final data:[[B

.field private final secureRandom:Ljava/security/SecureRandom;


# direct methods
.method constructor <init>([BLjava/security/SecureRandom;)V
    .locals 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Ljava/security/SecureRandom;

    iput-object v0, p0, Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator$Default;->secureRandom:Ljava/security/SecureRandom;

    const/16 v0, 0x8

    .line 38
    invoke-static {v0}, Lat/favre/lib/bytes/Bytes;->random(I)Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/Bytes;->toLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x9

    rem-long/2addr v0, v2

    long-to-int v1, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 39
    new-array v0, v1, [[B

    iput-object v0, p0, Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator$Default;->data:[[B

    .line 40
    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->from([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    array-length p1, p1

    invoke-direct {p0, p2, v0, p1}, Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator$Default;->createAndEncrypt(Ljava/security/SecureRandom;Lat/favre/lib/bytes/Bytes;I)V

    return-void
.end method

.method private createAndEncrypt(Ljava/security/SecureRandom;Lat/favre/lib/bytes/Bytes;I)V
    .locals 3

    .line 44
    invoke-virtual {p2}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object p2

    const/4 v0, 0x0

    .line 45
    :goto_0
    iget-object v1, p0, Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator$Default;->data:[[B

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 46
    invoke-static {p3, p1}, Lat/favre/lib/bytes/Bytes;->random(ILjava/util/Random;)Lat/favre/lib/bytes/Bytes;

    move-result-object v1

    invoke-virtual {v1}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object v1

    .line 47
    iget-object v2, p0, Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator$Default;->data:[[B

    aput-object v1, v2, v0

    .line 48
    invoke-virtual {p2, v1}, Lat/favre/lib/bytes/Bytes;->xor([B)Lat/favre/lib/bytes/Bytes;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    array-length p1, v1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p2

    aput-object p2, v1, p1

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator$Default;->wipe()V

    .line 79
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public declared-synchronized getBytes()[B
    .locals 4

    monitor-enter p0

    .line 55
    :try_start_0
    invoke-static {}, Lat/favre/lib/bytes/Bytes;->empty()Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator$Default;->data:[[B

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 57
    invoke-virtual {v0}, Lat/favre/lib/bytes/Bytes;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    iget-object v0, p0, Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator$Default;->data:[[B

    aget-object v0, v0, v1

    invoke-static {v0}, Lat/favre/lib/bytes/Bytes;->from([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v0

    invoke-virtual {v0}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object v0

    goto :goto_1

    .line 61
    :cond_0
    iget-object v3, p0, Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator$Default;->data:[[B

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Lat/favre/lib/bytes/Bytes;->xor([B)Lat/favre/lib/bytes/Bytes;

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 64
    :cond_1
    iget-object v1, p0, Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator$Default;->secureRandom:Ljava/security/SecureRandom;

    new-array v2, v2, [Lat/favre/lib/bytes/Bytes;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lat/favre/lib/bytes/Bytes;->from([Lat/favre/lib/bytes/Bytes;)Lat/favre/lib/bytes/Bytes;

    move-result-object v2

    invoke-virtual {v0}, Lat/favre/lib/bytes/Bytes;->length()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator$Default;->createAndEncrypt(Ljava/security/SecureRandom;Lat/favre/lib/bytes/Bytes;I)V

    .line 66
    invoke-virtual {v0}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public wipe()V
    .locals 4

    .line 71
    iget-object v0, p0, Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator$Default;->data:[[B

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 72
    invoke-static {v3}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object v3

    invoke-virtual {v3}, Lat/favre/lib/bytes/Bytes;->mutable()Lat/favre/lib/bytes/MutableBytes;

    move-result-object v3

    invoke-virtual {v3}, Lat/favre/lib/bytes/MutableBytes;->secureWipe()Lat/favre/lib/bytes/MutableBytes;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

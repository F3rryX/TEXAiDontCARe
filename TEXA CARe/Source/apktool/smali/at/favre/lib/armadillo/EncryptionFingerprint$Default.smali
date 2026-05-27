.class public final Lat/favre/lib/armadillo/EncryptionFingerprint$Default;
.super Ljava/lang/Object;
.source "EncryptionFingerprint.java"

# interfaces
.implements Lat/favre/lib/armadillo/EncryptionFingerprint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/armadillo/EncryptionFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation


# instance fields
.field private final holder:Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator$Default;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v0, p1, v1}, Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator$Default;-><init>([BLjava/security/SecureRandom;)V

    iput-object v0, p0, Lat/favre/lib/armadillo/EncryptionFingerprint$Default;->holder:Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .line 48
    iget-object v0, p0, Lat/favre/lib/armadillo/EncryptionFingerprint$Default;->holder:Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;

    invoke-interface {v0}, Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public wipe()V
    .locals 1

    .line 53
    iget-object v0, p0, Lat/favre/lib/armadillo/EncryptionFingerprint$Default;->holder:Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;

    invoke-interface {v0}, Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;->wipe()V

    return-void
.end method

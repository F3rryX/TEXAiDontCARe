.class public interface abstract Lat/favre/lib/armadillo/EncryptionProtocol$Factory;
.super Ljava/lang/Object;
.source "EncryptionProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/armadillo/EncryptionProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract create([B)Lat/favre/lib/armadillo/EncryptionProtocol;
.end method

.method public abstract createDataObfuscator()Lat/favre/lib/armadillo/DataObfuscator;
.end method

.method public abstract getSecureRandom()Ljava/security/SecureRandom;
.end method

.method public abstract getStringMessageDigest()Lat/favre/lib/armadillo/StringMessageDigest;
.end method

.method public abstract obfuscatePassword([C)Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;
.end method

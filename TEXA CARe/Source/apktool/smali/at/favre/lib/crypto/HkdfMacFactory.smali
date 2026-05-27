.class public interface abstract Lat/favre/lib/crypto/HkdfMacFactory;
.super Ljava/lang/Object;
.source "HkdfMacFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/favre/lib/crypto/HkdfMacFactory$Default;
    }
.end annotation


# virtual methods
.method public abstract createInstance(Ljavax/crypto/SecretKey;)Ljavax/crypto/Mac;
.end method

.method public abstract createSecretKey([B)Ljavax/crypto/SecretKey;
.end method

.method public abstract getMacLengthBytes()I
.end method

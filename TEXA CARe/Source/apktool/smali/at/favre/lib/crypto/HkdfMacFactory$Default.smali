.class public final Lat/favre/lib/crypto/HkdfMacFactory$Default;
.super Ljava/lang/Object;
.source "HkdfMacFactory.java"

# interfaces
.implements Lat/favre/lib/crypto/HkdfMacFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/crypto/HkdfMacFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation


# instance fields
.field private final macAlgorithmName:Ljava/lang/String;

.field private final provider:Ljava/security/Provider;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, v0}, Lat/favre/lib/crypto/HkdfMacFactory$Default;-><init>(Ljava/lang/String;Ljava/security/Provider;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/Provider;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lat/favre/lib/crypto/HkdfMacFactory$Default;->macAlgorithmName:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Lat/favre/lib/crypto/HkdfMacFactory$Default;->provider:Ljava/security/Provider;

    return-void
.end method

.method private createMacInstance()Ljavax/crypto/Mac;
    .locals 3

    .line 127
    :try_start_0
    iget-object v0, p0, Lat/favre/lib/crypto/HkdfMacFactory$Default;->provider:Ljava/security/Provider;

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lat/favre/lib/crypto/HkdfMacFactory$Default;->macAlgorithmName:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    goto :goto_0

    .line 130
    :cond_0
    iget-object v1, p0, Lat/favre/lib/crypto/HkdfMacFactory$Default;->macAlgorithmName:Ljava/lang/String;

    invoke-static {v1, v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 137
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "could not create mac instance in hkdf"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 135
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "defined mac algorithm was not found"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static hmacSha1()Lat/favre/lib/crypto/HkdfMacFactory;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    new-instance v0, Lat/favre/lib/crypto/HkdfMacFactory$Default;

    const-string v1, "HmacSHA1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lat/favre/lib/crypto/HkdfMacFactory$Default;-><init>(Ljava/lang/String;Ljava/security/Provider;)V

    return-object v0
.end method

.method public static hmacSha256()Lat/favre/lib/crypto/HkdfMacFactory;
    .locals 3

    .line 69
    new-instance v0, Lat/favre/lib/crypto/HkdfMacFactory$Default;

    const-string v1, "HmacSHA256"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lat/favre/lib/crypto/HkdfMacFactory$Default;-><init>(Ljava/lang/String;Ljava/security/Provider;)V

    return-object v0
.end method

.method public static hmacSha512()Lat/favre/lib/crypto/HkdfMacFactory;
    .locals 3

    .line 78
    new-instance v0, Lat/favre/lib/crypto/HkdfMacFactory$Default;

    const-string v1, "HmacSHA512"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lat/favre/lib/crypto/HkdfMacFactory$Default;-><init>(Ljava/lang/String;Ljava/security/Provider;)V

    return-object v0
.end method


# virtual methods
.method public createInstance(Ljavax/crypto/SecretKey;)Ljavax/crypto/Mac;
    .locals 2

    .line 115
    :try_start_0
    invoke-direct {p0}, Lat/favre/lib/crypto/HkdfMacFactory$Default;->createMacInstance()Ljavax/crypto/Mac;

    move-result-object v0

    .line 116
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 119
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "could not make hmac hasher in hkdf"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public createSecretKey([B)Ljavax/crypto/SecretKey;
    .locals 2

    if-eqz p1, :cond_1

    .line 148
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lat/favre/lib/crypto/HkdfMacFactory$Default;->macAlgorithmName:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMacLengthBytes()I
    .locals 1

    .line 143
    invoke-direct {p0}, Lat/favre/lib/crypto/HkdfMacFactory$Default;->createMacInstance()Ljavax/crypto/Mac;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v0

    return v0
.end method

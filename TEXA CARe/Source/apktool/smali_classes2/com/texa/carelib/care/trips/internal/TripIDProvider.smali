.class public Lcom/texa/carelib/care/trips/internal/TripIDProvider;
.super Ljava/lang/Object;
.source "TripIDProvider.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TripIDProvider"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTripID(I[B)Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 54
    invoke-static {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripIDProvider;->resetOdometer(I[B)V

    const/4 v0, 0x5

    if-lt p0, v0, :cond_0

    .line 57
    invoke-static {p1}, Lcom/texa/carelib/care/trips/internal/TripIDProvider;->resetTimeStamp([B)V

    :cond_0
    const/16 p0, 0x8

    new-array v0, p0, [B

    const-string v1, "MD5"

    .line 61
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/Utils;->reverse([B)V

    .line 64
    new-instance p0, Ljava/math/BigInteger;

    const/4 p1, 0x1

    invoke-direct {p0, p1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static getTripID(Lcom/texa/carelib/care/trips/TripBeginInfo;)Ljava/math/BigInteger;
    .locals 4

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripBeginInfo;->getRawData()[B

    move-result-object v1

    invoke-static {v1}, Lcom/texa/carelib/core/utils/internal/Utils;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripBeginInfo;->getRawData()[B

    move-result-object v1

    array-length v1, v1

    new-array v2, v1, [B

    .line 40
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripBeginInfo;->getRawData()[B

    move-result-object v3

    invoke-static {v3, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripBeginInfo;->getVersion()I

    move-result p0

    .line 43
    invoke-static {p0, v2}, Lcom/texa/carelib/care/trips/internal/TripIDProvider;->getTripID(I[B)Ljava/math/BigInteger;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 46
    sget-object v1, Lcom/texa/carelib/care/trips/internal/TripIDProvider;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Could not calculate trip unique ID"

    invoke-static {v1, p0, v2, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    :cond_0
    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object p0
.end method

.method private static resetOdometer(I[B)V
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x7

    .line 79
    array-length v0, p1

    const/16 v1, 0xb

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 p0, 0x9

    .line 82
    array-length v0, p1

    const/16 v1, 0xd

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    if-ge p0, v0, :cond_1

    const/4 v1, 0x0

    .line 86
    aput-byte v1, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static resetTimeStamp([B)V
    .locals 3

    .line 97
    array-length v0, p0

    const/16 v1, 0x14

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x10

    :goto_0
    if-ge v1, v0, :cond_0

    const/4 v2, 0x0

    .line 100
    aput-byte v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

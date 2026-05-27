.class public final Lat/favre/lib/bytes/BytesTransformers$HmacTransformer;
.super Ljava/lang/Object;
.source "BytesTransformers.java"

# interfaces
.implements Lat/favre/lib/bytes/BytesTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/bytes/BytesTransformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HmacTransformer"
.end annotation


# static fields
.field static final HMAC_SHA1:Ljava/lang/String; = "HmacSHA1"

.field static final HMAC_SHA256:Ljava/lang/String; = "HmacSHA256"


# instance fields
.field private final macAlgorithmName:Ljava/lang/String;

.field private final secretKey:[B


# direct methods
.method constructor <init>([BLjava/lang/String;)V
    .locals 0

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput-object p2, p0, Lat/favre/lib/bytes/BytesTransformers$HmacTransformer;->macAlgorithmName:Ljava/lang/String;

    .line 391
    iput-object p1, p0, Lat/favre/lib/bytes/BytesTransformers$HmacTransformer;->secretKey:[B

    return-void
.end method


# virtual methods
.method public supportInPlaceTransformation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public transform([BZ)[B
    .locals 3

    .line 397
    :try_start_0
    iget-object p2, p0, Lat/favre/lib/bytes/BytesTransformers$HmacTransformer;->macAlgorithmName:Ljava/lang/String;

    invoke-static {p2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p2

    .line 398
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lat/favre/lib/bytes/BytesTransformers$HmacTransformer;->secretKey:[B

    iget-object v2, p0, Lat/favre/lib/bytes/BytesTransformers$HmacTransformer;->macAlgorithmName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p2, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 399
    invoke-virtual {p2, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 401
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.class public Lat/favre/lib/bytes/BytesTransformer$MessageDigestTransformer;
.super Ljava/lang/Object;
.source "BytesTransformer.java"

# interfaces
.implements Lat/favre/lib/bytes/BytesTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/bytes/BytesTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageDigestTransformer"
.end annotation


# static fields
.field static final ALGORITHM_MD5:Ljava/lang/String; = "MD5"

.field static final ALGORITHM_SHA_1:Ljava/lang/String; = "SHA-1"

.field static final ALGORITHM_SHA_256:Ljava/lang/String; = "SHA-256"


# instance fields
.field private final messageDigest:Ljava/security/MessageDigest;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lat/favre/lib/bytes/BytesTransformer$MessageDigestTransformer;->messageDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 334
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not get message digest algorithm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public supportInPlaceTransformation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public transform([BZ)[B
    .locals 0

    .line 340
    iget-object p2, p0, Lat/favre/lib/bytes/BytesTransformer$MessageDigestTransformer;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {p2, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 341
    iget-object p1, p0, Lat/favre/lib/bytes/BytesTransformer$MessageDigestTransformer;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    return-object p1
.end method

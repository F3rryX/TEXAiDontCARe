.class public Lcom/texa/carelib/core/utils/DigitalSignatureVerifier;
.super Ljava/lang/Object;
.source "DigitalSignatureVerifier.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DigitalSignatureVerifier"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPrivateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 154
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/texa/carelib/core/utils/DigitalSignatureVerifier;->createPrivateKey(Ljava/lang/String;[B)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public static createPrivateKey(Ljava/lang/String;[B)Ljava/security/PrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 170
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 171
    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public static createPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 186
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/texa/carelib/core/utils/DigitalSignatureVerifier;->createPublicKey(Ljava/lang/String;[B)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static createPublicKey(Ljava/lang/String;[B)Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 201
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 202
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 203
    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljava/security/PublicKey;Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 96
    invoke-static {p4}, Lcom/texa/carelib/core/utils/internal/FileUtils;->readAllBytes(Ljava/io/File;)[B

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/texa/carelib/core/utils/DigitalSignatureVerifier;->verify(Ljava/lang/String;Ljava/security/PublicKey;Ljava/io/InputStream;[B)Z

    move-result p1

    return p1
.end method

.method public verify(Ljava/lang/String;Ljava/security/PublicKey;Ljava/io/InputStream;[B)Z
    .locals 2

    const/4 v0, 0x0

    .line 111
    :try_start_0
    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    .line 112
    invoke-virtual {p1, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 114
    new-instance p2, Ljava/io/BufferedInputStream;

    invoke-direct {p2, p3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p3, 0x400

    new-array p3, p3, [B

    .line 117
    :goto_0
    invoke-virtual {p2}, Ljava/io/BufferedInputStream;->available()I

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {p2, p3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    .line 119
    invoke-virtual {p1, p3, v0, v1}, Ljava/security/Signature;->update([BII)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p2}, Ljava/io/BufferedInputStream;->close()V

    .line 122
    invoke-virtual {p1, p4}, Ljava/security/Signature;->verify([B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 124
    sget-object p2, Lcom/texa/carelib/core/utils/DigitalSignatureVerifier;->TAG:Ljava/lang/String;

    new-array p3, v0, [Ljava/lang/Object;

    const-string p4, "Digital signature verification has failed."

    invoke-static {p2, p1, p4, p3}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public verify(Ljava/lang/String;Ljava/security/PublicKey;[B[B)Z
    .locals 1

    .line 139
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/texa/carelib/core/utils/DigitalSignatureVerifier;->verify(Ljava/lang/String;Ljava/security/PublicKey;Ljava/io/InputStream;[B)Z

    move-result p1

    return p1
.end method

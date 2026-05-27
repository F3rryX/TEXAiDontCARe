.class final Lat/favre/lib/crypto/HKDF$Expander;
.super Ljava/lang/Object;
.source "HKDF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/crypto/HKDF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Expander"
.end annotation


# instance fields
.field private final macFactory:Lat/favre/lib/crypto/HkdfMacFactory;


# direct methods
.method constructor <init>(Lat/favre/lib/crypto/HkdfMacFactory;)V
    .locals 0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object p1, p0, Lat/favre/lib/crypto/HKDF$Expander;->macFactory:Lat/favre/lib/crypto/HkdfMacFactory;

    return-void
.end method


# virtual methods
.method execute(Ljavax/crypto/SecretKey;[BI)[B
    .locals 6

    if-lez p3, :cond_4

    if-eqz p1, :cond_3

    .line 279
    iget-object v0, p0, Lat/favre/lib/crypto/HKDF$Expander;->macFactory:Lat/favre/lib/crypto/HkdfMacFactory;

    invoke-interface {v0, p1}, Lat/favre/lib/crypto/HkdfMacFactory;->createInstance(Ljavax/crypto/SecretKey;)Ljavax/crypto/Mac;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-array p2, v0, [B

    :cond_0
    new-array v1, v0, [B

    int-to-double v2, p3

    .line 300
    invoke-virtual {p1}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    const/16 v3, 0xff

    if-gt v2, v3, :cond_2

    .line 306
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 311
    invoke-virtual {p1, v1}, Ljavax/crypto/Mac;->update([B)V

    .line 312
    invoke-virtual {p1, p2}, Ljavax/crypto/Mac;->update([B)V

    add-int/lit8 v4, v4, 0x1

    int-to-byte v1, v4

    .line 313
    invoke-virtual {p1, v1}, Ljavax/crypto/Mac;->update(B)V

    .line 315
    invoke-virtual {p1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v1

    .line 317
    array-length v5, v1

    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 319
    invoke-virtual {v3, v1, v0, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p3, v5

    goto :goto_0

    .line 323
    :cond_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1

    .line 303
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "out length must be maximal 255 * hash-length; requested: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " bytes"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 276
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "provided pseudoRandomKey must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 272
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "out length bytes must be at least 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

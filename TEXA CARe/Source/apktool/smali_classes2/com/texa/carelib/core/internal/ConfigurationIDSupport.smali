.class public Lcom/texa/carelib/core/internal/ConfigurationIDSupport;
.super Ljava/lang/Object;
.source "ConfigurationIDSupport.java"


# static fields
.field public static final DEFAULT_CONFIGURATION_ID:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Lcom/texa/carelib/core/internal/ConfigurationIDSupport;->DEFAULT_CONFIGURATION_ID:Ljava/math/BigInteger;

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromByteArray([B)Ljava/math/BigInteger;
    .locals 2

    if-nez p0, :cond_0

    .line 65
    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object p0

    .line 67
    :cond_0
    array-length v0, p0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 72
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0

    .line 75
    :cond_1
    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object p0
.end method

.method public static fromCharArray([C)Ljava/math/BigInteger;
    .locals 0

    if-nez p0, :cond_0

    .line 49
    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object p0

    .line 51
    :cond_0
    invoke-static {p0}, Lcom/texa/carelib/core/utils/internal/ConversionUtils;->toByteArray([C)[B

    move-result-object p0

    .line 52
    invoke-static {p0}, Lcom/texa/carelib/core/internal/ConfigurationIDSupport;->fromByteArray([B)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static isSet(Ljava/math/BigInteger;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 85
    sget-object v0, Lcom/texa/carelib/core/internal/ConfigurationIDSupport;->DEFAULT_CONFIGURATION_ID:Ljava/math/BigInteger;

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static toByteArray(Ljava/math/BigInteger;)[B
    .locals 3

    const/16 v0, 0x8

    .line 29
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 30
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 32
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    .line 33
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 35
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

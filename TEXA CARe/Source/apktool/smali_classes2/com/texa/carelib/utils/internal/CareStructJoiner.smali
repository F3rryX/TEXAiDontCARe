.class public Lcom/texa/carelib/utils/internal/CareStructJoiner;
.super Ljava/lang/Object;
.source "CareStructJoiner.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs join([Lcom/texa/carelib/core/utils/CareStruct;)[B
    .locals 6

    .line 25
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p0, v2

    if-eqz v4, :cond_0

    .line 26
    invoke-interface {v4}, Lcom/texa/carelib/core/utils/CareStruct;->getRawData()[B

    move-result-object v5

    if-eqz v5, :cond_0

    .line 27
    invoke-interface {v4}, Lcom/texa/carelib/core/utils/CareStruct;->getRawData()[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 31
    :cond_1
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 32
    array-length v2, p0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    if-eqz v4, :cond_2

    .line 33
    invoke-interface {v4}, Lcom/texa/carelib/core/utils/CareStruct;->getRawData()[B

    move-result-object v5

    if-eqz v5, :cond_2

    .line 34
    invoke-interface {v4}, Lcom/texa/carelib/core/utils/CareStruct;->getRawData()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 38
    :cond_3
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 39
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

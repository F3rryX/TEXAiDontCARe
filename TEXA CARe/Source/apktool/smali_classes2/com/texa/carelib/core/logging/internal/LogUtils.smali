.class public Lcom/texa/carelib/core/logging/internal/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field private static final HEX_FORMAT:Ljava/lang/String; = "%02X-"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dataToString(Ljava/nio/CharBuffer;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "(null)"

    return-object p0

    .line 136
    :cond_0
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "(empty)"

    return-object p0

    .line 143
    :cond_1
    new-array v1, v0, [C

    const/4 v2, 0x0

    .line 144
    invoke-virtual {p0, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 145
    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    .line 148
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 150
    invoke-static {v1}, Lcom/texa/carelib/core/logging/internal/LogUtils;->dataToString([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dataToString(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 24
    invoke-static {p0}, Lcom/texa/carelib/core/utils/internal/Utils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "[]"

    return-object p0

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "["

    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 33
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v2, "$null$"

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v2, "],"

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method public static dataToString([B)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 89
    array-length v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 92
    :goto_0
    invoke-static {p0, v0}, Lcom/texa/carelib/core/logging/internal/LogUtils;->dataToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dataToString([BI)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "(null)"

    return-object p0

    :cond_0
    if-gtz p1, :cond_1

    const-string p0, "(empty)"

    return-object p0

    .line 109
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 111
    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/texa/carelib/core/utils/internal/Hex;->valueOf(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dataToString([C)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 53
    array-length v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 56
    :goto_0
    invoke-static {p0, v0}, Lcom/texa/carelib/core/logging/internal/LogUtils;->dataToString([CI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dataToString([CI)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "(null)"

    return-object p0

    .line 67
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    const-string p0, "(empty)"

    return-object p0

    .line 71
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 73
    aget-char v2, p0, v1

    invoke-static {v2}, Lcom/texa/carelib/core/utils/internal/Hex;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

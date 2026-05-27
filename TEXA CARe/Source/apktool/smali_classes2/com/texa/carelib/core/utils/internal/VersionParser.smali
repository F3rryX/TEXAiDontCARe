.class public final Lcom/texa/carelib/core/utils/internal/VersionParser;
.super Ljava/lang/Object;
.source "VersionParser.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VersionParser"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse([B)Lcom/texa/carelib/core/utils/Version;
    .locals 5

    if-eqz p0, :cond_3

    .line 53
    array-length v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v0, v1, :cond_0

    .line 54
    new-instance v0, Lcom/texa/carelib/core/utils/Version;

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v4, v3, v2, p0}, Lcom/texa/carelib/core/utils/Version;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0

    .line 56
    :cond_0
    array-length v0, p0

    if-le v0, v2, :cond_1

    .line 57
    new-instance v0, Lcom/texa/carelib/core/utils/Version;

    aget-byte v1, p0, v4

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, v3, p0}, Lcom/texa/carelib/core/utils/Version;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0

    .line 59
    :cond_1
    array-length v0, p0

    if-le v0, v3, :cond_2

    .line 60
    new-instance v0, Lcom/texa/carelib/core/utils/Version;

    aget-byte v1, p0, v4

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget-byte p0, p0, v3

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/texa/carelib/core/utils/Version;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0

    .line 62
    :cond_2
    array-length v0, p0

    if-lez v0, :cond_3

    .line 63
    new-instance v0, Lcom/texa/carelib/core/utils/Version;

    aget-byte p0, p0, v4

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/texa/carelib/core/utils/Version;-><init>(Ljava/lang/Integer;)V

    return-object v0

    .line 66
    :cond_3
    new-instance p0, Lcom/texa/carelib/core/utils/Version;

    invoke-direct {p0}, Lcom/texa/carelib/core/utils/Version;-><init>()V

    return-object p0
.end method

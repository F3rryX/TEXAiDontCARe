.class public Lcom/texa/carelib/core/utils/internal/ConversionUtils;
.super Ljava/lang/Object;
.source "ConversionUtils.java"


# static fields
.field private static final CHARSET_ISO_8859_1:Ljava/lang/String; = "ISO-8859-1"

.field public static final TAG:Ljava/lang/String; = "ConversionUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs toByteArray(II[C)[B
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 57
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2, p0, p1}, Ljava/lang/String;-><init>([CII)V

    const-string p0, "ISO-8859-1"

    invoke-virtual {v1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 62
    sget-object p1, Lcom/texa/carelib/core/utils/internal/ConversionUtils;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v1, "Generic error."

    invoke-static {p1, p0, v1, p2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "ISO-8859-1"

    .line 81
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 83
    sget-object v1, Lcom/texa/carelib/core/utils/internal/ConversionUtils;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Generic conversion error."

    invoke-static {v1, p0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public static varargs toByteArray([C)[B
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 33
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([C)V

    const-string p0, "ISO-8859-1"

    invoke-virtual {v1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 37
    sget-object v1, Lcom/texa/carelib/core/utils/internal/ConversionUtils;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Generic error."

    invoke-static {v1, p0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static toCharArray([B)[C
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 93
    :cond_0
    array-length v0, p0

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 96
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 97
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

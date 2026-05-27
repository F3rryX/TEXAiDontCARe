.class public Lcom/texa/carelib/care/diagnosticconfiguration/internal/parser/StartFileDLUPParser;
.super Ljava/lang/Object;
.source "StartFileDLUPParser.java"


# static fields
.field public static final FILE_INFO_SIZE:I = 0x5

.field public static final FILE_LENGTH_SIZE:I = 0x4

.field public static final FILE_TYPE_SIZE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "StartFileDLUPParser"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileLength([B)I
    .locals 2

    if-eqz p1, :cond_1

    .line 77
    array-length v0, p1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v0, 0x1

    .line 81
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 82
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 84
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getFileLength([C)I
    .locals 0

    .line 67
    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/ConversionUtils;->toByteArray([C)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/parser/StartFileDLUPParser;->getFileLength([B)I

    move-result p1

    return p1
.end method

.method public getFileType([B)I
    .locals 3

    const/16 v0, 0xff

    if-eqz p1, :cond_1

    .line 54
    array-length v1, p1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 57
    aget-byte p1, p1, v1

    and-int/2addr p1, v0

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public getFileType([C)I
    .locals 0

    .line 42
    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/ConversionUtils;->toByteArray([C)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/parser/StartFileDLUPParser;->getFileType([B)I

    move-result p1

    return p1
.end method

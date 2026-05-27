.class public Lcom/texa/carelib/profile/internal/parser/GetWorkingParametersParser;
.super Ljava/lang/Object;
.source "GetWorkingParametersParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/profile/internal/parser/GetWorkingParametersParser$GetWorkingParametersResponse;
    }
.end annotation


# static fields
.field private static final CHARSET_ISO_8859_1:Ljava/lang/String; = "ISO-8859-1"

.field public static final TAG:Ljava/lang/String; = "GetWorkingParametersParser"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/profile/internal/parser/GetWorkingParametersParser$GetWorkingParametersResponse;
    .locals 1

    if-eqz p0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getStatus()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p0

    invoke-static {p0}, Lcom/texa/carelib/profile/internal/parser/GetWorkingParametersParser;->parse([B)Lcom/texa/carelib/profile/internal/parser/GetWorkingParametersParser$GetWorkingParametersResponse;

    move-result-object p0

    return-object p0

    .line 31
    :cond_0
    new-instance p0, Lcom/texa/carelib/profile/internal/parser/GetWorkingParametersParser$GetWorkingParametersResponse;

    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/parser/GetWorkingParametersParser$GetWorkingParametersResponse;-><init>()V

    return-object p0
.end method

.method static parse([B)Lcom/texa/carelib/profile/internal/parser/GetWorkingParametersParser$GetWorkingParametersResponse;
    .locals 4

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 46
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 47
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 49
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    array-length v3, p0

    add-int/lit8 v3, v3, -0x5

    if-gt v2, v3, :cond_0

    .line 50
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 51
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 54
    :cond_0
    new-instance p0, Lcom/texa/carelib/profile/internal/parser/GetWorkingParametersParser$GetWorkingParametersResponse;

    invoke-direct {p0, v0}, Lcom/texa/carelib/profile/internal/parser/GetWorkingParametersParser$GetWorkingParametersResponse;-><init>(Landroid/util/SparseArray;)V

    return-object p0
.end method

.method static parse([C)Lcom/texa/carelib/profile/internal/parser/GetWorkingParametersParser$GetWorkingParametersResponse;
    .locals 0

    .line 35
    invoke-static {p0}, Lcom/texa/carelib/core/utils/internal/ConversionUtils;->toByteArray([C)[B

    move-result-object p0

    if-nez p0, :cond_0

    .line 37
    new-instance p0, Lcom/texa/carelib/profile/internal/parser/GetWorkingParametersParser$GetWorkingParametersResponse;

    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/parser/GetWorkingParametersParser$GetWorkingParametersResponse;-><init>()V

    return-object p0

    .line 40
    :cond_0
    invoke-static {p0}, Lcom/texa/carelib/profile/internal/parser/GetWorkingParametersParser;->parse([B)Lcom/texa/carelib/profile/internal/parser/GetWorkingParametersParser$GetWorkingParametersResponse;

    move-result-object p0

    return-object p0
.end method

.class public Lcom/texa/carelib/care/datamanagerconfiguration/internal/parser/GetDataManagerParametersParser;
.super Ljava/lang/Object;
.source "GetDataManagerParametersParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/care/datamanagerconfiguration/internal/parser/GetDataManagerParametersParser$GetDataManagerParametersResponse;
    }
.end annotation


# static fields
.field private static final RELATIVE_INDEX_ID:I = 0x0

.field private static final RELATIVE_INDEX_PAYLOAD:I = 0x2

.field private static final RELATIVE_INDEX_SIZE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/care/datamanagerconfiguration/internal/parser/GetDataManagerParametersParser$GetDataManagerParametersResponse;
    .locals 9

    if-nez p0, :cond_0

    .line 27
    new-instance p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/parser/GetDataManagerParametersParser$GetDataManagerParametersResponse;

    invoke-direct {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/parser/GetDataManagerParametersParser$GetDataManagerParametersResponse;-><init>()V

    return-object p0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getStatus()I

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    new-instance p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/parser/GetDataManagerParametersParser$GetDataManagerParametersResponse;

    invoke-direct {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/parser/GetDataManagerParametersParser$GetDataManagerParametersResponse;-><init>()V

    return-object p0

    .line 34
    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 35
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 39
    :goto_0
    array-length v3, p0

    add-int/lit8 v3, v3, -0x3

    if-gt v2, v3, :cond_2

    add-int/lit8 v3, v2, 0x0

    .line 40
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    .line 41
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    .line 43
    new-array v6, v5, [B

    add-int/lit8 v7, v2, 0x2

    .line 45
    array-length v8, p0

    sub-int/2addr v8, v4

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {p0, v7, v6, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    invoke-virtual {v0, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    goto :goto_0

    .line 52
    :cond_2
    new-instance p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/parser/GetDataManagerParametersParser$GetDataManagerParametersResponse;

    invoke-direct {p0, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/parser/GetDataManagerParametersParser$GetDataManagerParametersResponse;-><init>(Landroid/util/SparseArray;)V

    return-object p0
.end method

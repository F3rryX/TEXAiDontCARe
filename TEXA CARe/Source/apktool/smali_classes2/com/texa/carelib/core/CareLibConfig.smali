.class public final Lcom/texa/carelib/core/CareLibConfig;
.super Ljava/lang/Object;
.source "CareLibConfig.java"


# static fields
.field private static _ServiceAuthenticationTimeout:I = 0x7530

.field private static _ServiceConnectionTimeout:I = 0x4e20

.field private static _ServiceReadTimeout:I = 0x7530


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLogger(Lcom/texa/carelib/core/logging/CareLog$LoggerTree;)V
    .locals 0

    .line 89
    invoke-static {p0}, Lcom/texa/carelib/core/logging/CareLog;->plant(Lcom/texa/carelib/core/logging/CareLog$LoggerTree;)V

    return-void
.end method

.method protected static getLoggers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/logging/CareLog$LoggerTree;",
            ">;"
        }
    .end annotation

    .line 110
    invoke-static {}, Lcom/texa/carelib/core/logging/CareLog;->getLoggers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getServiceAuthenticationTimeout()I
    .locals 1

    .line 30
    sget v0, Lcom/texa/carelib/core/CareLibConfig;->_ServiceAuthenticationTimeout:I

    return v0
.end method

.method public static getServiceConnectionTimeout()I
    .locals 1

    .line 37
    sget v0, Lcom/texa/carelib/core/CareLibConfig;->_ServiceConnectionTimeout:I

    return v0
.end method

.method public static getServiceReadTimeout()I
    .locals 1

    .line 46
    sget v0, Lcom/texa/carelib/core/CareLibConfig;->_ServiceReadTimeout:I

    return v0
.end method

.method public static removeAllLoggers()V
    .locals 0

    .line 105
    invoke-static {}, Lcom/texa/carelib/core/logging/CareLog;->uprootAll()V

    return-void
.end method

.method public static removeLogger(Lcom/texa/carelib/core/logging/CareLog$LoggerTree;)V
    .locals 0

    .line 98
    invoke-static {p0}, Lcom/texa/carelib/core/logging/CareLog;->uproot(Lcom/texa/carelib/core/logging/CareLog$LoggerTree;)V

    return-void
.end method

.method public static setServiceConnectionTimeout(I)V
    .locals 1

    if-ltz p0, :cond_0

    .line 64
    sput p0, Lcom/texa/carelib/core/CareLibConfig;->_ServiceConnectionTimeout:I

    return-void

    .line 61
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "timeoutMillis < 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setServiceReadTimeout(I)V
    .locals 1

    if-ltz p0, :cond_0

    .line 80
    sput p0, Lcom/texa/carelib/core/CareLibConfig;->_ServiceReadTimeout:I

    return-void

    .line 78
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "timeoutMillis < 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

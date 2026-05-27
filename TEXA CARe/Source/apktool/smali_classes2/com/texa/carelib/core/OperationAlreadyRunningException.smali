.class public Lcom/texa/carelib/core/OperationAlreadyRunningException;
.super Lcom/texa/carelib/core/CareLibException;
.source "OperationAlreadyRunningException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Operation is already running."

    .line 17
    invoke-direct {p0, v0}, Lcom/texa/carelib/core/OperationAlreadyRunningException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

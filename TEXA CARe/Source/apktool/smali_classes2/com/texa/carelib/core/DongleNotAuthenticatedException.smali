.class public final Lcom/texa/carelib/core/DongleNotAuthenticatedException;
.super Lcom/texa/carelib/core/CareLibException;
.source "DongleNotAuthenticatedException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Dongle is not authenticated."

    .line 13
    invoke-direct {p0, v0}, Lcom/texa/carelib/core/DongleNotAuthenticatedException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    return-void
.end method

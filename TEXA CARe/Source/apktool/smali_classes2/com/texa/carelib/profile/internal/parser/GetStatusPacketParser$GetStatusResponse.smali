.class public Lcom/texa/carelib/profile/internal/parser/GetStatusPacketParser$GetStatusResponse;
.super Ljava/lang/Object;
.source "GetStatusPacketParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/internal/parser/GetStatusPacketParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetStatusResponse"
.end annotation


# instance fields
.field private mAccessoryStatus:I

.field private mIsHostAuthenticated:Z


# direct methods
.method constructor <init>(ZI)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean p1, p0, Lcom/texa/carelib/profile/internal/parser/GetStatusPacketParser$GetStatusResponse;->mIsHostAuthenticated:Z

    .line 69
    iput p2, p0, Lcom/texa/carelib/profile/internal/parser/GetStatusPacketParser$GetStatusResponse;->mAccessoryStatus:I

    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/texa/carelib/profile/internal/parser/GetStatusPacketParser$GetStatusResponse;->mAccessoryStatus:I

    return v0
.end method

.method public isHostAuthenticated()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/texa/carelib/profile/internal/parser/GetStatusPacketParser$GetStatusResponse;->mIsHostAuthenticated:Z

    return v0
.end method

.method public setAuthenticationStatus(Z)Lcom/texa/carelib/profile/internal/parser/GetStatusPacketParser$GetStatusResponse;
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/texa/carelib/profile/internal/parser/GetStatusPacketParser$GetStatusResponse;->mIsHostAuthenticated:Z

    return-object p0
.end method

.method setStatus(I)Lcom/texa/carelib/profile/internal/parser/GetStatusPacketParser$GetStatusResponse;
    .locals 0

    .line 88
    iput p1, p0, Lcom/texa/carelib/profile/internal/parser/GetStatusPacketParser$GetStatusResponse;->mAccessoryStatus:I

    return-object p0
.end method

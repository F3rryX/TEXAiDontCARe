.class public Lcom/texa/carelib/profile/internal/parser/CreateAuthenticationKeyPacketParser$CreateAuthenticationKeyResponse;
.super Ljava/lang/Object;
.source "CreateAuthenticationKeyPacketParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/internal/parser/CreateAuthenticationKeyPacketParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateAuthenticationKeyResponse"
.end annotation


# static fields
.field public static final NONCE_LENGTH:I = 0x10


# instance fields
.field private mNonce:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/texa/carelib/profile/internal/parser/CreateAuthenticationKeyPacketParser$CreateAuthenticationKeyResponse;->mNonce:[B

    return-void
.end method


# virtual methods
.method public getNonce()[B
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/parser/CreateAuthenticationKeyPacketParser$CreateAuthenticationKeyResponse;->mNonce:[B

    return-object v0
.end method

.method setNonce([B)Lcom/texa/carelib/profile/internal/parser/CreateAuthenticationKeyPacketParser$CreateAuthenticationKeyResponse;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/parser/CreateAuthenticationKeyPacketParser$CreateAuthenticationKeyResponse;->mNonce:[B

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CreateAuthenticationKeyResponse bonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/carelib/profile/internal/parser/CreateAuthenticationKeyPacketParser$CreateAuthenticationKeyResponse;->mNonce:[B

    invoke-static {v1}, Lcom/texa/carelib/core/logging/internal/LogUtils;->dataToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

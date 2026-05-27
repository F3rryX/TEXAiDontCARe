.class public Lcom/texa/carelib/profile/internal/parser/BeginSessionPacketParser$BeginSessionResponse;
.super Ljava/lang/Object;
.source "BeginSessionPacketParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/internal/parser/BeginSessionPacketParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BeginSessionResponse"
.end annotation


# instance fields
.field private mHardwareToken:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/texa/carelib/profile/internal/parser/BeginSessionPacketParser$BeginSessionResponse;->mHardwareToken:[B

    return-void
.end method


# virtual methods
.method public getHardwareToken()[B
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/parser/BeginSessionPacketParser$BeginSessionResponse;->mHardwareToken:[B

    return-object v0
.end method

.method setHardwareToken([B)Lcom/texa/carelib/profile/internal/parser/BeginSessionPacketParser$BeginSessionResponse;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/parser/BeginSessionPacketParser$BeginSessionResponse;->mHardwareToken:[B

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response mHardwareToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/carelib/profile/internal/parser/BeginSessionPacketParser$BeginSessionResponse;->mHardwareToken:[B

    invoke-static {v1}, Lcom/texa/carelib/core/logging/internal/LogUtils;->dataToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

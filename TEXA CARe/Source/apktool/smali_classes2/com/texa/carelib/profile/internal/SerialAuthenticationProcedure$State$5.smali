.class final enum Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State$5;
.super Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;
.source "SerialAuthenticationProcedure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 476
    invoke-direct {p0, p1, p2, v0}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;-><init>(Ljava/lang/String;ILcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$1;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 1

    .line 478
    invoke-virtual {p3}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result p2

    const/16 v0, 0xef

    if-ne v0, p2, :cond_0

    .line 479
    invoke-virtual {p1, p3, p4}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->handleGetSupportedCommandsCommand(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    :cond_0
    return-void
.end method

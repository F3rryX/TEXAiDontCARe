.class final enum Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State$2;
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

    .line 455
    invoke-direct {p0, p1, p2, v0}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;-><init>(Ljava/lang/String;ILcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$1;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 2

    .line 457
    invoke-virtual {p3}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v0

    const/16 v1, 0xa2

    if-ne v1, v0, :cond_0

    .line 458
    invoke-static {p1, p2, p3, p4}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->access$100(Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    :cond_0
    return-void
.end method

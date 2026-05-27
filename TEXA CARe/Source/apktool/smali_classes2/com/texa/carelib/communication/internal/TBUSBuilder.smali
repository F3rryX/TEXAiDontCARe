.class public Lcom/texa/carelib/communication/internal/TBUSBuilder;
.super Ljava/lang/Object;
.source "TBUSBuilder.java"


# instance fields
.field private listener:Lcom/texa/carelib/communication/internal/TBUSListener;

.field private messageTimeoutHandler:Lcom/texa/carelib/communication/internal/MessageTimeoutHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTBUS()Lcom/texa/carelib/communication/internal/TBUS;
    .locals 3

    .line 21
    new-instance v0, Lcom/texa/carelib/communication/internal/TBUS;

    iget-object v1, p0, Lcom/texa/carelib/communication/internal/TBUSBuilder;->listener:Lcom/texa/carelib/communication/internal/TBUSListener;

    iget-object v2, p0, Lcom/texa/carelib/communication/internal/TBUSBuilder;->messageTimeoutHandler:Lcom/texa/carelib/communication/internal/MessageTimeoutHandler;

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/communication/internal/TBUS;-><init>(Lcom/texa/carelib/communication/internal/TBUSListener;Lcom/texa/carelib/communication/internal/MessageTimeoutHandler;)V

    return-object v0
.end method

.method public setListener(Lcom/texa/carelib/communication/internal/TBUSListener;)Lcom/texa/carelib/communication/internal/TBUSBuilder;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/TBUSBuilder;->listener:Lcom/texa/carelib/communication/internal/TBUSListener;

    return-object p0
.end method

.method public setMessageTimeoutHandler(Lcom/texa/carelib/communication/internal/MessageTimeoutHandler;)Lcom/texa/carelib/communication/internal/TBUSBuilder;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/TBUSBuilder;->messageTimeoutHandler:Lcom/texa/carelib/communication/internal/MessageTimeoutHandler;

    return-object p0
.end method

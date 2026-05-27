.class public abstract Lcom/texa/carelib/core/events/ErrorEventBase;
.super Lcom/texa/carelib/core/events/EventBase;
.source "ErrorEventBase.java"


# instance fields
.field private final mError:Lcom/texa/carelib/core/CareError;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/texa/carelib/core/events/EventBase;-><init>(Ljava/lang/Object;)V

    .line 22
    iput-object p2, p0, Lcom/texa/carelib/core/events/ErrorEventBase;->mError:Lcom/texa/carelib/core/CareError;

    return-void
.end method


# virtual methods
.method public getError()Lcom/texa/carelib/core/CareError;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/texa/carelib/core/events/ErrorEventBase;->mError:Lcom/texa/carelib/core/CareError;

    return-object v0
.end method

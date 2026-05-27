.class public abstract Lcom/texa/carelib/core/events/ProgressChangedEvent;
.super Lcom/texa/carelib/core/events/EventBase;
.source "ProgressChangedEvent.java"


# instance fields
.field private final mProgress:F


# direct methods
.method public constructor <init>(Ljava/lang/Object;F)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/texa/carelib/core/events/EventBase;-><init>(Ljava/lang/Object;)V

    .line 22
    iput p2, p0, Lcom/texa/carelib/core/events/ProgressChangedEvent;->mProgress:F

    return-void
.end method


# virtual methods
.method public getProgress()F
    .locals 1

    .line 31
    iget v0, p0, Lcom/texa/carelib/core/events/ProgressChangedEvent;->mProgress:F

    return v0
.end method

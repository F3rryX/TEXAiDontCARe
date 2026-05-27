.class public Lcom/texa/carelib/care/impacts/events/ImpactDetectedEvent;
.super Lcom/texa/carelib/core/events/EventBase;
.source "ImpactDetectedEvent.java"


# instance fields
.field private final mImpact:Lcom/texa/carelib/care/impacts/Impact;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/texa/carelib/care/impacts/Impact;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/texa/carelib/core/events/EventBase;-><init>(Ljava/lang/Object;)V

    .line 19
    iput-object p2, p0, Lcom/texa/carelib/care/impacts/events/ImpactDetectedEvent;->mImpact:Lcom/texa/carelib/care/impacts/Impact;

    return-void
.end method


# virtual methods
.method public getImpact()Lcom/texa/carelib/care/impacts/Impact;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/events/ImpactDetectedEvent;->mImpact:Lcom/texa/carelib/care/impacts/Impact;

    return-object v0
.end method

.class public Lcom/texa/care/eco_driving/TupleSupport;
.super Ljava/lang/Object;
.source "TupleSupport.java"


# instance fields
.field public nSamples:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public result:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide p1, p0, Lcom/texa/care/eco_driving/TupleSupport;->result:D

    .line 17
    iput-wide p3, p0, Lcom/texa/care/eco_driving/TupleSupport;->nSamples:D

    return-void
.end method

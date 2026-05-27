.class public Lcom/texa/carelib/care/impacts/AccelerationVector;
.super Ljava/lang/Object;
.source "AccelerationVector.java"


# instance fields
.field private final mX:J

.field private final mY:J

.field private final mZ:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 9

    const-wide/16 v7, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    .line 45
    invoke-direct/range {v0 .. v8}, Lcom/texa/carelib/care/impacts/AccelerationVector;-><init>(JJJJ)V

    return-void
.end method

.method public constructor <init>(JJJJ)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-long p1, p1, p7

    .line 57
    iput-wide p1, p0, Lcom/texa/carelib/care/impacts/AccelerationVector;->mX:J

    mul-long p3, p3, p7

    .line 58
    iput-wide p3, p0, Lcom/texa/carelib/care/impacts/AccelerationVector;->mY:J

    mul-long p5, p5, p7

    .line 59
    iput-wide p5, p0, Lcom/texa/carelib/care/impacts/AccelerationVector;->mZ:J

    return-void
.end method


# virtual methods
.method public getX()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/texa/carelib/care/impacts/AccelerationVector;->mX:J

    return-wide v0
.end method

.method public getY()J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/texa/carelib/care/impacts/AccelerationVector;->mY:J

    return-wide v0
.end method

.method public getZ()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/texa/carelib/care/impacts/AccelerationVector;->mZ:J

    return-wide v0
.end method

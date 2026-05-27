.class public Lcom/texa/careapp/impactdetection/AccelerationEvent;
.super Ljava/lang/Object;
.source "AccelerationEvent.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final mAccuracy:I

.field private final mSourceSensor:Landroid/hardware/Sensor;

.field private final mTimeInMillis:J

.field private mX:F

.field private mY:F

.field private mZ:F


# direct methods
.method constructor <init>(Landroid/hardware/Sensor;IJFFF)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mSourceSensor:Landroid/hardware/Sensor;

    .line 80
    iput p2, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mAccuracy:I

    .line 81
    iput-wide p3, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mTimeInMillis:J

    .line 82
    iput p5, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mX:F

    .line 83
    iput p6, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mY:F

    .line 84
    iput p7, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mZ:F

    return-void
.end method


# virtual methods
.method alignZAxis([F)V
    .locals 10

    if-eqz p1, :cond_1

    .line 108
    array-length v0, p1

    const/16 v1, 0x8

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/16 v7, 0x9

    const/4 v8, 0x0

    if-ne v0, v7, :cond_0

    .line 109
    aget v0, p1, v8

    iget v7, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mX:F

    mul-float v0, v0, v7

    aget v6, p1, v6

    iget v7, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mY:F

    mul-float v6, v6, v7

    add-float/2addr v0, v6

    aget v5, p1, v5

    iget v6, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mZ:F

    mul-float v5, v5, v6

    add-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    const/4 v5, 0x3

    .line 110
    aget v5, p1, v5

    iget v6, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mX:F

    mul-float v5, v5, v6

    aget v4, p1, v4

    iget v6, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mY:F

    mul-float v4, v4, v6

    add-float/2addr v5, v4

    aget v3, p1, v3

    iget v4, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mZ:F

    mul-float v3, v3, v4

    add-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    .line 111
    aget v2, p1, v2

    iget v4, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mX:F

    mul-float v2, v2, v4

    const/4 v4, 0x7

    aget v4, p1, v4

    iget v5, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mY:F

    mul-float v4, v4, v5

    add-float/2addr v2, v4

    aget p1, p1, v1

    iget v1, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mZ:F

    mul-float p1, p1, v1

    add-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    .line 113
    iput v0, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mX:F

    .line 114
    iput v3, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mY:F

    .line 115
    iput p1, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mZ:F

    goto :goto_0

    .line 116
    :cond_0
    array-length v0, p1

    const/16 v9, 0x10

    if-ne v0, v9, :cond_1

    new-array v0, v9, [F

    .line 118
    invoke-static {v0, v8, p1, v8}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    .line 120
    aget p1, v0, v8

    iget v8, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mX:F

    mul-float p1, p1, v8

    aget v4, v0, v4

    iget v8, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mY:F

    mul-float v4, v4, v8

    add-float/2addr p1, v4

    aget v1, v0, v1

    iget v4, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mZ:F

    mul-float v1, v1, v4

    add-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    .line 121
    aget v1, v0, v6

    iget v4, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mX:F

    mul-float v1, v1, v4

    aget v3, v0, v3

    iget v4, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mY:F

    mul-float v3, v3, v4

    add-float/2addr v1, v3

    aget v3, v0, v7

    iget v4, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mZ:F

    mul-float v3, v3, v4

    add-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    .line 122
    aget v3, v0, v5

    iget v4, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mX:F

    mul-float v3, v3, v4

    aget v2, v0, v2

    iget v4, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mY:F

    mul-float v2, v2, v4

    add-float/2addr v3, v2

    const/16 v2, 0xa

    aget v0, v0, v2

    iget v2, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mZ:F

    mul-float v0, v0, v2

    add-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 124
    iput p1, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mX:F

    .line 125
    iput v1, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mY:F

    .line 126
    iput v0, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mZ:F

    :cond_1
    :goto_0
    return-void
.end method

.method public clone()Lcom/texa/careapp/impactdetection/AccelerationEvent;
    .locals 1

    .line 134
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/impactdetection/AccelerationEvent;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/AccelerationEvent;->clone()Lcom/texa/careapp/impactdetection/AccelerationEvent;

    move-result-object v0

    return-object v0
.end method

.method public getAccuracy()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mAccuracy:I

    return v0
.end method

.method public getSourceSensor()Landroid/hardware/Sensor;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mSourceSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method public getTimeInMillis()J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mTimeInMillis:J

    return-wide v0
.end method

.method public getX()F
    .locals 1

    .line 47
    iget v0, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 56
    iget v0, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mY:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .line 65
    iget v0, p0, Lcom/texa/careapp/impactdetection/AccelerationEvent;->mZ:F

    return v0
.end method

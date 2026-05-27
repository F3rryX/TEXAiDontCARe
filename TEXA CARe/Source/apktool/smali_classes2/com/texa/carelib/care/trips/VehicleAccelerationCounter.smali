.class public Lcom/texa/carelib/care/trips/VehicleAccelerationCounter;
.super Ljava/lang/Object;
.source "VehicleAccelerationCounter.java"


# instance fields
.field private final mAngleRange:Lcom/texa/carelib/core/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/texa/carelib/core/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mIntensityRange:Lcom/texa/carelib/core/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/texa/carelib/core/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mValue:I


# direct methods
.method public constructor <init>(Lcom/texa/carelib/core/Range;Lcom/texa/carelib/core/Range;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Range<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/texa/carelib/core/Range<",
            "Ljava/lang/Float;",
            ">;I)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/texa/carelib/care/trips/VehicleAccelerationCounter;->mAngleRange:Lcom/texa/carelib/core/Range;

    .line 35
    iput-object p2, p0, Lcom/texa/carelib/care/trips/VehicleAccelerationCounter;->mIntensityRange:Lcom/texa/carelib/core/Range;

    .line 36
    iput p3, p0, Lcom/texa/carelib/care/trips/VehicleAccelerationCounter;->mValue:I

    return-void
.end method


# virtual methods
.method public getAngleRange()Lcom/texa/carelib/core/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/texa/carelib/core/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/texa/carelib/care/trips/VehicleAccelerationCounter;->mAngleRange:Lcom/texa/carelib/core/Range;

    return-object v0
.end method

.method public getIntensityRange()Lcom/texa/carelib/core/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/texa/carelib/core/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/texa/carelib/care/trips/VehicleAccelerationCounter;->mIntensityRange:Lcom/texa/carelib/core/Range;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/texa/carelib/care/trips/VehicleAccelerationCounter;->mValue:I

    return v0
.end method

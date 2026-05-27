.class Lcom/robotium/solo/PressurePoint;
.super Ljava/lang/Object;
.source "PressurePoint.java"


# instance fields
.field public final pressure:F

.field public final x:F

.field public final y:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/robotium/solo/PressurePoint;->x:F

    .line 15
    iput p2, p0, Lcom/robotium/solo/PressurePoint;->y:F

    .line 16
    iput p3, p0, Lcom/robotium/solo/PressurePoint;->pressure:F

    return-void
.end method

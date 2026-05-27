.class Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;
.super Ljava/lang/Object;
.source "DrivingStyleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/care/eco_driving/DrivingStyleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VehicleParkedCheck"
.end annotation


# instance fields
.field dongleConnected:Ljava/lang/Boolean;

.field engineSpeed:D

.field shouldNotifyTempStop:Z

.field final synthetic this$0:Lcom/texa/care/eco_driving/DrivingStyleManager;

.field vehicleSpeed:D


# direct methods
.method constructor <init>(Lcom/texa/care/eco_driving/DrivingStyleManager;)V
    .locals 2

    .line 769
    iput-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;->this$0:Lcom/texa/care/eco_driving/DrivingStyleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 762
    iput-wide v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;->vehicleSpeed:D

    .line 763
    iput-wide v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;->engineSpeed:D

    const/4 p1, 0x0

    .line 770
    iput-boolean p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;->shouldNotifyTempStop:Z

    return-void
.end method


# virtual methods
.method isMoving()Z
    .locals 6

    .line 789
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;->dongleConnected:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 790
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 793
    :cond_0
    iget-wide v2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;->vehicleSpeed:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method isParked()Z
    .locals 6

    .line 781
    iget-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;->dongleConnected:Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 782
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 785
    :cond_0
    iget-wide v2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;->engineSpeed:D

    const-wide/high16 v4, 0x4069000000000000L    # 200.0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_1

    iget-wide v2, p0, Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;->vehicleSpeed:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 774
    iput-wide v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;->vehicleSpeed:D

    .line 775
    iput-wide v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;->engineSpeed:D

    const/4 v0, 0x0

    .line 776
    iput-object v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;->dongleConnected:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 777
    iput-boolean v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager$VehicleParkedCheck;->shouldNotifyTempStop:Z

    return-void
.end method

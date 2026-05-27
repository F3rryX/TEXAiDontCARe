.class Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;
.super Ljava/lang/Object;
.source "DrivingStyleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/care/eco_driving/DrivingStyleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Flags"
.end annotation


# instance fields
.field hasStarted:Z

.field shouldAcquireZero:Z

.field shouldNotifyStop:Z

.field shouldPollTripData:Z

.field shouldPollValues:Z

.field shouldProcessTripInfo:Z

.field shouldProcessValueUpdates:Z

.field shouldWaitForTripIDUpdate:Z

.field final synthetic this$0:Lcom/texa/care/eco_driving/DrivingStyleManager;

.field tripInProgress:Z


# direct methods
.method constructor <init>(Lcom/texa/care/eco_driving/DrivingStyleManager;)V
    .locals 1

    .line 847
    iput-object p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->this$0:Lcom/texa/care/eco_driving/DrivingStyleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 845
    iput-boolean p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldAcquireZero:Z

    const/4 v0, 0x0

    .line 848
    iput-boolean v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->hasStarted:Z

    .line 850
    iput-boolean v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->tripInProgress:Z

    .line 851
    iput-boolean v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldProcessTripInfo:Z

    .line 852
    iput-boolean v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldProcessValueUpdates:Z

    .line 853
    iput-boolean v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldPollTripData:Z

    .line 854
    iput-boolean v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldPollValues:Z

    .line 856
    iput-boolean p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldAcquireZero:Z

    .line 857
    iput-boolean v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldNotifyStop:Z

    .line 858
    iput-boolean p1, p0, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldWaitForTripIDUpdate:Z

    return-void
.end method


# virtual methods
.method protected reset()V
    .locals 1

    const/4 v0, 0x1

    .line 862
    iput-boolean v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldAcquireZero:Z

    .line 863
    iput-boolean v0, p0, Lcom/texa/care/eco_driving/DrivingStyleManager$Flags;->shouldNotifyStop:Z

    return-void
.end method

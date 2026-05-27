.class Lcom/texa/careapp/app/calibration/CalibrationDialogScreen$CalibrationProcedure;
.super Ljava/lang/Object;
.source "CalibrationDialogScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/calibration/CalibrationDialogScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CalibrationProcedure"
.end annotation


# instance fields
.field private calibrationStarted:Z

.field final synthetic this$0:Lcom/texa/careapp/app/calibration/CalibrationDialogScreen;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/calibration/CalibrationDialogScreen;Z)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/texa/careapp/app/calibration/CalibrationDialogScreen$CalibrationProcedure;->this$0:Lcom/texa/careapp/app/calibration/CalibrationDialogScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean p2, p0, Lcom/texa/careapp/app/calibration/CalibrationDialogScreen$CalibrationProcedure;->calibrationStarted:Z

    return-void
.end method


# virtual methods
.method public isCalibrationStarted()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/texa/careapp/app/calibration/CalibrationDialogScreen$CalibrationProcedure;->calibrationStarted:Z

    return v0
.end method

.class Lcom/texa/care/eco_driving/score/ParkedEngineOnColdScore$TargetValues;
.super Ljava/lang/Object;
.source "ParkedEngineOnColdScore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/care/eco_driving/score/ParkedEngineOnColdScore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TargetValues"
.end annotation


# instance fields
.field private engineTemp:Ljava/lang/Double;

.field private rpm:Ljava/lang/Double;

.field private speed:Ljava/lang/Double;

.field final synthetic this$0:Lcom/texa/care/eco_driving/score/ParkedEngineOnColdScore;


# direct methods
.method constructor <init>(Lcom/texa/care/eco_driving/score/ParkedEngineOnColdScore;)V
    .locals 2

    .line 196
    iput-object p1, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnColdScore$TargetValues;->this$0:Lcom/texa/care/eco_driving/score/ParkedEngineOnColdScore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 197
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnColdScore$TargetValues;->rpm:Ljava/lang/Double;

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 198
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnColdScore$TargetValues;->speed:Ljava/lang/Double;

    .line 199
    iput-object p1, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnColdScore$TargetValues;->engineTemp:Ljava/lang/Double;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/care/eco_driving/score/ParkedEngineOnColdScore$TargetValues;)Ljava/lang/Double;
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnColdScore$TargetValues;->rpm:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic access$002(Lcom/texa/care/eco_driving/score/ParkedEngineOnColdScore$TargetValues;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnColdScore$TargetValues;->rpm:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$100(Lcom/texa/care/eco_driving/score/ParkedEngineOnColdScore$TargetValues;)Ljava/lang/Double;
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnColdScore$TargetValues;->speed:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic access$102(Lcom/texa/care/eco_driving/score/ParkedEngineOnColdScore$TargetValues;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnColdScore$TargetValues;->speed:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$200(Lcom/texa/care/eco_driving/score/ParkedEngineOnColdScore$TargetValues;)Ljava/lang/Double;
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnColdScore$TargetValues;->engineTemp:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic access$202(Lcom/texa/care/eco_driving/score/ParkedEngineOnColdScore$TargetValues;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/texa/care/eco_driving/score/ParkedEngineOnColdScore$TargetValues;->engineTemp:Ljava/lang/Double;

    return-object p1
.end method

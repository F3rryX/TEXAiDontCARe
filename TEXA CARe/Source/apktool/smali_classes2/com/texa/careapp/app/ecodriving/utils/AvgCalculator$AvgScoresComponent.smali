.class Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;
.super Ljava/lang/Object;
.source "AvgCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvgScoresComponent"
.end annotation


# instance fields
.field private denominator:D

.field private nominator:D

.field final synthetic this$0:Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;

.field private typeId:I


# direct methods
.method private constructor <init>(Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;->this$0:Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$1;)V
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;-><init>(Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;)V

    return-void
.end method

.method static synthetic access$100(Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;)D
    .locals 2

    .line 143
    iget-wide v0, p0, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;->denominator:D

    return-wide v0
.end method

.method static synthetic access$200(Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;)I
    .locals 0

    .line 143
    iget p0, p0, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;->typeId:I

    return p0
.end method

.method static synthetic access$202(Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;I)I
    .locals 0

    .line 143
    iput p1, p0, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;->typeId:I

    return p1
.end method


# virtual methods
.method addScore(Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;)V
    .locals 6

    .line 154
    iget v0, p0, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;->typeId:I

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;->getTypeId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Invalid score type"

    .line 155
    invoke-static {v1, v0}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :cond_0
    iget-wide v0, p0, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;->nominator:D

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;->getValue()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;->getDuration()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;->nominator:D

    .line 159
    iget-wide v0, p0, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;->denominator:D

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;->getDuration()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;->denominator:D

    .line 160
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;->getTypeId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;->typeId:I

    return-void
.end method

.method addScoreByType(Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;)V
    .locals 6

    .line 164
    iget-wide v0, p0, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;->nominator:D

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;->getValue()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;->getDuration()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;->nominator:D

    .line 165
    iget-wide v0, p0, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;->denominator:D

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;->getDuration()Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v2, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;->denominator:D

    return-void
.end method

.method getAverageValue()D
    .locals 4

    .line 150
    iget-wide v0, p0, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;->nominator:D

    iget-wide v2, p0, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator$AvgScoresComponent;->denominator:D

    div-double/2addr v0, v2

    return-wide v0
.end method

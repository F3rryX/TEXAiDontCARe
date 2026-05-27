.class Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;
.super Ljava/lang/Object;
.source "BaseScore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/care/eco_driving/score/BaseScore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScoreRelevantPeriod"
.end annotation


# instance fields
.field beginDate:Ljava/util/Date;

.field endDate:Ljava/util/Date;

.field final synthetic this$0:Lcom/texa/care/eco_driving/score/BaseScore;


# direct methods
.method constructor <init>(Lcom/texa/care/eco_driving/score/BaseScore;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;->this$0:Lcom/texa/care/eco_driving/score/BaseScore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/texa/care/eco_driving/score/BaseScore;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;->this$0:Lcom/texa/care/eco_driving/score/BaseScore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p2, p0, Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;->beginDate:Ljava/util/Date;

    .line 209
    iput-object p3, p0, Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;->endDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method setDates(Ljava/util/Date;Ljava/util/Date;)Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;->beginDate:Ljava/util/Date;

    .line 218
    iput-object p2, p0, Lcom/texa/care/eco_driving/score/BaseScore$ScoreRelevantPeriod;->endDate:Ljava/util/Date;

    return-object p0
.end method

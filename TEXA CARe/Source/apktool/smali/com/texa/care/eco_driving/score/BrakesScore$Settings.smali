.class Lcom/texa/care/eco_driving/score/BrakesScore$Settings;
.super Ljava/lang/Object;
.source "BrakesScore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/care/eco_driving/score/BrakesScore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Settings"
.end annotation


# instance fields
.field private final EVENT_NOTIFICATION_COUNT:D

.field private final PENALTY_FUNC_A:D


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide v2, 0x4015333333333333L    # 5.3

    .line 50
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/texa/care/eco_driving/score/BrakesScore$Settings;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-wide p1, p0, Lcom/texa/care/eco_driving/score/BrakesScore$Settings;->PENALTY_FUNC_A:D

    .line 54
    iput-wide p3, p0, Lcom/texa/care/eco_driving/score/BrakesScore$Settings;->EVENT_NOTIFICATION_COUNT:D

    return-void
.end method

.method static synthetic access$000(Lcom/texa/care/eco_driving/score/BrakesScore$Settings;)D
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/texa/care/eco_driving/score/BrakesScore$Settings;->PENALTY_FUNC_A:D

    return-wide v0
.end method

.method static synthetic access$100(Lcom/texa/care/eco_driving/score/BrakesScore$Settings;)D
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/texa/care/eco_driving/score/BrakesScore$Settings;->EVENT_NOTIFICATION_COUNT:D

    return-wide v0
.end method

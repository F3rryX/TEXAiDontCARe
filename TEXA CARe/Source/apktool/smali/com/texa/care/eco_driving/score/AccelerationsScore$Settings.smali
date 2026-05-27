.class Lcom/texa/care/eco_driving/score/AccelerationsScore$Settings;
.super Ljava/lang/Object;
.source "AccelerationsScore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/care/eco_driving/score/AccelerationsScore;
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

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    const-wide v2, 0x4015333333333333L    # 5.3

    .line 51
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/texa/care/eco_driving/score/AccelerationsScore$Settings;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-wide p1, p0, Lcom/texa/care/eco_driving/score/AccelerationsScore$Settings;->PENALTY_FUNC_A:D

    .line 56
    iput-wide p3, p0, Lcom/texa/care/eco_driving/score/AccelerationsScore$Settings;->EVENT_NOTIFICATION_COUNT:D

    return-void
.end method

.method static synthetic access$000(Lcom/texa/care/eco_driving/score/AccelerationsScore$Settings;)D
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/texa/care/eco_driving/score/AccelerationsScore$Settings;->PENALTY_FUNC_A:D

    return-wide v0
.end method

.method static synthetic access$100(Lcom/texa/care/eco_driving/score/AccelerationsScore$Settings;)D
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/texa/care/eco_driving/score/AccelerationsScore$Settings;->EVENT_NOTIFICATION_COUNT:D

    return-wide v0
.end method

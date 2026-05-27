.class Lcom/texa/care/eco_driving/score/HighSpeedScore$Settings;
.super Ljava/lang/Object;
.source "HighSpeedScore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/care/eco_driving/score/HighSpeedScore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Settings"
.end annotation


# instance fields
.field private final EVENT_NOTIFICATION_COUNT:D

.field private final SPEED_THRESHOLD_KPH:D


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide v0, 0x405b800000000000L    # 110.0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 45
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/texa/care/eco_driving/score/HighSpeedScore$Settings;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, Lcom/texa/care/eco_driving/score/HighSpeedScore$Settings;->SPEED_THRESHOLD_KPH:D

    .line 50
    iput-wide p3, p0, Lcom/texa/care/eco_driving/score/HighSpeedScore$Settings;->EVENT_NOTIFICATION_COUNT:D

    return-void
.end method

.method static synthetic access$000(Lcom/texa/care/eco_driving/score/HighSpeedScore$Settings;)D
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/texa/care/eco_driving/score/HighSpeedScore$Settings;->EVENT_NOTIFICATION_COUNT:D

    return-wide v0
.end method

.method static synthetic access$100(Lcom/texa/care/eco_driving/score/HighSpeedScore$Settings;)D
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/texa/care/eco_driving/score/HighSpeedScore$Settings;->SPEED_THRESHOLD_KPH:D

    return-wide v0
.end method

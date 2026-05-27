.class public Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter$ShouldUpdateUIEcoDrivingEvent;
.super Ljava/lang/Object;
.source "WeekPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShouldUpdateUIEcoDrivingEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;

.field private timeMillis:J


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;J)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter$ShouldUpdateUIEcoDrivingEvent;->this$0:Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-wide p2, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter$ShouldUpdateUIEcoDrivingEvent;->timeMillis:J

    return-void
.end method


# virtual methods
.method public getTimeMillis()J
    .locals 2

    .line 249
    iget-wide v0, p0, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter$ShouldUpdateUIEcoDrivingEvent;->timeMillis:J

    return-wide v0
.end method

.class public Lcom/texa/careapp/app/ecodriving/pager/WeekDayObserver;
.super Ljava/util/Observable;
.source "WeekDayObserver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyObservers()V
    .locals 0

    .line 14
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/pager/WeekDayObserver;->setChanged()V

    .line 15
    invoke-super {p0}, Ljava/util/Observable;->notifyObservers()V

    return-void
.end method

.method public notifyObservers(Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/pager/WeekDayObserver;->setChanged()V

    .line 21
    invoke-super {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

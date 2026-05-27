.class public Lcom/texa/careapp/utils/comparators/StatusComparator;
.super Ljava/lang/Object;
.source "StatusComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/texa/careapp/model/IScheduleModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/texa/careapp/model/IScheduleModel;Lcom/texa/careapp/model/IScheduleModel;)I
    .locals 2

    .line 15
    invoke-interface {p1}, Lcom/texa/careapp/model/IScheduleModel;->getExpiringStatus()I

    move-result v0

    invoke-interface {p2}, Lcom/texa/careapp/model/IScheduleModel;->getExpiringStatus()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 17
    :cond_0
    invoke-interface {p1}, Lcom/texa/careapp/model/IScheduleModel;->getExpiringStatus()I

    move-result p1

    invoke-interface {p2}, Lcom/texa/careapp/model/IScheduleModel;->getExpiringStatus()I

    move-result p2

    if-ge p1, p2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 12
    check-cast p1, Lcom/texa/careapp/model/IScheduleModel;

    check-cast p2, Lcom/texa/careapp/model/IScheduleModel;

    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/utils/comparators/StatusComparator;->compare(Lcom/texa/careapp/model/IScheduleModel;Lcom/texa/careapp/model/IScheduleModel;)I

    move-result p1

    return p1
.end method

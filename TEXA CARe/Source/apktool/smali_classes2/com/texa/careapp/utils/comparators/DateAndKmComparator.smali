.class public Lcom/texa/careapp/utils/comparators/DateAndKmComparator;
.super Ljava/lang/Object;
.source "DateAndKmComparator.java"

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
    .locals 4

    .line 15
    invoke-interface {p1}, Lcom/texa/careapp/model/IScheduleModel;->getExpireDate()Ljava/util/Date;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/texa/careapp/model/IScheduleModel;->getExpireOdo()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 17
    :cond_0
    invoke-interface {p1}, Lcom/texa/careapp/model/IScheduleModel;->getExpireDate()Ljava/util/Date;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_2

    .line 18
    invoke-interface {p2}, Lcom/texa/careapp/model/IScheduleModel;->getExpireDate()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    return v3

    .line 23
    :cond_2
    invoke-interface {p1}, Lcom/texa/careapp/model/IScheduleModel;->getExpireOdo()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 24
    invoke-interface {p2}, Lcom/texa/careapp/model/IScheduleModel;->getExpireDate()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_3

    return v1

    .line 26
    :cond_3
    invoke-interface {p2}, Lcom/texa/careapp/model/IScheduleModel;->getExpireOdo()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v3
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 12
    check-cast p1, Lcom/texa/careapp/model/IScheduleModel;

    check-cast p2, Lcom/texa/careapp/model/IScheduleModel;

    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/utils/comparators/DateAndKmComparator;->compare(Lcom/texa/careapp/model/IScheduleModel;Lcom/texa/careapp/model/IScheduleModel;)I

    move-result p1

    return p1
.end method

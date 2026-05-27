.class public Lcom/texa/careapp/utils/comparators/DateComparator;
.super Ljava/lang/Object;
.source "DateComparator.java"

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
    .locals 8

    .line 16
    invoke-interface {p1}, Lcom/texa/careapp/model/IScheduleModel;->getExpireDate()Ljava/util/Date;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-interface {p2}, Lcom/texa/careapp/model/IScheduleModel;->getExpireDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 18
    :cond_0
    invoke-interface {p1}, Lcom/texa/careapp/model/IScheduleModel;->getExpireDate()Ljava/util/Date;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-interface {p2}, Lcom/texa/careapp/model/IScheduleModel;->getExpireDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    return v2

    .line 20
    :cond_1
    invoke-interface {p1}, Lcom/texa/careapp/model/IScheduleModel;->getExpireDate()Ljava/util/Date;

    move-result-object v0

    const/4 v3, -0x1

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lcom/texa/careapp/model/IScheduleModel;->getExpireDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_2

    return v3

    .line 22
    :cond_2
    invoke-interface {p1}, Lcom/texa/careapp/model/IScheduleModel;->getExpireDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-interface {p2}, Lcom/texa/careapp/model/IScheduleModel;->getExpireDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    return v3

    .line 24
    :cond_3
    invoke-interface {p1}, Lcom/texa/careapp/model/IScheduleModel;->getExpireDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-interface {p2}, Lcom/texa/careapp/model/IScheduleModel;->getExpireDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    cmp-long v0, v3, p1

    if-nez v0, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 12
    check-cast p1, Lcom/texa/careapp/model/IScheduleModel;

    check-cast p2, Lcom/texa/careapp/model/IScheduleModel;

    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/utils/comparators/DateComparator;->compare(Lcom/texa/careapp/model/IScheduleModel;Lcom/texa/careapp/model/IScheduleModel;)I

    move-result p1

    return p1
.end method

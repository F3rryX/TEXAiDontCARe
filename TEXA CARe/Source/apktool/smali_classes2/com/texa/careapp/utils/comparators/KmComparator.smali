.class public Lcom/texa/careapp/utils/comparators/KmComparator;
.super Ljava/lang/Object;
.source "KmComparator.java"

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

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/texa/careapp/model/IScheduleModel;Lcom/texa/careapp/model/IScheduleModel;)I
    .locals 4

    .line 17
    invoke-interface {p1}, Lcom/texa/careapp/model/IScheduleModel;->getExpireOdo()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-interface {p2}, Lcom/texa/careapp/model/IScheduleModel;->getExpireOdo()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 19
    :cond_0
    invoke-interface {p1}, Lcom/texa/careapp/model/IScheduleModel;->getExpireOdo()Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, -0x1

    if-nez v0, :cond_1

    invoke-interface {p2}, Lcom/texa/careapp/model/IScheduleModel;->getExpireOdo()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    return v2

    .line 21
    :cond_1
    invoke-interface {p1}, Lcom/texa/careapp/model/IScheduleModel;->getExpireOdo()Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lcom/texa/careapp/model/IScheduleModel;->getExpireOdo()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2

    return v3

    .line 24
    :cond_2
    invoke-interface {p1}, Lcom/texa/careapp/model/IScheduleModel;->getExpireOdo()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    check-cast p1, Lcom/texa/careapp/model/VehicleScheduleModel;

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleScheduleModel;->getVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getOdometer()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/texa/careapp/utils/Utils;->nonNegativeSubtraction(II)I

    move-result p1

    .line 25
    invoke-interface {p2}, Lcom/texa/careapp/model/IScheduleModel;->getExpireOdo()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    check-cast p2, Lcom/texa/careapp/model/VehicleScheduleModel;

    invoke-virtual {p2}, Lcom/texa/careapp/model/VehicleScheduleModel;->getVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/texa/careapp/model/VehicleModel;->getOdometer()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, p2}, Lcom/texa/careapp/utils/Utils;->nonNegativeSubtraction(II)I

    move-result p2

    if-le p1, p2, :cond_3

    return v3

    :cond_3
    if-ge p1, p2, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 14
    check-cast p1, Lcom/texa/careapp/model/IScheduleModel;

    check-cast p2, Lcom/texa/careapp/model/IScheduleModel;

    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/utils/comparators/KmComparator;->compare(Lcom/texa/careapp/model/IScheduleModel;Lcom/texa/careapp/model/IScheduleModel;)I

    move-result p1

    return p1
.end method

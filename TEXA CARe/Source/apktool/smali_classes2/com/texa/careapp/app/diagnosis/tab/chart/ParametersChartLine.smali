.class public abstract Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;
.super Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;
.source "ParametersChartLine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine$LineChartViewHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getHistory()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleParamHistoryModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMinValue()I
.end method

.method public abstract getMockHistory()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleParamHistoryModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getParameterType()J
.end method

.method public abstract getParameterTypeRelative()J
.end method

.method public abstract setLayoutPriority(I)V
.end method

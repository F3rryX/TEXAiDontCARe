.class Lcom/texa/careapp/utils/ChartUtils$1;
.super Lcom/github/mikephil/charting/formatter/ValueFormatter;
.source "ChartUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/utils/ChartUtils;->getYAxisRealData(Landroid/content/Context;Ljava/util/ArrayList;IJZ)Lcom/github/mikephil/charting/data/LineDataSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$mContext:Landroid/content/Context;

.field final synthetic val$parameterType:J


# direct methods
.method constructor <init>(Landroid/content/Context;J)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/texa/careapp/utils/ChartUtils$1;->val$mContext:Landroid/content/Context;

    iput-wide p2, p0, Lcom/texa/careapp/utils/ChartUtils$1;->val$parameterType:J

    invoke-direct {p0}, Lcom/github/mikephil/charting/formatter/ValueFormatter;-><init>()V

    return-void
.end method


# virtual methods
.method public getPointLabel(Lcom/github/mikephil/charting/data/Entry;)Ljava/lang/String;
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/texa/careapp/utils/ChartUtils$1;->val$mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/texa/careapp/utils/ChartUtils$1;->val$parameterType:J

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    invoke-static {v0, v1, v2, p1}, Lcom/texa/careapp/utils/ChartUtils;->access$000(Landroid/content/Context;JLcom/texa/careapp/model/VehicleParamHistoryModel;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

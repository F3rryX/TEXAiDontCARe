.class public abstract Lcom/texa/careapp/databinding/DiagnosisDataParametersLineChartBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "DiagnosisDataParametersLineChartBinding.java"


# instance fields
.field public final diagnosisDataParametersLineChart:Lcom/github/mikephil/charting/charts/LineChart;

.field public final diagnosisDataParametersLineChartHeader:Landroid/widget/RelativeLayout;

.field public final diagnosisDataParametersLineChartLayout:Landroid/widget/RelativeLayout;

.field public final diagnosisDataParametersLineChartTitle:Landroid/widget/TextView;

.field public final diagnosisDataParametersLineChartValue:Landroid/widget/TextView;

.field public final diagnosisDataParametersNoDataChart:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/github/mikephil/charting/charts/LineChart;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 46
    iput-object p4, p0, Lcom/texa/careapp/databinding/DiagnosisDataParametersLineChartBinding;->diagnosisDataParametersLineChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 47
    iput-object p5, p0, Lcom/texa/careapp/databinding/DiagnosisDataParametersLineChartBinding;->diagnosisDataParametersLineChartHeader:Landroid/widget/RelativeLayout;

    .line 48
    iput-object p6, p0, Lcom/texa/careapp/databinding/DiagnosisDataParametersLineChartBinding;->diagnosisDataParametersLineChartLayout:Landroid/widget/RelativeLayout;

    .line 49
    iput-object p7, p0, Lcom/texa/careapp/databinding/DiagnosisDataParametersLineChartBinding;->diagnosisDataParametersLineChartTitle:Landroid/widget/TextView;

    .line 50
    iput-object p8, p0, Lcom/texa/careapp/databinding/DiagnosisDataParametersLineChartBinding;->diagnosisDataParametersLineChartValue:Landroid/widget/TextView;

    .line 51
    iput-object p9, p0, Lcom/texa/careapp/databinding/DiagnosisDataParametersLineChartBinding;->diagnosisDataParametersNoDataChart:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/DiagnosisDataParametersLineChartBinding;
    .locals 1

    .line 94
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/DiagnosisDataParametersLineChartBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/DiagnosisDataParametersLineChartBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/DiagnosisDataParametersLineChartBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0068

    .line 107
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/DiagnosisDataParametersLineChartBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/DiagnosisDataParametersLineChartBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/DiagnosisDataParametersLineChartBinding;
    .locals 1

    .line 76
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/DiagnosisDataParametersLineChartBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/DiagnosisDataParametersLineChartBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/DiagnosisDataParametersLineChartBinding;
    .locals 1

    .line 57
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/DiagnosisDataParametersLineChartBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/DiagnosisDataParametersLineChartBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/DiagnosisDataParametersLineChartBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0068

    .line 71
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/DiagnosisDataParametersLineChartBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/DiagnosisDataParametersLineChartBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0068

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 90
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/DiagnosisDataParametersLineChartBinding;

    return-object p0
.end method

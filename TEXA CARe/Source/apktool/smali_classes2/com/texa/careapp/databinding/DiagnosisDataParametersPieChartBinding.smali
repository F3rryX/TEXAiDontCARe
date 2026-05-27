.class public abstract Lcom/texa/careapp/databinding/DiagnosisDataParametersPieChartBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "DiagnosisDataParametersPieChartBinding.java"


# instance fields
.field public final diagnosisDataParametersPieChart:Lcom/github/mikephil/charting/charts/PieChart;

.field public final diagnosisDataParametersPieChartLayout:Landroid/widget/RelativeLayout;

.field public final diagnosisDataParametersPieChartTitle:Landroid/widget/TextView;

.field public final diagnosisDataParametersPieChartValue:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/github/mikephil/charting/charts/PieChart;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 38
    iput-object p4, p0, Lcom/texa/careapp/databinding/DiagnosisDataParametersPieChartBinding;->diagnosisDataParametersPieChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 39
    iput-object p5, p0, Lcom/texa/careapp/databinding/DiagnosisDataParametersPieChartBinding;->diagnosisDataParametersPieChartLayout:Landroid/widget/RelativeLayout;

    .line 40
    iput-object p6, p0, Lcom/texa/careapp/databinding/DiagnosisDataParametersPieChartBinding;->diagnosisDataParametersPieChartTitle:Landroid/widget/TextView;

    .line 41
    iput-object p7, p0, Lcom/texa/careapp/databinding/DiagnosisDataParametersPieChartBinding;->diagnosisDataParametersPieChartValue:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/DiagnosisDataParametersPieChartBinding;
    .locals 1

    .line 84
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/DiagnosisDataParametersPieChartBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/DiagnosisDataParametersPieChartBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/DiagnosisDataParametersPieChartBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d006a

    .line 97
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/DiagnosisDataParametersPieChartBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/DiagnosisDataParametersPieChartBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/DiagnosisDataParametersPieChartBinding;
    .locals 1

    .line 66
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/DiagnosisDataParametersPieChartBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/DiagnosisDataParametersPieChartBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/DiagnosisDataParametersPieChartBinding;
    .locals 1

    .line 47
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/DiagnosisDataParametersPieChartBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/DiagnosisDataParametersPieChartBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/DiagnosisDataParametersPieChartBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d006a

    .line 61
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/DiagnosisDataParametersPieChartBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/DiagnosisDataParametersPieChartBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d006a

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 80
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/DiagnosisDataParametersPieChartBinding;

    return-object p0
.end method

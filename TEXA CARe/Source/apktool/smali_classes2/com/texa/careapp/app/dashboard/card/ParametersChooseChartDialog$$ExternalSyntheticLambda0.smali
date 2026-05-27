.class public final synthetic Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;

.field public final synthetic f$1:Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;

    iput-object p2, p0, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog$$ExternalSyntheticLambda0;->f$1:Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog$$ExternalSyntheticLambda0;->f$1:Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;

    invoke-virtual {v0, v1, p1, p2}, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;->lambda$afterViewInjection$0$com-texa-careapp-app-dashboard-card-ParametersChooseChartDialog(Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

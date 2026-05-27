.class public Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;
.super Lcom/texa/care/navigation/Screen;
.source "ParametersChooseChartDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog$ShouldUpdateChartParameterTypeEvent;
    }
.end annotation


# instance fields
.field private hwId:Ljava/lang/String;

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mVehicleParams:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/util/LongSparseArray;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;->mVehicleParams:Landroid/util/LongSparseArray;

    .line 41
    iput-object p2, p0, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;->hwId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 9

    .line 46
    invoke-virtual {p0}, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;)V

    .line 48
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/DialogChooseChartBinding;

    .line 50
    invoke-virtual {p0}, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;->mVehicleParams:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 52
    iget-object v3, p0, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;->mVehicleParams:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;

    const v4, 0x7f0d0075

    .line 54
    iget-object v5, p1, Lcom/texa/careapp/databinding/DialogChooseChartBinding;->dialogChooseChartRadioGroup:Landroid/widget/RadioGroup;

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 56
    invoke-virtual {v3}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 57
    new-instance v5, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v3}, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 64
    iget-object v5, p1, Lcom/texa/careapp/databinding/DialogChooseChartBinding;->dialogChooseChartRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v5, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 65
    invoke-virtual {v3}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getParameterType()J

    move-result-wide v5

    iget-object v3, p0, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v7, p0, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;->hwId:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/texa/careapp/utils/Utils;->getParameterCardChartType(Landroid/content/SharedPreferences;Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-nez v3, :cond_0

    .line 66
    invoke-virtual {v4, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "dialog_choose_chart"

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0074

    return v0
.end method

.method public getType()Lcom/texa/care/navigation/ScreenType;
    .locals 1

    .line 78
    sget-object v0, Lcom/texa/care/navigation/ScreenType;->DIALOG:Lcom/texa/care/navigation/ScreenType;

    return-object v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-dashboard-card-ParametersChooseChartDialog(Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;Landroid/widget/CompoundButton;Z)V
    .locals 4

    .line 58
    iget-object p2, p0, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;->hwId:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/texa/careapp/utils/Utils;->getParameterCardChartType(Landroid/content/SharedPreferences;Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getParameterType()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 59
    iget-object p2, p0, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;->mPreferences:Landroid/content/SharedPreferences;

    iget-object p3, p0, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;->hwId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getParameterType()J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Lcom/texa/careapp/utils/Utils;->setParameterCardChartType(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    .line 60
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance p2, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog$ShouldUpdateChartParameterTypeEvent;

    invoke-direct {p2, p0}, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog$ShouldUpdateChartParameterTypeEvent;-><init>(Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p0}, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/navigation/Navigator;->goBack()Z

    :cond_0
    return-void
.end method

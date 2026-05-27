.class public abstract Lcom/texa/careapp/databinding/ScreenSelectNewScheduleBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ScreenSelectNewScheduleBinding.java"


# instance fields
.field public final labelAddConfirmed:Landroid/widget/TextView;

.field public final layoutAddConfirmed:Landroid/widget/LinearLayout;

.field public final scheduleTypeSpinner:Landroid/widget/Spinner;

.field public final userDataContainer:Landroid/widget/LinearLayout;

.field public final userLabel:Landroid/widget/TextView;

.field public final userSpinner:Landroid/widget/Spinner;

.field public final vehicleDataContainer:Landroid/widget/LinearLayout;

.field public final vehicleLabel:Landroid/widget/TextView;

.field public final vehicleSpinner:Landroid/widget/Spinner;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/Spinner;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/Spinner;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/Spinner;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 52
    iput-object p4, p0, Lcom/texa/careapp/databinding/ScreenSelectNewScheduleBinding;->labelAddConfirmed:Landroid/widget/TextView;

    .line 53
    iput-object p5, p0, Lcom/texa/careapp/databinding/ScreenSelectNewScheduleBinding;->layoutAddConfirmed:Landroid/widget/LinearLayout;

    .line 54
    iput-object p6, p0, Lcom/texa/careapp/databinding/ScreenSelectNewScheduleBinding;->scheduleTypeSpinner:Landroid/widget/Spinner;

    .line 55
    iput-object p7, p0, Lcom/texa/careapp/databinding/ScreenSelectNewScheduleBinding;->userDataContainer:Landroid/widget/LinearLayout;

    .line 56
    iput-object p8, p0, Lcom/texa/careapp/databinding/ScreenSelectNewScheduleBinding;->userLabel:Landroid/widget/TextView;

    .line 57
    iput-object p9, p0, Lcom/texa/careapp/databinding/ScreenSelectNewScheduleBinding;->userSpinner:Landroid/widget/Spinner;

    .line 58
    iput-object p10, p0, Lcom/texa/careapp/databinding/ScreenSelectNewScheduleBinding;->vehicleDataContainer:Landroid/widget/LinearLayout;

    .line 59
    iput-object p11, p0, Lcom/texa/careapp/databinding/ScreenSelectNewScheduleBinding;->vehicleLabel:Landroid/widget/TextView;

    .line 60
    iput-object p12, p0, Lcom/texa/careapp/databinding/ScreenSelectNewScheduleBinding;->vehicleSpinner:Landroid/widget/Spinner;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/ScreenSelectNewScheduleBinding;
    .locals 1

    .line 103
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenSelectNewScheduleBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSelectNewScheduleBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSelectNewScheduleBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00d8

    .line 116
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/ScreenSelectNewScheduleBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenSelectNewScheduleBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/ScreenSelectNewScheduleBinding;
    .locals 1

    .line 85
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenSelectNewScheduleBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSelectNewScheduleBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/ScreenSelectNewScheduleBinding;
    .locals 1

    .line 66
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ScreenSelectNewScheduleBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSelectNewScheduleBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSelectNewScheduleBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00d8

    .line 80
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenSelectNewScheduleBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSelectNewScheduleBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00d8

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 99
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenSelectNewScheduleBinding;

    return-object p0
.end method

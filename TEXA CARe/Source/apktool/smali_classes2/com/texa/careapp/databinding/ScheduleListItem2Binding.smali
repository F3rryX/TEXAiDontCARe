.class public abstract Lcom/texa/careapp/databinding/ScheduleListItem2Binding;
.super Landroidx/databinding/ViewDataBinding;
.source "ScheduleListItem2Binding.java"


# instance fields
.field public final betweenText:Landroid/widget/TextView;

.field public final cardView:Landroid/widget/RelativeLayout;

.field public final deleteButton:Landroid/widget/LinearLayout;

.field public final refreshButton:Landroid/widget/LinearLayout;

.field public final relativeLayout:Landroid/widget/RelativeLayout;

.field public final scheduleDay:Landroidx/appcompat/widget/AppCompatTextView;

.field public final scheduleDescription:Landroid/widget/TextView;

.field public final scheduleExpiredDate:Landroid/widget/TextView;

.field public final scheduleListCircleBackground:Landroid/widget/LinearLayout;

.field public final scheduleMonth:Landroidx/appcompat/widget/AppCompatTextView;

.field public final scheduleTitle:Landroidx/appcompat/widget/AppCompatTextView;

.field public final undeletableButton:Landroid/widget/LinearLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 63
    iput-object p4, p0, Lcom/texa/careapp/databinding/ScheduleListItem2Binding;->betweenText:Landroid/widget/TextView;

    .line 64
    iput-object p5, p0, Lcom/texa/careapp/databinding/ScheduleListItem2Binding;->cardView:Landroid/widget/RelativeLayout;

    .line 65
    iput-object p6, p0, Lcom/texa/careapp/databinding/ScheduleListItem2Binding;->deleteButton:Landroid/widget/LinearLayout;

    .line 66
    iput-object p7, p0, Lcom/texa/careapp/databinding/ScheduleListItem2Binding;->refreshButton:Landroid/widget/LinearLayout;

    .line 67
    iput-object p8, p0, Lcom/texa/careapp/databinding/ScheduleListItem2Binding;->relativeLayout:Landroid/widget/RelativeLayout;

    .line 68
    iput-object p9, p0, Lcom/texa/careapp/databinding/ScheduleListItem2Binding;->scheduleDay:Landroidx/appcompat/widget/AppCompatTextView;

    .line 69
    iput-object p10, p0, Lcom/texa/careapp/databinding/ScheduleListItem2Binding;->scheduleDescription:Landroid/widget/TextView;

    .line 70
    iput-object p11, p0, Lcom/texa/careapp/databinding/ScheduleListItem2Binding;->scheduleExpiredDate:Landroid/widget/TextView;

    .line 71
    iput-object p12, p0, Lcom/texa/careapp/databinding/ScheduleListItem2Binding;->scheduleListCircleBackground:Landroid/widget/LinearLayout;

    .line 72
    iput-object p13, p0, Lcom/texa/careapp/databinding/ScheduleListItem2Binding;->scheduleMonth:Landroidx/appcompat/widget/AppCompatTextView;

    .line 73
    iput-object p14, p0, Lcom/texa/careapp/databinding/ScheduleListItem2Binding;->scheduleTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 74
    iput-object p15, p0, Lcom/texa/careapp/databinding/ScheduleListItem2Binding;->undeletableButton:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/ScheduleListItem2Binding;
    .locals 1

    .line 117
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScheduleListItem2Binding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScheduleListItem2Binding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScheduleListItem2Binding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d009f

    .line 129
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/ScheduleListItem2Binding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScheduleListItem2Binding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/ScheduleListItem2Binding;
    .locals 1

    .line 99
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScheduleListItem2Binding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScheduleListItem2Binding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/ScheduleListItem2Binding;
    .locals 1

    .line 80
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ScheduleListItem2Binding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScheduleListItem2Binding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScheduleListItem2Binding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d009f

    .line 94
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScheduleListItem2Binding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScheduleListItem2Binding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d009f

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 113
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScheduleListItem2Binding;

    return-object p0
.end method

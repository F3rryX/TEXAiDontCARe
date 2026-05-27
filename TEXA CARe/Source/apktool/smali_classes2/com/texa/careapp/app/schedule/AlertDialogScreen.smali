.class public Lcom/texa/careapp/app/schedule/AlertDialogScreen;
.super Lcom/texa/care/navigation/Screen;
.source "AlertDialogScreen.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AlertDialogScreen"


# instance fields
.field private final mSchedule:Lcom/texa/careapp/model/IScheduleModel;

.field public mSubtitle:Landroid/widget/TextView;

.field public mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/model/IScheduleModel;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/AlertDialogScreen;->mSchedule:Lcom/texa/careapp/model/IScheduleModel;

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 2

    .line 36
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenAlertDialogBinding;

    .line 37
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenAlertDialogBinding;->title:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/AlertDialogScreen;->mTitle:Landroid/widget/TextView;

    .line 38
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenAlertDialogBinding;->subtitle:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/AlertDialogScreen;->mSubtitle:Landroid/widget/TextView;

    .line 39
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenAlertDialogBinding;->okButton:Landroid/widget/TextView;

    new-instance v0, Lcom/texa/careapp/app/schedule/AlertDialogScreen$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/schedule/AlertDialogScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/schedule/AlertDialogScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/AlertDialogScreen;->mTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/texa/careapp/app/schedule/AlertDialogScreen;->mSchedule:Lcom/texa/careapp/model/IScheduleModel;

    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/AlertDialogScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/care/navigation/Navigator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->getScheduleTitle(Lcom/texa/careapp/model/IScheduleModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    sget-object p1, Lcom/texa/careapp/app/schedule/AlertDialogScreen$1;->$SwitchMap$com$texa$careapp$model$ScheduleType:[I

    iget-object v0, p0, Lcom/texa/careapp/app/schedule/AlertDialogScreen;->mSchedule:Lcom/texa/careapp/model/IScheduleModel;

    invoke-interface {v0}, Lcom/texa/careapp/model/IScheduleModel;->getType()Lcom/texa/careapp/model/ScheduleType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/careapp/model/ScheduleType;->ordinal()I

    move-result v0

    aget p1, p1, v0

    .line 44
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/AlertDialogScreen;->mSubtitle:Landroid/widget/TextView;

    const v0, 0x7f11004e

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lcom/texa/careapp/app/schedule/AlertDialogScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00ab

    return v0
.end method

.method public getType()Lcom/texa/care/navigation/ScreenType;
    .locals 1

    .line 60
    sget-object v0, Lcom/texa/care/navigation/ScreenType;->DIALOG:Lcom/texa/care/navigation/ScreenType;

    return-object v0
.end method

.method public okButtonClicked(Landroid/view/View;)V
    .locals 0

    .line 64
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/AlertDialogScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/navigation/Navigator;->goBack()Z

    return-void
.end method

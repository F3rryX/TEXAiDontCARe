.class public Lcom/texa/careapp/views/EditableDateView;
.super Landroid/widget/LinearLayout;
.source "EditableDateView.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field private mBinding:Lcom/texa/careapp/databinding/EditabledateLayoutBinding;

.field private mListener:Landroid/content/DialogInterface$OnDismissListener;

.field protected mPresenter:Lcom/texa/careapp/views/EditableDatePresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/texa/careapp/views/EditableDateView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/texa/careapp/views/EditableDateView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-direct {p0, p1}, Lcom/texa/careapp/views/EditableDateView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private fixDatePicker(Landroid/app/DatePickerDialog;)V
    .locals 3

    const/4 v0, 0x1

    .line 135
    invoke-virtual {p1, v0}, Landroid/app/DatePickerDialog;->setCancelable(Z)V

    .line 136
    invoke-virtual {p1, v0}, Landroid/app/DatePickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 137
    invoke-virtual {p0}, Lcom/texa/careapp/views/EditableDateView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/views/EditableDateView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/texa/careapp/views/EditableDateView$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/views/EditableDateView;Landroid/app/DatePickerDialog;)V

    const/4 v2, -0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 143
    invoke-virtual {p0}, Lcom/texa/careapp/views/EditableDateView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/views/EditableDateView$$ExternalSyntheticLambda1;->INSTANCE:Lcom/texa/careapp/views/EditableDateView$$ExternalSyntheticLambda1;

    const/4 v2, -0x2

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private getCorrectContext()Landroid/content/Context;
    .locals 2

    .line 94
    new-instance v0, Lcom/texa/careapp/views/EditableDateView$1;

    invoke-virtual {p0}, Lcom/texa/careapp/views/EditableDateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/texa/careapp/views/EditableDateView$1;-><init>(Lcom/texa/careapp/views/EditableDateView;Landroid/content/Context;)V

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0082

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/databinding/EditabledateLayoutBinding;

    iput-object v0, p0, Lcom/texa/careapp/views/EditableDateView;->mBinding:Lcom/texa/careapp/databinding/EditabledateLayoutBinding;

    .line 49
    new-instance v0, Lcom/texa/careapp/views/EditableDatePresenter;

    iget-object v1, p0, Lcom/texa/careapp/views/EditableDateView;->mBinding:Lcom/texa/careapp/databinding/EditabledateLayoutBinding;

    invoke-direct {v0, p1, v1}, Lcom/texa/careapp/views/EditableDatePresenter;-><init>(Landroid/content/Context;Lcom/texa/careapp/databinding/EditabledateLayoutBinding;)V

    iput-object v0, p0, Lcom/texa/careapp/views/EditableDateView;->mPresenter:Lcom/texa/careapp/views/EditableDatePresenter;

    .line 50
    new-instance p1, Lcom/texa/careapp/views/EditableDateView$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/texa/careapp/views/EditableDateView$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/views/EditableDateView;)V

    invoke-virtual {p0, p1}, Lcom/texa/careapp/views/EditableDateView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static isAffectedVersion()Z
    .locals 2

    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isBetweenAndroidVersions(II)Z
    .locals 1

    .line 131
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isBrokenSamsungDevice()Z
    .locals 2

    .line 124
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    const/16 v1, 0x16

    .line 125
    invoke-static {v0, v1}, Lcom/texa/careapp/views/EditableDateView;->isBetweenAndroidVersions(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$fixDatePicker$2(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p0, "Picker"

    const-string p1, "Cancel!"

    .line 144
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/texa/careapp/views/EditableDateView;->mPresenter:Lcom/texa/careapp/views/EditableDatePresenter;

    invoke-virtual {v0}, Lcom/texa/careapp/views/EditableDatePresenter;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/texa/careapp/views/EditableDateView;->mPresenter:Lcom/texa/careapp/views/EditableDatePresenter;

    invoke-virtual {v0}, Lcom/texa/careapp/views/EditableDatePresenter;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 1

    const/16 v0, 0x8

    .line 175
    invoke-virtual {p0, v0}, Lcom/texa/careapp/views/EditableDateView;->setVisibility(I)V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/texa/careapp/views/EditableDateView;->mPresenter:Lcom/texa/careapp/views/EditableDatePresenter;

    invoke-virtual {v0}, Lcom/texa/careapp/views/EditableDatePresenter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .line 179
    invoke-virtual {p0}, Lcom/texa/careapp/views/EditableDateView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 183
    invoke-virtual {p0}, Lcom/texa/careapp/views/EditableDateView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$fixDatePicker$1$com-texa-careapp-views-EditableDateView(Landroid/app/DatePickerDialog;Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p2, "Picker"

    const-string p3, "Correct behavior!"

    .line 139
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object p1

    .line 141
    invoke-virtual {p1}, Landroid/widget/DatePicker;->getYear()I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getMonth()I

    move-result p3

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/texa/careapp/views/EditableDateView;->onDateSet(Landroid/widget/DatePicker;III)V

    return-void
.end method

.method public synthetic lambda$init$0$com-texa-careapp-views-EditableDateView(Landroid/view/View;)V
    .locals 0

    .line 50
    invoke-virtual {p0}, Lcom/texa/careapp/views/EditableDateView;->showDatePicker()V

    return-void
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 0

    .line 189
    iget-object p1, p0, Lcom/texa/careapp/views/EditableDateView;->mPresenter:Lcom/texa/careapp/views/EditableDatePresenter;

    invoke-virtual {p1, p2, p3, p4}, Lcom/texa/careapp/views/EditableDatePresenter;->setValues(III)V

    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/texa/careapp/views/EditableDateView;->mPresenter:Lcom/texa/careapp/views/EditableDatePresenter;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/views/EditableDatePresenter;->setDate(Ljava/util/Date;)V

    return-void
.end method

.method public setListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/texa/careapp/views/EditableDateView;->mListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public setTextSize(II)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/texa/careapp/views/EditableDateView;->mPresenter:Lcom/texa/careapp/views/EditableDatePresenter;

    invoke-virtual {v0, p1, p2}, Lcom/texa/careapp/views/EditableDatePresenter;->setTextSize(II)V

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0, v0}, Lcom/texa/careapp/views/EditableDateView;->setVisibility(I)V

    return-void
.end method

.method public showDatePicker()V
    .locals 7

    .line 63
    invoke-virtual {p0}, Lcom/texa/careapp/views/EditableDateView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    invoke-static {}, Lcom/texa/careapp/views/EditableDateView;->isBrokenSamsungDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/texa/careapp/views/EditableDateView;->getCorrectContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    move-object v2, v0

    .line 73
    new-instance v0, Landroid/app/DatePickerDialog;

    .line 74
    invoke-static {}, Lcom/texa/careapp/views/EditableDateView;->isAffectedVersion()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move-object v3, v1

    goto :goto_0

    :cond_1
    move-object v3, p0

    :goto_0
    iget-object v1, p0, Lcom/texa/careapp/views/EditableDateView;->mPresenter:Lcom/texa/careapp/views/EditableDatePresenter;

    .line 75
    invoke-virtual {v1}, Lcom/texa/careapp/views/EditableDatePresenter;->getYear()I

    move-result v4

    iget-object v1, p0, Lcom/texa/careapp/views/EditableDateView;->mPresenter:Lcom/texa/careapp/views/EditableDatePresenter;

    .line 76
    invoke-virtual {v1}, Lcom/texa/careapp/views/EditableDatePresenter;->getMonth()I

    move-result v5

    iget-object v1, p0, Lcom/texa/careapp/views/EditableDateView;->mPresenter:Lcom/texa/careapp/views/EditableDatePresenter;

    .line 77
    invoke-virtual {v1}, Lcom/texa/careapp/views/EditableDatePresenter;->getDay()I

    move-result v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 79
    invoke-static {}, Lcom/texa/careapp/views/EditableDateView;->isAffectedVersion()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    invoke-direct {p0, v0}, Lcom/texa/careapp/views/EditableDateView;->fixDatePicker(Landroid/app/DatePickerDialog;)V

    .line 82
    :cond_2
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 83
    iget-object v1, p0, Lcom/texa/careapp/views/EditableDateView;->mListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v1, :cond_3

    .line 84
    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_3
    return-void
.end method

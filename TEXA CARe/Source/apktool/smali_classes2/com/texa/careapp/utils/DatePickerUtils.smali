.class public Lcom/texa/careapp/utils/DatePickerUtils;
.super Ljava/lang/Object;
.source "DatePickerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fixDatePicker(Landroid/app/DatePickerDialog;Landroid/app/DatePickerDialog$OnDateSetListener;)V
    .locals 2

    const/4 v0, 0x1

    .line 43
    invoke-virtual {p0, v0}, Landroid/app/DatePickerDialog;->setCancelable(Z)V

    .line 44
    invoke-virtual {p0, v0}, Landroid/app/DatePickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 45
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/utils/DatePickerUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/texa/careapp/utils/DatePickerUtils$$ExternalSyntheticLambda0;-><init>(Landroid/app/DatePickerDialog;Landroid/app/DatePickerDialog$OnDateSetListener;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 51
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/utils/DatePickerUtils$$ExternalSyntheticLambda1;->INSTANCE:Lcom/texa/careapp/utils/DatePickerUtils$$ExternalSyntheticLambda1;

    const/4 v1, -0x2

    invoke-virtual {p0, v1, p1, v0}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private static isAffectedVersion()Z
    .locals 2

    .line 56
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

.method static synthetic lambda$fixDatePicker$0(Landroid/app/DatePickerDialog;Landroid/app/DatePickerDialog$OnDateSetListener;Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p2, "Picker"

    const-string p3, "Correct behavior!"

    .line 47
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object p0

    .line 49
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getYear()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getMonth()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v0

    invoke-interface {p1, p0, p2, p3, v0}, Landroid/app/DatePickerDialog$OnDateSetListener;->onDateSet(Landroid/widget/DatePicker;III)V

    return-void
.end method

.method static synthetic lambda$fixDatePicker$1(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p0, "Picker"

    const-string p1, "Cancel!"

    .line 52
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static showDatePicker(Landroid/content/Context;Ljava/util/Calendar;Landroid/app/DatePickerDialog$OnDateSetListener;)V
    .locals 7

    .line 32
    new-instance v6, Landroid/app/DatePickerDialog;

    invoke-static {}, Lcom/texa/careapp/utils/DatePickerUtils;->isAffectedVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 35
    invoke-static {}, Lcom/texa/careapp/utils/DatePickerUtils;->isAffectedVersion()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 36
    invoke-static {v6, p2}, Lcom/texa/careapp/utils/DatePickerUtils;->fixDatePicker(Landroid/app/DatePickerDialog;Landroid/app/DatePickerDialog$OnDateSetListener;)V

    .line 39
    :cond_1
    invoke-virtual {v6}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method

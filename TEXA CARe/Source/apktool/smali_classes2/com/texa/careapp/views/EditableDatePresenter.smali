.class public Lcom/texa/careapp/views/EditableDatePresenter;
.super Ljava/lang/Object;
.source "EditableDatePresenter.java"


# static fields
.field private static DATE_FORMAT:Ljava/text/DateFormat;


# instance fields
.field private context:Landroid/content/Context;

.field private mCalendar:Ljava/util/Calendar;

.field private mValue:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/texa/careapp/views/EditableDatePresenter;->DATE_FORMAT:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/texa/careapp/databinding/EditabledateLayoutBinding;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/views/EditableDatePresenter;->mCalendar:Ljava/util/Calendar;

    .line 28
    iput-object p1, p0, Lcom/texa/careapp/views/EditableDatePresenter;->context:Landroid/content/Context;

    .line 29
    iget-object p1, p2, Lcom/texa/careapp/databinding/EditabledateLayoutBinding;->editabledateValue:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/texa/careapp/views/EditableDatePresenter;->mValue:Landroid/widget/TextView;

    return-void
.end method

.method private updateView()V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/texa/careapp/views/EditableDatePresenter;->mValue:Landroid/widget/TextView;

    sget-object v1, Lcom/texa/careapp/views/EditableDatePresenter;->DATE_FORMAT:Ljava/text/DateFormat;

    iget-object v2, p0, Lcom/texa/careapp/views/EditableDatePresenter;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/texa/careapp/views/EditableDatePresenter;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDay()I
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/texa/careapp/views/EditableDatePresenter;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/texa/careapp/views/EditableDatePresenter;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/texa/careapp/views/EditableDatePresenter;->mValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getYear()I
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/texa/careapp/views/EditableDatePresenter;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/texa/careapp/views/EditableDatePresenter;->mValue:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/texa/careapp/views/EditableDatePresenter;->mValue:Landroid/widget/TextView;

    .line 78
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/texa/careapp/views/EditableDatePresenter;->mValue:Landroid/widget/TextView;

    .line 79
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/views/EditableDatePresenter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110b11

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 40
    invoke-virtual {p0, p1}, Lcom/texa/careapp/views/EditableDatePresenter;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/views/EditableDatePresenter;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 43
    invoke-direct {p0}, Lcom/texa/careapp/views/EditableDatePresenter;->updateView()V

    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/texa/careapp/views/EditableDatePresenter;->mValue:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextSize(II)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/texa/careapp/views/EditableDatePresenter;->mValue:Landroid/widget/TextView;

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setValues(III)V
    .locals 7

    .line 72
    iget-object v0, p0, Lcom/texa/careapp/views/EditableDatePresenter;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 73
    invoke-direct {p0}, Lcom/texa/careapp/views/EditableDatePresenter;->updateView()V

    return-void
.end method

.class public Lcom/texa/careapp/views/RelativeTimeTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "RelativeTimeTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/views/RelativeTimeTextView$UpdateTimeRunnable;,
        Lcom/texa/careapp/views/RelativeTimeTextView$SavedState;
    }
.end annotation


# instance fields
.field private isUpdateTaskRunning:Z

.field private mHandler:Landroid/os/Handler;

.field private mPrefix:Ljava/lang/String;

.field private mReferenceTime:J

.field private mSuffix:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mUpdateTimeTask:Lcom/texa/careapp/views/RelativeTimeTextView$UpdateTimeRunnable;

.field private noValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->isUpdateTaskRunning:Z

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/views/RelativeTimeTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    iput-object p3, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mHandler:Landroid/os/Handler;

    const/4 p3, 0x0

    .line 36
    iput-boolean p3, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->isUpdateTaskRunning:Z

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/views/RelativeTimeTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$200(Lcom/texa/careapp/views/RelativeTimeTextView;)Landroid/os/Handler;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getDifference()J
    .locals 4

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 171
    iget-wide v2, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mReferenceTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getRelativeTimeDisplayString()Ljava/lang/CharSequence;
    .locals 7

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 176
    invoke-direct {p0}, Lcom/texa/careapp/views/RelativeTimeTextView;->getDifference()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    const-wide/32 v4, 0xea60

    cmp-long v6, v0, v4

    if-gtz v6, :cond_0

    const-string v0, ""

    .line 179
    iput-object v0, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mSuffix:Ljava/lang/String;

    .line 180
    invoke-virtual {p0}, Lcom/texa/careapp/views/RelativeTimeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110ac2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 183
    :cond_0
    iget-wide v0, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mReferenceTime:J

    const-wide/32 v4, 0xea60

    const/high16 v6, 0x40000

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/R$styleable;->RelativeTimeTextView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 52
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mText:Ljava/lang/String;

    const/4 p2, 0x2

    .line 53
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mPrefix:Ljava/lang/String;

    const/4 p2, 0x3

    .line 54
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mSuffix:Ljava/lang/String;

    .line 55
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->noValue:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mPrefix:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, ""

    if-nez v0, :cond_0

    move-object v0, v2

    :cond_0
    :try_start_1
    iput-object v0, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mPrefix:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mSuffix:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    iput-object v2, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mSuffix:Ljava/lang/String;

    if-nez p2, :cond_2

    .line 59
    invoke-virtual {p0}, Lcom/texa/careapp/views/RelativeTimeTextView;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f110a84

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_2
    iput-object p2, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->noValue:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const-wide/16 p1, -0x1

    .line 63
    iput-wide p1, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mReferenceTime:J

    .line 66
    :try_start_2
    iget-object v0, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mText:Ljava/lang/String;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 67
    iget-object v0, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mText:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mReferenceTime:J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 70
    iput-wide p1, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mReferenceTime:J

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "NumberFormatException on Long.valueOf(mText)"

    .line 71
    invoke-static {v0, p2, p1}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    :cond_3
    :goto_1
    iget-wide p1, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mReferenceTime:J

    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/views/RelativeTimeTextView;->setReferenceTime(J)V

    return-void

    :catchall_0
    move-exception p2

    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    throw p2
.end method

.method private startTaskForPeriodicallyUpdatingRelativeTime()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mUpdateTimeTask:Lcom/texa/careapp/views/RelativeTimeTextView$UpdateTimeRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->isUpdateTaskRunning:Z

    return-void
.end method

.method private stopTaskForPeriodicallyUpdatingRelativeTime()V
    .locals 2

    .line 219
    iget-boolean v0, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->isUpdateTaskRunning:Z

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mUpdateTimeTask:Lcom/texa/careapp/views/RelativeTimeTextView$UpdateTimeRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 221
    iput-boolean v0, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->isUpdateTaskRunning:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mSuffix:Ljava/lang/String;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 192
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onAttachedToWindow()V

    .line 193
    invoke-direct {p0}, Lcom/texa/careapp/views/RelativeTimeTextView;->startTaskForPeriodicallyUpdatingRelativeTime()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 199
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onDetachedFromWindow()V

    .line 200
    invoke-direct {p0}, Lcom/texa/careapp/views/RelativeTimeTextView;->stopTaskForPeriodicallyUpdatingRelativeTime()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 235
    instance-of v0, p1, Lcom/texa/careapp/views/RelativeTimeTextView$SavedState;

    if-nez v0, :cond_0

    .line 236
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 240
    :cond_0
    check-cast p1, Lcom/texa/careapp/views/RelativeTimeTextView$SavedState;

    .line 241
    invoke-static {p1}, Lcom/texa/careapp/views/RelativeTimeTextView$SavedState;->access$000(Lcom/texa/careapp/views/RelativeTimeTextView$SavedState;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mReferenceTime:J

    .line 242
    invoke-virtual {p1}, Lcom/texa/careapp/views/RelativeTimeTextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 227
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 228
    new-instance v1, Lcom/texa/careapp/views/RelativeTimeTextView$SavedState;

    invoke-direct {v1, v0}, Lcom/texa/careapp/views/RelativeTimeTextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 229
    iget-wide v2, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mReferenceTime:J

    invoke-static {v1, v2, v3}, Lcom/texa/careapp/views/RelativeTimeTextView$SavedState;->access$002(Lcom/texa/careapp/views/RelativeTimeTextView$SavedState;J)J

    return-object v1
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 205
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onVisibilityChanged(Landroid/view/View;I)V

    const/16 p1, 0x8

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/views/RelativeTimeTextView;->startTaskForPeriodicallyUpdatingRelativeTime()V

    goto :goto_1

    .line 207
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/texa/careapp/views/RelativeTimeTextView;->stopTaskForPeriodicallyUpdatingRelativeTime()V

    :goto_1
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 2

    .line 91
    iput-object p1, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mPrefix:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 92
    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/views/RelativeTimeTextView;->updateTextDisplay(J)V

    return-void
.end method

.method public setReferenceTime(J)V
    .locals 2

    .line 121
    iput-wide p1, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mReferenceTime:J

    .line 127
    invoke-direct {p0}, Lcom/texa/careapp/views/RelativeTimeTextView;->stopTaskForPeriodicallyUpdatingRelativeTime()V

    .line 132
    new-instance p1, Lcom/texa/careapp/views/RelativeTimeTextView$UpdateTimeRunnable;

    iget-wide v0, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mReferenceTime:J

    invoke-direct {p1, p0, v0, v1}, Lcom/texa/careapp/views/RelativeTimeTextView$UpdateTimeRunnable;-><init>(Lcom/texa/careapp/views/RelativeTimeTextView;J)V

    iput-object p1, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mUpdateTimeTask:Lcom/texa/careapp/views/RelativeTimeTextView$UpdateTimeRunnable;

    .line 137
    invoke-direct {p0}, Lcom/texa/careapp/views/RelativeTimeTextView;->startTaskForPeriodicallyUpdatingRelativeTime()V

    const-wide/16 p1, -0x1

    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/views/RelativeTimeTextView;->updateTextDisplay(J)V

    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 2

    .line 109
    iput-object p1, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mSuffix:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 110
    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/views/RelativeTimeTextView;->updateTextDisplay(J)V

    return-void
.end method

.method public updateTextDisplay(J)V
    .locals 6

    .line 150
    iget-wide v0, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mReferenceTime:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "mReferenceTime is locked "

    .line 151
    invoke-static {p2, p1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v3, p1, v0

    if-eqz v3, :cond_1

    .line 156
    iput-wide p1, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mReferenceTime:J

    .line 158
    :cond_1
    iget-wide p1, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mReferenceTime:J

    cmp-long v3, p1, v0

    if-nez v3, :cond_2

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "error -> check mReferenceTime == -1L "

    .line 159
    invoke-static {p2, p1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    iget-object p1, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->noValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/views/RelativeTimeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 164
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mPrefix:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/texa/careapp/views/RelativeTimeTextView;->getRelativeTimeDisplayString()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/texa/careapp/views/RelativeTimeTextView;->mSuffix:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string v0, " setText -> %s"

    .line 165
    invoke-static {v0, p2}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    invoke-virtual {p0, p1}, Lcom/texa/careapp/views/RelativeTimeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

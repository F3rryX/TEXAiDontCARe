.class public Lcom/texa/careapp/app/sos/countdown/CountdownView;
.super Landroid/widget/RelativeLayout;
.source "CountdownView.java"


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mNumberTw:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/sos/countdown/CountdownView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 26
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/sos/countdown/CountdownView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/texa/careapp/app/sos/countdown/CountdownView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 31
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/sos/countdown/CountdownView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/texa/careapp/app/sos/countdown/CountdownView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 36
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/sos/countdown/CountdownView;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/texa/careapp/app/sos/countdown/CountdownView;->mNumberTw:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 92
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 1

    const/16 v0, 0x8

    .line 64
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/sos/countdown/CountdownView;->setVisibility(I)V

    return-void
.end method

.method protected init(Landroid/content/Context;)V
    .locals 6

    const v0, 0x7f0d0050

    .line 40
    invoke-static {p1, v0, p0}, Lcom/texa/careapp/app/sos/countdown/CountdownView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a00e8

    .line 42
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/sos/countdown/CountdownView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/texa/careapp/app/sos/countdown/CountdownView;->mNumberTw:Landroid/widget/TextView;

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 49
    fill-array-data v1, :array_0

    const-string v2, "scaleY"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v1, 0x12c

    .line 50
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 51
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 52
    iget-object v3, p0, Lcom/texa/careapp/app/sos/countdown/CountdownView;->mNumberTw:Landroid/widget/TextView;

    new-array v4, v0, [F

    fill-array-data v4, :array_1

    const-string v5, "scaleX"

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 53
    invoke-virtual {v3, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 54
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 55
    iget-object v1, p0, Lcom/texa/careapp/app/sos/countdown/CountdownView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object p1, v0, v2

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public isHidden()Z
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/countdown/CountdownView;->getVisibility()I

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

    .line 85
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/countdown/CountdownView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/sos/countdown/CountdownView;->setVisibility(I)V

    return-void
.end method

.method public update(I)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/texa/careapp/app/sos/countdown/CountdownView;->mNumberTw:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public update(Ljava/lang/String;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/texa/careapp/app/sos/countdown/CountdownView;->mNumberTw:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateWithAnim(I)V
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/sos/countdown/CountdownView;->update(I)V

    .line 77
    iget-object p1, p0, Lcom/texa/careapp/app/sos/countdown/CountdownView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

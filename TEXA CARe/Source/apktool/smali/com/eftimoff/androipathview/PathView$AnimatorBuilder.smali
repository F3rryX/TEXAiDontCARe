.class public Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;
.super Ljava/lang/Object;
.source "PathView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eftimoff/androipathview/PathView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimatorBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerEnd;,
        Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerStart;,
        Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$PathViewAnimatorListener;
    }
.end annotation


# instance fields
.field private final anim:Landroid/animation/ObjectAnimator;

.field private animationEnd:Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerEnd;

.field private delay:I

.field private duration:I

.field private interpolator:Landroid/view/animation/Interpolator;

.field private listenerStart:Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerStart;

.field private pathViewAnimatorListener:Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$PathViewAnimatorListener;


# direct methods
.method public constructor <init>(Lcom/eftimoff/androipathview/PathView;)V
    .locals 2

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x15e

    .line 396
    iput v0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->duration:I

    const/4 v0, 0x0

    .line 404
    iput v0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->delay:I

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 428
    fill-array-data v0, :array_0

    const-string v1, "percentage"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->anim:Landroid/animation/ObjectAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$800(Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;)Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerStart;
    .locals 0

    .line 392
    iget-object p0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->listenerStart:Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerStart;

    return-object p0
.end method

.method static synthetic access$900(Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;)Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerEnd;
    .locals 0

    .line 392
    iget-object p0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->animationEnd:Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerEnd;

    return-object p0
.end method


# virtual methods
.method public delay(I)Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;
    .locals 0

    .line 460
    iput p1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->delay:I

    return-object p0
.end method

.method public duration(I)Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;
    .locals 0

    .line 438
    iput p1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->duration:I

    return-object p0
.end method

.method public interpolator(Landroid/view/animation/Interpolator;)Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->interpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public listenerEnd(Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerEnd;)Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;
    .locals 1

    .line 486
    iput-object p1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->animationEnd:Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerEnd;

    .line 487
    iget-object p1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->pathViewAnimatorListener:Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$PathViewAnimatorListener;

    if-nez p1, :cond_0

    .line 488
    new-instance p1, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$PathViewAnimatorListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$PathViewAnimatorListener;-><init>(Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;Lcom/eftimoff/androipathview/PathView$1;)V

    iput-object p1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->pathViewAnimatorListener:Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$PathViewAnimatorListener;

    .line 489
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->anim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-object p0
.end method

.method public listenerStart(Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerStart;)Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;
    .locals 1

    .line 471
    iput-object p1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->listenerStart:Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerStart;

    .line 472
    iget-object p1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->pathViewAnimatorListener:Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$PathViewAnimatorListener;

    if-nez p1, :cond_0

    .line 473
    new-instance p1, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$PathViewAnimatorListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$PathViewAnimatorListener;-><init>(Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;Lcom/eftimoff/androipathview/PathView$1;)V

    iput-object p1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->pathViewAnimatorListener:Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$PathViewAnimatorListener;

    .line 474
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->anim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-object p0
.end method

.method public start()V
    .locals 3

    .line 498
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->anim:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->duration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 499
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->anim:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 500
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->anim:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->delay:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 501
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->anim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

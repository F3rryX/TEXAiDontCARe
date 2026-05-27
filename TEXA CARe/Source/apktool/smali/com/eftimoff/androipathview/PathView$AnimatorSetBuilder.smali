.class public Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;
.super Ljava/lang/Object;
.source "PathView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eftimoff/androipathview/PathView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimatorSetBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder$PathViewAnimatorListener;
    }
.end annotation


# instance fields
.field private animationEnd:Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerEnd;

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private final animators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private delay:I

.field private duration:I

.field private interpolator:Landroid/view/animation/Interpolator;

.field private listenerStart:Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerStart;

.field private pathViewAnimatorListener:Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder$PathViewAnimatorListener;

.field private paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eftimoff/androipathview/SvgUtils$SvgPath;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/eftimoff/androipathview/PathView;)V
    .locals 6

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 563
    iput v0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->duration:I

    const/4 v0, 0x0

    .line 571
    iput v0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->delay:I

    .line 575
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->animators:Ljava/util/List;

    .line 591
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->animatorSet:Landroid/animation/AnimatorSet;

    .line 603
    invoke-static {p1}, Lcom/eftimoff/androipathview/PathView;->access$500(Lcom/eftimoff/androipathview/PathView;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->paths:Ljava/util/List;

    .line 604
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;

    .line 605
    invoke-virtual {v2, p1}, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->setAnimationStepListener(Lcom/eftimoff/androipathview/SvgUtils$AnimationStepListener;)V

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v0

    const/4 v4, 0x1

    .line 606
    invoke-virtual {v2}, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->getLength()F

    move-result v5

    aput v5, v3, v4

    const-string v4, "length"

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 607
    iget-object v3, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->animators:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 609
    :cond_0
    iget-object p1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->animatorSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->animators:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;)Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerStart;
    .locals 0

    .line 559
    iget-object p0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->listenerStart:Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerStart;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;)Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerEnd;
    .locals 0

    .line 559
    iget-object p0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->animationEnd:Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerEnd;

    return-object p0
.end method

.method private resetAllPaths()V
    .locals 3

    .line 692
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->paths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;

    const/4 v2, 0x0

    .line 693
    invoke-virtual {v1, v2}, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->setLength(F)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public delay(I)Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;
    .locals 0

    .line 642
    iput p1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->delay:I

    return-object p0
.end method

.method public duration(I)Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->paths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr p1, v0

    iput p1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->duration:I

    return-object p0
.end method

.method public interpolator(Landroid/view/animation/Interpolator;)Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;
    .locals 0

    .line 631
    iput-object p1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->interpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public listenerEnd(Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerEnd;)Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;
    .locals 1

    .line 668
    iput-object p1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->animationEnd:Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerEnd;

    .line 669
    iget-object p1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->pathViewAnimatorListener:Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder$PathViewAnimatorListener;

    if-nez p1, :cond_0

    .line 670
    new-instance p1, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder$PathViewAnimatorListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder$PathViewAnimatorListener;-><init>(Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;Lcom/eftimoff/androipathview/PathView$1;)V

    iput-object p1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->pathViewAnimatorListener:Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder$PathViewAnimatorListener;

    .line 671
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-object p0
.end method

.method public listenerStart(Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerStart;)Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;
    .locals 1

    .line 653
    iput-object p1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->listenerStart:Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerStart;

    .line 654
    iget-object p1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->pathViewAnimatorListener:Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder$PathViewAnimatorListener;

    if-nez p1, :cond_0

    .line 655
    new-instance p1, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder$PathViewAnimatorListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder$PathViewAnimatorListener;-><init>(Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;Lcom/eftimoff/androipathview/PathView$1;)V

    iput-object p1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->pathViewAnimatorListener:Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder$PathViewAnimatorListener;

    .line 656
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-object p0
.end method

.method public start()V
    .locals 3

    .line 680
    invoke-direct {p0}, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->resetAllPaths()V

    .line 681
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 682
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->animatorSet:Landroid/animation/AnimatorSet;

    iget v1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->duration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 683
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->animatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 684
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->animatorSet:Landroid/animation/AnimatorSet;

    iget v1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->delay:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 685
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

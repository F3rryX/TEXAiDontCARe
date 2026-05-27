.class Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$PathViewAnimatorListener;
.super Ljava/lang/Object;
.source "PathView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PathViewAnimatorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;


# direct methods
.method private constructor <init>(Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$PathViewAnimatorListener;->this$0:Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;Lcom/eftimoff/androipathview/PathView$1;)V
    .locals 0

    .line 507
    invoke-direct {p0, p1}, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$PathViewAnimatorListener;-><init>(Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 516
    iget-object p1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$PathViewAnimatorListener;->this$0:Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;

    invoke-static {p1}, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->access$900(Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;)Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerEnd;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$PathViewAnimatorListener;->this$0:Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;

    invoke-static {p1}, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->access$900(Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;)Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerEnd;

    move-result-object p1

    invoke-interface {p1}, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerEnd;->onAnimationEnd()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 511
    iget-object p1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$PathViewAnimatorListener;->this$0:Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;

    invoke-static {p1}, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->access$800(Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;)Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerStart;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$PathViewAnimatorListener;->this$0:Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;

    invoke-static {p1}, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;->access$800(Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;)Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerStart;

    move-result-object p1

    invoke-interface {p1}, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerStart;->onAnimationStart()V

    :cond_0
    return-void
.end method

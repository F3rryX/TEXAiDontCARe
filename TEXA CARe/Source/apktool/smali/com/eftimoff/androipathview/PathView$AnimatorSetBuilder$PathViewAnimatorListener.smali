.class Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder$PathViewAnimatorListener;
.super Ljava/lang/Object;
.source "PathView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PathViewAnimatorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;


# direct methods
.method private constructor <init>(Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;)V
    .locals 0

    .line 700
    iput-object p1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder$PathViewAnimatorListener;->this$0:Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;Lcom/eftimoff/androipathview/PathView$1;)V
    .locals 0

    .line 700
    invoke-direct {p0, p1}, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder$PathViewAnimatorListener;-><init>(Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 709
    iget-object p1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder$PathViewAnimatorListener;->this$0:Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;

    invoke-static {p1}, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->access$1200(Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;)Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerEnd;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder$PathViewAnimatorListener;->this$0:Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;

    invoke-static {p1}, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->access$1200(Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;)Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerEnd;

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

    .line 704
    iget-object p1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder$PathViewAnimatorListener;->this$0:Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;

    invoke-static {p1}, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->access$1100(Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;)Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerStart;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder$PathViewAnimatorListener;->this$0:Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;

    invoke-static {p1}, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;->access$1100(Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;)Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerStart;

    move-result-object p1

    invoke-interface {p1}, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder$ListenerStart;->onAnimationStart()V

    :cond_0
    return-void
.end method

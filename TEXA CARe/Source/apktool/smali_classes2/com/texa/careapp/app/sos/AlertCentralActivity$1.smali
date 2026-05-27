.class Lcom/texa/careapp/app/sos/AlertCentralActivity$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AlertCentralActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/sos/AlertCentralActivity;->notifyContactInProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/sos/AlertCentralActivity;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/sos/AlertCentralActivity;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity$1;->this$0:Lcom/texa/careapp/app/sos/AlertCentralActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 308
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 309
    iget-object p1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity$1;->this$0:Lcom/texa/careapp/app/sos/AlertCentralActivity;

    invoke-static {p1}, Lcom/texa/careapp/app/sos/AlertCentralActivity;->access$000(Lcom/texa/careapp/app/sos/AlertCentralActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 310
    iget-object p1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity$1;->this$0:Lcom/texa/careapp/app/sos/AlertCentralActivity;

    invoke-static {p1}, Lcom/texa/careapp/app/sos/AlertCentralActivity;->access$000(Lcom/texa/careapp/app/sos/AlertCentralActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 311
    iget-object p1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity$1;->this$0:Lcom/texa/careapp/app/sos/AlertCentralActivity;

    invoke-static {p1}, Lcom/texa/careapp/app/sos/AlertCentralActivity;->access$100(Lcom/texa/careapp/app/sos/AlertCentralActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 312
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    .line 313
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/sos/AlertCentralActivity$1$1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/sos/AlertCentralActivity$1$1;-><init>(Lcom/texa/careapp/app/sos/AlertCentralActivity$1;)V

    .line 314
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

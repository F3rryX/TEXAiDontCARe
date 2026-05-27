.class Lcom/texa/careapp/app/sos/AutomaticSosPresenter$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AutomaticSosPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/sos/AutomaticSosPresenter$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/texa/careapp/app/sos/AutomaticSosPresenter$1;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/sos/AutomaticSosPresenter$1;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter$1$1;->this$1:Lcom/texa/careapp/app/sos/AutomaticSosPresenter$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 301
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 302
    iget-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter$1$1;->this$1:Lcom/texa/careapp/app/sos/AutomaticSosPresenter$1;

    iget-object p1, p1, Lcom/texa/careapp/app/sos/AutomaticSosPresenter$1;->this$0:Lcom/texa/careapp/app/sos/AutomaticSosPresenter;

    invoke-static {p1}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->access$100(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    iget-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter$1$1;->this$1:Lcom/texa/careapp/app/sos/AutomaticSosPresenter$1;

    iget-object p1, p1, Lcom/texa/careapp/app/sos/AutomaticSosPresenter$1;->this$0:Lcom/texa/careapp/app/sos/AutomaticSosPresenter;

    invoke-static {p1}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->access$200(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;)Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f010020

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 305
    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter$1$1;->this$1:Lcom/texa/careapp/app/sos/AutomaticSosPresenter$1;

    iget-object v0, v0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter$1;->this$0:Lcom/texa/careapp/app/sos/AutomaticSosPresenter;

    invoke-static {v0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->access$100(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

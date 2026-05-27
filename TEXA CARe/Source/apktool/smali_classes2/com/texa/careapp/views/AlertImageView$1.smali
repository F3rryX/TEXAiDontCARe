.class Lcom/texa/careapp/views/AlertImageView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AlertImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/views/AlertImageView;->slideInFromRight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/views/AlertImageView;

.field final synthetic val$widthPixels:I


# direct methods
.method constructor <init>(Lcom/texa/careapp/views/AlertImageView;I)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/texa/careapp/views/AlertImageView$1;->this$0:Lcom/texa/careapp/views/AlertImageView;

    iput p2, p0, Lcom/texa/careapp/views/AlertImageView$1;->val$widthPixels:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 75
    iget-object p1, p0, Lcom/texa/careapp/views/AlertImageView$1;->this$0:Lcom/texa/careapp/views/AlertImageView;

    iget v0, p0, Lcom/texa/careapp/views/AlertImageView$1;->val$widthPixels:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/texa/careapp/views/AlertImageView;->setX(F)V

    .line 76
    iget-object p1, p0, Lcom/texa/careapp/views/AlertImageView$1;->this$0:Lcom/texa/careapp/views/AlertImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/texa/careapp/views/AlertImageView;->setVisibility(I)V

    return-void
.end method

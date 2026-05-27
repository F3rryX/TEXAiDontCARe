.class public final synthetic Lcom/texa/careapp/views/DottedIndicator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/views/DottedIndicator;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/views/DottedIndicator;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/views/DottedIndicator$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/views/DottedIndicator;

    iput p2, p0, Lcom/texa/careapp/views/DottedIndicator$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/views/DottedIndicator$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/views/DottedIndicator;

    iget v1, p0, Lcom/texa/careapp/views/DottedIndicator$$ExternalSyntheticLambda1;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/texa/careapp/views/DottedIndicator;->lambda$onCreateAnimators$1$com-texa-careapp-views-DottedIndicator(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

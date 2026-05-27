.class public final synthetic Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:[F

.field public final synthetic f$1:[F

.field public final synthetic f$2:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>([F[FLandroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$$ExternalSyntheticLambda0;->f$0:[F

    iput-object p2, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$$ExternalSyntheticLambda0;->f$1:[F

    iput-object p3, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$$ExternalSyntheticLambda0;->f$2:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$$ExternalSyntheticLambda0;->f$0:[F

    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$$ExternalSyntheticLambda0;->f$1:[F

    iget-object v2, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$$ExternalSyntheticLambda0;->f$2:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, p1}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->lambda$setAnimator$8([F[FLandroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

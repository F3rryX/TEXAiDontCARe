.class Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$2;
.super Ljava/lang/Object;
.source "DiagnosisScreen.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->createStrokeAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$2;->this$0:Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 599
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$2;->this$0:Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->access$300(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;I)V

    .line 600
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$2;->this$0:Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->access$400(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 593
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$2;->this$0:Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->access$300(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;I)V

    .line 594
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$2;->this$0:Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->access$400(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;I)V

    return-void
.end method

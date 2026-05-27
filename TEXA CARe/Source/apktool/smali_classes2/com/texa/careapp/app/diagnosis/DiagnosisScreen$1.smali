.class Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$1;
.super Ljava/lang/Object;
.source "DiagnosisScreen.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->bindDimensionsView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;Landroid/view/View;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$1;->this$0:Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;

    iput-object p2, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 311
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 312
    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$1;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 313
    iget-object v2, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$1;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 314
    new-instance v2, Lcom/texa/careapp/utils/databind/DataBindDiagnosis;

    iget-object v3, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$1;->this$0:Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;

    invoke-static {v3}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->access$000(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lcom/texa/careapp/utils/databind/DataBindDiagnosis;-><init>(IILandroid/content/Context;)V

    .line 315
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$1;->this$0:Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;

    invoke-static {v0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->access$100(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;)Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;->setDiagnosis(Lcom/texa/careapp/utils/databind/DataBindDiagnosis;)V

    .line 317
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen$1;->this$0:Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;

    invoke-static {v0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->access$200(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;)V

    return-void
.end method

.class Lcom/texa/careapp/views/HeaderLayoutManagerFixed$2;
.super Ljava/lang/Object;
.source "HeaderLayoutManagerFixed.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->setHeaderIncrementFixer(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/views/HeaderLayoutManagerFixed;

.field final synthetic val$headerIncrementFixer:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/texa/careapp/views/HeaderLayoutManagerFixed;Landroid/view/View;)V
    .locals 0

    .line 1460
    iput-object p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$2;->this$0:Lcom/texa/careapp/views/HeaderLayoutManagerFixed;

    iput-object p2, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$2;->val$headerIncrementFixer:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1463
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1464
    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$2;->val$headerIncrementFixer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 1466
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$2;->val$headerIncrementFixer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1468
    :goto_0
    iget-object v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$2;->this$0:Lcom/texa/careapp/views/HeaderLayoutManagerFixed;

    iget-object v1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$2;->val$headerIncrementFixer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed;->access$102(Lcom/texa/careapp/views/HeaderLayoutManagerFixed;I)I

    return-void
.end method

.class Lcom/robotium/solo/Scroller$1;
.super Ljava/lang/Object;
.source "Scroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/robotium/solo/Scroller;->scrollView(Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/robotium/solo/Scroller;

.field final synthetic val$scrollAmount:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/robotium/solo/Scroller;Landroid/view/View;I)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/robotium/solo/Scroller$1;->this$0:Lcom/robotium/solo/Scroller;

    iput-object p2, p0, Lcom/robotium/solo/Scroller$1;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/robotium/solo/Scroller$1;->val$scrollAmount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/robotium/solo/Scroller$1;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/robotium/solo/Scroller$1;->val$scrollAmount:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->scrollBy(II)V

    return-void
.end method

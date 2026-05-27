.class Lcom/robotium/solo/Scroller$2;
.super Ljava/lang/Object;
.source "Scroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/robotium/solo/Scroller;->scrollWebView(Landroid/webkit/WebView;IZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/robotium/solo/Scroller;

.field final synthetic val$allTheWay:Z

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/robotium/solo/Scroller;Landroid/webkit/WebView;Z)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/robotium/solo/Scroller$2;->this$0:Lcom/robotium/solo/Scroller;

    iput-object p2, p0, Lcom/robotium/solo/Scroller$2;->val$webView:Landroid/webkit/WebView;

    iput-boolean p3, p0, Lcom/robotium/solo/Scroller$2;->val$allTheWay:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/robotium/solo/Scroller$2;->this$0:Lcom/robotium/solo/Scroller;

    iget-object v1, p0, Lcom/robotium/solo/Scroller$2;->val$webView:Landroid/webkit/WebView;

    iget-boolean v2, p0, Lcom/robotium/solo/Scroller$2;->val$allTheWay:Z

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->pageDown(Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/robotium/solo/Scroller;->access$002(Lcom/robotium/solo/Scroller;Z)Z

    return-void
.end method

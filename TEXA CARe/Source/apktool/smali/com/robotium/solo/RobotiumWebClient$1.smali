.class Lcom/robotium/solo/RobotiumWebClient$1;
.super Ljava/lang/Object;
.source "RobotiumWebClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/robotium/solo/RobotiumWebClient;->enableJavascriptAndSetRobotiumWebClient(Ljava/util/List;Landroid/webkit/WebChromeClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/robotium/solo/RobotiumWebClient;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/robotium/solo/RobotiumWebClient;Landroid/webkit/WebView;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/robotium/solo/RobotiumWebClient$1;->this$0:Lcom/robotium/solo/RobotiumWebClient;

    iput-object p2, p0, Lcom/robotium/solo/RobotiumWebClient$1;->val$webView:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/robotium/solo/RobotiumWebClient$1;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 57
    iget-object v0, p0, Lcom/robotium/solo/RobotiumWebClient$1;->val$webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/robotium/solo/RobotiumWebClient$1;->this$0:Lcom/robotium/solo/RobotiumWebClient;

    invoke-static {v1}, Lcom/robotium/solo/RobotiumWebClient;->access$000(Lcom/robotium/solo/RobotiumWebClient;)Landroid/webkit/WebChromeClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

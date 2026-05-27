.class Lcom/robotium/solo/WebUtils$1;
.super Ljava/lang/Object;
.source "WebUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/robotium/solo/WebUtils;->executeJavaScriptFunction(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/robotium/solo/WebUtils;

.field final synthetic val$function:Ljava/lang/String;

.field final synthetic val$javaScript:Ljava/lang/String;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/robotium/solo/WebUtils;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/robotium/solo/WebUtils$1;->this$0:Lcom/robotium/solo/WebUtils;

    iput-object p2, p0, Lcom/robotium/solo/WebUtils$1;->val$webView:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/robotium/solo/WebUtils$1;->val$javaScript:Ljava/lang/String;

    iput-object p4, p0, Lcom/robotium/solo/WebUtils$1;->val$function:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/robotium/solo/WebUtils$1;->val$webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/robotium/solo/WebUtils$1;->val$javaScript:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/robotium/solo/WebUtils$1;->val$function:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

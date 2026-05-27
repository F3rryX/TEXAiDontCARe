.class Lcom/robotium/solo/RobotiumWebClient;
.super Landroid/webkit/WebChromeClient;
.source "RobotiumWebClient.java"


# instance fields
.field private inst:Landroid/app/Instrumentation;

.field private originalWebChromeClient:Landroid/webkit/WebChromeClient;

.field private robotiumWebClient:Landroid/webkit/WebChromeClient;

.field webElementCreator:Lcom/robotium/solo/WebElementCreator;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;Lcom/robotium/solo/WebElementCreator;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 39
    iput-object p1, p0, Lcom/robotium/solo/RobotiumWebClient;->inst:Landroid/app/Instrumentation;

    .line 40
    iput-object p2, p0, Lcom/robotium/solo/RobotiumWebClient;->webElementCreator:Lcom/robotium/solo/WebElementCreator;

    .line 41
    iput-object p0, p0, Lcom/robotium/solo/RobotiumWebClient;->robotiumWebClient:Landroid/webkit/WebChromeClient;

    return-void
.end method

.method static synthetic access$000(Lcom/robotium/solo/RobotiumWebClient;)Landroid/webkit/WebChromeClient;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/robotium/solo/RobotiumWebClient;->robotiumWebClient:Landroid/webkit/WebChromeClient;

    return-object p0
.end method


# virtual methods
.method public enableJavascriptAndSetRobotiumWebClient(Ljava/util/List;Landroid/webkit/WebChromeClient;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/webkit/WebView;",
            ">;",
            "Landroid/webkit/WebChromeClient;",
            ")V"
        }
    .end annotation

    .line 51
    iput-object p2, p0, Lcom/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 52
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/webkit/WebView;

    if-eqz p2, :cond_0

    .line 54
    iget-object v0, p0, Lcom/robotium/solo/RobotiumWebClient;->inst:Landroid/app/Instrumentation;

    new-instance v1, Lcom/robotium/solo/RobotiumWebClient$1;

    invoke-direct {v1, p0, p2}, Lcom/robotium/solo/RobotiumWebClient$1;-><init>(Lcom/robotium/solo/RobotiumWebClient;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    :cond_0
    return-void
.end method

.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 11

    move-object v0, p0

    .line 147
    iget-object v1, v0, Lcom/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v1, :cond_0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    .line 148
    invoke-virtual/range {v1 .. v10}, Landroid/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    :cond_0
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    :cond_0
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    :cond_0
    return-void
.end method

.method public onHideCustomView()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    :cond_0
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 7

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    const-string v1, ";,"

    .line 71
    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "robotium-finished"

    if-nez v1, :cond_0

    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    :cond_0
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 74
    iget-object p1, p0, Lcom/robotium/solo/RobotiumWebClient;->webElementCreator:Lcom/robotium/solo/WebElementCreator;

    invoke-virtual {p1, v0}, Lcom/robotium/solo/WebElementCreator;->setFinished(Z)V

    goto :goto_0

    .line 77
    :cond_1
    iget-object p2, p0, Lcom/robotium/solo/RobotiumWebClient;->webElementCreator:Lcom/robotium/solo/WebElementCreator;

    invoke-virtual {p2, p3, p1}, Lcom/robotium/solo/WebElementCreator;->createWebElementAndAddInList(Ljava/lang/String;Landroid/webkit/WebView;)V

    .line 79
    :goto_0
    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->confirm()V

    return v0

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v1, :cond_3

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 84
    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    return p1

    :cond_3
    return v0
.end method

.method public onJsTimeout()Z
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    :cond_0
    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 6

    .line 214
    iget-object v0, p0, Lcom/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 215
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebChromeClient;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    :cond_0
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    :cond_0
    return-void
.end method

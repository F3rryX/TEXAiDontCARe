.class Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity$1;
.super Landroid/webkit/WebViewClient;
.source "WebViewSectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;Landroid/content/Intent;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity$1;->this$0:Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;

    iput-object p2, p0, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x0

    new-array p2, p1, [Ljava/lang/Object;

    const-string v0, " Finish to load URL!"

    .line 87
    invoke-static {v0, p2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-object p2, p0, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity$1;->this$0:Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;

    invoke-static {p2}, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;->access$000(Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;)Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 93
    iget-object p1, p0, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo p2, "web_view_code"

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    const-string p1, "file:///android_asset/third_part_license/ThirdPartLibraryAndroid.html"

    new-array p2, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const-string p3, "LINK LOAD ON ERROR %s"

    .line 95
    invoke-static {p3, p2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iget-object p2, p0, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity$1;->this$0:Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;

    invoke-static {p2}, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;->access$000(Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;)Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

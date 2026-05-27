.class Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity$2;
.super Landroid/webkit/WebViewClient;
.source "WebViewSectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;->handleCustomUrlFromExtras(Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;


# direct methods
.method constructor <init>(Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity$2;->this$0:Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 193
    iget-object p1, p0, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity$2;->this$0:Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;

    invoke-static {p1}, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;->access$000(Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;)Landroid/webkit/WebView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

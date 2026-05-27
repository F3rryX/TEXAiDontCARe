.class Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen$1;
.super Landroid/webkit/WebViewClient;
.source "AcceptationTermsScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->setWebViewClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen$1;->this$0:Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, " Finish to load URL!"

    .line 181
    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen$1;->this$0:Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->access$000(Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 187
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 188
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen$1;->this$0:Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->access$000(Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;)V

    return-void
.end method

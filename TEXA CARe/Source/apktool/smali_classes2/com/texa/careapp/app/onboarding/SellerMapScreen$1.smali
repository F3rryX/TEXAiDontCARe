.class Lcom/texa/careapp/app/onboarding/SellerMapScreen$1;
.super Landroid/webkit/WebViewClient;
.source "SellerMapScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/onboarding/SellerMapScreen;->afterViewInjection(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/onboarding/SellerMapScreen;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/onboarding/SellerMapScreen;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/SellerMapScreen$1;->this$0:Lcom/texa/careapp/app/onboarding/SellerMapScreen;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 3

    .line 71
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    .line 72
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mailto:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/high16 v1, 0x10000000

    if-eqz v0, :cond_0

    .line 73
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SENDTO"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 74
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 75
    iget-object p2, p0, Lcom/texa/careapp/app/onboarding/SellerMapScreen$1;->this$0:Lcom/texa/careapp/app/onboarding/SellerMapScreen;

    invoke-static {p2}, Lcom/texa/careapp/app/onboarding/SellerMapScreen;->access$300(Lcom/texa/careapp/app/onboarding/SellerMapScreen;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "tel:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    new-instance p1, Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v0, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 78
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    iget-object p2, p0, Lcom/texa/careapp/app/onboarding/SellerMapScreen$1;->this$0:Lcom/texa/careapp/app/onboarding/SellerMapScreen;

    invoke-static {p2}, Lcom/texa/careapp/app/onboarding/SellerMapScreen;->access$400(Lcom/texa/careapp/app/onboarding/SellerMapScreen;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "mailto:"

    .line 56
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/SellerMapScreen$1;->this$0:Lcom/texa/careapp/app/onboarding/SellerMapScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/onboarding/SellerMapScreen;->access$100(Lcom/texa/careapp/app/onboarding/SellerMapScreen;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/SellerMapScreen$1;->this$0:Lcom/texa/careapp/app/onboarding/SellerMapScreen;

    invoke-static {p2}, Landroid/net/MailTo;->parse(Ljava/lang/String;)Landroid/net/MailTo;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/texa/careapp/app/onboarding/SellerMapScreen;->access$000(Lcom/texa/careapp/app/onboarding/SellerMapScreen;Landroid/net/MailTo;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v0, "tel:"

    .line 58
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    new-instance p1, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.action.DIAL"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p2, 0x10000000

    .line 60
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 61
    iget-object p2, p0, Lcom/texa/careapp/app/onboarding/SellerMapScreen$1;->this$0:Lcom/texa/careapp/app/onboarding/SellerMapScreen;

    invoke-static {p2}, Lcom/texa/careapp/app/onboarding/SellerMapScreen;->access$200(Lcom/texa/careapp/app/onboarding/SellerMapScreen;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

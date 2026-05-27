.class public Lcom/texa/careapp/app/onboarding/SellerMapScreen;
.super Lcom/texa/care/navigation/Screen;
.source "SellerMapScreen.java"


# static fields
.field private static final url:Ljava/lang/String; = "https://texa.care/#maps"


# direct methods
.method constructor <init>(Lcom/texa/careapp/CareApplication;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 33
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/onboarding/SellerMapScreen;)V

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/onboarding/SellerMapScreen;Landroid/net/MailTo;)Landroid/content/Intent;
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/SellerMapScreen;->mailIntent(Landroid/net/MailTo;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/careapp/app/onboarding/SellerMapScreen;)Landroid/content/Context;
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/SellerMapScreen;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/texa/careapp/app/onboarding/SellerMapScreen;)Landroid/content/Context;
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/SellerMapScreen;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/texa/careapp/app/onboarding/SellerMapScreen;)Landroid/content/Context;
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/SellerMapScreen;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/texa/careapp/app/onboarding/SellerMapScreen;)Landroid/content/Context;
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/SellerMapScreen;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private mailIntent(Landroid/net/MailTo;)Landroid/content/Intent;
    .locals 4

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p1}, Landroid/net/MailTo;->getBody()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p1}, Landroid/net/MailTo;->getSubject()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p1}, Landroid/net/MailTo;->getCc()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.extra.CC"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "message/rfc822"

    .line 98
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 99
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 3

    .line 39
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenSellerMapBinding;

    .line 40
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenSellerMapBinding;->screenSellerMapWebView:Landroid/webkit/WebView;

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 43
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 48
    :goto_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 50
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 51
    new-instance v0, Lcom/texa/careapp/app/onboarding/SellerMapScreen$1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/onboarding/SellerMapScreen$1;-><init>(Lcom/texa/careapp/app/onboarding/SellerMapScreen;)V

    .line 88
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const-string v0, "https://texa.care/#maps"

    .line 89
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "SellerMapScreen"

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00d9

    return v0
.end method

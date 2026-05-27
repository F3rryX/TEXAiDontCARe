.class public Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;
.super Lcom/texa/careapp/base/BaseActivity;
.source "WebViewSectionActivity.java"


# static fields
.field public static final EXTRA_URL:Ljava/lang/String; = "extra-url"

.field public static final WEB_VIEW_TYPE:Ljava/lang/String; = "web_view_code"


# instance fields
.field private mProgressLoadingBar:Landroid/widget/ProgressBar;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/texa/careapp/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static buildIntentFor(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "extra-url"

    .line 49
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 51
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private getHTMLData(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "Error closing asset "

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 152
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    invoke-virtual {p0}, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 154
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 158
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    const/16 v6, 0xa

    .line 162
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 171
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 173
    invoke-static {v1, v0, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-object p1

    :catch_1
    move-exception p1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    move-object v4, v1

    :goto_3
    :try_start_3
    const-string v3, "Error opening asset "

    new-array v5, v2, [Ljava/lang/Object;

    .line 167
    invoke-static {p1, v3, v5}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_2

    .line 171
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    new-array v2, v2, [Ljava/lang/Object;

    .line 173
    invoke-static {p1, v0, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_4
    return-object v1

    :catchall_1
    move-exception p1

    move-object v1, v4

    :goto_5
    if-eqz v1, :cond_3

    .line 171
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 173
    invoke-static {v1, v0, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    :cond_3
    :goto_6
    throw p1
.end method

.method private getLangUrlParam()Ljava/lang/String;
    .locals 3

    .line 201
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, "-"

    .line 202
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?lang="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleCustomUrlFromExtras(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "extra-url"

    .line 183
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 187
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 189
    iget-object v0, p0, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 191
    iget-object p1, p0, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v0, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity$2;

    invoke-direct {v0, p0}, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity$2;-><init>(Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0034

    .line 59
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ActivitySectionsBinding;

    .line 60
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivitySectionsBinding;->progressBarWebview:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;->mProgressLoadingBar:Landroid/widget/ProgressBar;

    .line 61
    iget-object p1, p1, Lcom/texa/careapp/databinding/ActivitySectionsBinding;->webView:Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;->mWebView:Landroid/webkit/WebView;

    .line 63
    invoke-virtual {p0}, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 65
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 66
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 14

    .line 73
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onResume()V

    .line 76
    iget-object v0, p0, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 77
    iget-object v0, p0, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 78
    iget-object v0, p0, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;->mWebView:Landroid/webkit/WebView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 80
    invoke-virtual {p0}, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 82
    iget-object v2, p0, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity$1;

    invoke-direct {v3, p0, v0}, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity$1;-><init>(Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 102
    invoke-direct {p0, v0}, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;->handleCustomUrlFromExtras(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_"

    const-string v4, "-"

    .line 107
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "web_view_code"

    .line 109
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, " Start to load URL"

    .line 110
    invoke-static {v5, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v4, "2"

    const-string v5, "lang"

    const-string v6, "LINK %s"

    const/4 v7, 0x3

    const v8, 0x7f110d1d

    const-string/jumbo v9, "type"

    const-string v10, "https://care.texa.com"

    const-string/jumbo v11, "version"

    const/4 v12, 0x2

    if-eq v0, v1, :cond_5

    if-eq v0, v12, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    goto/16 :goto_1

    .line 139
    :cond_1
    new-instance v0, Landroidx/core/util/Pair;

    const-string v2, "android"

    invoke-direct {v0, v9, v2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    new-instance v2, Landroidx/core/util/Pair;

    const-string v4, "3"

    invoke-direct {v2, v11, v4}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p0}, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f110d1e

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v12, [Landroidx/core/util/Pair;

    aput-object v0, v5, v3

    aput-object v2, v5, v1

    .line 141
    invoke-static {v4, v5}, Lcom/texa/careapp/utils/Utils;->getUrlWithParams(Ljava/lang/String;[Landroidx/core/util/Pair;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    .line 143
    invoke-static {v6, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    iget-object v1, p0, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 123
    :cond_2
    new-instance v0, Landroidx/core/util/Pair;

    invoke-direct {v0, v5, v2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    new-instance v2, Landroidx/core/util/Pair;

    const-string v5, "privacy"

    invoke-direct {v2, v9, v5}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    new-instance v9, Landroidx/core/util/Pair;

    invoke-direct {v9, v11, v4}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v13, v7, [Landroidx/core/util/Pair;

    aput-object v0, v13, v3

    aput-object v2, v13, v1

    aput-object v9, v13, v12

    invoke-static {v4, v13}, Lcom/texa/careapp/utils/Utils;->getUrlWithParams(Ljava/lang/String;[Landroidx/core/util/Pair;)Ljava/lang/String;

    move-result-object v4

    .line 128
    new-instance v9, Lcom/activeandroid/query/Select;

    invoke-direct {v9}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v13, Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v9, v13}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v9

    invoke-virtual {v9}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v9

    check-cast v9, Lcom/texa/careapp/model/UserModel;

    if-eqz v9, :cond_4

    .line 130
    invoke-virtual {v9, v5}, Lcom/texa/careapp/model/UserModel;->getTermAcepted(Ljava/lang/String;)Lcom/texa/careapp/model/TermsModel;

    move-result-object v4

    .line 131
    new-instance v5, Landroidx/core/util/Pair;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_3

    iget v4, v4, Lcom/texa/careapp/model/TermsModel;->version:I

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v11, v4}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v7, v7, [Landroidx/core/util/Pair;

    aput-object v0, v7, v3

    aput-object v2, v7, v1

    aput-object v5, v7, v12

    invoke-static {v4, v7}, Lcom/texa/careapp/utils/Utils;->getUrlWithParams(Ljava/lang/String;[Landroidx/core/util/Pair;)Ljava/lang/String;

    move-result-object v4

    :cond_4
    new-array v0, v1, [Ljava/lang/Object;

    aput-object v4, v0, v3

    .line 135
    invoke-static {v6, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 114
    :cond_5
    new-instance v0, Landroidx/core/util/Pair;

    invoke-direct {v0, v5, v2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    new-instance v2, Landroidx/core/util/Pair;

    const-string v5, "terms"

    invoke-direct {v2, v9, v5}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    new-instance v5, Landroidx/core/util/Pair;

    invoke-direct {v5, v11, v4}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p0}, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v7, v7, [Landroidx/core/util/Pair;

    aput-object v0, v7, v3

    aput-object v2, v7, v1

    aput-object v5, v7, v12

    .line 117
    invoke-static {v4, v7}, Lcom/texa/careapp/utils/Utils;->getUrlWithParams(Ljava/lang/String;[Landroidx/core/util/Pair;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    .line 119
    invoke-static {v6, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iget-object v1, p0, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected requiresAuthentication()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

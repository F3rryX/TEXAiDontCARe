.class Lcom/robotium/solo/WebUtils;
.super Ljava/lang/Object;
.source "WebUtils.java"


# instance fields
.field private config:Lcom/robotium/solo/Solo$Config;

.field private inst:Landroid/app/Instrumentation;

.field originalWebChromeClient:Landroid/webkit/WebChromeClient;

.field robotiumWebCLient:Lcom/robotium/solo/RobotiumWebClient;

.field private viewFetcher:Lcom/robotium/solo/ViewFetcher;

.field webElementCreator:Lcom/robotium/solo/WebElementCreator;


# direct methods
.method public constructor <init>(Lcom/robotium/solo/Solo$Config;Landroid/app/Instrumentation;Lcom/robotium/solo/ViewFetcher;Lcom/robotium/solo/Sleeper;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/robotium/solo/WebUtils;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 45
    iput-object p1, p0, Lcom/robotium/solo/WebUtils;->config:Lcom/robotium/solo/Solo$Config;

    .line 46
    iput-object p2, p0, Lcom/robotium/solo/WebUtils;->inst:Landroid/app/Instrumentation;

    .line 47
    iput-object p3, p0, Lcom/robotium/solo/WebUtils;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    .line 48
    new-instance p1, Lcom/robotium/solo/WebElementCreator;

    invoke-direct {p1, p4}, Lcom/robotium/solo/WebElementCreator;-><init>(Lcom/robotium/solo/Sleeper;)V

    iput-object p1, p0, Lcom/robotium/solo/WebUtils;->webElementCreator:Lcom/robotium/solo/WebElementCreator;

    .line 49
    new-instance p1, Lcom/robotium/solo/RobotiumWebClient;

    iget-object p3, p0, Lcom/robotium/solo/WebUtils;->webElementCreator:Lcom/robotium/solo/WebElementCreator;

    invoke-direct {p1, p2, p3}, Lcom/robotium/solo/RobotiumWebClient;-><init>(Landroid/app/Instrumentation;Lcom/robotium/solo/WebElementCreator;)V

    iput-object p1, p0, Lcom/robotium/solo/WebUtils;->robotiumWebCLient:Lcom/robotium/solo/RobotiumWebClient;

    return-void
.end method

.method private createAndReturnTextViewsFromWebElements(Z)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 75
    iget-object p1, p0, Lcom/robotium/solo/WebUtils;->webElementCreator:Lcom/robotium/solo/WebElementCreator;

    invoke-virtual {p1}, Lcom/robotium/solo/WebElementCreator;->getWebElementsFromWebViews()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/robotium/solo/WebElement;

    .line 76
    invoke-virtual {p0, v1}, Lcom/robotium/solo/WebUtils;->isWebElementSufficientlyShown(Lcom/robotium/solo/WebElement;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    new-instance v2, Lcom/robotium/solo/RobotiumTextView;

    iget-object v3, p0, Lcom/robotium/solo/WebUtils;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v3}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lcom/robotium/solo/WebElement;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/robotium/solo/WebElement;->getLocationX()I

    move-result v5

    invoke-virtual {v1}, Lcom/robotium/solo/WebElement;->getLocationY()I

    move-result v1

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/robotium/solo/RobotiumTextView;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    .line 78
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private executeJavaScriptFunction(Ljava/lang/String;)Z
    .locals 5

    .line 265
    iget-object v0, p0, Lcom/robotium/solo/WebUtils;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    const-class v1, Landroid/webkit/WebView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lcom/robotium/solo/WebUtils;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    move-object v3, v0

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Lcom/robotium/solo/ViewFetcher;->getFreshestView(Ljava/util/ArrayList;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 272
    :cond_0
    invoke-direct {p0, v0}, Lcom/robotium/solo/WebUtils;->prepareForStartOfJavascriptExecution(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/robotium/solo/WebUtils;->setWebFrame(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    iget-object v3, p0, Lcom/robotium/solo/WebUtils;->inst:Landroid/app/Instrumentation;

    new-instance v4, Lcom/robotium/solo/WebUtils$1;

    invoke-direct {v4, p0, v1, v0, p1}, Lcom/robotium/solo/WebUtils$1;-><init>(Lcom/robotium/solo/WebUtils;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    return v2
.end method

.method private getCurrentWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 4

    .line 171
    iget-object v0, p0, Lcom/robotium/solo/WebUtils;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    const-class v1, Landroid/webkit/WebView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/robotium/solo/ViewFetcher;->getFreshestView(Ljava/util/ArrayList;)Landroid/view/View;

    move-result-object v0

    .line 173
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 175
    :try_start_0
    new-instance v1, Lcom/robotium/solo/Reflect;

    invoke-direct {v1, v0}, Lcom/robotium/solo/Reflect;-><init>(Ljava/lang/Object;)V

    const-string v2, "mProvider"

    invoke-virtual {v1, v2}, Lcom/robotium/solo/Reflect;->field(Ljava/lang/String;)Lcom/robotium/solo/Reflect$FieldRf;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/robotium/solo/Reflect$FieldRf;->out(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :catch_0
    :cond_0
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v2, 0x13

    const-string v3, "mWebChromeClient"

    if-lt v1, v2, :cond_1

    .line 181
    :try_start_2
    new-instance v1, Lcom/robotium/solo/Reflect;

    invoke-direct {v1, v0}, Lcom/robotium/solo/Reflect;-><init>(Ljava/lang/Object;)V

    const-string v0, "mContentsClientAdapter"

    invoke-virtual {v1, v0}, Lcom/robotium/solo/Reflect;->field(Ljava/lang/String;)Lcom/robotium/solo/Reflect$FieldRf;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/robotium/solo/Reflect$FieldRf;->out(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 182
    new-instance v1, Lcom/robotium/solo/Reflect;

    invoke-direct {v1, v0}, Lcom/robotium/solo/Reflect;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lcom/robotium/solo/Reflect;->field(Ljava/lang/String;)Lcom/robotium/solo/Reflect$FieldRf;

    move-result-object v0

    const-class v1, Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Lcom/robotium/solo/Reflect$FieldRf;->out(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebChromeClient;

    goto :goto_0

    .line 185
    :cond_1
    new-instance v1, Lcom/robotium/solo/Reflect;

    invoke-direct {v1, v0}, Lcom/robotium/solo/Reflect;-><init>(Ljava/lang/Object;)V

    const-string v0, "mCallbackProxy"

    invoke-virtual {v1, v0}, Lcom/robotium/solo/Reflect;->field(Ljava/lang/String;)Lcom/robotium/solo/Reflect$FieldRf;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/robotium/solo/Reflect$FieldRf;->out(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 186
    new-instance v1, Lcom/robotium/solo/Reflect;

    invoke-direct {v1, v0}, Lcom/robotium/solo/Reflect;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lcom/robotium/solo/Reflect;->field(Ljava/lang/String;)Lcom/robotium/solo/Reflect$FieldRf;

    move-result-object v0

    const-class v1, Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Lcom/robotium/solo/Reflect$FieldRf;->out(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebChromeClient;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getJavaScriptAsString()Ljava/lang/String;
    .locals 4

    .line 346
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "RobotiumWeb.js"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 347
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 350
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 352
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\n"

    .line 354
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 356
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 358
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getWebElements(ZZ)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/ArrayList<",
            "Lcom/robotium/solo/WebElement;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 131
    iget-object p1, p0, Lcom/robotium/solo/WebUtils;->webElementCreator:Lcom/robotium/solo/WebElementCreator;

    invoke-virtual {p1}, Lcom/robotium/solo/WebElementCreator;->getWebElementsFromWebViews()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/robotium/solo/WebElement;

    if-nez p2, :cond_1

    .line 133
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p0, v1}, Lcom/robotium/solo/WebUtils;->isWebElementSufficientlyShown(Lcom/robotium/solo/WebElement;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private prepareForStartOfJavascriptExecution(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/webkit/WebView;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/robotium/solo/WebUtils;->webElementCreator:Lcom/robotium/solo/WebElementCreator;

    invoke-virtual {v0}, Lcom/robotium/solo/WebElementCreator;->prepareForStart()V

    .line 152
    invoke-direct {p0}, Lcom/robotium/solo/WebUtils;->getCurrentWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/robotium/solo/RobotiumWebClient;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    iput-object v0, p0, Lcom/robotium/solo/WebUtils;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/WebUtils;->robotiumWebCLient:Lcom/robotium/solo/RobotiumWebClient;

    iget-object v1, p0, Lcom/robotium/solo/WebUtils;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, v1}, Lcom/robotium/solo/RobotiumWebClient;->enableJavascriptAndSetRobotiumWebClient(Ljava/util/List;Landroid/webkit/WebChromeClient;)V

    .line 158
    invoke-direct {p0}, Lcom/robotium/solo/WebUtils;->getJavaScriptAsString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setWebFrame(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 285
    iget-object v0, p0, Lcom/robotium/solo/WebUtils;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->webFrame:Ljava/lang/String;

    .line 287
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "document"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "document, "

    .line 290
    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "document.getElementById(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\").contentDocument, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "document.body, "

    .line 291
    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public enterTextIntoWebElement(Lcom/robotium/solo/By;Ljava/lang/String;)V
    .locals 4

    .line 201
    instance-of v0, p1, Lcom/robotium/solo/By$Id;

    const-string v1, "\");"

    const-string v2, "\", \""

    if-eqz v0, :cond_0

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enterTextById(\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/robotium/solo/WebUtils;->executeJavaScriptFunction(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 204
    :cond_0
    instance-of v0, p1, Lcom/robotium/solo/By$Xpath;

    if-eqz v0, :cond_1

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enterTextByXpath(\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/robotium/solo/WebUtils;->executeJavaScriptFunction(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 207
    :cond_1
    instance-of v0, p1, Lcom/robotium/solo/By$CssSelector;

    if-eqz v0, :cond_2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enterTextByCssSelector(\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/robotium/solo/WebUtils;->executeJavaScriptFunction(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 210
    :cond_2
    instance-of v0, p1, Lcom/robotium/solo/By$Name;

    if-eqz v0, :cond_3

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enterTextByName(\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/robotium/solo/WebUtils;->executeJavaScriptFunction(Ljava/lang/String;)Z

    goto :goto_0

    .line 213
    :cond_3
    instance-of v0, p1, Lcom/robotium/solo/By$ClassName;

    if-eqz v0, :cond_4

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enterTextByClassName(\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/robotium/solo/WebUtils;->executeJavaScriptFunction(Ljava/lang/String;)Z

    goto :goto_0

    .line 216
    :cond_4
    instance-of v0, p1, Lcom/robotium/solo/By$Text;

    if-eqz v0, :cond_5

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enterTextByTextContent(\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/robotium/solo/WebUtils;->executeJavaScriptFunction(Ljava/lang/String;)Z

    goto :goto_0

    .line 219
    :cond_5
    instance-of v0, p1, Lcom/robotium/solo/By$TagName;

    if-eqz v0, :cond_6

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enterTextByTagName(\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/robotium/solo/WebUtils;->executeJavaScriptFunction(Ljava/lang/String;)Z

    :cond_6
    :goto_0
    return-void
.end method

.method public executeJavaScript(Lcom/robotium/solo/By;Z)Z
    .locals 4

    .line 233
    instance-of v0, p1, Lcom/robotium/solo/By$Id;

    const-string v1, "\");"

    const-string v2, "\", \""

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id(\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/robotium/solo/WebUtils;->executeJavaScriptFunction(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 236
    :cond_0
    instance-of v0, p1, Lcom/robotium/solo/By$Xpath;

    if-eqz v0, :cond_1

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "xpath(\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/robotium/solo/WebUtils;->executeJavaScriptFunction(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 239
    :cond_1
    instance-of v0, p1, Lcom/robotium/solo/By$CssSelector;

    if-eqz v0, :cond_2

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cssSelector(\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/robotium/solo/WebUtils;->executeJavaScriptFunction(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 242
    :cond_2
    instance-of v0, p1, Lcom/robotium/solo/By$Name;

    if-eqz v0, :cond_3

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name(\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/robotium/solo/WebUtils;->executeJavaScriptFunction(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 245
    :cond_3
    instance-of v0, p1, Lcom/robotium/solo/By$ClassName;

    if-eqz v0, :cond_4

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "className(\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/robotium/solo/WebUtils;->executeJavaScriptFunction(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 248
    :cond_4
    instance-of v0, p1, Lcom/robotium/solo/By$Text;

    if-eqz v0, :cond_5

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "textContent(\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/robotium/solo/WebUtils;->executeJavaScriptFunction(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 251
    :cond_5
    instance-of v0, p1, Lcom/robotium/solo/By$TagName;

    if-eqz v0, :cond_6

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tagName(\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/robotium/solo/WebUtils;->executeJavaScriptFunction(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public getTextViewsFromWebView()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    const-string v0, "allTexts();"

    .line 60
    invoke-direct {p0, v0}, Lcom/robotium/solo/WebUtils;->executeJavaScriptFunction(Ljava/lang/String;)Z

    move-result v0

    .line 62
    invoke-direct {p0, v0}, Lcom/robotium/solo/WebUtils;->createAndReturnTextViewsFromWebElements(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getWebElements(Lcom/robotium/solo/By;Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/robotium/solo/By;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/robotium/solo/WebElement;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, p1, v0}, Lcom/robotium/solo/WebUtils;->executeJavaScript(Lcom/robotium/solo/By;Z)Z

    move-result p1

    .line 109
    iget-object v0, p0, Lcom/robotium/solo/WebUtils;->config:Lcom/robotium/solo/Solo$Config;

    iget-boolean v0, v0, Lcom/robotium/solo/Solo$Config;->useJavaScriptToClickWebElements:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 111
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/robotium/solo/WebUtils;->webElementCreator:Lcom/robotium/solo/WebElementCreator;

    invoke-virtual {p1}, Lcom/robotium/solo/WebElementCreator;->getWebElementsFromWebViews()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 116
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/robotium/solo/WebUtils;->getWebElements(ZZ)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getWebElements(Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lcom/robotium/solo/WebElement;",
            ">;"
        }
    .end annotation

    const-string v0, "allWebElements();"

    .line 93
    invoke-direct {p0, v0}, Lcom/robotium/solo/WebUtils;->executeJavaScriptFunction(Ljava/lang/String;)Z

    move-result v0

    .line 95
    invoke-direct {p0, v0, p1}, Lcom/robotium/solo/WebUtils;->getWebElements(ZZ)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public final isWebElementSufficientlyShown(Lcom/robotium/solo/WebElement;)Z
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/robotium/solo/WebUtils;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    const-class v1, Landroid/webkit/WebView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/robotium/solo/ViewFetcher;->getFreshestView(Ljava/util/ArrayList;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const/4 v1, 0x2

    new-array v1, v1, [I

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 307
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    .line 309
    aget v1, v1, v2

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p1}, Lcom/robotium/solo/WebElement;->getLocationY()I

    move-result p1

    if-le v1, p1, :cond_0

    return v2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public splitNameByUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "(?=\\p{Upper})"

    .line 324
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 329
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 330
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 333
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 336
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

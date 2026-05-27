.class Lcom/texa/careapp/dagger/CareModule$2;
.super Lcom/texa/carelib/webservices/TexaServiceDelegate;
.source "CareModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/dagger/CareModule;->provideTexaService(Ljava/lang/String;Ljava/lang/String;)Lcom/texa/carelib/webservices/TexaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/dagger/CareModule;

.field final synthetic val$apiHost:Ljava/lang/String;

.field final synthetic val$apiScheme:Ljava/lang/String;

.field final synthetic val$authUriHost:Ljava/lang/String;

.field final synthetic val$authUriScheme:Ljava/lang/String;

.field final synthetic val$clientId:Ljava/lang/String;

.field final synthetic val$clientSecret:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/texa/careapp/dagger/CareModule;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule$2;->this$0:Lcom/texa/careapp/dagger/CareModule;

    iput-object p2, p0, Lcom/texa/careapp/dagger/CareModule$2;->val$clientId:Ljava/lang/String;

    iput-object p3, p0, Lcom/texa/careapp/dagger/CareModule$2;->val$authUriHost:Ljava/lang/String;

    iput-object p4, p0, Lcom/texa/careapp/dagger/CareModule$2;->val$authUriScheme:Ljava/lang/String;

    iput-object p5, p0, Lcom/texa/careapp/dagger/CareModule$2;->val$apiHost:Ljava/lang/String;

    iput-object p6, p0, Lcom/texa/careapp/dagger/CareModule$2;->val$apiScheme:Ljava/lang/String;

    iput-object p7, p0, Lcom/texa/careapp/dagger/CareModule$2;->val$clientSecret:Ljava/lang/String;

    invoke-direct {p0}, Lcom/texa/carelib/webservices/TexaServiceDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule$2;->this$0:Lcom/texa/careapp/dagger/CareModule;

    iget-object v0, v0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    return-object v0
.end method

.method public getAuthenticationHost()Lcom/texa/carelib/webservices/HostInfo;
    .locals 2

    .line 268
    new-instance v0, Lcom/texa/carelib/webservices/HostInfo;

    invoke-direct {v0}, Lcom/texa/carelib/webservices/HostInfo;-><init>()V

    .line 269
    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule$2;->val$authUriHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/webservices/HostInfo;->setHostName(Ljava/lang/String;)Lcom/texa/carelib/webservices/HostInfo;

    .line 270
    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule$2;->val$authUriScheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/webservices/HostInfo;->setScheme(Ljava/lang/String;)Lcom/texa/carelib/webservices/HostInfo;

    return-object v0
.end method

.method public getClientID()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule$2;->val$clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientSecret()Ljava/lang/String;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule$2;->val$clientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceHost()Lcom/texa/carelib/webservices/HostInfo;
    .locals 2

    .line 277
    new-instance v0, Lcom/texa/carelib/webservices/HostInfo;

    invoke-direct {v0}, Lcom/texa/carelib/webservices/HostInfo;-><init>()V

    .line 278
    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule$2;->val$apiHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/webservices/HostInfo;->setHostName(Ljava/lang/String;)Lcom/texa/carelib/webservices/HostInfo;

    .line 279
    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule$2;->val$apiScheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/webservices/HostInfo;->setScheme(Ljava/lang/String;)Lcom/texa/carelib/webservices/HostInfo;

    return-object v0
.end method

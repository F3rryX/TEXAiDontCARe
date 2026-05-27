.class public Lcom/texa/careapp/utils/authentication/AccountAuthenticatorService;
.super Landroid/app/Service;
.source "AccountAuthenticatorService.java"


# static fields
.field private static AUTHENTICATOR:Lcom/texa/careapp/utils/authentication/AccountAuthenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private getAuthenticator()Lcom/texa/careapp/utils/authentication/AccountAuthenticator;
    .locals 1

    .line 16
    sget-object v0, Lcom/texa/careapp/utils/authentication/AccountAuthenticatorService;->AUTHENTICATOR:Lcom/texa/careapp/utils/authentication/AccountAuthenticator;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/texa/careapp/utils/authentication/AccountAuthenticator;

    invoke-direct {v0, p0}, Lcom/texa/careapp/utils/authentication/AccountAuthenticator;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/texa/careapp/utils/authentication/AccountAuthenticatorService;->AUTHENTICATOR:Lcom/texa/careapp/utils/authentication/AccountAuthenticator;

    .line 18
    :cond_0
    sget-object v0, Lcom/texa/careapp/utils/authentication/AccountAuthenticatorService;->AUTHENTICATOR:Lcom/texa/careapp/utils/authentication/AccountAuthenticator;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/texa/careapp/utils/authentication/AccountAuthenticatorService;->getAuthenticator()Lcom/texa/careapp/utils/authentication/AccountAuthenticator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/careapp/utils/authentication/AccountAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

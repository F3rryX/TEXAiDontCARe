.class public Lcom/texa/carelib/webservices/TexaServiceFactory;
.super Ljava/lang/Object;
.source "TexaServiceFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTexaService(Lcom/texa/carelib/webservices/TexaServiceType;Lcom/texa/carelib/webservices/TexaServiceDelegate;)Lcom/texa/carelib/webservices/TexaService;
    .locals 1

    .line 29
    sget-object v0, Lcom/texa/carelib/webservices/TexaServiceFactory$1;->$SwitchMap$com$texa$carelib$webservices$TexaServiceType:[I

    invoke-virtual {p0}, Lcom/texa/carelib/webservices/TexaServiceType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 35
    new-instance p0, Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/TexaServiceDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid TexaServiceType"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :cond_1
    new-instance p0, Lcom/texa/carelib/webservices/internal/MockTexaService;

    invoke-direct {p0}, Lcom/texa/carelib/webservices/internal/MockTexaService;-><init>()V

    .line 41
    :goto_0
    invoke-interface {p0, p1}, Lcom/texa/carelib/webservices/TexaService;->setServiceDelegate(Lcom/texa/carelib/webservices/TexaServiceDelegate;)V

    return-object p0
.end method

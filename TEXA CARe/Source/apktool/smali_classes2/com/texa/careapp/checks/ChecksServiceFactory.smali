.class public Lcom/texa/careapp/checks/ChecksServiceFactory;
.super Ljava/lang/Object;
.source "ChecksServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/checks/ChecksServiceFactory$CheckServiceType;
    }
.end annotation


# instance fields
.field private final service:Lcom/texa/careapp/model/ServiceDataModel;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/model/ServiceDataModel;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/texa/careapp/checks/ChecksServiceFactory;->service:Lcom/texa/careapp/model/ServiceDataModel;

    return-void
.end method


# virtual methods
.method public getCheck(Lcom/texa/careapp/checks/ChecksServiceFactory$CheckServiceType;)Lcom/texa/careapp/checks/Check;
    .locals 1

    .line 23
    sget-object v0, Lcom/texa/careapp/checks/ChecksServiceFactory$1;->$SwitchMap$com$texa$careapp$checks$ChecksServiceFactory$CheckServiceType:[I

    invoke-virtual {p1}, Lcom/texa/careapp/checks/ChecksServiceFactory$CheckServiceType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 27
    new-instance p1, Lcom/texa/careapp/checks/CheckServiceGuardianAngel;

    iget-object v0, p0, Lcom/texa/careapp/checks/ChecksServiceFactory;->service:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-direct {p1, v0}, Lcom/texa/careapp/checks/CheckServiceGuardianAngel;-><init>(Lcom/texa/careapp/model/ServiceDataModel;)V

    return-object p1

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "checkType not valid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_1
    new-instance p1, Lcom/texa/careapp/checks/CheckServiceContract;

    iget-object v0, p0, Lcom/texa/careapp/checks/ChecksServiceFactory;->service:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-direct {p1, v0}, Lcom/texa/careapp/checks/CheckServiceContract;-><init>(Lcom/texa/careapp/model/ServiceDataModel;)V

    return-object p1
.end method

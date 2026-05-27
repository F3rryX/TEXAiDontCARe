.class public final Lcom/texa/careapp/sync/jobs/LogJob_MembersInjector;
.super Ljava/lang/Object;
.source "LogJob_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/sync/jobs/LogJob;",
        ">;"
    }
.end annotation


# instance fields
.field private final mLoginHelperRxProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
            ">;"
        }
    .end annotation
.end field

.field private final mTexaCareServiceBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareServiceBus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareServiceBus;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/texa/careapp/sync/jobs/LogJob_MembersInjector;->mLoginHelperRxProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p2, p0, Lcom/texa/careapp/sync/jobs/LogJob_MembersInjector;->mTexaCareServiceBusProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareServiceBus;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/sync/jobs/LogJob;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/texa/careapp/sync/jobs/LogJob_MembersInjector;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/sync/jobs/LogJob_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMLoginHelperRx(Lcom/texa/careapp/sync/jobs/LogJob;Lcom/texa/careapp/utils/LoginHelperRx;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/texa/careapp/sync/jobs/LogJob;->mLoginHelperRx:Lcom/texa/careapp/utils/LoginHelperRx;

    return-void
.end method

.method public static injectMTexaCareServiceBus(Lcom/texa/careapp/sync/jobs/LogJob;Lcom/texa/careapp/networking/TexaCareServiceBus;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/texa/careapp/sync/jobs/LogJob;->mTexaCareServiceBus:Lcom/texa/careapp/networking/TexaCareServiceBus;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/sync/jobs/LogJob;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/texa/careapp/sync/jobs/LogJob_MembersInjector;->mLoginHelperRxProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/LoginHelperRx;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/LogJob_MembersInjector;->injectMLoginHelperRx(Lcom/texa/careapp/sync/jobs/LogJob;Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 35
    iget-object v0, p0, Lcom/texa/careapp/sync/jobs/LogJob_MembersInjector;->mTexaCareServiceBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareServiceBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/LogJob_MembersInjector;->injectMTexaCareServiceBus(Lcom/texa/careapp/sync/jobs/LogJob;Lcom/texa/careapp/networking/TexaCareServiceBus;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/texa/careapp/sync/jobs/LogJob;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/sync/jobs/LogJob_MembersInjector;->injectMembers(Lcom/texa/careapp/sync/jobs/LogJob;)V

    return-void
.end method

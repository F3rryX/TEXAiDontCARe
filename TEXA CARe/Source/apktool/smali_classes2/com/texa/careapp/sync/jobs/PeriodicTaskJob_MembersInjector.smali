.class public final Lcom/texa/careapp/sync/jobs/PeriodicTaskJob_MembersInjector;
.super Ljava/lang/Object;
.source "PeriodicTaskJob_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/sync/jobs/PeriodicTaskJob;",
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

.field private final mServiceDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/ServiceDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mTexaCareApiServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/ServiceDataManager;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/texa/careapp/sync/jobs/PeriodicTaskJob_MembersInjector;->mLoginHelperRxProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p2, p0, Lcom/texa/careapp/sync/jobs/PeriodicTaskJob_MembersInjector;->mTexaCareApiServiceProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/texa/careapp/sync/jobs/PeriodicTaskJob_MembersInjector;->mServiceDataManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/ServiceDataManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/sync/jobs/PeriodicTaskJob;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/texa/careapp/sync/jobs/PeriodicTaskJob_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lcom/texa/careapp/sync/jobs/PeriodicTaskJob_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMLoginHelperRx(Lcom/texa/careapp/sync/jobs/PeriodicTaskJob;Lcom/texa/careapp/utils/LoginHelperRx;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/texa/careapp/sync/jobs/PeriodicTaskJob;->mLoginHelperRx:Lcom/texa/careapp/utils/LoginHelperRx;

    return-void
.end method

.method public static injectMServiceDataManager(Lcom/texa/careapp/sync/jobs/PeriodicTaskJob;Lcom/texa/careapp/utils/ServiceDataManager;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/texa/careapp/sync/jobs/PeriodicTaskJob;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    return-void
.end method

.method public static injectMTexaCareApiService(Lcom/texa/careapp/sync/jobs/PeriodicTaskJob;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/texa/careapp/sync/jobs/PeriodicTaskJob;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/sync/jobs/PeriodicTaskJob;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/texa/careapp/sync/jobs/PeriodicTaskJob_MembersInjector;->mLoginHelperRxProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/LoginHelperRx;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/PeriodicTaskJob_MembersInjector;->injectMLoginHelperRx(Lcom/texa/careapp/sync/jobs/PeriodicTaskJob;Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 42
    iget-object v0, p0, Lcom/texa/careapp/sync/jobs/PeriodicTaskJob_MembersInjector;->mTexaCareApiServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/PeriodicTaskJob_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/sync/jobs/PeriodicTaskJob;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 43
    iget-object v0, p0, Lcom/texa/careapp/sync/jobs/PeriodicTaskJob_MembersInjector;->mServiceDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/PeriodicTaskJob_MembersInjector;->injectMServiceDataManager(Lcom/texa/careapp/sync/jobs/PeriodicTaskJob;Lcom/texa/careapp/utils/ServiceDataManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/texa/careapp/sync/jobs/PeriodicTaskJob;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/sync/jobs/PeriodicTaskJob_MembersInjector;->injectMembers(Lcom/texa/careapp/sync/jobs/PeriodicTaskJob;)V

    return-void
.end method

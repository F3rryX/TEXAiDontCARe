.class public final Lcom/texa/careapp/dagger/CareModule_ProvideChecksFactoryFactory;
.super Ljava/lang/Object;
.source "CareModule_ProvideChecksFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/careapp/checks/ChecksFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final communicationObservableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/CommunicationObservable;",
            ">;"
        }
    .end annotation
.end field

.field private final dongleDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mReactiveLocationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/texa/careapp/dagger/CareModule;

.field private final serviceDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/ServiceDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private final userDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/CommunicationObservable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/ServiceDataManager;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideChecksFactoryFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    .line 40
    iput-object p2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideChecksFactoryFactory;->userDataManagerProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p3, p0, Lcom/texa/careapp/dagger/CareModule_ProvideChecksFactoryFactory;->communicationObservableProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p4, p0, Lcom/texa/careapp/dagger/CareModule_ProvideChecksFactoryFactory;->dongleDataManagerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p5, p0, Lcom/texa/careapp/dagger/CareModule_ProvideChecksFactoryFactory;->mReactiveLocationProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p6, p0, Lcom/texa/careapp/dagger/CareModule_ProvideChecksFactoryFactory;->serviceDataManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideChecksFactoryFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/CommunicationObservable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/ServiceDataManager;",
            ">;)",
            "Lcom/texa/careapp/dagger/CareModule_ProvideChecksFactoryFactory;"
        }
    .end annotation

    .line 58
    new-instance v7, Lcom/texa/careapp/dagger/CareModule_ProvideChecksFactoryFactory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/texa/careapp/dagger/CareModule_ProvideChecksFactoryFactory;-><init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static provideChecksFactory(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/utils/UserDataManager;Lcom/texa/careapp/carelib/CommunicationObservable;Lcom/texa/careapp/model/DongleDataManager;Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;Lcom/texa/careapp/utils/ServiceDataManager;)Lcom/texa/careapp/checks/ChecksFactory;
    .locals 0

    .line 65
    invoke-virtual/range {p0 .. p5}, Lcom/texa/careapp/dagger/CareModule;->provideChecksFactory(Lcom/texa/careapp/utils/UserDataManager;Lcom/texa/careapp/carelib/CommunicationObservable;Lcom/texa/careapp/model/DongleDataManager;Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;Lcom/texa/careapp/utils/ServiceDataManager;)Lcom/texa/careapp/checks/ChecksFactory;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/checks/ChecksFactory;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/texa/careapp/checks/ChecksFactory;
    .locals 6

    .line 49
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule_ProvideChecksFactoryFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideChecksFactoryFactory;->userDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/utils/UserDataManager;

    iget-object v2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideChecksFactoryFactory;->communicationObservableProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/carelib/CommunicationObservable;

    iget-object v3, p0, Lcom/texa/careapp/dagger/CareModule_ProvideChecksFactoryFactory;->dongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/model/DongleDataManager;

    iget-object v4, p0, Lcom/texa/careapp/dagger/CareModule_ProvideChecksFactoryFactory;->mReactiveLocationProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    iget-object v5, p0, Lcom/texa/careapp/dagger/CareModule_ProvideChecksFactoryFactory;->serviceDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-static/range {v0 .. v5}, Lcom/texa/careapp/dagger/CareModule_ProvideChecksFactoryFactory;->provideChecksFactory(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/utils/UserDataManager;Lcom/texa/careapp/carelib/CommunicationObservable;Lcom/texa/careapp/model/DongleDataManager;Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;Lcom/texa/careapp/utils/ServiceDataManager;)Lcom/texa/careapp/checks/ChecksFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule_ProvideChecksFactoryFactory;->get()Lcom/texa/careapp/checks/ChecksFactory;

    move-result-object v0

    return-object v0
.end method

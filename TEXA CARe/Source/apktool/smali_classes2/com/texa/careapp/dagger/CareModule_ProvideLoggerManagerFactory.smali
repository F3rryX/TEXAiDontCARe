.class public final Lcom/texa/careapp/dagger/CareModule_ProvideLoggerManagerFactory;
.super Ljava/lang/Object;
.source "CareModule_ProvideLoggerManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/careapp/remotelogger/LoggerManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final accessoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;"
        }
    .end annotation
.end field

.field private final caReWorkerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;"
        }
    .end annotation
.end field

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

.field private final module:Lcom/texa/careapp/dagger/CareModule;

.field private final sharedPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
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
.method public constructor <init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/CommunicationObservable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideLoggerManagerFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    .line 43
    iput-object p2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideLoggerManagerFactory;->userDataManagerProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p3, p0, Lcom/texa/careapp/dagger/CareModule_ProvideLoggerManagerFactory;->dongleDataManagerProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p4, p0, Lcom/texa/careapp/dagger/CareModule_ProvideLoggerManagerFactory;->communicationObservableProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p5, p0, Lcom/texa/careapp/dagger/CareModule_ProvideLoggerManagerFactory;->sharedPreferencesProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p6, p0, Lcom/texa/careapp/dagger/CareModule_ProvideLoggerManagerFactory;->accessoryProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p7, p0, Lcom/texa/careapp/dagger/CareModule_ProvideLoggerManagerFactory;->caReWorkerManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideLoggerManagerFactory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/CommunicationObservable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;)",
            "Lcom/texa/careapp/dagger/CareModule_ProvideLoggerManagerFactory;"
        }
    .end annotation

    .line 62
    new-instance v8, Lcom/texa/careapp/dagger/CareModule_ProvideLoggerManagerFactory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/texa/careapp/dagger/CareModule_ProvideLoggerManagerFactory;-><init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static provideLoggerManager(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/utils/UserDataManager;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/carelib/CommunicationObservable;Landroid/content/SharedPreferences;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/careapp/sync/CAReWorkerManager;)Lcom/texa/careapp/remotelogger/LoggerManager;
    .locals 0

    .line 69
    invoke-virtual/range {p0 .. p6}, Lcom/texa/careapp/dagger/CareModule;->provideLoggerManager(Lcom/texa/careapp/utils/UserDataManager;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/carelib/CommunicationObservable;Landroid/content/SharedPreferences;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/careapp/sync/CAReWorkerManager;)Lcom/texa/careapp/remotelogger/LoggerManager;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/remotelogger/LoggerManager;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/texa/careapp/remotelogger/LoggerManager;
    .locals 7

    .line 53
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule_ProvideLoggerManagerFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideLoggerManagerFactory;->userDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/utils/UserDataManager;

    iget-object v2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideLoggerManagerFactory;->dongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/model/DongleDataManager;

    iget-object v3, p0, Lcom/texa/careapp/dagger/CareModule_ProvideLoggerManagerFactory;->communicationObservableProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/carelib/CommunicationObservable;

    iget-object v4, p0, Lcom/texa/careapp/dagger/CareModule_ProvideLoggerManagerFactory;->sharedPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/texa/careapp/dagger/CareModule_ProvideLoggerManagerFactory;->accessoryProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/texa/carelib/care/accessory/Accessory;

    iget-object v6, p0, Lcom/texa/careapp/dagger/CareModule_ProvideLoggerManagerFactory;->caReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static/range {v0 .. v6}, Lcom/texa/careapp/dagger/CareModule_ProvideLoggerManagerFactory;->provideLoggerManager(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/utils/UserDataManager;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/carelib/CommunicationObservable;Landroid/content/SharedPreferences;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/careapp/sync/CAReWorkerManager;)Lcom/texa/careapp/remotelogger/LoggerManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule_ProvideLoggerManagerFactory;->get()Lcom/texa/careapp/remotelogger/LoggerManager;

    move-result-object v0

    return-object v0
.end method

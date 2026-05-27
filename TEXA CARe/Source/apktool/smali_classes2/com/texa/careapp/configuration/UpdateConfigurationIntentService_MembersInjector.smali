.class public final Lcom/texa/careapp/configuration/UpdateConfigurationIntentService_MembersInjector;
.super Ljava/lang/Object;
.source "UpdateConfigurationIntentService_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCareObserverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mDiagnosticConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mDongleDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoggerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/remotelogger/LoggerManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private final mTexaServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/webservices/TexaService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/webservices/TexaService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/remotelogger/LoggerManager;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService_MembersInjector;->mProfileProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p2, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService_MembersInjector;->mDiagnosticConfigurationProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p3, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService_MembersInjector;->mTexaServiceProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p4, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService_MembersInjector;->mCareObserverProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p5, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p6, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p7, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService_MembersInjector;->mLoggerManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/webservices/TexaService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/remotelogger/LoggerManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v8, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService_MembersInjector;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static injectMCareObserver(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;Lcom/texa/careapp/carelib/ICareObserver;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    return-void
.end method

.method public static injectMDiagnosticConfiguration(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->mDiagnosticConfiguration:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;

    return-void
.end method

.method public static injectMDongleDataManager(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMEventBus(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public static injectMLoggerManager(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;Lcom/texa/careapp/remotelogger/LoggerManager;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    return-void
.end method

.method public static injectMProfile(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;Lcom/texa/carelib/profile/Profile;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->mProfile:Lcom/texa/carelib/profile/Profile;

    return-void
.end method

.method public static injectMTexaService(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;Lcom/texa/carelib/webservices/TexaService;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->mTexaService:Lcom/texa/carelib/webservices/TexaService;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService_MembersInjector;->mProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/profile/Profile;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService_MembersInjector;->injectMProfile(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;Lcom/texa/carelib/profile/Profile;)V

    .line 62
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService_MembersInjector;->mDiagnosticConfigurationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService_MembersInjector;->injectMDiagnosticConfiguration(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;)V

    .line 63
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService_MembersInjector;->mTexaServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/webservices/TexaService;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService_MembersInjector;->injectMTexaService(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;Lcom/texa/carelib/webservices/TexaService;)V

    .line 64
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService_MembersInjector;->mCareObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/ICareObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService_MembersInjector;->injectMCareObserver(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;Lcom/texa/careapp/carelib/ICareObserver;)V

    .line 65
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 66
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService_MembersInjector;->injectMEventBus(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;Lorg/greenrobot/eventbus/EventBus;)V

    .line 67
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService_MembersInjector;->mLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService_MembersInjector;->injectMembers(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;)V

    return-void
.end method

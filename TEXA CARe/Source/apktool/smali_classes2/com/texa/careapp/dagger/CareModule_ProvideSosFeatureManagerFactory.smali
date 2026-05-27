.class public final Lcom/texa/careapp/dagger/CareModule_ProvideSosFeatureManagerFactory;
.super Ljava/lang/Object;
.source "CareModule_ProvideSosFeatureManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final checksFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/checks/ChecksFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final crashLogReaderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/CrashLogReader;",
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

.field private final eventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private final impactDetectionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/impacts/ImpactDetection;",
            ">;"
        }
    .end annotation
.end field

.field private final impactDetectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/impactdetection/ImpactDetector;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/remotelogger/LoggerManager;",
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

.field private final sharedPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final texaCareApiServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
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
.method public constructor <init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/checks/ChecksFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/remotelogger/LoggerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/impacts/ImpactDetection;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/impactdetection/ImpactDetector;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/ServiceDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/CrashLogReader;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideSosFeatureManagerFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    .line 63
    iput-object p2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideSosFeatureManagerFactory;->userDataManagerProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p3, p0, Lcom/texa/careapp/dagger/CareModule_ProvideSosFeatureManagerFactory;->texaCareApiServiceProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p4, p0, Lcom/texa/careapp/dagger/CareModule_ProvideSosFeatureManagerFactory;->dongleDataManagerProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p5, p0, Lcom/texa/careapp/dagger/CareModule_ProvideSosFeatureManagerFactory;->checksFactoryProvider:Ljavax/inject/Provider;

    .line 67
    iput-object p6, p0, Lcom/texa/careapp/dagger/CareModule_ProvideSosFeatureManagerFactory;->eventBusProvider:Ljavax/inject/Provider;

    .line 68
    iput-object p7, p0, Lcom/texa/careapp/dagger/CareModule_ProvideSosFeatureManagerFactory;->loggerManagerProvider:Ljavax/inject/Provider;

    .line 69
    iput-object p8, p0, Lcom/texa/careapp/dagger/CareModule_ProvideSosFeatureManagerFactory;->impactDetectionProvider:Ljavax/inject/Provider;

    .line 70
    iput-object p9, p0, Lcom/texa/careapp/dagger/CareModule_ProvideSosFeatureManagerFactory;->impactDetectorProvider:Ljavax/inject/Provider;

    .line 71
    iput-object p10, p0, Lcom/texa/careapp/dagger/CareModule_ProvideSosFeatureManagerFactory;->sharedPreferencesProvider:Ljavax/inject/Provider;

    .line 72
    iput-object p11, p0, Lcom/texa/careapp/dagger/CareModule_ProvideSosFeatureManagerFactory;->serviceDataManagerProvider:Ljavax/inject/Provider;

    .line 73
    iput-object p12, p0, Lcom/texa/careapp/dagger/CareModule_ProvideSosFeatureManagerFactory;->crashLogReaderProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideSosFeatureManagerFactory;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/checks/ChecksFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/remotelogger/LoggerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/impacts/ImpactDetection;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/impactdetection/ImpactDetector;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/ServiceDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/CrashLogReader;",
            ">;)",
            "Lcom/texa/careapp/dagger/CareModule_ProvideSosFeatureManagerFactory;"
        }
    .end annotation

    .line 92
    new-instance v13, Lcom/texa/careapp/dagger/CareModule_ProvideSosFeatureManagerFactory;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/texa/careapp/dagger/CareModule_ProvideSosFeatureManagerFactory;-><init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v13
.end method

.method public static provideSosFeatureManager(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/utils/UserDataManager;Lcom/texa/careapp/networking/TexaCareApiServiceUser;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/checks/ChecksFactory;Lorg/greenrobot/eventbus/EventBus;Lcom/texa/careapp/remotelogger/LoggerManager;Lcom/texa/carelib/care/impacts/ImpactDetection;Lcom/texa/careapp/impactdetection/ImpactDetector;Landroid/content/SharedPreferences;Lcom/texa/careapp/utils/ServiceDataManager;Lcom/texa/careapp/utils/CrashLogReader;)Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;
    .locals 0

    .line 101
    invoke-virtual/range {p0 .. p11}, Lcom/texa/careapp/dagger/CareModule;->provideSosFeatureManager(Lcom/texa/careapp/utils/UserDataManager;Lcom/texa/careapp/networking/TexaCareApiServiceUser;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/checks/ChecksFactory;Lorg/greenrobot/eventbus/EventBus;Lcom/texa/careapp/remotelogger/LoggerManager;Lcom/texa/carelib/care/impacts/ImpactDetection;Lcom/texa/careapp/impactdetection/ImpactDetector;Landroid/content/SharedPreferences;Lcom/texa/careapp/utils/ServiceDataManager;Lcom/texa/careapp/utils/CrashLogReader;)Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;
    .locals 12

    .line 78
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule_ProvideSosFeatureManagerFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideSosFeatureManagerFactory;->userDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/utils/UserDataManager;

    iget-object v2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideSosFeatureManagerFactory;->texaCareApiServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    iget-object v3, p0, Lcom/texa/careapp/dagger/CareModule_ProvideSosFeatureManagerFactory;->dongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/model/DongleDataManager;

    iget-object v4, p0, Lcom/texa/careapp/dagger/CareModule_ProvideSosFeatureManagerFactory;->checksFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/careapp/checks/ChecksFactory;

    iget-object v5, p0, Lcom/texa/careapp/dagger/CareModule_ProvideSosFeatureManagerFactory;->eventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/greenrobot/eventbus/EventBus;

    iget-object v6, p0, Lcom/texa/careapp/dagger/CareModule_ProvideSosFeatureManagerFactory;->loggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/texa/careapp/remotelogger/LoggerManager;

    iget-object v7, p0, Lcom/texa/careapp/dagger/CareModule_ProvideSosFeatureManagerFactory;->impactDetectionProvider:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/texa/carelib/care/impacts/ImpactDetection;

    iget-object v8, p0, Lcom/texa/careapp/dagger/CareModule_ProvideSosFeatureManagerFactory;->impactDetectorProvider:Ljavax/inject/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/texa/careapp/impactdetection/ImpactDetector;

    iget-object v9, p0, Lcom/texa/careapp/dagger/CareModule_ProvideSosFeatureManagerFactory;->sharedPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/SharedPreferences;

    iget-object v10, p0, Lcom/texa/careapp/dagger/CareModule_ProvideSosFeatureManagerFactory;->serviceDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/texa/careapp/utils/ServiceDataManager;

    iget-object v11, p0, Lcom/texa/careapp/dagger/CareModule_ProvideSosFeatureManagerFactory;->crashLogReaderProvider:Ljavax/inject/Provider;

    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/texa/careapp/utils/CrashLogReader;

    invoke-static/range {v0 .. v11}, Lcom/texa/careapp/dagger/CareModule_ProvideSosFeatureManagerFactory;->provideSosFeatureManager(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/utils/UserDataManager;Lcom/texa/careapp/networking/TexaCareApiServiceUser;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/checks/ChecksFactory;Lorg/greenrobot/eventbus/EventBus;Lcom/texa/careapp/remotelogger/LoggerManager;Lcom/texa/carelib/care/impacts/ImpactDetection;Lcom/texa/careapp/impactdetection/ImpactDetector;Landroid/content/SharedPreferences;Lcom/texa/careapp/utils/ServiceDataManager;Lcom/texa/careapp/utils/CrashLogReader;)Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule_ProvideSosFeatureManagerFactory;->get()Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    move-result-object v0

    return-object v0
.end method

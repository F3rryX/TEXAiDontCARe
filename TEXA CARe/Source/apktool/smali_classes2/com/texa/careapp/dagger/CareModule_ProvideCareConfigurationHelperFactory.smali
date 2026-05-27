.class public final Lcom/texa/careapp/dagger/CareModule_ProvideCareConfigurationHelperFactory;
.super Ljava/lang/Object;
.source "CareModule_ProvideCareConfigurationHelperFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/careapp/configuration/UpdateConfigurationHelper;",
        ">;"
    }
.end annotation


# instance fields
.field private final careObserverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
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

.field private final notificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/NotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field private final texaServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/webservices/TexaService;",
            ">;"
        }
    .end annotation
.end field

.field private final vehicleObserverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
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
            "Lcom/texa/carelib/webservices/TexaService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/NotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/CommunicationObservable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCareConfigurationHelperFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    .line 43
    iput-object p2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCareConfigurationHelperFactory;->texaServiceProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p3, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCareConfigurationHelperFactory;->careObserverProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p4, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCareConfigurationHelperFactory;->notificationManagerProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p5, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCareConfigurationHelperFactory;->communicationObservableProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p6, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCareConfigurationHelperFactory;->dongleDataManagerProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p7, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCareConfigurationHelperFactory;->vehicleObserverProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideCareConfigurationHelperFactory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/webservices/TexaService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/NotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/CommunicationObservable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;)",
            "Lcom/texa/careapp/dagger/CareModule_ProvideCareConfigurationHelperFactory;"
        }
    .end annotation

    .line 62
    new-instance v8, Lcom/texa/careapp/dagger/CareModule_ProvideCareConfigurationHelperFactory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/texa/careapp/dagger/CareModule_ProvideCareConfigurationHelperFactory;-><init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static provideCareConfigurationHelper(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/carelib/webservices/TexaService;Lcom/texa/careapp/carelib/ICareObserver;Landroid/app/NotificationManager;Lcom/texa/careapp/carelib/CommunicationObservable;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/utils/VehicleObserver;)Lcom/texa/careapp/configuration/UpdateConfigurationHelper;
    .locals 0

    .line 69
    invoke-virtual/range {p0 .. p6}, Lcom/texa/careapp/dagger/CareModule;->provideCareConfigurationHelper(Lcom/texa/carelib/webservices/TexaService;Lcom/texa/careapp/carelib/ICareObserver;Landroid/app/NotificationManager;Lcom/texa/careapp/carelib/CommunicationObservable;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/utils/VehicleObserver;)Lcom/texa/careapp/configuration/UpdateConfigurationHelper;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/texa/careapp/configuration/UpdateConfigurationHelper;
    .locals 7

    .line 53
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCareConfigurationHelperFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCareConfigurationHelperFactory;->texaServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/carelib/webservices/TexaService;

    iget-object v2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCareConfigurationHelperFactory;->careObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/carelib/ICareObserver;

    iget-object v3, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCareConfigurationHelperFactory;->notificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iget-object v4, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCareConfigurationHelperFactory;->communicationObservableProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/careapp/carelib/CommunicationObservable;

    iget-object v5, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCareConfigurationHelperFactory;->dongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/texa/careapp/model/DongleDataManager;

    iget-object v6, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCareConfigurationHelperFactory;->vehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static/range {v0 .. v6}, Lcom/texa/careapp/dagger/CareModule_ProvideCareConfigurationHelperFactory;->provideCareConfigurationHelper(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/carelib/webservices/TexaService;Lcom/texa/careapp/carelib/ICareObserver;Landroid/app/NotificationManager;Lcom/texa/careapp/carelib/CommunicationObservable;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/utils/VehicleObserver;)Lcom/texa/careapp/configuration/UpdateConfigurationHelper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule_ProvideCareConfigurationHelperFactory;->get()Lcom/texa/careapp/configuration/UpdateConfigurationHelper;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/texa/careapp/dagger/CareModule_ProvideFirmwareUpdateControllerFactory;
.super Ljava/lang/Object;
.source "CareModule_ProvideFirmwareUpdateControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/careapp/app/update/FirmwareUpdateController;",
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


# direct methods
.method public constructor <init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideFirmwareUpdateControllerFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    .line 35
    iput-object p2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideFirmwareUpdateControllerFactory;->texaServiceProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p3, p0, Lcom/texa/careapp/dagger/CareModule_ProvideFirmwareUpdateControllerFactory;->careObserverProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p4, p0, Lcom/texa/careapp/dagger/CareModule_ProvideFirmwareUpdateControllerFactory;->notificationManagerProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p5, p0, Lcom/texa/careapp/dagger/CareModule_ProvideFirmwareUpdateControllerFactory;->dongleDataManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideFirmwareUpdateControllerFactory;
    .locals 7
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
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;)",
            "Lcom/texa/careapp/dagger/CareModule_ProvideFirmwareUpdateControllerFactory;"
        }
    .end annotation

    .line 50
    new-instance v6, Lcom/texa/careapp/dagger/CareModule_ProvideFirmwareUpdateControllerFactory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/texa/careapp/dagger/CareModule_ProvideFirmwareUpdateControllerFactory;-><init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static provideFirmwareUpdateController(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/carelib/webservices/TexaService;Lcom/texa/careapp/carelib/ICareObserver;Landroid/app/NotificationManager;Lcom/texa/careapp/model/DongleDataManager;)Lcom/texa/careapp/app/update/FirmwareUpdateController;
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/texa/careapp/dagger/CareModule;->provideFirmwareUpdateController(Lcom/texa/carelib/webservices/TexaService;Lcom/texa/careapp/carelib/ICareObserver;Landroid/app/NotificationManager;Lcom/texa/careapp/model/DongleDataManager;)Lcom/texa/careapp/app/update/FirmwareUpdateController;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/texa/careapp/app/update/FirmwareUpdateController;
    .locals 5

    .line 43
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule_ProvideFirmwareUpdateControllerFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideFirmwareUpdateControllerFactory;->texaServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/carelib/webservices/TexaService;

    iget-object v2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideFirmwareUpdateControllerFactory;->careObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/carelib/ICareObserver;

    iget-object v3, p0, Lcom/texa/careapp/dagger/CareModule_ProvideFirmwareUpdateControllerFactory;->notificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iget-object v4, p0, Lcom/texa/careapp/dagger/CareModule_ProvideFirmwareUpdateControllerFactory;->dongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/texa/careapp/dagger/CareModule_ProvideFirmwareUpdateControllerFactory;->provideFirmwareUpdateController(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/carelib/webservices/TexaService;Lcom/texa/careapp/carelib/ICareObserver;Landroid/app/NotificationManager;Lcom/texa/careapp/model/DongleDataManager;)Lcom/texa/careapp/app/update/FirmwareUpdateController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule_ProvideFirmwareUpdateControllerFactory;->get()Lcom/texa/careapp/app/update/FirmwareUpdateController;

    move-result-object v0

    return-object v0
.end method

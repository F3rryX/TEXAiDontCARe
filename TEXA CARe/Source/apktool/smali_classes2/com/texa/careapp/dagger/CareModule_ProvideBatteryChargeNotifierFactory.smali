.class public final Lcom/texa/careapp/dagger/CareModule_ProvideBatteryChargeNotifierFactory;
.super Ljava/lang/Object;
.source "CareModule_ProvideBatteryChargeNotifierFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/careapp/alarms/VehicleAlarmNotifier;",
        ">;"
    }
.end annotation


# instance fields
.field private final caReWorkerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
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


# direct methods
.method public constructor <init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/NotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideBatteryChargeNotifierFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    .line 32
    iput-object p2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideBatteryChargeNotifierFactory;->dongleDataManagerProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/texa/careapp/dagger/CareModule_ProvideBatteryChargeNotifierFactory;->notificationManagerProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p4, p0, Lcom/texa/careapp/dagger/CareModule_ProvideBatteryChargeNotifierFactory;->caReWorkerManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideBatteryChargeNotifierFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/NotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;)",
            "Lcom/texa/careapp/dagger/CareModule_ProvideBatteryChargeNotifierFactory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/texa/careapp/dagger/CareModule_ProvideBatteryChargeNotifierFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/texa/careapp/dagger/CareModule_ProvideBatteryChargeNotifierFactory;-><init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideBatteryChargeNotifier(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/model/DongleDataManager;Landroid/app/NotificationManager;Lcom/texa/careapp/sync/CAReWorkerManager;)Lcom/texa/careapp/alarms/VehicleAlarmNotifier;
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2, p3}, Lcom/texa/careapp/dagger/CareModule;->provideBatteryChargeNotifier(Lcom/texa/careapp/model/DongleDataManager;Landroid/app/NotificationManager;Lcom/texa/careapp/sync/CAReWorkerManager;)Lcom/texa/careapp/alarms/VehicleAlarmNotifier;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/alarms/VehicleAlarmNotifier;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/texa/careapp/alarms/VehicleAlarmNotifier;
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule_ProvideBatteryChargeNotifierFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideBatteryChargeNotifierFactory;->dongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/DongleDataManager;

    iget-object v2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideBatteryChargeNotifierFactory;->notificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iget-object v3, p0, Lcom/texa/careapp/dagger/CareModule_ProvideBatteryChargeNotifierFactory;->caReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {v0, v1, v2, v3}, Lcom/texa/careapp/dagger/CareModule_ProvideBatteryChargeNotifierFactory;->provideBatteryChargeNotifier(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/model/DongleDataManager;Landroid/app/NotificationManager;Lcom/texa/careapp/sync/CAReWorkerManager;)Lcom/texa/careapp/alarms/VehicleAlarmNotifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule_ProvideBatteryChargeNotifierFactory;->get()Lcom/texa/careapp/alarms/VehicleAlarmNotifier;

    move-result-object v0

    return-object v0
.end method

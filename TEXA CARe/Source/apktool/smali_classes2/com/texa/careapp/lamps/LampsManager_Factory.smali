.class public final Lcom/texa/careapp/lamps/LampsManager_Factory;
.super Ljava/lang/Object;
.source "LampsManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/careapp/lamps/LampsManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final dtcManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/DtcManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mCareWorkerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
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

.field private final mSharedPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final vehicleParametersManagerV2Provider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/parameters/VehicleParametersManagerV2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/DtcManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/parameters/VehicleParametersManagerV2;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/remotelogger/LoggerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/texa/careapp/lamps/LampsManager_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p2, p0, Lcom/texa/careapp/lamps/LampsManager_Factory;->dtcManagerProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p3, p0, Lcom/texa/careapp/lamps/LampsManager_Factory;->vehicleParametersManagerV2Provider:Ljavax/inject/Provider;

    .line 41
    iput-object p4, p0, Lcom/texa/careapp/lamps/LampsManager_Factory;->mLoggerManagerProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p5, p0, Lcom/texa/careapp/lamps/LampsManager_Factory;->mSharedPreferencesProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p6, p0, Lcom/texa/careapp/lamps/LampsManager_Factory;->mCareWorkerManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/lamps/LampsManager_Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/DtcManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/parameters/VehicleParametersManagerV2;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/remotelogger/LoggerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;)",
            "Lcom/texa/careapp/lamps/LampsManager_Factory;"
        }
    .end annotation

    .line 61
    new-instance v7, Lcom/texa/careapp/lamps/LampsManager_Factory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/texa/careapp/lamps/LampsManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static newInstance(Landroid/content/Context;Lcom/texa/careapp/utils/DtcManager;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)Lcom/texa/careapp/lamps/LampsManager;
    .locals 1

    .line 66
    new-instance v0, Lcom/texa/careapp/lamps/LampsManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/texa/careapp/lamps/LampsManager;-><init>(Landroid/content/Context;Lcom/texa/careapp/utils/DtcManager;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/texa/careapp/lamps/LampsManager;
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/texa/careapp/lamps/LampsManager_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/texa/careapp/lamps/LampsManager_Factory;->dtcManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/utils/DtcManager;

    iget-object v2, p0, Lcom/texa/careapp/lamps/LampsManager_Factory;->vehicleParametersManagerV2Provider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-static {v0, v1, v2}, Lcom/texa/careapp/lamps/LampsManager_Factory;->newInstance(Landroid/content/Context;Lcom/texa/careapp/utils/DtcManager;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)Lcom/texa/careapp/lamps/LampsManager;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/texa/careapp/lamps/LampsManager_Factory;->mLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {v0, v1}, Lcom/texa/careapp/lamps/LampsManager_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/lamps/LampsManager;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 50
    iget-object v1, p0, Lcom/texa/careapp/lamps/LampsManager_Factory;->mSharedPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    invoke-static {v0, v1}, Lcom/texa/careapp/lamps/LampsManager_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/lamps/LampsManager;Landroid/content/SharedPreferences;)V

    .line 51
    iget-object v1, p0, Lcom/texa/careapp/lamps/LampsManager_Factory;->mCareWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {v0, v1}, Lcom/texa/careapp/lamps/LampsManager_MembersInjector;->injectMCareWorkerManager(Lcom/texa/careapp/lamps/LampsManager;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/texa/careapp/lamps/LampsManager_Factory;->get()Lcom/texa/careapp/lamps/LampsManager;

    move-result-object v0

    return-object v0
.end method

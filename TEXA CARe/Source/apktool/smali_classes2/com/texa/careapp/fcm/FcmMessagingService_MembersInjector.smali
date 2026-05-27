.class public final Lcom/texa/careapp/fcm/FcmMessagingService_MembersInjector;
.super Ljava/lang/Object;
.source "FcmMessagingService_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/fcm/FcmMessagingService;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCAReWorkerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
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

.field private final mNotificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/NotificationManager;",
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

.field private final mVehicleDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
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
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/ServiceDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/NotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/texa/careapp/fcm/FcmMessagingService_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p2, p0, Lcom/texa/careapp/fcm/FcmMessagingService_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p3, p0, Lcom/texa/careapp/fcm/FcmMessagingService_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p4, p0, Lcom/texa/careapp/fcm/FcmMessagingService_MembersInjector;->mServiceDataManagerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p5, p0, Lcom/texa/careapp/fcm/FcmMessagingService_MembersInjector;->mNotificationManagerProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p6, p0, Lcom/texa/careapp/fcm/FcmMessagingService_MembersInjector;->mCAReWorkerManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/ServiceDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/NotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/fcm/FcmMessagingService;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v7, Lcom/texa/careapp/fcm/FcmMessagingService_MembersInjector;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/texa/careapp/fcm/FcmMessagingService_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static injectMCAReWorkerManager(Lcom/texa/careapp/fcm/FcmMessagingService;Lcom/texa/careapp/sync/CAReWorkerManager;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/texa/careapp/fcm/FcmMessagingService;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    return-void
.end method

.method public static injectMDongleDataManager(Lcom/texa/careapp/fcm/FcmMessagingService;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/texa/careapp/fcm/FcmMessagingService;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMEventBus(Lcom/texa/careapp/fcm/FcmMessagingService;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/texa/careapp/fcm/FcmMessagingService;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public static injectMNotificationManager(Lcom/texa/careapp/fcm/FcmMessagingService;Landroid/app/NotificationManager;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/texa/careapp/fcm/FcmMessagingService;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method public static injectMServiceDataManager(Lcom/texa/careapp/fcm/FcmMessagingService;Lcom/texa/careapp/utils/ServiceDataManager;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/texa/careapp/fcm/FcmMessagingService;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    return-void
.end method

.method public static injectMVehicleDataManager(Lcom/texa/careapp/fcm/FcmMessagingService;Lcom/texa/careapp/utils/VehicleDataManager;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/texa/careapp/fcm/FcmMessagingService;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/fcm/FcmMessagingService;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/texa/careapp/fcm/FcmMessagingService_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/fcm/FcmMessagingService_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/fcm/FcmMessagingService;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 60
    iget-object v0, p0, Lcom/texa/careapp/fcm/FcmMessagingService_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/fcm/FcmMessagingService_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/fcm/FcmMessagingService;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 61
    iget-object v0, p0, Lcom/texa/careapp/fcm/FcmMessagingService_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/fcm/FcmMessagingService_MembersInjector;->injectMEventBus(Lcom/texa/careapp/fcm/FcmMessagingService;Lorg/greenrobot/eventbus/EventBus;)V

    .line 62
    iget-object v0, p0, Lcom/texa/careapp/fcm/FcmMessagingService_MembersInjector;->mServiceDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/fcm/FcmMessagingService_MembersInjector;->injectMServiceDataManager(Lcom/texa/careapp/fcm/FcmMessagingService;Lcom/texa/careapp/utils/ServiceDataManager;)V

    .line 63
    iget-object v0, p0, Lcom/texa/careapp/fcm/FcmMessagingService_MembersInjector;->mNotificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/fcm/FcmMessagingService_MembersInjector;->injectMNotificationManager(Lcom/texa/careapp/fcm/FcmMessagingService;Landroid/app/NotificationManager;)V

    .line 64
    iget-object v0, p0, Lcom/texa/careapp/fcm/FcmMessagingService_MembersInjector;->mCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/fcm/FcmMessagingService_MembersInjector;->injectMCAReWorkerManager(Lcom/texa/careapp/fcm/FcmMessagingService;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lcom/texa/careapp/fcm/FcmMessagingService;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/fcm/FcmMessagingService_MembersInjector;->injectMembers(Lcom/texa/careapp/fcm/FcmMessagingService;)V

    return-void
.end method

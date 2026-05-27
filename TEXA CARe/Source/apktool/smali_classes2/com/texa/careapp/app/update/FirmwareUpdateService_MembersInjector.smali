.class public final Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;
.super Ljava/lang/Object;
.source "FirmwareUpdateService_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/update/FirmwareUpdateService;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccessoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessoryProvider2:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;"
        }
    .end annotation
.end field

.field private final mCommunicationObservableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/CommunicationObservable;",
            ">;"
        }
    .end annotation
.end field

.field private final mCommunicationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurrentTripProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
            ">;"
        }
    .end annotation
.end field

.field private final mFirmwareUpdateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/update/FirmwareUpdateController;",
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

.field private final mServiceNotificationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/service/ServiceNotificationController;",
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

.field private final mWakelockManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/wakelock/WakelockManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/CommunicationObservable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/webservices/TexaService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/update/FirmwareUpdateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/wakelock/WakelockManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/service/ServiceNotificationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;->mCurrentTripProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p2, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;->mAccessoryProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p3, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;->mCommunicationObservableProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p4, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;->mCommunicationProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p5, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;->mTexaServiceProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p6, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;->mFirmwareUpdateControllerProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p7, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;->mWakelockManagerProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p8, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;->mServiceNotificationControllerProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p9, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;->mAccessoryProvider2:Ljavax/inject/Provider;

    .line 61
    iput-object p10, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;->mProfileProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/CommunicationObservable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/webservices/TexaService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/update/FirmwareUpdateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/wakelock/WakelockManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/service/ServiceNotificationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/update/FirmwareUpdateService;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v11, Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v11
.end method

.method public static injectMAccessory(Lcom/texa/careapp/app/update/FirmwareUpdateService;Lcom/texa/carelib/care/accessory/Accessory;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    return-void
.end method

.method public static injectMFirmwareUpdateController(Lcom/texa/careapp/app/update/FirmwareUpdateService;Lcom/texa/careapp/app/update/FirmwareUpdateController;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService;->mFirmwareUpdateController:Lcom/texa/careapp/app/update/FirmwareUpdateController;

    return-void
.end method

.method public static injectMProfile(Lcom/texa/careapp/app/update/FirmwareUpdateService;Lcom/texa/carelib/profile/Profile;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService;->mProfile:Lcom/texa/carelib/profile/Profile;

    return-void
.end method

.method public static injectMServiceNotificationController(Lcom/texa/careapp/app/update/FirmwareUpdateService;Lcom/texa/careapp/app/service/ServiceNotificationController;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService;->mServiceNotificationController:Lcom/texa/careapp/app/service/ServiceNotificationController;

    return-void
.end method

.method public static injectMTexaService(Lcom/texa/careapp/app/update/FirmwareUpdateService;Lcom/texa/carelib/webservices/TexaService;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService;->mTexaService:Lcom/texa/carelib/webservices/TexaService;

    return-void
.end method

.method public static injectMWakelockManager(Lcom/texa/careapp/app/update/FirmwareUpdateService;Lcom/texa/careapp/utils/wakelock/WakelockManager;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService;->mWakelockManager:Lcom/texa/careapp/utils/wakelock/WakelockManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/update/FirmwareUpdateService;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;->mCurrentTripProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/RxCareService_MembersInjector;->injectMCurrentTrip(Lcom/texa/careapp/app/service/RxCareService;Lcom/texa/carelib/care/trips/CurrentTrip;)V

    .line 78
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;->mAccessoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/RxCareService_MembersInjector;->injectMAccessory(Lcom/texa/careapp/app/service/RxCareService;Lcom/texa/carelib/care/accessory/Accessory;)V

    .line 79
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;->mCommunicationObservableProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/RxCareService_MembersInjector;->injectMCommunicationObservable(Lcom/texa/careapp/app/service/RxCareService;Lcom/texa/careapp/carelib/CommunicationObservable;)V

    .line 80
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;->mCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/RxCareService_MembersInjector;->injectMCommunication(Lcom/texa/careapp/app/service/RxCareService;Lcom/texa/carelib/communication/Communication;)V

    .line 81
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;->mTexaServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/webservices/TexaService;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;->injectMTexaService(Lcom/texa/careapp/app/update/FirmwareUpdateService;Lcom/texa/carelib/webservices/TexaService;)V

    .line 82
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;->mFirmwareUpdateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/update/FirmwareUpdateController;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;->injectMFirmwareUpdateController(Lcom/texa/careapp/app/update/FirmwareUpdateService;Lcom/texa/careapp/app/update/FirmwareUpdateController;)V

    .line 83
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;->mWakelockManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/wakelock/WakelockManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;->injectMWakelockManager(Lcom/texa/careapp/app/update/FirmwareUpdateService;Lcom/texa/careapp/utils/wakelock/WakelockManager;)V

    .line 84
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;->mServiceNotificationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/service/ServiceNotificationController;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;->injectMServiceNotificationController(Lcom/texa/careapp/app/update/FirmwareUpdateService;Lcom/texa/careapp/app/service/ServiceNotificationController;)V

    .line 85
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;->mAccessoryProvider2:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;->injectMAccessory(Lcom/texa/careapp/app/update/FirmwareUpdateService;Lcom/texa/carelib/care/accessory/Accessory;)V

    .line 86
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;->mProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/profile/Profile;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;->injectMProfile(Lcom/texa/careapp/app/update/FirmwareUpdateService;Lcom/texa/carelib/profile/Profile;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Lcom/texa/careapp/app/update/FirmwareUpdateService;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;->injectMembers(Lcom/texa/careapp/app/update/FirmwareUpdateService;)V

    return-void
.end method

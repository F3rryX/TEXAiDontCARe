.class public final Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen_MembersInjector;
.super Ljava/lang/Object;
.source "SettingsVehicleScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;",
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

.field private final mCommunicationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
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

.field private final mTexaCareApiServiceUserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
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

.field private final mVehicleParametersManagerV2Provider:Ljavax/inject/Provider;
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
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/parameters/VehicleParametersManagerV2;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen_MembersInjector;->mTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p2, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p3, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p4, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen_MembersInjector;->mCommunicationProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p5, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen_MembersInjector;->mCAReWorkerManagerProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p6, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen_MembersInjector;->mVehicleParametersManagerV2Provider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/parameters/VehicleParametersManagerV2;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance v7, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen_MembersInjector;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static injectMCAReWorkerManager(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;Lcom/texa/careapp/sync/CAReWorkerManager;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    return-void
.end method

.method public static injectMCommunication(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;Lcom/texa/carelib/communication/Communication;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mCommunication:Lcom/texa/carelib/communication/Communication;

    return-void
.end method

.method public static injectMDongleDataManager(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMTexaCareApiServiceUser(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    return-void
.end method

.method public static injectMVehicleDataManager(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;Lcom/texa/careapp/utils/VehicleDataManager;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    return-void
.end method

.method public static injectMVehicleParametersManagerV2(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;->mVehicleParametersManagerV2:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen_MembersInjector;->mTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen_MembersInjector;->injectMTexaCareApiServiceUser(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 61
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 62
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 63
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen_MembersInjector;->mCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen_MembersInjector;->injectMCommunication(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;Lcom/texa/carelib/communication/Communication;)V

    .line 64
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen_MembersInjector;->mCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen_MembersInjector;->injectMCAReWorkerManager(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    .line 65
    iget-object v0, p0, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen_MembersInjector;->mVehicleParametersManagerV2Provider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen_MembersInjector;->injectMVehicleParametersManagerV2(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)V

    return-void
.end method

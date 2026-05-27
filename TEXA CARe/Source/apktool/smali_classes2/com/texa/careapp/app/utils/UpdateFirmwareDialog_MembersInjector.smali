.class public final Lcom/texa/careapp/app/utils/UpdateFirmwareDialog_MembersInjector;
.super Ljava/lang/Object;
.source "UpdateFirmwareDialog_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;",
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

.field private final mCareObserverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
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

.field private final mFirmwareUpdateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/update/FirmwareUpdateController;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/webservices/TexaService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/update/FirmwareUpdateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog_MembersInjector;->mCareObserverProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p2, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p3, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog_MembersInjector;->mTexaServiceProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p4, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog_MembersInjector;->mFirmwareUpdateControllerProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p5, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog_MembersInjector;->mAccessoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/webservices/TexaService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/update/FirmwareUpdateController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v6, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog_MembersInjector;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static injectMAccessory(Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;Lcom/texa/carelib/care/accessory/Accessory;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    return-void
.end method

.method public static injectMCareObserver(Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;Lcom/texa/careapp/carelib/ICareObserver;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    return-void
.end method

.method public static injectMDongleDataManager(Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMFirmwareUpdateController(Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;Lcom/texa/careapp/app/update/FirmwareUpdateController;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mFirmwareUpdateController:Lcom/texa/careapp/app/update/FirmwareUpdateController;

    return-void
.end method

.method public static injectMTexaService(Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;Lcom/texa/carelib/webservices/TexaService;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;->mTexaService:Lcom/texa/carelib/webservices/TexaService;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog_MembersInjector;->mCareObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/ICareObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog_MembersInjector;->injectMCareObserver(Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;Lcom/texa/careapp/carelib/ICareObserver;)V

    .line 54
    iget-object v0, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 55
    iget-object v0, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog_MembersInjector;->mTexaServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/webservices/TexaService;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog_MembersInjector;->injectMTexaService(Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;Lcom/texa/carelib/webservices/TexaService;)V

    .line 56
    iget-object v0, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog_MembersInjector;->mFirmwareUpdateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/update/FirmwareUpdateController;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog_MembersInjector;->injectMFirmwareUpdateController(Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;Lcom/texa/careapp/app/update/FirmwareUpdateController;)V

    .line 57
    iget-object v0, p0, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog_MembersInjector;->mAccessoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog_MembersInjector;->injectMAccessory(Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;Lcom/texa/carelib/care/accessory/Accessory;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog_MembersInjector;->injectMembers(Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;)V

    return-void
.end method

.class public final Lcom/texa/careapp/sync/jobs/ServiceOneOffJob_MembersInjector;
.super Ljava/lang/Object;
.source "ServiceOneOffJob_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDongleDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoginHelperRxProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
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

.field private final mTexaCareApiServiceProvider:Ljavax/inject/Provider;
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/NotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/ServiceDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob_MembersInjector;->mNotificationManagerProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p2, p0, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob_MembersInjector;->mLoginHelperRxProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p3, p0, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob_MembersInjector;->mServiceDataManagerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p4, p0, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob_MembersInjector;->mTexaCareApiServiceProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p5, p0, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p6, p0, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/NotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/ServiceDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance v7, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob_MembersInjector;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static injectMDongleDataManager(Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMLoginHelperRx(Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;Lcom/texa/careapp/utils/LoginHelperRx;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;->mLoginHelperRx:Lcom/texa/careapp/utils/LoginHelperRx;

    return-void
.end method

.method public static injectMNotificationManager(Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;Landroid/app/NotificationManager;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method public static injectMServiceDataManager(Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;Lcom/texa/careapp/utils/ServiceDataManager;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    return-void
.end method

.method public static injectMTexaCareApiService(Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    return-void
.end method

.method public static injectMVehicleDataManager(Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;Lcom/texa/careapp/utils/VehicleDataManager;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob_MembersInjector;->mNotificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob_MembersInjector;->injectMNotificationManager(Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;Landroid/app/NotificationManager;)V

    .line 61
    iget-object v0, p0, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob_MembersInjector;->mLoginHelperRxProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/LoginHelperRx;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob_MembersInjector;->injectMLoginHelperRx(Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 62
    iget-object v0, p0, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob_MembersInjector;->mServiceDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob_MembersInjector;->injectMServiceDataManager(Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;Lcom/texa/careapp/utils/ServiceDataManager;)V

    .line 63
    iget-object v0, p0, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob_MembersInjector;->mTexaCareApiServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 64
    iget-object v0, p0, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 65
    iget-object v0, p0, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;Lcom/texa/careapp/model/DongleDataManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob_MembersInjector;->injectMembers(Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;)V

    return-void
.end method

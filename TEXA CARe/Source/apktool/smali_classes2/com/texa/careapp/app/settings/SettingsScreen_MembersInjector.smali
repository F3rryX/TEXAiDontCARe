.class public final Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;
.super Ljava/lang/Object;
.source "SettingsScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/settings/SettingsScreen;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCommunicationObservableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/CommunicationObservable;",
            ">;"
        }
    .end annotation
.end field

.field private final mContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
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

.field private final mLoginHelperRxProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
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

.field private final mTexaCareApiServiceUserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
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

.field private final mUserDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
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

.field private final mVehicleObserverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/webservices/TexaService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/CommunicationObservable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p2, p0, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->mProfileProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p3, p0, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->mTexaServiceProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p4, p0, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p5, p0, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p6, p0, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p7, p0, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->mCommunicationObservableProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p8, p0, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p9, p0, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->mTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p10, p0, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->mLoginHelperRxProvider:Ljavax/inject/Provider;

    .line 67
    iput-object p11, p0, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/webservices/TexaService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/CommunicationObservable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/settings/SettingsScreen;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v12, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v12
.end method

.method public static injectMCommunicationObservable(Lcom/texa/careapp/app/settings/SettingsScreen;Lcom/texa/careapp/carelib/CommunicationObservable;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

    return-void
.end method

.method public static injectMContext(Lcom/texa/careapp/app/settings/SettingsScreen;Landroid/content/Context;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static injectMDongleDataManager(Lcom/texa/careapp/app/settings/SettingsScreen;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMEventBus(Lcom/texa/careapp/app/settings/SettingsScreen;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public static injectMLoginHelperRx(Lcom/texa/careapp/app/settings/SettingsScreen;Lcom/texa/careapp/utils/LoginHelperRx;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mLoginHelperRx:Lcom/texa/careapp/utils/LoginHelperRx;

    return-void
.end method

.method public static injectMProfile(Lcom/texa/careapp/app/settings/SettingsScreen;Lcom/texa/carelib/profile/Profile;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mProfile:Lcom/texa/carelib/profile/Profile;

    return-void
.end method

.method public static injectMTexaCareApiServiceUser(Lcom/texa/careapp/app/settings/SettingsScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    return-void
.end method

.method public static injectMTexaService(Lcom/texa/careapp/app/settings/SettingsScreen;Lcom/texa/carelib/webservices/TexaService;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mTexaService:Lcom/texa/carelib/webservices/TexaService;

    return-void
.end method

.method public static injectMUserDataManager(Lcom/texa/careapp/app/settings/SettingsScreen;Lcom/texa/careapp/utils/UserDataManager;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    return-void
.end method

.method public static injectMVehicleDataManager(Lcom/texa/careapp/app/settings/SettingsScreen;Lcom/texa/careapp/utils/VehicleDataManager;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    return-void
.end method

.method public static injectMVehicleObserver(Lcom/texa/careapp/app/settings/SettingsScreen;Lcom/texa/careapp/utils/VehicleObserver;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/settings/SettingsScreen;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->injectMContext(Lcom/texa/careapp/app/settings/SettingsScreen;Landroid/content/Context;)V

    .line 85
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->mProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/profile/Profile;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->injectMProfile(Lcom/texa/careapp/app/settings/SettingsScreen;Lcom/texa/carelib/profile/Profile;)V

    .line 86
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->mTexaServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/webservices/TexaService;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->injectMTexaService(Lcom/texa/careapp/app/settings/SettingsScreen;Lcom/texa/carelib/webservices/TexaService;)V

    .line 87
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/settings/SettingsScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 88
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/settings/SettingsScreen;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 89
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/app/settings/SettingsScreen;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 90
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->mCommunicationObservableProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->injectMCommunicationObservable(Lcom/texa/careapp/app/settings/SettingsScreen;Lcom/texa/careapp/carelib/CommunicationObservable;)V

    .line 91
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/settings/SettingsScreen;Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 92
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->mTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->injectMTexaCareApiServiceUser(Lcom/texa/careapp/app/settings/SettingsScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 93
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->mLoginHelperRxProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/LoginHelperRx;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->injectMLoginHelperRx(Lcom/texa/careapp/app/settings/SettingsScreen;Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 94
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/settings/SettingsScreen;Lorg/greenrobot/eventbus/EventBus;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lcom/texa/careapp/app/settings/SettingsScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/settings/SettingsScreen;)V

    return-void
.end method

.class public final Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;
.super Ljava/lang/Object;
.source "NavigationDrawerFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/base/NavigationDrawerFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCommunicationObserverProvider:Ljavax/inject/Provider;
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

.field private final mSharedPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final mSosFeatureManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/CommunicationObservable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p2, p0, Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p3, p0, Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p4, p0, Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;->mCommunicationObserverProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p5, p0, Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;->mCommunicationProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p6, p0, Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;->mSosFeatureManagerProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p7, p0, Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p8, p0, Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;->mSharedPreferencesProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/CommunicationObservable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/base/NavigationDrawerFragment;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance v9, Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v9
.end method

.method public static injectMCommunication(Lcom/texa/careapp/base/NavigationDrawerFragment;Lcom/texa/carelib/communication/Communication;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mCommunication:Lcom/texa/carelib/communication/Communication;

    return-void
.end method

.method public static injectMCommunicationObserver(Lcom/texa/careapp/base/NavigationDrawerFragment;Lcom/texa/careapp/carelib/CommunicationObservable;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mCommunicationObserver:Lcom/texa/careapp/carelib/CommunicationObservable;

    return-void
.end method

.method public static injectMContext(Lcom/texa/careapp/base/NavigationDrawerFragment;Landroid/content/Context;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static injectMDongleDataManager(Lcom/texa/careapp/base/NavigationDrawerFragment;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMEventBus(Lcom/texa/careapp/base/NavigationDrawerFragment;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public static injectMSharedPreferences(Lcom/texa/careapp/base/NavigationDrawerFragment;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static injectMSosFeatureManager(Lcom/texa/careapp/base/NavigationDrawerFragment;Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    return-void
.end method

.method public static injectMVehicleObserver(Lcom/texa/careapp/base/NavigationDrawerFragment;Lcom/texa/careapp/utils/VehicleObserver;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/base/NavigationDrawerFragment;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;->injectMEventBus(Lcom/texa/careapp/base/NavigationDrawerFragment;Lorg/greenrobot/eventbus/EventBus;)V

    .line 69
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/NavigationDrawerFragment;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 70
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/base/NavigationDrawerFragment;Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 71
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;->mCommunicationObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;->injectMCommunicationObserver(Lcom/texa/careapp/base/NavigationDrawerFragment;Lcom/texa/careapp/carelib/CommunicationObservable;)V

    .line 72
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;->mCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;->injectMCommunication(Lcom/texa/careapp/base/NavigationDrawerFragment;Lcom/texa/carelib/communication/Communication;)V

    .line 73
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;->mSosFeatureManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;->injectMSosFeatureManager(Lcom/texa/careapp/base/NavigationDrawerFragment;Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;)V

    .line 74
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;->injectMContext(Lcom/texa/careapp/base/NavigationDrawerFragment;Landroid/content/Context;)V

    .line 75
    iget-object v0, p0, Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;->mSharedPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/base/NavigationDrawerFragment;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/texa/careapp/base/NavigationDrawerFragment;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;->injectMembers(Lcom/texa/careapp/base/NavigationDrawerFragment;)V

    return-void
.end method

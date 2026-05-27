.class public final Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;
.super Ljava/lang/Object;
.source "ContactsScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/sos/ContactsScreen;",
        ">;"
    }
.end annotation


# instance fields
.field private final eventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
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

.field private final mFlavorDelegatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/FlavorDelegator;",
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

.field private final mMechanicDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/MechanicDataManager;",
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

.field private final mServiceDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/ServiceDataManager;",
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

.field private final mUserDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
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
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/FlavorDelegator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/MechanicDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/remotelogger/LoggerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/ServiceDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p2, p0, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->mFlavorDelegatorProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p3, p0, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->mCareObserverProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p4, p0, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->mCommunicationProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p5, p0, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p6, p0, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->mSosFeatureManagerProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p7, p0, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->mMechanicDataManagerProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p8, p0, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->eventBusProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p9, p0, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->mLoggerManagerProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p10, p0, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->mServiceDataManagerProvider:Ljavax/inject/Provider;

    .line 67
    iput-object p11, p0, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->mProfileProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/FlavorDelegator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/MechanicDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/remotelogger/LoggerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/ServiceDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/sos/ContactsScreen;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v12, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;

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

    invoke-direct/range {v0 .. v11}, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v12
.end method

.method public static injectEventBus(Lcom/texa/careapp/app/sos/ContactsScreen;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public static injectMCareObserver(Lcom/texa/careapp/app/sos/ContactsScreen;Lcom/texa/careapp/carelib/ICareObserver;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    return-void
.end method

.method public static injectMCommunication(Lcom/texa/careapp/app/sos/ContactsScreen;Lcom/texa/carelib/communication/Communication;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mCommunication:Lcom/texa/carelib/communication/Communication;

    return-void
.end method

.method public static injectMDongleDataManager(Lcom/texa/careapp/app/sos/ContactsScreen;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMFlavorDelegator(Lcom/texa/careapp/app/sos/ContactsScreen;Lcom/texa/careapp/FlavorDelegator;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mFlavorDelegator:Lcom/texa/careapp/FlavorDelegator;

    return-void
.end method

.method public static injectMLoggerManager(Lcom/texa/careapp/app/sos/ContactsScreen;Lcom/texa/careapp/remotelogger/LoggerManager;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    return-void
.end method

.method public static injectMMechanicDataManager(Lcom/texa/careapp/app/sos/ContactsScreen;Lcom/texa/careapp/utils/MechanicDataManager;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mMechanicDataManager:Lcom/texa/careapp/utils/MechanicDataManager;

    return-void
.end method

.method public static injectMProfile(Lcom/texa/careapp/app/sos/ContactsScreen;Lcom/texa/carelib/profile/Profile;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mProfile:Lcom/texa/carelib/profile/Profile;

    return-void
.end method

.method public static injectMServiceDataManager(Lcom/texa/careapp/app/sos/ContactsScreen;Lcom/texa/careapp/utils/ServiceDataManager;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    return-void
.end method

.method public static injectMSosFeatureManager(Lcom/texa/careapp/app/sos/ContactsScreen;Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    return-void
.end method

.method public static injectMUserDataManager(Lcom/texa/careapp/app/sos/ContactsScreen;Lcom/texa/careapp/utils/UserDataManager;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/sos/ContactsScreen;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/sos/ContactsScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 86
    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->mFlavorDelegatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/FlavorDelegator;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->injectMFlavorDelegator(Lcom/texa/careapp/app/sos/ContactsScreen;Lcom/texa/careapp/FlavorDelegator;)V

    .line 87
    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->mCareObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/ICareObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->injectMCareObserver(Lcom/texa/careapp/app/sos/ContactsScreen;Lcom/texa/careapp/carelib/ICareObserver;)V

    .line 88
    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->mCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->injectMCommunication(Lcom/texa/careapp/app/sos/ContactsScreen;Lcom/texa/carelib/communication/Communication;)V

    .line 89
    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/sos/ContactsScreen;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 90
    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->mSosFeatureManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->injectMSosFeatureManager(Lcom/texa/careapp/app/sos/ContactsScreen;Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;)V

    .line 91
    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->mMechanicDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/MechanicDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->injectMMechanicDataManager(Lcom/texa/careapp/app/sos/ContactsScreen;Lcom/texa/careapp/utils/MechanicDataManager;)V

    .line 92
    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->eventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->injectEventBus(Lcom/texa/careapp/app/sos/ContactsScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 93
    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->mLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/app/sos/ContactsScreen;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 94
    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->mServiceDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->injectMServiceDataManager(Lcom/texa/careapp/app/sos/ContactsScreen;Lcom/texa/careapp/utils/ServiceDataManager;)V

    .line 95
    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->mProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/profile/Profile;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->injectMProfile(Lcom/texa/careapp/app/sos/ContactsScreen;Lcom/texa/carelib/profile/Profile;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lcom/texa/careapp/app/sos/ContactsScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/sos/ContactsScreen;)V

    return-void
.end method

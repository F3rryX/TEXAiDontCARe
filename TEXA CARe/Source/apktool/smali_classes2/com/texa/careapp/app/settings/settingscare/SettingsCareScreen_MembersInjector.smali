.class public final Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen_MembersInjector;
.super Ljava/lang/Object;
.source "SettingsCareScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/webservices/TexaService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p2, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p3, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen_MembersInjector;->mCareObserverProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p4, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen_MembersInjector;->mTexaServiceProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p5, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p6, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen_MembersInjector;->mAccessoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/webservices/TexaService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v7, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen_MembersInjector;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static injectMAccessory(Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;Lcom/texa/carelib/care/accessory/Accessory;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    return-void
.end method

.method public static injectMCareObserver(Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;Lcom/texa/careapp/carelib/ICareObserver;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    return-void
.end method

.method public static injectMContext(Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;Landroid/content/Context;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static injectMDongleDataManager(Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMEventBus(Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public static injectMTexaService(Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;Lcom/texa/carelib/webservices/TexaService;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;->mTexaService:Lcom/texa/carelib/webservices/TexaService;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen_MembersInjector;->injectMContext(Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;Landroid/content/Context;)V

    .line 57
    iget-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 58
    iget-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen_MembersInjector;->mCareObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/ICareObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen_MembersInjector;->injectMCareObserver(Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;Lcom/texa/careapp/carelib/ICareObserver;)V

    .line 59
    iget-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen_MembersInjector;->mTexaServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/webservices/TexaService;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen_MembersInjector;->injectMTexaService(Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;Lcom/texa/carelib/webservices/TexaService;)V

    .line 60
    iget-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 61
    iget-object v0, p0, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen_MembersInjector;->mAccessoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen_MembersInjector;->injectMAccessory(Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;Lcom/texa/carelib/care/accessory/Accessory;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;)V

    return-void
.end method

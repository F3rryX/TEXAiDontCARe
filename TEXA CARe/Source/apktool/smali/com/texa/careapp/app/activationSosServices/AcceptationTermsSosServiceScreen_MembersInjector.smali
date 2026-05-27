.class public final Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen_MembersInjector;
.super Ljava/lang/Object;
.source "AcceptationTermsSosServiceScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;",
        ">;"
    }
.end annotation


# instance fields
.field private final caReWorkerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;"
        }
    .end annotation
.end field

.field private final dongleDataManagerProvider:Ljavax/inject/Provider;
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

.field private final mEventBusProvider2:Ljavax/inject/Provider;
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

.field private final mTexaCareApiServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
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

.field private final userDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
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
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen_MembersInjector;->mTexaCareApiServiceProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p2, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p3, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p4, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen_MembersInjector;->userDataManagerProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p5, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen_MembersInjector;->dongleDataManagerProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p6, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen_MembersInjector;->mSharedPreferencesProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p7, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen_MembersInjector;->mEventBusProvider2:Ljavax/inject/Provider;

    .line 52
    iput-object p8, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen_MembersInjector;->caReWorkerManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v9, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen_MembersInjector;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v9
.end method

.method public static injectCaReWorkerManager(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;Lcom/texa/careapp/sync/CAReWorkerManager;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->caReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    return-void
.end method

.method public static injectDongleDataManager(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->dongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMEventBus(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public static injectMSharedPreferences(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static injectUserDataManager(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;Lcom/texa/careapp/utils/UserDataManager;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->userDataManager:Lcom/texa/careapp/utils/UserDataManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen_MembersInjector;->mTexaCareApiServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 68
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 69
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 70
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen_MembersInjector;->userDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen_MembersInjector;->injectUserDataManager(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 71
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen_MembersInjector;->dongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen_MembersInjector;->injectDongleDataManager(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 72
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen_MembersInjector;->mSharedPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;Landroid/content/SharedPreferences;)V

    .line 73
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen_MembersInjector;->mEventBusProvider2:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 74
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen_MembersInjector;->caReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen_MembersInjector;->injectCaReWorkerManager(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;)V

    return-void
.end method

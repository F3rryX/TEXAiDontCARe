.class public final Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;
.super Ljava/lang/Object;
.source "DongleDiscoveryScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;",
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

.field private final mEventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private final mRetrofitErrorParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/RetrofitErrorParser;",
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

.field private final mTexaCareApiServiceClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceClient;",
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

.field private final mTexaProfileDelegateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/TexaProfileDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/TexaProfileDelegate;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/RetrofitErrorParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/CommunicationObservable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->mCommunicationProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p2, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p3, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->mTexaProfileDelegateProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p4, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->mTexaCareApiServiceClientProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p5, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->mRetrofitErrorParserProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p6, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->mCommunicationObservableProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p7, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p8, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->mTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p9, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->mSharedPreferencesProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/TexaProfileDelegate;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/RetrofitErrorParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/CommunicationObservable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v10, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v10
.end method

.method public static injectMCommunication(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Lcom/texa/carelib/communication/Communication;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mCommunication:Lcom/texa/carelib/communication/Communication;

    return-void
.end method

.method public static injectMCommunicationObservable(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Lcom/texa/careapp/carelib/CommunicationObservable;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

    return-void
.end method

.method public static injectMDongleDataManager(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMEventBus(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public static injectMRetrofitErrorParser(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Lcom/texa/careapp/utils/RetrofitErrorParser;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mRetrofitErrorParser:Lcom/texa/careapp/utils/RetrofitErrorParser;

    return-void
.end method

.method public static injectMSharedPreferences(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static injectMTexaCareApiServiceClient(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Lcom/texa/careapp/networking/TexaCareApiServiceClient;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mTexaCareApiServiceClient:Lcom/texa/careapp/networking/TexaCareApiServiceClient;

    return-void
.end method

.method public static injectMTexaCareApiServiceUser(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    return-void
.end method

.method public static injectMTexaProfileDelegate(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Lcom/texa/careapp/utils/TexaProfileDelegate;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->mTexaProfileDelegate:Lcom/texa/careapp/utils/TexaProfileDelegate;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->mCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->injectMCommunication(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Lcom/texa/carelib/communication/Communication;)V

    .line 78
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 79
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->mTexaProfileDelegateProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/TexaProfileDelegate;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->injectMTexaProfileDelegate(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Lcom/texa/careapp/utils/TexaProfileDelegate;)V

    .line 80
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->mTexaCareApiServiceClientProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceClient;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->injectMTexaCareApiServiceClient(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Lcom/texa/careapp/networking/TexaCareApiServiceClient;)V

    .line 81
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->mRetrofitErrorParserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/RetrofitErrorParser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->injectMRetrofitErrorParser(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Lcom/texa/careapp/utils/RetrofitErrorParser;)V

    .line 82
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->mCommunicationObservableProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->injectMCommunicationObservable(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Lcom/texa/careapp/carelib/CommunicationObservable;)V

    .line 83
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 84
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->mTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->injectMTexaCareApiServiceUser(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 85
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->mSharedPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;)V

    return-void
.end method

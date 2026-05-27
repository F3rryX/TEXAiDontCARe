.class public final Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen_MembersInjector;
.super Ljava/lang/Object;
.source "CareAuthenticationScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;",
        ">;"
    }
.end annotation


# instance fields
.field private final mArmadilloSharedPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lat/favre/lib/armadillo/ArmadilloSharedPreferences;",
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

.field private final mICareObserverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
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

.field private final mProfileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/TexaProfileDelegate;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/remotelogger/LoggerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lat/favre/lib/armadillo/ArmadilloSharedPreferences;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p2, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen_MembersInjector;->mTexaProfileDelegateProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p3, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen_MembersInjector;->mProfileProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p4, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen_MembersInjector;->mLoggerManagerProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p5, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen_MembersInjector;->mCommunicationProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p6, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen_MembersInjector;->mICareObserverProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p7, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen_MembersInjector;->mArmadilloSharedPreferencesProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/TexaProfileDelegate;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/remotelogger/LoggerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lat/favre/lib/armadillo/ArmadilloSharedPreferences;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v8, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen_MembersInjector;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static injectMArmadilloSharedPreferences(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;Lat/favre/lib/armadillo/ArmadilloSharedPreferences;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mArmadilloSharedPreferences:Lat/favre/lib/armadillo/ArmadilloSharedPreferences;

    return-void
.end method

.method public static injectMCommunication(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;Lcom/texa/carelib/communication/Communication;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mCommunication:Lcom/texa/carelib/communication/Communication;

    return-void
.end method

.method public static injectMDongleDataManager(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMICareObserver(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;Lcom/texa/careapp/carelib/ICareObserver;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mICareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    return-void
.end method

.method public static injectMLoggerManager(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;Lcom/texa/careapp/remotelogger/LoggerManager;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    return-void
.end method

.method public static injectMProfile(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;Lcom/texa/carelib/profile/Profile;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mProfile:Lcom/texa/carelib/profile/Profile;

    return-void
.end method

.method public static injectMTexaProfileDelegate(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;Lcom/texa/careapp/utils/TexaProfileDelegate;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mTexaProfileDelegate:Lcom/texa/careapp/utils/TexaProfileDelegate;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 65
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen_MembersInjector;->mTexaProfileDelegateProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/TexaProfileDelegate;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen_MembersInjector;->injectMTexaProfileDelegate(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;Lcom/texa/careapp/utils/TexaProfileDelegate;)V

    .line 66
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen_MembersInjector;->mProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/profile/Profile;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen_MembersInjector;->injectMProfile(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;Lcom/texa/carelib/profile/Profile;)V

    .line 67
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen_MembersInjector;->mLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 68
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen_MembersInjector;->mCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen_MembersInjector;->injectMCommunication(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;Lcom/texa/carelib/communication/Communication;)V

    .line 69
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen_MembersInjector;->mICareObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/ICareObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen_MembersInjector;->injectMICareObserver(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;Lcom/texa/careapp/carelib/ICareObserver;)V

    .line 70
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen_MembersInjector;->mArmadilloSharedPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/favre/lib/armadillo/ArmadilloSharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen_MembersInjector;->injectMArmadilloSharedPreferences(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;Lat/favre/lib/armadillo/ArmadilloSharedPreferences;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;)V

    return-void
.end method

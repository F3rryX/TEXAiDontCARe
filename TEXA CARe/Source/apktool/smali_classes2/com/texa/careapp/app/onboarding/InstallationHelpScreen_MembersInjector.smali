.class public final Lcom/texa/careapp/app/onboarding/InstallationHelpScreen_MembersInjector;
.super Ljava/lang/Object;
.source "InstallationHelpScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;",
        ">;"
    }
.end annotation


# instance fields
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

.field private final mPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen_MembersInjector;->mCommunicationProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p2, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen_MembersInjector;->mPreferencesProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p4, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
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
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen_MembersInjector;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMCommunication(Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;Lcom/texa/carelib/communication/Communication;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->mCommunication:Lcom/texa/carelib/communication/Communication;

    return-void
.end method

.method public static injectMDongleDataManager(Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMEventBus(Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public static injectMPreferences(Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;->mPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen_MembersInjector;->mCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen_MembersInjector;->injectMCommunication(Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;Lcom/texa/carelib/communication/Communication;)V

    .line 46
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 47
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen_MembersInjector;->mPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen_MembersInjector;->injectMPreferences(Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;Landroid/content/SharedPreferences;)V

    .line 48
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;Lorg/greenrobot/eventbus/EventBus;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;)V

    return-void
.end method

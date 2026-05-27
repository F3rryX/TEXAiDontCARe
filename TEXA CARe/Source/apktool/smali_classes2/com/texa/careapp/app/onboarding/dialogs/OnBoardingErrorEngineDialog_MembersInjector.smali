.class public final Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog_MembersInjector;
.super Ljava/lang/Object;
.source "OnBoardingErrorEngineDialog_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;",
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

.field private final mEventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p2, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
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
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMDongleDataManager(Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMEventBus(Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public static injectMUserDataManager(Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;Lcom/texa/careapp/utils/UserDataManager;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;Lorg/greenrobot/eventbus/EventBus;)V

    .line 41
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 42
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;Lcom/texa/careapp/utils/UserDataManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog_MembersInjector;->injectMembers(Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;)V

    return-void
.end method

.class public final Lcom/texa/careapp/app/settings/user/SettingsUserScreen_MembersInjector;
.super Ljava/lang/Object;
.source "SettingsUserScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/settings/user/SettingsUserScreen;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCAReWorkerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
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

.field private final mFlavorDelegatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/FlavorDelegator;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/FlavorDelegator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen_MembersInjector;->mFlavorDelegatorProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p2, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p3, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen_MembersInjector;->mCAReWorkerManagerProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p4, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen_MembersInjector;->mLoginHelperRxProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p5, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/FlavorDelegator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/settings/user/SettingsUserScreen;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v6, Lcom/texa/careapp/app/settings/user/SettingsUserScreen_MembersInjector;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static injectMCAReWorkerManager(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;Lcom/texa/careapp/sync/CAReWorkerManager;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    return-void
.end method

.method public static injectMContext(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;Landroid/content/Context;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static injectMFlavorDelegator(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;Lcom/texa/careapp/FlavorDelegator;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mFlavorDelegator:Lcom/texa/careapp/FlavorDelegator;

    return-void
.end method

.method public static injectMLoginHelperRx(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;Lcom/texa/careapp/utils/LoginHelperRx;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mLoginHelperRx:Lcom/texa/careapp/utils/LoginHelperRx;

    return-void
.end method

.method public static injectMUserDataManager(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;Lcom/texa/careapp/utils/UserDataManager;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen_MembersInjector;->mFlavorDelegatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/FlavorDelegator;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen_MembersInjector;->injectMFlavorDelegator(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;Lcom/texa/careapp/FlavorDelegator;)V

    .line 52
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen_MembersInjector;->injectMContext(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;Landroid/content/Context;)V

    .line 53
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen_MembersInjector;->mCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen_MembersInjector;->injectMCAReWorkerManager(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    .line 54
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen_MembersInjector;->mLoginHelperRxProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/LoginHelperRx;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen_MembersInjector;->injectMLoginHelperRx(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 55
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;)V

    return-void
.end method

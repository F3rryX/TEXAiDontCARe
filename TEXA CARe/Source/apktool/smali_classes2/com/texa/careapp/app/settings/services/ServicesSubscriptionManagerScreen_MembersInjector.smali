.class public final Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen_MembersInjector;
.super Ljava/lang/Object;
.source "ServicesSubscriptionManagerScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p2, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen_MembersInjector;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMContext(Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;Landroid/content/Context;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static injectMUserDataManager(Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;Lcom/texa/careapp/utils/UserDataManager;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen_MembersInjector;->injectMContext(Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;Landroid/content/Context;)V

    .line 35
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;)V

    return-void
.end method

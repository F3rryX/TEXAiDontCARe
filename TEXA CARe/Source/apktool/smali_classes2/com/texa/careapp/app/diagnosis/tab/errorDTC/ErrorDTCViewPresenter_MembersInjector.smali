.class public final Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter_MembersInjector;
.super Ljava/lang/Object;
.source "ErrorDTCViewPresenter_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;",
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

.field private final mDongleDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mLampsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/lamps/LampsManager;",
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
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/lamps/LampsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p2, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter_MembersInjector;->mLampsManagerProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/lamps/LampsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMContext(Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;Landroid/content/Context;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static injectMDongleDataManager(Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMLampsManager(Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;Lcom/texa/careapp/lamps/LampsManager;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;->mLampsManager:Lcom/texa/careapp/lamps/LampsManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter_MembersInjector;->injectMContext(Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;Landroid/content/Context;)V

    .line 41
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter_MembersInjector;->mLampsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/lamps/LampsManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter_MembersInjector;->injectMLampsManager(Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;Lcom/texa/careapp/lamps/LampsManager;)V

    .line 42
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;Lcom/texa/careapp/model/DongleDataManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter_MembersInjector;->injectMembers(Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;)V

    return-void
.end method

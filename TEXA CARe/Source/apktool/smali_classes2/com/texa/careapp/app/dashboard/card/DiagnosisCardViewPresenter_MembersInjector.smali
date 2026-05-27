.class public final Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter_MembersInjector;
.super Ljava/lang/Object;
.source "DiagnosisCardViewPresenter_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/lamps/LampsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p2, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter_MembersInjector;->mLampsManagerProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p4, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter_MembersInjector;->mCommunicationProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/lamps/LampsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter_MembersInjector;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMCommunication(Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;Lcom/texa/carelib/communication/Communication;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mCommunication:Lcom/texa/carelib/communication/Communication;

    return-void
.end method

.method public static injectMContext(Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;Landroid/content/Context;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static injectMDongleDataManager(Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMLampsManager(Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;Lcom/texa/careapp/lamps/LampsManager;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mLampsManager:Lcom/texa/careapp/lamps/LampsManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter_MembersInjector;->injectMContext(Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;Landroid/content/Context;)V

    .line 47
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 48
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter_MembersInjector;->mLampsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/lamps/LampsManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter_MembersInjector;->injectMLampsManager(Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;Lcom/texa/careapp/lamps/LampsManager;)V

    .line 49
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter_MembersInjector;->mCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter_MembersInjector;->injectMCommunication(Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;Lcom/texa/carelib/communication/Communication;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter_MembersInjector;->injectMembers(Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;)V

    return-void
.end method

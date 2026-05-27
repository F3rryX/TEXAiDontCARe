.class public final Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2_MembersInjector;
.super Ljava/lang/Object;
.source "ParametersViewPresenterV2_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;",
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

.field private final mVehicleParamMapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/parameters/VehicleParamMapperV2;",
            ">;"
        }
    .end annotation
.end field

.field private final mVehicleParametersManagerV2Provider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/parameters/VehicleParametersManagerV2;",
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
            "Lcom/texa/careapp/parameters/VehicleParametersManagerV2;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/parameters/VehicleParamMapperV2;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/CommunicationObservable;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p2, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2_MembersInjector;->mVehicleParametersManagerV2Provider:Ljavax/inject/Provider;

    .line 41
    iput-object p3, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2_MembersInjector;->mVehicleParamMapperProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p4, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p5, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2_MembersInjector;->mCommunicationProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p6, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2_MembersInjector;->mCommunicationObservableProvider:Ljavax/inject/Provider;

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
            "Lcom/texa/careapp/parameters/VehicleParametersManagerV2;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/parameters/VehicleParamMapperV2;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/CommunicationObservable;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v7, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2_MembersInjector;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static injectMCommunication(Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;Lcom/texa/carelib/communication/Communication;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mCommunication:Lcom/texa/carelib/communication/Communication;

    return-void
.end method

.method public static injectMCommunicationObservable(Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;Lcom/texa/careapp/carelib/CommunicationObservable;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

    return-void
.end method

.method public static injectMContext(Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;Landroid/content/Context;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static injectMDongleDataManager(Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMVehicleParamMapper(Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;Lcom/texa/careapp/parameters/VehicleParamMapperV2;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mVehicleParamMapper:Lcom/texa/careapp/parameters/VehicleParamMapperV2;

    return-void
.end method

.method public static injectMVehicleParametersManagerV2(Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mVehicleParametersManagerV2:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2_MembersInjector;->injectMContext(Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;Landroid/content/Context;)V

    .line 60
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2_MembersInjector;->mVehicleParametersManagerV2Provider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2_MembersInjector;->injectMVehicleParametersManagerV2(Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V

    .line 61
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2_MembersInjector;->mVehicleParamMapperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2_MembersInjector;->injectMVehicleParamMapper(Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;Lcom/texa/careapp/parameters/VehicleParamMapperV2;)V

    .line 62
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 63
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2_MembersInjector;->mCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2_MembersInjector;->injectMCommunication(Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;Lcom/texa/carelib/communication/Communication;)V

    .line 64
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2_MembersInjector;->mCommunicationObservableProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2_MembersInjector;->injectMCommunicationObservable(Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;Lcom/texa/careapp/carelib/CommunicationObservable;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2_MembersInjector;->injectMembers(Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;)V

    return-void
.end method

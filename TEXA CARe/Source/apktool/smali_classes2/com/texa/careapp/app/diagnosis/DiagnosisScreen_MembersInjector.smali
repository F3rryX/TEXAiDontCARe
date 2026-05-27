.class public final Lcom/texa/careapp/app/diagnosis/DiagnosisScreen_MembersInjector;
.super Ljava/lang/Object;
.source "DiagnosisScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;",
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

.field private final mPercentColorHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/PercentColorHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final mVehicleObserverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final vehicleParametersManagerProvider:Ljavax/inject/Provider;
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
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/PercentColorHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/CommunicationObservable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/lamps/LampsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/parameters/VehicleParametersManagerV2;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p2, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen_MembersInjector;->mPercentColorHelperProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p3, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen_MembersInjector;->mCommunicationObservableProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p4, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen_MembersInjector;->mLampsManagerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p5, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen_MembersInjector;->vehicleParametersManagerProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p6, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/PercentColorHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/CommunicationObservable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/lamps/LampsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/parameters/VehicleParametersManagerV2;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v7, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen_MembersInjector;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static injectMCommunicationObservable(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;Lcom/texa/careapp/carelib/CommunicationObservable;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

    return-void
.end method

.method public static injectMDongleDataManager(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMLampsManager(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;Lcom/texa/careapp/lamps/LampsManager;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mLampsManager:Lcom/texa/careapp/lamps/LampsManager;

    return-void
.end method

.method public static injectMPercentColorHelper(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;Lcom/texa/careapp/utils/PercentColorHelper;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mPercentColorHelper:Lcom/texa/careapp/utils/PercentColorHelper;

    return-void
.end method

.method public static injectMVehicleObserver(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;Lcom/texa/careapp/utils/VehicleObserver;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    return-void
.end method

.method public static injectVehicleParametersManager(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->vehicleParametersManager:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 60
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen_MembersInjector;->mPercentColorHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/PercentColorHelper;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen_MembersInjector;->injectMPercentColorHelper(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;Lcom/texa/careapp/utils/PercentColorHelper;)V

    .line 61
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen_MembersInjector;->mCommunicationObservableProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen_MembersInjector;->injectMCommunicationObservable(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;Lcom/texa/careapp/carelib/CommunicationObservable;)V

    .line 62
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen_MembersInjector;->mLampsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/lamps/LampsManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen_MembersInjector;->injectMLampsManager(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;Lcom/texa/careapp/lamps/LampsManager;)V

    .line 63
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen_MembersInjector;->vehicleParametersManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen_MembersInjector;->injectVehicleParametersManager(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V

    .line 64
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;Lcom/texa/careapp/utils/VehicleObserver;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;)V

    return-void
.end method

.class public final Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;
.super Ljava/lang/Object;
.source "ProblemResolutionScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;",
        ">;"
    }
.end annotation


# instance fields
.field private final communicationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;"
        }
    .end annotation
.end field

.field private final mCareObserverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
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

.field private final mCurrentTripProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
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

.field private final mVehicleParametersManagerV2Provider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/parameters/VehicleParametersManagerV2;",
            ">;"
        }
    .end annotation
.end field

.field private final texaCareApiServiceUserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Lcom/texa/careapp/carelib/ICareObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p2, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;->mVehicleParametersManagerV2Provider:Ljavax/inject/Provider;

    .line 47
    iput-object p3, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;->mCareObserverProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p4, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;->mCurrentTripProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p5, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;->mAccessoryProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p6, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p7, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;->communicationProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p8, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;->texaCareApiServiceUserProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 10
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
            "Lcom/texa/careapp/carelib/ICareObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v9, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v9
.end method

.method public static injectCommunication(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;Lcom/texa/carelib/communication/Communication;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->communication:Lcom/texa/carelib/communication/Communication;

    return-void
.end method

.method public static injectMAccessory(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;Lcom/texa/carelib/care/accessory/Accessory;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    return-void
.end method

.method public static injectMCareObserver(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;Lcom/texa/careapp/carelib/ICareObserver;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    return-void
.end method

.method public static injectMContext(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;Landroid/content/Context;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static injectMCurrentTrip(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;Lcom/texa/carelib/care/trips/CurrentTrip;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    return-void
.end method

.method public static injectMVehicleObserver(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;Lcom/texa/careapp/utils/VehicleObserver;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    return-void
.end method

.method public static injectMVehicleParametersManagerV2(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->mVehicleParametersManagerV2:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    return-void
.end method

.method public static injectTexaCareApiServiceUser(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;->texaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;->injectMContext(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;Landroid/content/Context;)V

    .line 67
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;->mVehicleParametersManagerV2Provider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;->injectMVehicleParametersManagerV2(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V

    .line 68
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;->mCareObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/ICareObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;->injectMCareObserver(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;Lcom/texa/careapp/carelib/ICareObserver;)V

    .line 69
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;->mCurrentTripProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;->injectMCurrentTrip(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;Lcom/texa/carelib/care/trips/CurrentTrip;)V

    .line 70
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;->mAccessoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;->injectMAccessory(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;Lcom/texa/carelib/care/accessory/Accessory;)V

    .line 71
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 72
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;->communicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;->injectCommunication(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;Lcom/texa/carelib/communication/Communication;)V

    .line 73
    iget-object v0, p0, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;->texaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;->injectTexaCareApiServiceUser(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;)V

    return-void
.end method

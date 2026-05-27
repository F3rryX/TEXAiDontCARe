.class public final Lcom/texa/careapp/app/service/RxCareService_MembersInjector;
.super Ljava/lang/Object;
.source "RxCareService_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/service/RxCareService;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccessoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;"
        }
    .end annotation
.end field

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

.field private final mCurrentTripProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
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
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/CommunicationObservable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/texa/careapp/app/service/RxCareService_MembersInjector;->mCurrentTripProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p2, p0, Lcom/texa/careapp/app/service/RxCareService_MembersInjector;->mAccessoryProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/texa/careapp/app/service/RxCareService_MembersInjector;->mCommunicationObservableProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p4, p0, Lcom/texa/careapp/app/service/RxCareService_MembersInjector;->mCommunicationProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/CommunicationObservable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/service/RxCareService;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/texa/careapp/app/service/RxCareService_MembersInjector;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/texa/careapp/app/service/RxCareService_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMAccessory(Lcom/texa/careapp/app/service/RxCareService;Lcom/texa/carelib/care/accessory/Accessory;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/texa/careapp/app/service/RxCareService;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    return-void
.end method

.method public static injectMCommunication(Lcom/texa/careapp/app/service/RxCareService;Lcom/texa/carelib/communication/Communication;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/texa/careapp/app/service/RxCareService;->mCommunication:Lcom/texa/carelib/communication/Communication;

    return-void
.end method

.method public static injectMCommunicationObservable(Lcom/texa/careapp/app/service/RxCareService;Lcom/texa/careapp/carelib/CommunicationObservable;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/texa/careapp/app/service/RxCareService;->mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

    return-void
.end method

.method public static injectMCurrentTrip(Lcom/texa/careapp/app/service/RxCareService;Lcom/texa/carelib/care/trips/CurrentTrip;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/texa/careapp/app/service/RxCareService;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/service/RxCareService;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/texa/careapp/app/service/RxCareService_MembersInjector;->mCurrentTripProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/RxCareService_MembersInjector;->injectMCurrentTrip(Lcom/texa/careapp/app/service/RxCareService;Lcom/texa/carelib/care/trips/CurrentTrip;)V

    .line 47
    iget-object v0, p0, Lcom/texa/careapp/app/service/RxCareService_MembersInjector;->mAccessoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/RxCareService_MembersInjector;->injectMAccessory(Lcom/texa/careapp/app/service/RxCareService;Lcom/texa/carelib/care/accessory/Accessory;)V

    .line 48
    iget-object v0, p0, Lcom/texa/careapp/app/service/RxCareService_MembersInjector;->mCommunicationObservableProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/RxCareService_MembersInjector;->injectMCommunicationObservable(Lcom/texa/careapp/app/service/RxCareService;Lcom/texa/careapp/carelib/CommunicationObservable;)V

    .line 49
    iget-object v0, p0, Lcom/texa/careapp/app/service/RxCareService_MembersInjector;->mCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/RxCareService_MembersInjector;->injectMCommunication(Lcom/texa/careapp/app/service/RxCareService;Lcom/texa/carelib/communication/Communication;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/texa/careapp/app/service/RxCareService;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/service/RxCareService_MembersInjector;->injectMembers(Lcom/texa/careapp/app/service/RxCareService;)V

    return-void
.end method

.class public final Lcom/texa/careapp/app/settings/SettingsAdapter_MembersInjector;
.super Ljava/lang/Object;
.source "SettingsAdapter_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/settings/SettingsAdapter;",
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

.field private final mServiceDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/ServiceDataManager;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/CommunicationObservable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/ServiceDataManager;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/texa/careapp/app/settings/SettingsAdapter_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p2, p0, Lcom/texa/careapp/app/settings/SettingsAdapter_MembersInjector;->mCommunicationObservableProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/texa/careapp/app/settings/SettingsAdapter_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p4, p0, Lcom/texa/careapp/app/settings/SettingsAdapter_MembersInjector;->mServiceDataManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/CommunicationObservable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/ServiceDataManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/settings/SettingsAdapter;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/texa/careapp/app/settings/SettingsAdapter_MembersInjector;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/texa/careapp/app/settings/SettingsAdapter_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMCommunicationObservable(Lcom/texa/careapp/app/settings/SettingsAdapter;Lcom/texa/careapp/carelib/CommunicationObservable;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

    return-void
.end method

.method public static injectMDongleDataManager(Lcom/texa/careapp/app/settings/SettingsAdapter;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMServiceDataManager(Lcom/texa/careapp/app/settings/SettingsAdapter;Lcom/texa/careapp/utils/ServiceDataManager;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    return-void
.end method

.method public static injectMVehicleObserver(Lcom/texa/careapp/app/settings/SettingsAdapter;Lcom/texa/careapp/utils/VehicleObserver;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/settings/SettingsAdapter;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsAdapter_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/SettingsAdapter_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/settings/SettingsAdapter;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 48
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsAdapter_MembersInjector;->mCommunicationObservableProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/SettingsAdapter_MembersInjector;->injectMCommunicationObservable(Lcom/texa/careapp/app/settings/SettingsAdapter;Lcom/texa/careapp/carelib/CommunicationObservable;)V

    .line 49
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsAdapter_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/SettingsAdapter_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/settings/SettingsAdapter;Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 50
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsAdapter_MembersInjector;->mServiceDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/SettingsAdapter_MembersInjector;->injectMServiceDataManager(Lcom/texa/careapp/app/settings/SettingsAdapter;Lcom/texa/careapp/utils/ServiceDataManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/texa/careapp/app/settings/SettingsAdapter;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/settings/SettingsAdapter_MembersInjector;->injectMembers(Lcom/texa/careapp/app/settings/SettingsAdapter;)V

    return-void
.end method

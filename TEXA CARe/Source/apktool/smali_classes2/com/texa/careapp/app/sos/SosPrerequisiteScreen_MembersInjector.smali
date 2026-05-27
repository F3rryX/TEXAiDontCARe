.class public final Lcom/texa/careapp/app/sos/SosPrerequisiteScreen_MembersInjector;
.super Ljava/lang/Object;
.source "SosPrerequisiteScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;",
        ">;"
    }
.end annotation


# instance fields
.field private final mChecksFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/checks/ChecksFactory;",
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
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/ServiceDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/checks/ChecksFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p2, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen_MembersInjector;->mServiceDataManagerProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p3, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen_MembersInjector;->mCommunicationProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p4, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen_MembersInjector;->mChecksFactoryProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p5, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/ServiceDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/checks/ChecksFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v6, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen_MembersInjector;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static injectMChecksFactory(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;Lcom/texa/careapp/checks/ChecksFactory;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mChecksFactory:Lcom/texa/careapp/checks/ChecksFactory;

    return-void
.end method

.method public static injectMCommunication(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;Lcom/texa/carelib/communication/Communication;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mCommunication:Lcom/texa/carelib/communication/Communication;

    return-void
.end method

.method public static injectMDongleDataManager(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMServiceDataManager(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;Lcom/texa/careapp/utils/ServiceDataManager;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    return-void
.end method

.method public static injectMUserDataManager(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;Lcom/texa/careapp/utils/UserDataManager;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 55
    iget-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen_MembersInjector;->mServiceDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen_MembersInjector;->injectMServiceDataManager(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;Lcom/texa/careapp/utils/ServiceDataManager;)V

    .line 56
    iget-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen_MembersInjector;->mCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen_MembersInjector;->injectMCommunication(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;Lcom/texa/carelib/communication/Communication;)V

    .line 57
    iget-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen_MembersInjector;->mChecksFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/checks/ChecksFactory;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen_MembersInjector;->injectMChecksFactory(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;Lcom/texa/careapp/checks/ChecksFactory;)V

    .line 58
    iget-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;)V

    return-void
.end method

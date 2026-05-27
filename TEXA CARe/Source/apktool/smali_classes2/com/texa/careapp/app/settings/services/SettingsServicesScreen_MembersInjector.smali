.class public final Lcom/texa/careapp/app/settings/services/SettingsServicesScreen_MembersInjector;
.super Ljava/lang/Object;
.source "SettingsServicesScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;",
        ">;"
    }
.end annotation


# instance fields
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

.field private final mSosFeatureManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mTexaCareApiServiceUserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
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
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/ServiceDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p2, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen_MembersInjector;->mTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p3, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen_MembersInjector;->mServiceDataManagerProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p4, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen_MembersInjector;->mSosFeatureManagerProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p5, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/ServiceDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v6, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen_MembersInjector;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static injectMDongleDataManager(Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMServiceDataManager(Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;Lcom/texa/careapp/utils/ServiceDataManager;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    return-void
.end method

.method public static injectMSosFeatureManager(Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    return-void
.end method

.method public static injectMTexaCareApiServiceUser(Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    return-void
.end method

.method public static injectMUserDataManager(Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;Lcom/texa/careapp/utils/UserDataManager;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 54
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen_MembersInjector;->mTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen_MembersInjector;->injectMTexaCareApiServiceUser(Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 55
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen_MembersInjector;->mServiceDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen_MembersInjector;->injectMServiceDataManager(Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;Lcom/texa/careapp/utils/ServiceDataManager;)V

    .line 56
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen_MembersInjector;->mSosFeatureManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen_MembersInjector;->injectMSosFeatureManager(Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;)V

    .line 57
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;Lcom/texa/careapp/model/DongleDataManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;)V

    return-void
.end method

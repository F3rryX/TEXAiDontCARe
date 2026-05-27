.class public final Lcom/texa/careapp/app/update/FirmwareUpdateController_MembersInjector;
.super Ljava/lang/Object;
.source "FirmwareUpdateController_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/update/FirmwareUpdateController;",
        ">;"
    }
.end annotation


# instance fields
.field private final accessoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private final mFirmwareUpgradeProcedureProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedure;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrefsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final profileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
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
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedure;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p2, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController_MembersInjector;->mFirmwareUpgradeProcedureProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p3, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController_MembersInjector;->profileProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p4, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController_MembersInjector;->accessoryProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p5, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController_MembersInjector;->mPrefsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedure;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/update/FirmwareUpdateController;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v6, Lcom/texa/careapp/app/update/FirmwareUpdateController_MembersInjector;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/texa/careapp/app/update/FirmwareUpdateController_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static injectAccessory(Lcom/texa/careapp/app/update/FirmwareUpdateController;Lcom/texa/carelib/care/accessory/Accessory;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->accessory:Lcom/texa/carelib/care/accessory/Accessory;

    return-void
.end method

.method public static injectMEventBus(Lcom/texa/careapp/app/update/FirmwareUpdateController;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public static injectMFirmwareUpgradeProcedure(Lcom/texa/careapp/app/update/FirmwareUpdateController;Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedure;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mFirmwareUpgradeProcedure:Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedure;

    return-void
.end method

.method public static injectMPrefs(Lcom/texa/careapp/app/update/FirmwareUpdateController;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static injectProfile(Lcom/texa/careapp/app/update/FirmwareUpdateController;Lcom/texa/carelib/profile/Profile;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->profile:Lcom/texa/carelib/profile/Profile;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/update/FirmwareUpdateController;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/update/FirmwareUpdateController_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/update/FirmwareUpdateController;Lorg/greenrobot/eventbus/EventBus;)V

    .line 52
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController_MembersInjector;->mFirmwareUpgradeProcedureProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedure;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/update/FirmwareUpdateController_MembersInjector;->injectMFirmwareUpgradeProcedure(Lcom/texa/careapp/app/update/FirmwareUpdateController;Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedure;)V

    .line 53
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController_MembersInjector;->profileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/profile/Profile;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/update/FirmwareUpdateController_MembersInjector;->injectProfile(Lcom/texa/careapp/app/update/FirmwareUpdateController;Lcom/texa/carelib/profile/Profile;)V

    .line 54
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController_MembersInjector;->accessoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/update/FirmwareUpdateController_MembersInjector;->injectAccessory(Lcom/texa/careapp/app/update/FirmwareUpdateController;Lcom/texa/carelib/care/accessory/Accessory;)V

    .line 55
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController_MembersInjector;->mPrefsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/update/FirmwareUpdateController_MembersInjector;->injectMPrefs(Lcom/texa/careapp/app/update/FirmwareUpdateController;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/texa/careapp/app/update/FirmwareUpdateController;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/update/FirmwareUpdateController_MembersInjector;->injectMembers(Lcom/texa/careapp/app/update/FirmwareUpdateController;)V

    return-void
.end method

.class public final Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen_MembersInjector;
.super Ljava/lang/Object;
.source "GeneralSettingsScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;",
        ">;"
    }
.end annotation


# instance fields
.field private final drivingStyleManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/care/eco_driving/DrivingStyleManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceNotificationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/service/ServiceNotificationController;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
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
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/care/eco_driving/DrivingStyleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/service/ServiceNotificationController;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen_MembersInjector;->mSharedPreferencesProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p2, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen_MembersInjector;->drivingStyleManagerProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p3, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen_MembersInjector;->mServiceNotificationControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/care/eco_driving/DrivingStyleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/service/ServiceNotificationController;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectDrivingStyleManager(Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;Lcom/texa/care/eco_driving/DrivingStyleManager;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->drivingStyleManager:Lcom/texa/care/eco_driving/DrivingStyleManager;

    return-void
.end method

.method public static injectMServiceNotificationController(Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;Lcom/texa/careapp/app/service/ServiceNotificationController;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mServiceNotificationController:Lcom/texa/careapp/app/service/ServiceNotificationController;

    return-void
.end method

.method public static injectMSharedPreferences(Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen_MembersInjector;->mSharedPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;Landroid/content/SharedPreferences;)V

    .line 43
    iget-object v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen_MembersInjector;->drivingStyleManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/DrivingStyleManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen_MembersInjector;->injectDrivingStyleManager(Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;Lcom/texa/care/eco_driving/DrivingStyleManager;)V

    .line 44
    iget-object v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen_MembersInjector;->mServiceNotificationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/service/ServiceNotificationController;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen_MembersInjector;->injectMServiceNotificationController(Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;Lcom/texa/careapp/app/service/ServiceNotificationController;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;)V

    return-void
.end method

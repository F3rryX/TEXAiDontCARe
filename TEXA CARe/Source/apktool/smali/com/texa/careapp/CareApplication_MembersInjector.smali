.class public final Lcom/texa/careapp/CareApplication_MembersInjector;
.super Ljava/lang/Object;
.source "CareApplication_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/CareApplication;",
        ">;"
    }
.end annotation


# instance fields
.field private final mLogConfiguratorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LogConfigurator;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/NotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private final mTexaServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/webservices/TexaService;",
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
            "Lcom/texa/careapp/utils/LogConfigurator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/webservices/TexaService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/NotificationManager;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/texa/careapp/CareApplication_MembersInjector;->mLogConfiguratorProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p2, p0, Lcom/texa/careapp/CareApplication_MembersInjector;->mProfileProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lcom/texa/careapp/CareApplication_MembersInjector;->mTexaServiceProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p4, p0, Lcom/texa/careapp/CareApplication_MembersInjector;->mNotificationManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LogConfigurator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/webservices/TexaService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/NotificationManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/CareApplication;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/texa/careapp/CareApplication_MembersInjector;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/texa/careapp/CareApplication_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMLogConfigurator(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/utils/LogConfigurator;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/texa/careapp/CareApplication;->mLogConfigurator:Lcom/texa/careapp/utils/LogConfigurator;

    return-void
.end method

.method public static injectMNotificationManager(Lcom/texa/careapp/CareApplication;Landroid/app/NotificationManager;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/texa/careapp/CareApplication;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method public static injectMProfile(Lcom/texa/careapp/CareApplication;Lcom/texa/carelib/profile/Profile;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/texa/careapp/CareApplication;->mProfile:Lcom/texa/carelib/profile/Profile;

    return-void
.end method

.method public static injectMTexaService(Lcom/texa/careapp/CareApplication;Lcom/texa/carelib/webservices/TexaService;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/texa/careapp/CareApplication;->mTexaService:Lcom/texa/carelib/webservices/TexaService;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/CareApplication;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/texa/careapp/CareApplication_MembersInjector;->mLogConfiguratorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/LogConfigurator;

    invoke-static {p1, v0}, Lcom/texa/careapp/CareApplication_MembersInjector;->injectMLogConfigurator(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/utils/LogConfigurator;)V

    .line 46
    iget-object v0, p0, Lcom/texa/careapp/CareApplication_MembersInjector;->mProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/profile/Profile;

    invoke-static {p1, v0}, Lcom/texa/careapp/CareApplication_MembersInjector;->injectMProfile(Lcom/texa/careapp/CareApplication;Lcom/texa/carelib/profile/Profile;)V

    .line 47
    iget-object v0, p0, Lcom/texa/careapp/CareApplication_MembersInjector;->mTexaServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/webservices/TexaService;

    invoke-static {p1, v0}, Lcom/texa/careapp/CareApplication_MembersInjector;->injectMTexaService(Lcom/texa/careapp/CareApplication;Lcom/texa/carelib/webservices/TexaService;)V

    .line 48
    iget-object v0, p0, Lcom/texa/careapp/CareApplication_MembersInjector;->mNotificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/CareApplication_MembersInjector;->injectMNotificationManager(Lcom/texa/careapp/CareApplication;Landroid/app/NotificationManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/texa/careapp/CareApplication;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/CareApplication_MembersInjector;->injectMembers(Lcom/texa/careapp/CareApplication;)V

    return-void
.end method

.class public final Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController_MembersInjector;
.super Ljava/lang/Object;
.source "SosPrerequisiteNotificationController_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;",
        ">;"
    }
.end annotation


# instance fields
.field private final mServiceDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/ServiceDataManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/ServiceDataManager;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController_MembersInjector;->mServiceDataManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/ServiceDataManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController_MembersInjector;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMServiceDataManager(Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;Lcom/texa/careapp/utils/ServiceDataManager;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController_MembersInjector;->mServiceDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController_MembersInjector;->injectMServiceDataManager(Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;Lcom/texa/careapp/utils/ServiceDataManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController_MembersInjector;->injectMembers(Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;)V

    return-void
.end method

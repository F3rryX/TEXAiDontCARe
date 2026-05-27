.class public final Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen_MembersInjector;
.super Ljava/lang/Object;
.source "TyresInversionScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCAReWorkerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
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

.field private final mTexaCareApiServiceUserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
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
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p2, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen_MembersInjector;->mCAReWorkerManagerProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen_MembersInjector;->mTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMCAReWorkerManager(Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;Lcom/texa/careapp/sync/CAReWorkerManager;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    return-void
.end method

.method public static injectMEventBus(Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public static injectMTexaCareApiServiceUser(Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 41
    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen_MembersInjector;->mCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen_MembersInjector;->injectMCAReWorkerManager(Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    .line 42
    iget-object v0, p0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen_MembersInjector;->mTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen_MembersInjector;->injectMTexaCareApiServiceUser(Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;)V

    return-void
.end method

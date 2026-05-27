.class public final Lcom/texa/careapp/app/settings/FactoryResetScreenDialog_MembersInjector;
.super Ljava/lang/Object;
.source "FactoryResetScreenDialog_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;",
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

.field private final mEventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoginHelperRxProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
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
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog_MembersInjector;->mAccessoryProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p2, p0, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog_MembersInjector;->mLoginHelperRxProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMAccessory(Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;Lcom/texa/carelib/care/accessory/Accessory;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    return-void
.end method

.method public static injectMEventBus(Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public static injectMLoginHelperRx(Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;Lcom/texa/careapp/utils/LoginHelperRx;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;->mLoginHelperRx:Lcom/texa/careapp/utils/LoginHelperRx;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog_MembersInjector;->mAccessoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog_MembersInjector;->injectMAccessory(Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;Lcom/texa/carelib/care/accessory/Accessory;)V

    .line 40
    iget-object v0, p0, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog_MembersInjector;->mLoginHelperRxProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/LoginHelperRx;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog_MembersInjector;->injectMLoginHelperRx(Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 41
    iget-object v0, p0, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;Lorg/greenrobot/eventbus/EventBus;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog_MembersInjector;->injectMembers(Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;)V

    return-void
.end method

.class public final Lcom/texa/careapp/app/activationSosServices/NoSosServiceScreen_MembersInjector;
.super Ljava/lang/Object;
.source "NoSosServiceScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/activationSosServices/NoSosServiceScreen;",
        ">;"
    }
.end annotation


# instance fields
.field private final mEventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
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
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/NoSosServiceScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/activationSosServices/NoSosServiceScreen;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/texa/careapp/app/activationSosServices/NoSosServiceScreen_MembersInjector;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/activationSosServices/NoSosServiceScreen_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMEventBus(Lcom/texa/careapp/app/activationSosServices/NoSosServiceScreen;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/NoSosServiceScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/activationSosServices/NoSosServiceScreen;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/NoSosServiceScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/NoSosServiceScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/activationSosServices/NoSosServiceScreen;Lorg/greenrobot/eventbus/EventBus;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Lcom/texa/careapp/app/activationSosServices/NoSosServiceScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/activationSosServices/NoSosServiceScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/activationSosServices/NoSosServiceScreen;)V

    return-void
.end method

.class public final Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen_MembersInjector;
.super Ljava/lang/Object;
.source "ActivationServiceContactScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;",
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

.field private final mRetrofitErrorParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/RetrofitErrorParser;",
            ">;"
        }
    .end annotation
.end field

.field private final mTexaCareApiServiceProvider:Ljavax/inject/Provider;
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/RetrofitErrorParser;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen_MembersInjector;->mTexaCareApiServiceProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p2, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p4, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen_MembersInjector;->mRetrofitErrorParserProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/RetrofitErrorParser;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen_MembersInjector;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMEventBus(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public static injectMRetrofitErrorParser(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;Lcom/texa/careapp/utils/RetrofitErrorParser;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mRetrofitErrorParser:Lcom/texa/careapp/utils/RetrofitErrorParser;

    return-void
.end method

.method public static injectMTexaCareApiService(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    return-void
.end method

.method public static injectMUserDataManager(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;Lcom/texa/careapp/utils/UserDataManager;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen_MembersInjector;->mTexaCareApiServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 47
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 48
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 49
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen_MembersInjector;->mRetrofitErrorParserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/RetrofitErrorParser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen_MembersInjector;->injectMRetrofitErrorParser(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;Lcom/texa/careapp/utils/RetrofitErrorParser;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;)V

    return-void
.end method

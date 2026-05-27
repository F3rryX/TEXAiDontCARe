.class public final Lcom/texa/careapp/app/auth/RecoverPasswordScreen_MembersInjector;
.super Ljava/lang/Object;
.source "RecoverPasswordScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/auth/RecoverPasswordScreen;",
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
            "Lcom/texa/careapp/networking/TexaCareApiServiceClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mTexaCareAuthServiceHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareAuthServiceHelper;",
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
            "Lcom/texa/careapp/utils/RetrofitErrorParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareAuthServiceHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceClient;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen_MembersInjector;->mRetrofitErrorParserProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p2, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p3, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen_MembersInjector;->mTexaCareAuthServiceHelperProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p4, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen_MembersInjector;->mTexaCareApiServiceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/RetrofitErrorParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareAuthServiceHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceClient;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/auth/RecoverPasswordScreen;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen_MembersInjector;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMEventBus(Lcom/texa/careapp/app/auth/RecoverPasswordScreen;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public static injectMRetrofitErrorParser(Lcom/texa/careapp/app/auth/RecoverPasswordScreen;Lcom/texa/careapp/utils/RetrofitErrorParser;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->mRetrofitErrorParser:Lcom/texa/careapp/utils/RetrofitErrorParser;

    return-void
.end method

.method public static injectMTexaCareApiService(Lcom/texa/careapp/app/auth/RecoverPasswordScreen;Lcom/texa/careapp/networking/TexaCareApiServiceClient;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceClient;

    return-void
.end method

.method public static injectMTexaCareAuthServiceHelper(Lcom/texa/careapp/app/auth/RecoverPasswordScreen;Lcom/texa/careapp/networking/TexaCareAuthServiceHelper;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;->mTexaCareAuthServiceHelper:Lcom/texa/careapp/networking/TexaCareAuthServiceHelper;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/auth/RecoverPasswordScreen;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen_MembersInjector;->mRetrofitErrorParserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/RetrofitErrorParser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen_MembersInjector;->injectMRetrofitErrorParser(Lcom/texa/careapp/app/auth/RecoverPasswordScreen;Lcom/texa/careapp/utils/RetrofitErrorParser;)V

    .line 49
    iget-object v0, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/auth/RecoverPasswordScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 50
    iget-object v0, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen_MembersInjector;->mTexaCareAuthServiceHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareAuthServiceHelper;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen_MembersInjector;->injectMTexaCareAuthServiceHelper(Lcom/texa/careapp/app/auth/RecoverPasswordScreen;Lcom/texa/careapp/networking/TexaCareAuthServiceHelper;)V

    .line 51
    iget-object v0, p0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen_MembersInjector;->mTexaCareApiServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceClient;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/app/auth/RecoverPasswordScreen;Lcom/texa/careapp/networking/TexaCareApiServiceClient;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/auth/RecoverPasswordScreen;)V

    return-void
.end method

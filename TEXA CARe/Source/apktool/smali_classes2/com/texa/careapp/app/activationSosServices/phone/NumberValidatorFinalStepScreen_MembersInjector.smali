.class public final Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen_MembersInjector;
.super Ljava/lang/Object;
.source "NumberValidatorFinalStepScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;",
        ">;"
    }
.end annotation


# instance fields
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/RetrofitErrorParser;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen_MembersInjector;->mTexaCareApiServiceProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p2, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p3, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen_MembersInjector;->mRetrofitErrorParserProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/RetrofitErrorParser;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMRetrofitErrorParser(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;Lcom/texa/careapp/utils/RetrofitErrorParser;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->mRetrofitErrorParser:Lcom/texa/careapp/utils/RetrofitErrorParser;

    return-void
.end method

.method public static injectMTexaCareApiService(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    return-void
.end method

.method public static injectMUserDataManager(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;Lcom/texa/careapp/utils/UserDataManager;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen_MembersInjector;->mTexaCareApiServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 43
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 44
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen_MembersInjector;->mRetrofitErrorParserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/RetrofitErrorParser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen_MembersInjector;->injectMRetrofitErrorParser(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;Lcom/texa/careapp/utils/RetrofitErrorParser;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;)V

    return-void
.end method

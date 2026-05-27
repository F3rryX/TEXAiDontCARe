.class public final Lcom/texa/careapp/app/auth/SignUpEmailScreen_MembersInjector;
.super Ljava/lang/Object;
.source "SignUpEmailScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/auth/SignUpEmailScreen;",
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

.field private final mFormValidatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/FormValidator;",
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

.field private final mRetrofitErrorParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/RetrofitErrorParser;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/FormValidator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/RetrofitErrorParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen_MembersInjector;->mFormValidatorProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p2, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p3, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen_MembersInjector;->mProfileProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p4, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen_MembersInjector;->mRetrofitErrorParserProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p5, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/FormValidator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/RetrofitErrorParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/auth/SignUpEmailScreen;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v6, Lcom/texa/careapp/app/auth/SignUpEmailScreen_MembersInjector;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/texa/careapp/app/auth/SignUpEmailScreen_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static injectMEventBus(Lcom/texa/careapp/app/auth/SignUpEmailScreen;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public static injectMFormValidator(Lcom/texa/careapp/app/auth/SignUpEmailScreen;Lcom/texa/careapp/utils/FormValidator;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->mFormValidator:Lcom/texa/careapp/utils/FormValidator;

    return-void
.end method

.method public static injectMProfile(Lcom/texa/careapp/app/auth/SignUpEmailScreen;Lcom/texa/carelib/profile/Profile;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->mProfile:Lcom/texa/carelib/profile/Profile;

    return-void
.end method

.method public static injectMRetrofitErrorParser(Lcom/texa/careapp/app/auth/SignUpEmailScreen;Lcom/texa/careapp/utils/RetrofitErrorParser;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->mRetrofitErrorParser:Lcom/texa/careapp/utils/RetrofitErrorParser;

    return-void
.end method

.method public static injectMUserDataManager(Lcom/texa/careapp/app/auth/SignUpEmailScreen;Lcom/texa/careapp/utils/UserDataManager;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/auth/SignUpEmailScreen;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen_MembersInjector;->mFormValidatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/FormValidator;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignUpEmailScreen_MembersInjector;->injectMFormValidator(Lcom/texa/careapp/app/auth/SignUpEmailScreen;Lcom/texa/careapp/utils/FormValidator;)V

    .line 52
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignUpEmailScreen_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/auth/SignUpEmailScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 53
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen_MembersInjector;->mProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/profile/Profile;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignUpEmailScreen_MembersInjector;->injectMProfile(Lcom/texa/careapp/app/auth/SignUpEmailScreen;Lcom/texa/carelib/profile/Profile;)V

    .line 54
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen_MembersInjector;->mRetrofitErrorParserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/RetrofitErrorParser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignUpEmailScreen_MembersInjector;->injectMRetrofitErrorParser(Lcom/texa/careapp/app/auth/SignUpEmailScreen;Lcom/texa/careapp/utils/RetrofitErrorParser;)V

    .line 55
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignUpEmailScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/auth/SignUpEmailScreen;Lorg/greenrobot/eventbus/EventBus;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/texa/careapp/app/auth/SignUpEmailScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/auth/SignUpEmailScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/auth/SignUpEmailScreen;)V

    return-void
.end method

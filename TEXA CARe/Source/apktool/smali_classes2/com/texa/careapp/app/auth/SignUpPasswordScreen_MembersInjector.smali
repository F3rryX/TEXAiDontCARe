.class public final Lcom/texa/careapp/app/auth/SignUpPasswordScreen_MembersInjector;
.super Ljava/lang/Object;
.source "SignUpPasswordScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/auth/SignUpPasswordScreen;",
        ">;"
    }
.end annotation


# instance fields
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen_MembersInjector;->mFormValidatorProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p2, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen_MembersInjector;->mProfileProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p4, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen_MembersInjector;->mRetrofitErrorParserProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
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
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/auth/SignUpPasswordScreen;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen_MembersInjector;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/texa/careapp/app/auth/SignUpPasswordScreen_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMFormValidator(Lcom/texa/careapp/app/auth/SignUpPasswordScreen;Lcom/texa/careapp/utils/FormValidator;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->mFormValidator:Lcom/texa/careapp/utils/FormValidator;

    return-void
.end method

.method public static injectMProfile(Lcom/texa/careapp/app/auth/SignUpPasswordScreen;Lcom/texa/carelib/profile/Profile;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->mProfile:Lcom/texa/carelib/profile/Profile;

    return-void
.end method

.method public static injectMRetrofitErrorParser(Lcom/texa/careapp/app/auth/SignUpPasswordScreen;Lcom/texa/careapp/utils/RetrofitErrorParser;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->mRetrofitErrorParser:Lcom/texa/careapp/utils/RetrofitErrorParser;

    return-void
.end method

.method public static injectMUserDataManager(Lcom/texa/careapp/app/auth/SignUpPasswordScreen;Lcom/texa/careapp/utils/UserDataManager;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/auth/SignUpPasswordScreen;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen_MembersInjector;->mFormValidatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/FormValidator;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignUpPasswordScreen_MembersInjector;->injectMFormValidator(Lcom/texa/careapp/app/auth/SignUpPasswordScreen;Lcom/texa/careapp/utils/FormValidator;)V

    .line 46
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignUpPasswordScreen_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/auth/SignUpPasswordScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 47
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen_MembersInjector;->mProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/profile/Profile;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignUpPasswordScreen_MembersInjector;->injectMProfile(Lcom/texa/careapp/app/auth/SignUpPasswordScreen;Lcom/texa/carelib/profile/Profile;)V

    .line 48
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen_MembersInjector;->mRetrofitErrorParserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/RetrofitErrorParser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignUpPasswordScreen_MembersInjector;->injectMRetrofitErrorParser(Lcom/texa/careapp/app/auth/SignUpPasswordScreen;Lcom/texa/careapp/utils/RetrofitErrorParser;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/auth/SignUpPasswordScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/auth/SignUpPasswordScreen;)V

    return-void
.end method

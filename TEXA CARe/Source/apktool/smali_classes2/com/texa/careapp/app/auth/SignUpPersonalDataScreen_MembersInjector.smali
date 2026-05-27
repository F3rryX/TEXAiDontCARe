.class public final Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen_MembersInjector;
.super Ljava/lang/Object;
.source "SignUpPersonalDataScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;",
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

.field private final mLoginHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
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

.field private final mSharedPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
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
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/FormValidator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/RetrofitErrorParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen_MembersInjector;->mSharedPreferencesProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p2, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen_MembersInjector;->mFormValidatorProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p3, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p4, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen_MembersInjector;->mRetrofitErrorParserProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p5, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen_MembersInjector;->mLoginHelperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/FormValidator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/RetrofitErrorParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v6, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen_MembersInjector;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static injectMFormValidator(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;Lcom/texa/careapp/utils/FormValidator;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mFormValidator:Lcom/texa/careapp/utils/FormValidator;

    return-void
.end method

.method public static injectMLoginHelper(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;Lcom/texa/careapp/utils/LoginHelperRx;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mLoginHelper:Lcom/texa/careapp/utils/LoginHelperRx;

    return-void
.end method

.method public static injectMRetrofitErrorParser(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;Lcom/texa/careapp/utils/RetrofitErrorParser;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mRetrofitErrorParser:Lcom/texa/careapp/utils/RetrofitErrorParser;

    return-void
.end method

.method public static injectMSharedPreferences(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static injectMUserDataManager(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;Lcom/texa/careapp/utils/UserDataManager;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen_MembersInjector;->mSharedPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;Landroid/content/SharedPreferences;)V

    .line 55
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen_MembersInjector;->mFormValidatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/FormValidator;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen_MembersInjector;->injectMFormValidator(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;Lcom/texa/careapp/utils/FormValidator;)V

    .line 56
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 57
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen_MembersInjector;->mRetrofitErrorParserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/RetrofitErrorParser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen_MembersInjector;->injectMRetrofitErrorParser(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;Lcom/texa/careapp/utils/RetrofitErrorParser;)V

    .line 58
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen_MembersInjector;->mLoginHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/LoginHelperRx;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen_MembersInjector;->injectMLoginHelper(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;Lcom/texa/careapp/utils/LoginHelperRx;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;)V

    return-void
.end method

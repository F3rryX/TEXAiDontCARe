.class public final Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;
.super Ljava/lang/Object;
.source "SignInScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/auth/SignInScreen;",
        ">;"
    }
.end annotation


# instance fields
.field private final dongleDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;"
        }
    .end annotation
.end field

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

.field private final mFormValidatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/FormValidator;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogInHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
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

.field private final mUserDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/NotificationManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/RetrofitErrorParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/FormValidator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/NotificationManager;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->mRetrofitErrorParserProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p2, p0, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->mLoginHelperProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p3, p0, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p4, p0, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->mFormValidatorProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p5, p0, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->mLogInHelperProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p6, p0, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p7, p0, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->mAccessoryProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p8, p0, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->dongleDataManagerProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p9, p0, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->notificationManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/RetrofitErrorParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/FormValidator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/NotificationManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/auth/SignInScreen;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v10, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v10
.end method

.method public static injectDongleDataManager(Lcom/texa/careapp/app/auth/SignInScreen;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignInScreen;->dongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMAccessory(Lcom/texa/careapp/app/auth/SignInScreen;Lcom/texa/carelib/care/accessory/Accessory;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignInScreen;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    return-void
.end method

.method public static injectMEventBus(Lcom/texa/careapp/app/auth/SignInScreen;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignInScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public static injectMFormValidator(Lcom/texa/careapp/app/auth/SignInScreen;Lcom/texa/careapp/utils/FormValidator;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignInScreen;->mFormValidator:Lcom/texa/careapp/utils/FormValidator;

    return-void
.end method

.method public static injectMLogInHelper(Lcom/texa/careapp/app/auth/SignInScreen;Lcom/texa/careapp/utils/LoginHelperRx;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignInScreen;->mLogInHelper:Lcom/texa/careapp/utils/LoginHelperRx;

    return-void
.end method

.method public static injectMLoginHelper(Lcom/texa/careapp/app/auth/SignInScreen;Lcom/texa/careapp/utils/LoginHelperRx;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignInScreen;->mLoginHelper:Lcom/texa/careapp/utils/LoginHelperRx;

    return-void
.end method

.method public static injectMRetrofitErrorParser(Lcom/texa/careapp/app/auth/SignInScreen;Lcom/texa/careapp/utils/RetrofitErrorParser;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignInScreen;->mRetrofitErrorParser:Lcom/texa/careapp/utils/RetrofitErrorParser;

    return-void
.end method

.method public static injectMUserDataManager(Lcom/texa/careapp/app/auth/SignInScreen;Lcom/texa/careapp/utils/UserDataManager;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignInScreen;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    return-void
.end method

.method public static injectNotificationManager(Lcom/texa/careapp/app/auth/SignInScreen;Landroid/app/NotificationManager;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignInScreen;->notificationManager:Landroid/app/NotificationManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/auth/SignInScreen;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->mRetrofitErrorParserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/RetrofitErrorParser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->injectMRetrofitErrorParser(Lcom/texa/careapp/app/auth/SignInScreen;Lcom/texa/careapp/utils/RetrofitErrorParser;)V

    .line 73
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->mLoginHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/LoginHelperRx;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->injectMLoginHelper(Lcom/texa/careapp/app/auth/SignInScreen;Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 74
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/auth/SignInScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 75
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->mFormValidatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/FormValidator;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->injectMFormValidator(Lcom/texa/careapp/app/auth/SignInScreen;Lcom/texa/careapp/utils/FormValidator;)V

    .line 76
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->mLogInHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/LoginHelperRx;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->injectMLogInHelper(Lcom/texa/careapp/app/auth/SignInScreen;Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 77
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/auth/SignInScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 78
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->mAccessoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->injectMAccessory(Lcom/texa/careapp/app/auth/SignInScreen;Lcom/texa/carelib/care/accessory/Accessory;)V

    .line 79
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->dongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->injectDongleDataManager(Lcom/texa/careapp/app/auth/SignInScreen;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 80
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->notificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->injectNotificationManager(Lcom/texa/careapp/app/auth/SignInScreen;Landroid/app/NotificationManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/texa/careapp/app/auth/SignInScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/auth/SignInScreen;)V

    return-void
.end method

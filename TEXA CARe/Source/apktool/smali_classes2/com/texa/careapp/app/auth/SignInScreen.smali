.class public Lcom/texa/careapp/app/auth/SignInScreen;
.super Lcom/texa/care/navigation/Screen;
.source "SignInScreen.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SignInScreen"


# instance fields
.field private binding:Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;

.field private careApplication:Lcom/texa/careapp/CareApplication;

.field protected dongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private loginSub:Lio/reactivex/disposables/Disposable;

.field protected mAccessory:Lcom/texa/carelib/care/accessory/Accessory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mActivity:Lcom/texa/careapp/app/auth/LoginActivity;

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mFormValidator:Lcom/texa/careapp/utils/FormValidator;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mInputRequiredFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/textfield/TextInputLayout;",
            ">;"
        }
    .end annotation
.end field

.field protected mLogInHelper:Lcom/texa/careapp/utils/LoginHelperRx;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mLoginHelper:Lcom/texa/careapp/utils/LoginHelperRx;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

.field private mRequiredFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field protected mRetrofitErrorParser:Lcom/texa/careapp/utils/RetrofitErrorParser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected notificationManager:Landroid/app/NotificationManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private registrationInfo:Lcom/texa/careapp/networking/RegistrationInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/auth/LoginActivity;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignInScreen;->careApplication:Lcom/texa/careapp/CareApplication;

    .line 87
    iput-object p2, p0, Lcom/texa/careapp/app/auth/SignInScreen;->mActivity:Lcom/texa/careapp/app/auth/LoginActivity;

    .line 88
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/auth/SignInScreen;)V

    .line 89
    new-instance p1, Lcom/texa/careapp/networking/RegistrationInfo;

    invoke-direct {p1}, Lcom/texa/careapp/networking/RegistrationInfo;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignInScreen;->registrationInfo:Lcom/texa/careapp/networking/RegistrationInfo;

    return-void
.end method

.method private acceptTermOfServiceAndPolicyDialog(ILandroid/view/View;)V
    .locals 2

    .line 163
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/SignInScreen;->validateForm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog;

    iget-object v1, p0, Lcom/texa/careapp/app/auth/SignInScreen;->mActivity:Lcom/texa/careapp/app/auth/LoginActivity;

    invoke-direct {v0, p1, v1, p0, p2}, Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog;-><init>(ILcom/texa/careapp/app/auth/LoginActivity;Lcom/texa/careapp/app/auth/SignInScreen;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/auth/SignInScreen;->goTo(Lcom/texa/care/navigation/Screen;)V

    :cond_0
    return-void
.end method

.method private completeLogIn()V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen;->notificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 245
    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignInScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_OUT_OF_THE_BOX_ACCESS_SIGN_IN:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 246
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen;->dongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getAll()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignInScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/texa/careapp/app/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 249
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 250
    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignInScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignInScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignInScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/texa/careapp/app/permission/PermissionActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen;->mActivity:Lcom/texa/careapp/app/auth/LoginActivity;

    invoke-virtual {v0}, Lcom/texa/careapp/app/auth/LoginActivity;->finish()V

    return-void
.end method

.method private createProgressDialogScreen()V
    .locals 4

    .line 267
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen;->mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Lcom/texa/careapp/utils/ProgressDialogFragment;

    invoke-direct {v0}, Lcom/texa/careapp/utils/ProgressDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen;->mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen;->mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/ProgressDialogFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen;->mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignInScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/care/navigation/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignInScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f110ad4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/texa/careapp/utils/ProgressDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private dismissProgressDialogScreen()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen;->mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0}, Lcom/texa/careapp/utils/ProgressDialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method private getPasswordValue()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen;->binding:Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;

    iget-object v0, v0, Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;->screenSigninPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUsernameValue()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen;->binding:Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;

    iget-object v0, v0, Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;->screenSigninEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private signInButtonAction(Landroid/view/View;)V
    .locals 2

    .line 182
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/SignInScreen;->createProgressDialogScreen()V

    .line 184
    iget-object p1, p0, Lcom/texa/careapp/app/auth/SignInScreen;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {p1}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 185
    invoke-virtual {p1}, Lcom/texa/careapp/model/UserModel;->getUserName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/texa/careapp/app/auth/SignInScreen;->getUsernameValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/texa/careapp/model/UserModel;->getUserName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/texa/careapp/app/auth/SignInScreen;->getUsernameValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/texa/careapp/app/auth/SignInScreen;->mLoginHelper:Lcom/texa/careapp/utils/LoginHelperRx;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx;->doLogOut(Z)V

    .line 189
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/auth/SignInScreen;->mLoginHelper:Lcom/texa/careapp/utils/LoginHelperRx;

    invoke-direct {p0}, Lcom/texa/careapp/app/auth/SignInScreen;->getUsernameValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/texa/careapp/app/auth/SignInScreen;->getPasswordValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/texa/careapp/utils/LoginHelperRx;->doLogin(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 190
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 191
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/auth/SignInScreen$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/auth/SignInScreen$$ExternalSyntheticLambda7;-><init>(Lcom/texa/careapp/app/auth/SignInScreen;)V

    new-instance v1, Lcom/texa/careapp/app/auth/SignInScreen$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/auth/SignInScreen$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/app/auth/SignInScreen;)V

    .line 192
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignInScreen;->loginSub:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private validateForm()Z
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen;->mFormValidator:Lcom/texa/careapp/utils/FormValidator;

    iget-object v1, p0, Lcom/texa/careapp/app/auth/SignInScreen;->mInputRequiredFields:Ljava/util/List;

    iget-object v2, p0, Lcom/texa/careapp/app/auth/SignInScreen;->mRequiredFields:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/texa/careapp/utils/FormValidator;->validateRequiredFields(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    sget-object v1, Lcom/texa/careapp/app/auth/SignInScreen;->TAG:Ljava/lang/String;

    const-string v2, "Form not valid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 3

    .line 95
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;

    iput-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen;->binding:Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;

    .line 97
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getUserName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/texa/careapp/app/auth/SignInScreen;->binding:Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;

    iget-object v2, v2, Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;->screenSigninEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen;->binding:Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;

    iget-object v0, v0, Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;->screenSigninEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen;->binding:Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;

    iget-object v0, v0, Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;->screenSigninPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen;->binding:Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;

    iget-object v0, v0, Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;->screenSigninPasswordEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/texa/careapp/app/auth/SignInScreen$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/texa/careapp/app/auth/SignInScreen$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/auth/SignInScreen;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 113
    iget-object p1, p0, Lcom/texa/careapp/app/auth/SignInScreen;->binding:Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;->screenSigninPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 114
    iget-object p1, p0, Lcom/texa/careapp/app/auth/SignInScreen;->binding:Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;->screenSigninEmailInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 116
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignInScreen;->mRequiredFields:Ljava/util/List;

    .line 117
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen;->binding:Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;

    iget-object v0, v0, Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;->screenSigninEmailEditText:Landroid/widget/EditText;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object p1, p0, Lcom/texa/careapp/app/auth/SignInScreen;->mRequiredFields:Ljava/util/List;

    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen;->binding:Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;

    iget-object v0, v0, Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;->screenSigninPasswordEditText:Landroid/widget/EditText;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignInScreen;->mInputRequiredFields:Ljava/util/List;

    .line 121
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen;->binding:Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;

    iget-object v0, v0, Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;->screenSigninEmailInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object p1, p0, Lcom/texa/careapp/app/auth/SignInScreen;->mInputRequiredFields:Ljava/util/List;

    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen;->binding:Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;

    iget-object v0, v0, Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;->screenSigninPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object p1, p0, Lcom/texa/careapp/app/auth/SignInScreen;->binding:Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;->screenSigninDescription:Landroid/widget/TextView;

    new-instance v0, Lcom/texa/careapp/app/auth/SignInScreen$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/auth/SignInScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/auth/SignInScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object p1, p0, Lcom/texa/careapp/app/auth/SignInScreen;->binding:Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;->screenSigninRegisterLabel:Landroid/widget/TextView;

    new-instance v0, Lcom/texa/careapp/app/auth/SignInScreen$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/auth/SignInScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/auth/SignInScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object p1, p0, Lcom/texa/careapp/app/auth/SignInScreen;->binding:Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;->screenSigninLoginButton:Landroid/widget/TextView;

    new-instance v0, Lcom/texa/careapp/app/auth/SignInScreen$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/auth/SignInScreen$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/auth/SignInScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 236
    sget-object v0, Lcom/texa/careapp/app/auth/SignInScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00e4

    return v0
.end method

.method public getRegistrationInfo()Lcom/texa/careapp/networking/RegistrationInfo;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen;->registrationInfo:Lcom/texa/careapp/networking/RegistrationInfo;

    return-object v0
.end method

.method public getTitle()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public goToRegistrationScreen()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getUserName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/SignInScreen;->createProgressDialogScreen()V

    .line 138
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen;->mLoginHelper:Lcom/texa/careapp/utils/LoginHelperRx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/texa/careapp/utils/LoginHelperRx;->doLogoutCompletable(Z)Lio/reactivex/Completable;

    move-result-object v0

    .line 139
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 140
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/auth/SignInScreen$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/auth/SignInScreen$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/app/auth/SignInScreen;)V

    new-instance v2, Lcom/texa/careapp/app/auth/SignInScreen$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/auth/SignInScreen$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/app/auth/SignInScreen;)V

    .line 141
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 149
    :cond_0
    new-instance v0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;

    iget-object v1, p0, Lcom/texa/careapp/app/auth/SignInScreen;->careApplication:Lcom/texa/careapp/CareApplication;

    iget-object v2, p0, Lcom/texa/careapp/app/auth/SignInScreen;->mActivity:Lcom/texa/careapp/app/auth/LoginActivity;

    invoke-direct {v0, v1, p0, v2}, Lcom/texa/careapp/app/auth/SignUpEmailScreen;-><init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/auth/SignInScreen;Lcom/texa/careapp/app/auth/LoginActivity;)V

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/auth/SignInScreen;->goTo(Lcom/texa/care/navigation/Screen;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-auth-SignInScreen(Landroid/view/View;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-nez p3, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/SignInScreen;->validateForm()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 108
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/auth/SignInScreen;->signInButtonAction(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$afterViewInjection$1$com-texa-careapp-app-auth-SignInScreen(Landroid/view/View;)V
    .locals 0

    .line 123
    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignInScreen;->recoverPassword()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$2$com-texa-careapp-app-auth-SignInScreen(Landroid/view/View;)V
    .locals 0

    .line 124
    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignInScreen;->goToRegistrationScreen()V

    return-void
.end method

.method public synthetic lambda$goToRegistrationScreen$3$com-texa-careapp-app-auth-SignInScreen()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/SignInScreen;->dismissProgressDialogScreen()V

    .line 143
    new-instance v0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;

    iget-object v1, p0, Lcom/texa/careapp/app/auth/SignInScreen;->careApplication:Lcom/texa/careapp/CareApplication;

    iget-object v2, p0, Lcom/texa/careapp/app/auth/SignInScreen;->mActivity:Lcom/texa/careapp/app/auth/LoginActivity;

    invoke-direct {v0, v1, p0, v2}, Lcom/texa/careapp/app/auth/SignUpEmailScreen;-><init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/auth/SignInScreen;Lcom/texa/careapp/app/auth/LoginActivity;)V

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/auth/SignInScreen;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method public synthetic lambda$goToRegistrationScreen$4$com-texa-careapp-app-auth-SignInScreen(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 145
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 146
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/SignInScreen;->dismissProgressDialogScreen()V

    return-void
.end method

.method public synthetic lambda$signInButtonAction$5$com-texa-careapp-app-auth-SignInScreen(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 193
    iget-object p1, p0, Lcom/texa/careapp/app/auth/SignInScreen;->mActivity:Lcom/texa/careapp/app/auth/LoginActivity;

    invoke-virtual {p1}, Lcom/texa/careapp/app/auth/LoginActivity;->setDriverId()V

    .line 194
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/SignInScreen;->dismissProgressDialogScreen()V

    .line 195
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/SignInScreen;->completeLogIn()V

    return-void
.end method

.method public synthetic lambda$signInButtonAction$6$com-texa-careapp-app-auth-SignInScreen(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 197
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/SignInScreen;->dismissProgressDialogScreen()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "got exception in login"

    .line 198
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    .line 200
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen;->mRetrofitErrorParser:Lcom/texa/careapp/utils/RetrofitErrorParser;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/RetrofitErrorParser;->parse(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 213
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onDestroyView()V

    .line 214
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog$TermsAcceptedEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 169
    invoke-virtual {p1}, Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog$TermsAcceptedEvent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/auth/SignInScreen;->signInButtonAction(Landroid/view/View;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 219
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onPause()V

    .line 220
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen;->loginSub:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 207
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    .line 208
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignInScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onSigninClicked(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 154
    invoke-direct {p0, v0, p1}, Lcom/texa/careapp/app/auth/SignInScreen;->acceptTermOfServiceAndPolicyDialog(ILandroid/view/View;)V

    return-void
.end method

.method public recoverPassword()V
    .locals 2

    .line 130
    sget-boolean v0, Lcom/texa/careapp/app/auth/LoginActivity;->ENABLE_RECOVER_PASSWORD:Z

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;

    iget-object v1, p0, Lcom/texa/careapp/app/auth/SignInScreen;->careApplication:Lcom/texa/careapp/CareApplication;

    invoke-direct {v0, v1}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen;-><init>(Lcom/texa/careapp/CareApplication;)V

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/auth/SignInScreen;->goTo(Lcom/texa/care/navigation/Screen;)V

    :cond_0
    return-void
.end method

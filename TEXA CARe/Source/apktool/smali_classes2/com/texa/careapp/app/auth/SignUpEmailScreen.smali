.class public Lcom/texa/careapp/app/auth/SignUpEmailScreen;
.super Lcom/texa/care/navigation/Screen;
.source "SignUpEmailScreen.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SignUpEmailScreen"


# instance fields
.field private binding:Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;

.field private mActivity:Lcom/texa/careapp/app/auth/LoginActivity;

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mFormValidator:Lcom/texa/careapp/utils/FormValidator;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mProfile:Lcom/texa/carelib/profile/Profile;
    .annotation runtime Ljavax/inject/Inject;
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

.field private registrationInfo:Lcom/texa/careapp/networking/RegistrationInfo;

.field private signInScreen:Lcom/texa/careapp/app/auth/SignInScreen;


# direct methods
.method public static synthetic $r8$lambda$ZpYIaYf0Q1KhQQIlLTn15sJsuuY(Lcom/texa/careapp/app/auth/SignUpEmailScreen;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->goToPasswordConfirmation(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/auth/SignInScreen;Lcom/texa/careapp/app/auth/LoginActivity;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 56
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/auth/SignUpEmailScreen;)V

    .line 57
    iput-object p2, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->signInScreen:Lcom/texa/careapp/app/auth/SignInScreen;

    .line 58
    invoke-virtual {p2}, Lcom/texa/careapp/app/auth/SignInScreen;->getRegistrationInfo()Lcom/texa/careapp/networking/RegistrationInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->registrationInfo:Lcom/texa/careapp/networking/RegistrationInfo;

    .line 59
    iput-object p3, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->mActivity:Lcom/texa/careapp/app/auth/LoginActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/auth/SignUpEmailScreen;)Landroid/content/Context;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/careapp/app/auth/SignUpEmailScreen;)Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->binding:Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;

    return-object p0
.end method

.method private checkEmailInput()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->binding:Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;

    iget-object v0, v0, Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;->screenSignupEmailAddressEmailEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/texa/careapp/app/auth/SignUpEmailScreen$1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/auth/SignUpEmailScreen$1;-><init>(Lcom/texa/careapp/app/auth/SignUpEmailScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 112
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->binding:Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;

    iget-object v0, v0, Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;->screenSignupEmailAddressEmailEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/texa/careapp/app/auth/SignUpEmailScreen$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/auth/SignUpEmailScreen$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/app/auth/SignUpEmailScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 122
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->binding:Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;

    iget-object v0, v0, Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;->screenSignupEmailAddressEmailEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/texa/careapp/app/auth/SignUpEmailScreen$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/auth/SignUpEmailScreen$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/app/auth/SignUpEmailScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method private goToPasswordConfirmation(Landroid/view/View;)V
    .locals 4

    .line 132
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->validateEmailForm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->mActivity:Lcom/texa/careapp/app/auth/LoginActivity;

    iget-object v3, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->signInScreen:Lcom/texa/careapp/app/auth/SignInScreen;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog;-><init>(ILcom/texa/careapp/app/auth/LoginActivity;Lcom/texa/careapp/app/auth/SignInScreen;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->goTo(Lcom/texa/care/navigation/Screen;)V

    :cond_0
    return-void
.end method

.method private gotoPrivacyPolicyScreen()V
    .locals 3

    .line 151
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "web_view_code"

    const/4 v2, 0x2

    .line 153
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private gotoTermsOfServiceScreen()V
    .locals 3

    .line 144
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/texa/careapp/utils/webviewsection/WebViewSectionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 145
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "web_view_code"

    const/4 v2, 0x1

    .line 146
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private initUserAlreadyRegistered()V
    .locals 4

    .line 87
    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1109be

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 89
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 90
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->binding:Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;

    iget-object v0, v0, Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;->screenEmailAddressAlreadyRegistered:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private validateEmailForm()Z
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->mFormValidator:Lcom/texa/careapp/utils/FormValidator;

    iget-object v1, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->binding:Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;

    iget-object v1, v1, Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;->screenSignupEmailAddressEmailInput:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->binding:Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;

    iget-object v2, v2, Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;->screenSignupEmailAddressEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Lcom/texa/careapp/utils/FormValidator;->validateEmailField(Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    sget-object v1, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->TAG:Ljava/lang/String;

    const-string v2, "Form not valid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 1

    .line 77
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;

    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->binding:Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;

    .line 78
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;->screenEmailAddressNextLayout:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/texa/careapp/app/auth/SignUpEmailScreen$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/auth/SignUpEmailScreen$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/auth/SignUpEmailScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object p1, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->binding:Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;->screenEmailAddressAlreadyRegistered:Landroid/widget/TextView;

    new-instance v0, Lcom/texa/careapp/app/auth/SignUpEmailScreen$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/auth/SignUpEmailScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/auth/SignUpEmailScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object p1, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->binding:Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;->screenSignupEmailTermsOfServiceLabel:Landroid/widget/TextView;

    new-instance v0, Lcom/texa/careapp/app/auth/SignUpEmailScreen$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/auth/SignUpEmailScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/auth/SignUpEmailScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object p1, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->binding:Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;->screenSignupEmailPrivacyPolicyLabel:Landroid/widget/TextView;

    new-instance v0, Lcom/texa/careapp/app/auth/SignUpEmailScreen$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/auth/SignUpEmailScreen$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/auth/SignUpEmailScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->initUserAlreadyRegistered()V

    .line 83
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->checkEmailInput()V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 178
    sget-object v0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00c9

    return v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-auth-SignUpEmailScreen(Landroid/view/View;)V
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/navigation/Navigator;->goBack()Z

    return-void
.end method

.method public synthetic lambda$afterViewInjection$1$com-texa-careapp-app-auth-SignUpEmailScreen(Landroid/view/View;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->gotoTermsOfServiceScreen()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$2$com-texa-careapp-app-auth-SignUpEmailScreen(Landroid/view/View;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->gotoPrivacyPolicyScreen()V

    return-void
.end method

.method public synthetic lambda$checkEmailInput$3$com-texa-careapp-app-auth-SignUpEmailScreen(Landroid/view/View;Z)V
    .locals 1

    if-nez p2, :cond_1

    .line 114
    iget-object p1, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->binding:Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;->screenSignupEmailAddressEmailEditText:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->isEmail(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 115
    iget-object p1, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->binding:Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;->screenSignupEmailAddressEmailInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f110a0b

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->binding:Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;->screenSignupEmailAddressEmailEditText:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 117
    iget-object p1, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->binding:Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;

    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;->screenSignupEmailAddressEmailInput:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$checkEmailInput$4$com-texa-careapp-app-auth-SignUpEmailScreen(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 123
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->goToPasswordConfirmation(Landroid/view/View;)V

    .line 124
    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "input_method"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 125
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return p3
.end method

.method public onDestroyView()V
    .locals 1

    .line 64
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onDestroyView()V

    .line 65
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog$TermsAcceptedEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 139
    iget-object p1, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->registrationInfo:Lcom/texa/careapp/networking/RegistrationInfo;

    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->binding:Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;

    iget-object v0, v0, Lcom/texa/careapp/databinding/ScreenEmailAddressBinding;->screenSignupEmailAddressEmailEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/careapp/networking/RegistrationInfo;->setUsername(Ljava/lang/String;)V

    .line 140
    new-instance p1, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;

    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    iget-object v1, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->signInScreen:Lcom/texa/careapp/app/auth/SignInScreen;

    iget-object v2, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->mActivity:Lcom/texa/careapp/app/auth/LoginActivity;

    invoke-direct {p1, v0, v1, v2}, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;-><init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/auth/SignInScreen;Lcom/texa/careapp/app/auth/LoginActivity;)V

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 71
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onPause()V

    .line 72
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 159
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    .line 160
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpEmailScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

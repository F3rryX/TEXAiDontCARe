.class public Lcom/texa/careapp/app/auth/SignUpPasswordScreen;
.super Lcom/texa/care/navigation/Screen;
.source "SignUpPasswordScreen.java"


# static fields
.field private static final MIN_PASSWORD_LENGTH:I = 0x6

.field public static final TAG:Ljava/lang/String; = "SignUpPasswordScreen"


# instance fields
.field private mActivity:Lcom/texa/careapp/app/auth/LoginActivity;

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

.field protected mProfile:Lcom/texa/carelib/profile/Profile;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

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

.field private password:Landroid/widget/EditText;

.field private passwordConfirmation:Landroid/widget/EditText;

.field private passwordConfirmationInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private passwordInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private registrationInfo:Lcom/texa/careapp/networking/RegistrationInfo;

.field private signInScreen:Lcom/texa/careapp/app/auth/SignInScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/auth/SignInScreen;Lcom/texa/careapp/app/auth/LoginActivity;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 63
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/auth/SignUpPasswordScreen;)V

    .line 64
    iput-object p2, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->signInScreen:Lcom/texa/careapp/app/auth/SignInScreen;

    .line 65
    invoke-virtual {p2}, Lcom/texa/careapp/app/auth/SignInScreen;->getRegistrationInfo()Lcom/texa/careapp/networking/RegistrationInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->registrationInfo:Lcom/texa/careapp/networking/RegistrationInfo;

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->mRequiredFields:Ljava/util/List;

    .line 67
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->mInputRequiredFields:Ljava/util/List;

    .line 68
    iput-object p3, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->mActivity:Lcom/texa/careapp/app/auth/LoginActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/auth/SignUpPasswordScreen;)Landroid/widget/EditText;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->password:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/careapp/app/auth/SignUpPasswordScreen;)Landroid/content/Context;
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/texa/careapp/app/auth/SignUpPasswordScreen;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->passwordInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/texa/careapp/app/auth/SignUpPasswordScreen;)Landroid/widget/EditText;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->passwordConfirmation:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/texa/careapp/app/auth/SignUpPasswordScreen;)Landroid/content/Context;
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/texa/careapp/app/auth/SignUpPasswordScreen;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->passwordConfirmationInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method private checkPasswordInput()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->password:Landroid/widget/EditText;

    new-instance v1, Lcom/texa/careapp/app/auth/SignUpPasswordScreen$1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/auth/SignUpPasswordScreen$1;-><init>(Lcom/texa/careapp/app/auth/SignUpPasswordScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 113
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->passwordConfirmation:Landroid/widget/EditText;

    new-instance v1, Lcom/texa/careapp/app/auth/SignUpPasswordScreen$2;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/auth/SignUpPasswordScreen$2;-><init>(Lcom/texa/careapp/app/auth/SignUpPasswordScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 135
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->passwordConfirmation:Landroid/widget/EditText;

    new-instance v1, Lcom/texa/careapp/app/auth/SignUpPasswordScreen$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/auth/SignUpPasswordScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/auth/SignUpPasswordScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 142
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->mRequiredFields:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->password:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->mRequiredFields:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->passwordConfirmation:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->mInputRequiredFields:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->passwordInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->mInputRequiredFields:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->passwordConfirmationInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private goToPersonalDataScreen()V
    .locals 4

    .line 83
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->validatePasswordForm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->registrationInfo:Lcom/texa/careapp/networking/RegistrationInfo;

    iget-object v1, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->password:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/networking/RegistrationInfo;->setPassword(Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;

    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/CareApplication;

    iget-object v2, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->signInScreen:Lcom/texa/careapp/app/auth/SignInScreen;

    iget-object v3, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->mActivity:Lcom/texa/careapp/app/auth/LoginActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;-><init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/auth/SignInScreen;Lcom/texa/careapp/app/auth/LoginActivity;)V

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->goTo(Lcom/texa/care/navigation/Screen;)V

    :cond_0
    return-void
.end method

.method private validatePassword()Z
    .locals 6

    .line 159
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->password:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x6

    const/4 v4, 0x0

    if-ge v1, v3, :cond_0

    .line 162
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->passwordInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f110b51

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return v4

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->passwordConfirmation:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->passwordConfirmationInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110b50

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return v4

    :cond_1
    return v2
.end method

.method private validatePasswordForm()Z
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->mFormValidator:Lcom/texa/careapp/utils/FormValidator;

    iget-object v1, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->mInputRequiredFields:Ljava/util/List;

    iget-object v2, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->mRequiredFields:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/texa/careapp/utils/FormValidator;->validateRequiredFields(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->validatePassword()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 153
    sget-object v1, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->TAG:Ljava/lang/String;

    const-string v2, "Form not valid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 1

    .line 73
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenPasswordCreationBinding;

    .line 74
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenPasswordCreationBinding;->screenSignupPasswordCreationPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->passwordInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 75
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenPasswordCreationBinding;->screenSignupPasswordCreationPasswordEditText:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->password:Landroid/widget/EditText;

    .line 76
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenPasswordCreationBinding;->screenSignupPasswordCreationPasswordConfirmInput:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->passwordConfirmationInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 77
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenPasswordCreationBinding;->screenSignupPasswordCreationPasswordConfirmEditText:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->passwordConfirmation:Landroid/widget/EditText;

    .line 78
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenPasswordCreationBinding;->screenSignupPasswordCreationNextLayout:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/auth/SignUpPasswordScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/auth/SignUpPasswordScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->checkPasswordInput()V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 182
    sget-object v0, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00d1

    return v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-auth-SignUpPasswordScreen(Landroid/view/View;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->goToPersonalDataScreen()V

    return-void
.end method

.method public synthetic lambda$checkPasswordInput$1$com-texa-careapp-app-auth-SignUpPasswordScreen(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->goToPersonalDataScreen()V

    .line 137
    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignUpPasswordScreen;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "input_method"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 138
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return p3
.end method

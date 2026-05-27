.class public Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;
.super Lcom/texa/care/navigation/Screen;
.source "SignUpPersonalDataScreen.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SignUpPersonalDataScreen"


# instance fields
.field private DATE_FORMAT:Ljava/text/DateFormat;

.field private birthday:Landroid/widget/EditText;

.field private birthdayInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private mActivity:Lcom/texa/careapp/app/auth/LoginActivity;

.field private mCalendar:Ljava/util/Calendar;

.field mFormValidator:Lcom/texa/careapp/utils/FormValidator;
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

.field mLoginHelper:Lcom/texa/careapp/utils/LoginHelperRx;
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

.field mRetrofitErrorParser:Lcom/texa/careapp/utils/RetrofitErrorParser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private name:Landroid/widget/EditText;

.field private nameInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private phoneNumber:Landroid/widget/EditText;

.field private phoneNumberInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private registrationInfo:Lcom/texa/careapp/networking/RegistrationInfo;

.field private registrationSub:Lio/reactivex/disposables/Disposable;

.field private surname:Landroid/widget/EditText;

.field private surnameInputLayout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/auth/SignInScreen;Lcom/texa/careapp/app/auth/LoginActivity;)V
    .locals 3

    .line 89
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 84
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->DATE_FORMAT:Ljava/text/DateFormat;

    .line 90
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;)V

    .line 91
    invoke-virtual {p2}, Lcom/texa/careapp/app/auth/SignInScreen;->getRegistrationInfo()Lcom/texa/careapp/networking/RegistrationInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->registrationInfo:Lcom/texa/careapp/networking/RegistrationInfo;

    .line 92
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mRequiredFields:Ljava/util/List;

    .line 93
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mInputRequiredFields:Ljava/util/List;

    .line 94
    iput-object p3, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mActivity:Lcom/texa/careapp/app/auth/LoginActivity;

    .line 95
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mCalendar:Ljava/util/Calendar;

    const-string p2, "UTC"

    .line 96
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;)Landroid/content/Context;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->nameInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;)Landroid/content/Context;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;)Landroid/content/Context;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->surnameInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;)Landroid/content/Context;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;)Landroid/content/Context;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->phoneNumberInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;)Landroid/content/Context;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private checkPersonalDataInput()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->name:Landroid/widget/EditText;

    new-instance v1, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen$1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen$1;-><init>(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 166
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->surname:Landroid/widget/EditText;

    new-instance v1, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen$2;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen$2;-><init>(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 189
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->phoneNumber:Landroid/widget/EditText;

    new-instance v1, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen$3;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen$3;-><init>(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 212
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->phoneNumber:Landroid/widget/EditText;

    new-instance v1, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 220
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mRequiredFields:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->name:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mRequiredFields:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->surname:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mRequiredFields:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->phoneNumber:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mRequiredFields:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->birthday:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mInputRequiredFields:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->nameInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mInputRequiredFields:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->surnameInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mInputRequiredFields:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->phoneNumberInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mInputRequiredFields:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->birthdayInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createProgressDialogScreen()V
    .locals 4

    .line 262
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Lcom/texa/careapp/utils/ProgressDialogFragment;

    invoke-direct {v0}, Lcom/texa/careapp/utils/ProgressDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/ProgressDialogFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/care/navigation/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->getContext()Landroid/content/Context;

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

    .line 270
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Lcom/texa/careapp/utils/ProgressDialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method private registerUser()V
    .locals 3

    .line 244
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->createProgressDialogScreen()V

    .line 246
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mLoginHelper:Lcom/texa/careapp/utils/LoginHelperRx;

    iget-object v1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->registrationInfo:Lcom/texa/careapp/networking/RegistrationInfo;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/utils/LoginHelperRx;->doRegistration(Lcom/texa/careapp/networking/RegistrationInfo;)Lio/reactivex/Observable;

    move-result-object v0

    .line 247
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 248
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;)V

    new-instance v2, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;)V

    .line 249
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->registrationSub:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private validatePersonalDataForm()Z
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mFormValidator:Lcom/texa/careapp/utils/FormValidator;

    iget-object v1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mInputRequiredFields:Ljava/util/List;

    iget-object v2, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mRequiredFields:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/texa/careapp/utils/FormValidator;->validateRequiredFields(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->name:Landroid/widget/EditText;

    .line 233
    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->surname:Landroid/widget/EditText;

    .line 234
    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->phoneNumber:Landroid/widget/EditText;

    .line 235
    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->birthday:Landroid/widget/EditText;

    .line 236
    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 238
    sget-object v1, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->TAG:Ljava/lang/String;

    const-string v2, "Form not valid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 1

    .line 101
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;

    .line 102
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;->screenSignupPersonalDataNameInput:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->nameInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 103
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;->screenSignupPersonalDataNameEditText:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->name:Landroid/widget/EditText;

    .line 104
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;->screenSignupPersonalDataSurnameInput:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->surnameInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 105
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;->screenSignupPersonalDataSurnameEditText:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->surname:Landroid/widget/EditText;

    .line 106
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;->screenSignupPersonalDataPhoneNumberInput:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->phoneNumberInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 107
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;->screenSignupPersonalDataPhoneNumberEditText:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->phoneNumber:Landroid/widget/EditText;

    .line 108
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;->screenSignupPersonalDataBirthdayInput:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->birthdayInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 109
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;->screenSignupPersonalDataBirthdayEditText:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->birthday:Landroid/widget/EditText;

    .line 110
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;->screenSignupPersonalDataCompleteRegistration:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object p1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->birthday:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setClickable(Z)V

    .line 112
    iget-object p1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->birthday:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 113
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->checkPersonalDataInput()V

    .line 114
    iget-object p1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->birthday:Landroid/widget/EditText;

    new-instance v0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public completeRegistration(Landroid/view/View;)V
    .locals 2

    .line 122
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->validatePersonalDataForm()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 125
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->phoneNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->saveTempUserPhoneNumber(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->registrationInfo:Lcom/texa/careapp/networking/RegistrationInfo;

    iget-object v1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->name:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/networking/RegistrationInfo;->setFirstName(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->registrationInfo:Lcom/texa/careapp/networking/RegistrationInfo;

    iget-object v1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->surname:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/networking/RegistrationInfo;->setLastName(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->registrationInfo:Lcom/texa/careapp/networking/RegistrationInfo;

    iget-object v1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/networking/RegistrationInfo;->setBirthDate(Ljava/util/Date;)V

    .line 130
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->registrationInfo:Lcom/texa/careapp/networking/RegistrationInfo;

    iget-object v1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->phoneNumber:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/networking/RegistrationInfo;->setPhoneNumber(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->registrationInfo:Lcom/texa/careapp/networking/RegistrationInfo;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/networking/RegistrationInfo;->setUserCountry(Ljava/lang/String;)V

    .line 137
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->registerUser()V

    :cond_1
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 297
    sget-object v0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00d3

    return v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-auth-SignUpPersonalDataScreen(Landroid/widget/DatePicker;III)V
    .locals 7

    .line 116
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 117
    iget-object p1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->birthday:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->DATE_FORMAT:Ljava/text/DateFormat;

    iget-object p3, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$1$com-texa-careapp-app-auth-SignUpPersonalDataScreen(Landroid/view/View;)V
    .locals 2

    .line 115
    iget-object p1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mActivity:Lcom/texa/careapp/app/auth/LoginActivity;

    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mCalendar:Ljava/util/Calendar;

    new-instance v1, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;)V

    invoke-static {p1, v0, v1}, Lcom/texa/careapp/utils/DatePickerUtils;->showDatePicker(Landroid/content/Context;Ljava/util/Calendar;Landroid/app/DatePickerDialog$OnDateSetListener;)V

    return-void
.end method

.method public synthetic lambda$checkPersonalDataInput$2$com-texa-careapp-app-auth-SignUpPersonalDataScreen(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 213
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->completeRegistration(Landroid/view/View;)V

    .line 214
    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "input_method"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 215
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return p3
.end method

.method public synthetic lambda$registerUser$3$com-texa-careapp-app-auth-SignUpPersonalDataScreen(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 250
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->dismissProgressDialogScreen()V

    .line 251
    iget-object p1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mActivity:Lcom/texa/careapp/app/auth/LoginActivity;

    invoke-virtual {p1}, Lcom/texa/careapp/app/auth/LoginActivity;->setDriverId()V

    .line 252
    iget-object p1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mActivity:Lcom/texa/careapp/app/auth/LoginActivity;

    invoke-virtual {p0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/app/permission/PermissionActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/careapp/app/auth/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 253
    iget-object p1, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mActivity:Lcom/texa/careapp/app/auth/LoginActivity;

    invoke-virtual {p1}, Lcom/texa/careapp/app/auth/LoginActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$registerUser$4$com-texa-careapp-app-auth-SignUpPersonalDataScreen(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 255
    invoke-direct {p0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->dismissProgressDialogScreen()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "got exception in login"

    .line 256
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->mRetrofitErrorParser:Lcom/texa/careapp/utils/RetrofitErrorParser;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/RetrofitErrorParser;->parse(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 281
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 286
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onPause()V

    .line 287
    iget-object v0, p0, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;->registrationSub:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 276
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    return-void
.end method

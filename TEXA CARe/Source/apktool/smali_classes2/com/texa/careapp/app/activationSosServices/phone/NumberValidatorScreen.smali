.class public Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;
.super Lcom/texa/care/navigation/Screen;
.source "NumberValidatorScreen.java"


# static fields
.field private static TAG:Ljava/lang/String; = "NumberValidatorScreen"


# instance fields
.field private mActivity:Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;

.field private mCountryAdapter:Lcom/texa/careapp/utils/CountryAdapter;

.field private mCountrySpinner:Landroid/widget/Spinner;

.field private final mDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field private mPrefixEditText:Landroid/widget/EditText;

.field protected mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mValidationCodeEditText:Landroid/widget/EditText;

.field private mValidationPhoneTextView:Landroid/widget/TextView;

.field private phoneNumber:Ljava/lang/String;

.field private validate:Lcom/texa/careapp/model/ValidateContactModel;

.field private validationCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 69
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 72
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->mActivity:Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;I)Ljava/lang/String;
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->getPrefix(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;)Landroid/widget/EditText;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->mPrefixEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;)Landroid/widget/EditText;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->mValidationCodeEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;)Landroid/content/Context;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private getPrefix(I)Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->mCountryAdapter:Lcom/texa/careapp/utils/CountryAdapter;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/CountryAdapter;->getCountryCode(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/careapp/utils/Iso2Phone;->getPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initCountrySpinner()V
    .locals 2

    .line 95
    new-instance v0, Lcom/texa/careapp/utils/CountryAdapter;

    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/texa/careapp/utils/CountryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->mCountryAdapter:Lcom/texa/careapp/utils/CountryAdapter;

    .line 96
    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->mCountrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 97
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->mPrefixEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 98
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->mCountrySpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen$1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen$1;-><init>(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 109
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->setCurrentCountry()V

    return-void
.end method

.method private initInsertNumberView()V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->mValidationPhoneTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11091a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->mValidationCodeEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 134
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->phoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 135
    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->mValidationCodeEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->mValidationCodeEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen$2;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen$2;-><init>(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private onSignUpClicked()V
    .locals 3

    .line 178
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    sget-object v0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->TAG:Ljava/lang/String;

    const-string v1, "Phone number not valid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->mValidationCodeEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110a0f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->mValidationCodeEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 183
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->validateNumberRequestAPI()V

    :goto_0
    return-void
.end method

.method private setCurrentCountry()V
    .locals 3

    .line 118
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 120
    new-instance v1, Ljava/util/Locale;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 122
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_0
    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->mCountrySpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->mCountryAdapter:Lcom/texa/careapp/utils/CountryAdapter;

    invoke-virtual {v2, v0}, Lcom/texa/careapp/utils/CountryAdapter;->getCountryPosition(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 126
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->mPrefixEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->mCountrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->getPrefix(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private validateNumberRequestAPI()V
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->validate:Lcom/texa/careapp/model/ValidateContactModel;

    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/texa/careapp/model/ValidateContactModel;->value:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->validate:Lcom/texa/careapp/model/ValidateContactModel;

    sget-object v1, Lcom/texa/careapp/emergency/ContactType;->USER_CELLPHONE:Lcom/texa/careapp/emergency/ContactType;

    invoke-virtual {v1}, Lcom/texa/careapp/emergency/ContactType;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/texa/careapp/model/ValidateContactModel;->type:Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    iget-object v2, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->validate:Lcom/texa/careapp/model/ValidateContactModel;

    invoke-interface {v1, v2}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->validateUserContact(Lcom/texa/careapp/model/ValidateContactModel;)Lio/reactivex/Observable;

    move-result-object v1

    .line 196
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 197
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;)V

    new-instance v3, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;)V

    .line 198
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;)V

    .line 78
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenNumberValidatorBinding;

    .line 79
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenNumberValidatorBinding;->textViewPhoneValidator:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->mValidationPhoneTextView:Landroid/widget/TextView;

    .line 80
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenNumberValidatorBinding;->signupPhoneValidator:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->mValidationCodeEditText:Landroid/widget/EditText;

    .line 81
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenNumberValidatorBinding;->prefixPhoneValidator:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->mPrefixEditText:Landroid/widget/EditText;

    .line 82
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenNumberValidatorBinding;->spinnerCountryPhoneValidator:Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->mCountrySpinner:Landroid/widget/Spinner;

    .line 83
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenNumberValidatorBinding;->buttonPhoneValidator:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    new-instance p1, Lcom/texa/careapp/model/ValidateContactModel;

    invoke-direct {p1}, Lcom/texa/careapp/model/ValidateContactModel;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->validate:Lcom/texa/careapp/model/ValidateContactModel;

    .line 86
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->getTempUserPhoneNumber(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->phoneNumber:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->mValidationCodeEditText:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->closeKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 89
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->initInsertNumberView()V

    .line 90
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->initCountrySpinner()V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 174
    sget-object v0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00ce

    return v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 2

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->mPrefixEditText:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->mValidationCodeEditText:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-activationSosServices-phone-NumberValidatorScreen(Landroid/view/View;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->onSignUpClicked()V

    return-void
.end method

.method public synthetic lambda$validateNumberRequestAPI$1$com-texa-careapp-app-activationSosServices-phone-NumberValidatorScreen(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidationResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 199
    sget-object v0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidationResponse;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p1}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidationResponse;->getCode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->validationCode:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 202
    sget-object v0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance p1, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;

    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->mActivity:Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;

    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->validate:Lcom/texa/careapp/model/ValidateContactModel;

    iget-object v2, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->validationCode:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;-><init>(Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;Lcom/texa/careapp/model/ValidateContactModel;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->goTo(Lcom/texa/care/navigation/Screen;)V

    goto :goto_0

    .line 205
    :cond_0
    sget-object p1, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "validationCode from Gson null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public synthetic lambda$validateNumberRequestAPI$2$com-texa-careapp-app-activationSosServices-phone-NumberValidatorScreen(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110a26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->validate:Lcom/texa/careapp/model/ValidateContactModel;

    const-string v1, ""

    iput-object v1, v0, Lcom/texa/careapp/model/ValidateContactModel;->value:Ljava/lang/String;

    .line 164
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 212
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onDestroyView()V

    .line 213
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

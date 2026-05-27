.class public Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;
.super Lcom/texa/care/navigation/Screen;
.source "NumberValidatorFinalStepScreen.java"


# static fields
.field private static final MAX_LENGTH_NUMBER_VALIDATOR_CODE:I = 0x7

.field private static TAG:Ljava/lang/String; = "NumberValidatorFinalStepScreen"


# instance fields
.field private mActivity:Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;

.field private mCellPhoneContact:Lcom/texa/careapp/model/ContactModel;

.field private final mDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field protected mRetrofitErrorParser:Lcom/texa/careapp/utils/RetrofitErrorParser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mTextDescription:Landroid/widget/TextView;

.field protected mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mValidationCodeEditText:Landroid/widget/EditText;

.field private phoneNumber:Ljava/lang/String;

.field private validate:Lcom/texa/careapp/model/ValidateContactModel;

.field private validationCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;Lcom/texa/careapp/model/ValidateContactModel;Ljava/lang/String;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 68
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 71
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->mActivity:Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;

    .line 72
    iput-object p3, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->validationCode:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->validate:Lcom/texa/careapp/model/ValidateContactModel;

    .line 74
    iget-object p1, p2, Lcom/texa/careapp/model/ValidateContactModel;->value:Ljava/lang/String;

    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;)Landroid/widget/EditText;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->mValidationCodeEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;)Landroid/content/Context;
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private checkPhoneNumberValidation()V
    .locals 4

    .line 157
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->confirmNewCellPhoneContact()V

    .line 158
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->mCellPhoneContact:Lcom/texa/careapp/model/ContactModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ContactModel;->setValidated(Z)V

    .line 159
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    iget-object v2, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->mCellPhoneContact:Lcom/texa/careapp/model/ContactModel;

    invoke-interface {v1, v2}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->updateContacts(Lcom/texa/careapp/model/ContactModel;)Lio/reactivex/Completable;

    move-result-object v1

    .line 160
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    .line 161
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;)V

    new-instance v3, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;)V

    .line 162
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 159
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private confirmNewCellPhoneContact()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getUserCellPhoneContact()Lcom/texa/careapp/model/ContactModel;

    move-result-object v1

    iput-object v1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->mCellPhoneContact:Lcom/texa/careapp/model/ContactModel;

    if-nez v1, :cond_0

    .line 143
    new-instance v1, Lcom/texa/careapp/model/ContactModel;

    invoke-direct {v1}, Lcom/texa/careapp/model/ContactModel;-><init>()V

    iput-object v1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->mCellPhoneContact:Lcom/texa/careapp/model/ContactModel;

    .line 144
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/careapp/model/ContactModel;->setUid(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->mCellPhoneContact:Lcom/texa/careapp/model/ContactModel;

    invoke-virtual {v1, v0}, Lcom/texa/careapp/model/ContactModel;->setUser(Lcom/texa/careapp/model/UserModel;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->mCellPhoneContact:Lcom/texa/careapp/model/ContactModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ContactModel;->setValidated(Z)V

    .line 148
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->mCellPhoneContact:Lcom/texa/careapp/model/ContactModel;

    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->validate:Lcom/texa/careapp/model/ValidateContactModel;

    iget-object v1, v1, Lcom/texa/careapp/model/ValidateContactModel;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ContactModel;->setPhoneNumber(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->mCellPhoneContact:Lcom/texa/careapp/model/ContactModel;

    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->validate:Lcom/texa/careapp/model/ValidateContactModel;

    iget-object v1, v1, Lcom/texa/careapp/model/ValidateContactModel;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ContactModel;->setType(Ljava/lang/String;)V

    return-void
.end method

.method private initInsertValidatorCodeView()V
    .locals 7

    .line 91
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->phoneNumber:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->mTextDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110cef

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->phoneNumber:Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->mValidationCodeEditText:Landroid/widget/EditText;

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 95
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->mValidationCodeEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 96
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->mValidationCodeEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen$1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen$1;-><init>(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private onConfirmCodeClicked()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->mValidationCodeEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->getValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->validationCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->mValidationCodeEditText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->closeKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 133
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->checkPhoneNumberValidation()V

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110a26

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;)V

    .line 80
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenNumberValidatorFinalStepBinding;

    .line 81
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenNumberValidatorFinalStepBinding;->textViewPhoneValidatorFinalStep:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->mTextDescription:Landroid/widget/TextView;

    .line 82
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenNumberValidatorFinalStepBinding;->phoneCodeValidatorEditText:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->mValidationCodeEditText:Landroid/widget/EditText;

    .line 83
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenNumberValidatorFinalStepBinding;->signupCodePhoneValidator:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->initInsertValidatorCodeView()V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 126
    sget-object v0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00cf

    return v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-activationSosServices-phone-NumberValidatorFinalStepScreen(Landroid/view/View;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->onConfirmCodeClicked()V

    return-void
.end method

.method public synthetic lambda$checkPhoneNumberValidation$1$com-texa-careapp-app-activationSosServices-phone-NumberValidatorFinalStepScreen()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->mCellPhoneContact:Lcom/texa/careapp/model/ContactModel;

    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    .line 165
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->mActivity:Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;

    invoke-virtual {v0}, Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;->finish()V
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Could not save cell phone contacts"

    .line 167
    invoke-static {v0, v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110a24

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$checkPhoneNumberValidation$2$com-texa-careapp-app-activationSosServices-phone-NumberValidatorFinalStepScreen(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 172
    sget-object v0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got exception in number validation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->mRetrofitErrorParser:Lcom/texa/careapp/utils/RetrofitErrorParser;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/RetrofitErrorParser;->parse(Ljava/lang/Throwable;)V

    .line 174
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->mCellPhoneContact:Lcom/texa/careapp/model/ContactModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/texa/careapp/model/ContactModel;->setValidated(Z)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 180
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onDestroyView()V

    .line 181
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.class public Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;
.super Lcom/texa/care/navigation/Screen;
.source "CareAuthenticationScreen.java"


# static fields
.field private static MAX_NUMBER_OF_CHARACTERS:I = 0x4

.field private static TAG:Ljava/lang/String; = "CareAuthenticationScreen"


# instance fields
.field private connectionDisposable:Lio/reactivex/disposables/Disposable;

.field private firmwareVersionDisposable:Lio/reactivex/disposables/Disposable;

.field private isProgressShown:Z

.field private mActivity:Landroid/app/Activity;

.field protected mArmadilloSharedPreferences:Lat/favre/lib/armadillo/ArmadilloSharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mButton:Landroid/widget/RelativeLayout;

.field private mButtonArrow:Landroid/widget/ImageView;

.field private mButtonText:Landroid/widget/TextView;

.field protected mCommunication:Lcom/texa/carelib/communication/Communication;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mDeviceInfo:Lcom/texa/carelib/communication/DeviceInfo;

.field protected mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mErrorCareCodeTextView:Landroid/widget/TextView;

.field protected mICareObserver:Lcom/texa/careapp/carelib/ICareObserver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mProfile:Lcom/texa/carelib/profile/Profile;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

.field private mRxCommunication:Lcom/texa/care/eco_driving/RxCommunication;

.field protected mTexaProfileDelegate:Lcom/texa/careapp/utils/TexaProfileDelegate;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mValidationCareCodeNumberEditText:Landroid/widget/EditText;

.field private mValidationCareCodeTextEditText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/texa/carelib/communication/DeviceInfo;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 99
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;)V

    .line 101
    iput-object p2, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mDeviceInfo:Lcom/texa/carelib/communication/DeviceInfo;

    .line 102
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mActivity:Landroid/app/Activity;

    .line 103
    new-instance p1, Lcom/texa/care/eco_driving/RxCommunication;

    iget-object p2, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-direct {p1, p2}, Lcom/texa/care/eco_driving/RxCommunication;-><init>(Lcom/texa/carelib/communication/Communication;)V

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mRxCommunication:Lcom/texa/care/eco_driving/RxCommunication;

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 62
    sget v0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->MAX_NUMBER_OF_CHARACTERS:I

    return v0
.end method

.method static synthetic access$100(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;)Landroid/widget/EditText;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mValidationCareCodeTextEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;)Landroid/widget/EditText;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mValidationCareCodeNumberEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;Landroid/widget/EditText;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->setPositive(Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic access$400(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;Ljava/lang/String;)Z
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->isValidCode(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;Landroid/widget/EditText;Z)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->changeBackgroundAndTextColor(Landroid/widget/EditText;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->changeButtonColor()V

    return-void
.end method

.method private changeBackgroundAndTextColor(Landroid/widget/EditText;Z)V
    .locals 1

    if-nez p2, :cond_1

    .line 258
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x7f0800b7

    .line 261
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 262
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0600be

    invoke-static {p2, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_1

    .line 259
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->setPositive(Landroid/widget/EditText;)V

    :goto_1
    return-void
.end method

.method private changeButtonColor()V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mButton:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mValidationCareCodeTextEditText:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->getText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->isValidCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mValidationCareCodeNumberEditText:Landroid/widget/EditText;

    .line 246
    invoke-direct {p0, v0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->getText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->isValidCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mButton:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 248
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mButtonText:Landroid/widget/TextView;

    const-string v1, "#8BC34A"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mButtonArrow:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mButton:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 252
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mButtonText:Landroid/widget/TextView;

    const-string v1, "#808080"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mButtonArrow:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private closeKeyBoard()V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mValidationCareCodeTextEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 166
    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mValidationCareCodeTextEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private createProgressDialogScreen(Ljava/lang/String;)V
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

    if-nez v0, :cond_0

    .line 405
    new-instance v0, Lcom/texa/careapp/utils/ProgressDialogFragment;

    invoke-direct {v0}, Lcom/texa/careapp/utils/ProgressDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/ProgressDialogFragment;->setMessage(Ljava/lang/CharSequence;)V

    .line 407
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "progress"

    invoke-virtual {p1, v0, v1}, Lcom/texa/careapp/utils/ProgressDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 408
    iput-boolean p1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->isProgressShown:Z

    return-void
.end method

.method private dismissProgressDialogScreen()V
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v0}, Lcom/texa/careapp/utils/ProgressDialogFragment;->dismissAllowingStateLoss()V

    const/4 v0, 0x0

    .line 414
    iput-boolean v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->isProgressShown:Z

    :cond_0
    return-void
.end method

.method private getCarePsw(Landroid/widget/EditText;Landroid/widget/EditText;)Ljava/lang/String;
    .locals 1

    .line 282
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 284
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getText(Landroid/widget/EditText;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 235
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private hideError()V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mErrorCareCodeTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mErrorCareCodeTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private initEditTextCareCode()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mValidationCareCodeNumberEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 175
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 176
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mValidationCareCodeNumberEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen$1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen$1;-><init>(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 196
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mValidationCareCodeTextEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen$2;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen$2;-><init>(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 221
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mValidationCareCodeNumberEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 227
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mValidationCareCodeTextEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private isValidCode(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^[0-9A-F]{4}$"

    .line 419
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    return p1
.end method

.method private onAuthenticationCompleted(Ljava/lang/String;)V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->resetAllSelectedDongleFlag(Lcom/texa/careapp/model/DongleDataManager;)V

    .line 351
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mDeviceInfo:Lcom/texa/carelib/communication/DeviceInfo;

    invoke-virtual {v0}, Lcom/texa/carelib/communication/DeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mDeviceInfo:Lcom/texa/carelib/communication/DeviceInfo;

    invoke-virtual {v0}, Lcom/texa/carelib/communication/DeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/model/DongleModel;->fromMacAddress(Ljava/lang/String;)Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 354
    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mDeviceInfo:Lcom/texa/carelib/communication/DeviceInfo;

    invoke-virtual {v1}, Lcom/texa/carelib/communication/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 355
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mDeviceInfo:Lcom/texa/carelib/communication/DeviceInfo;

    invoke-virtual {v0}, Lcom/texa/carelib/communication/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/model/DongleModel;->fromMacAddress(Ljava/lang/String;)Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 357
    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mDeviceInfo:Lcom/texa/carelib/communication/DeviceInfo;

    if-eqz v1, :cond_2

    .line 358
    invoke-static {v1}, Lcom/texa/careapp/model/DongleModel;->from(Lcom/texa/carelib/communication/DeviceInfo;)Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    .line 360
    :cond_2
    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mArmadilloSharedPreferences:Lat/favre/lib/armadillo/ArmadilloSharedPreferences;

    invoke-virtual {v0, p1, v1}, Lcom/texa/careapp/model/DongleModel;->setPin(Ljava/lang/String;Lat/favre/lib/armadillo/ArmadilloSharedPreferences;)V

    .line 361
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 363
    sget-object p1, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->TAG:Ljava/lang/String;

    const-string v1, "a dongle was previously configured"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 365
    :cond_3
    sget-object p1, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->TAG:Ljava/lang/String;

    const-string v1, "first installation"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :goto_1
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mActivity:Landroid/app/Activity;

    instance-of p1, p1, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    if-eqz p1, :cond_4

    .line 368
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->firmwareVersionDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 369
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mICareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/DongleModel;->observerFirmwareVersion(Lcom/texa/careapp/carelib/ICareObserver;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;)V

    new-instance v1, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;)V

    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->firmwareVersionDisposable:Lio/reactivex/disposables/Disposable;

    goto :goto_2

    .line 378
    :cond_4
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->goBack()V

    :goto_2
    return-void
.end method

.method private onCareAuthenticationClicked()V
    .locals 5

    .line 288
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mValidationCareCodeNumberEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mValidationCareCodeTextEditText:Landroid/widget/EditText;

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->getCarePsw(Landroid/widget/EditText;Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_2

    .line 290
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->hideError()V

    .line 291
    iget-boolean v1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->isProgressShown:Z

    if-nez v1, :cond_0

    .line 292
    invoke-direct {p0, v3}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->createProgressDialogScreen(Ljava/lang/String;)V

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mTexaProfileDelegate:Lcom/texa/careapp/utils/TexaProfileDelegate;

    invoke-virtual {v1, v0}, Lcom/texa/careapp/utils/TexaProfileDelegate;->setPassword(Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mProfile:Lcom/texa/carelib/profile/Profile;

    invoke-interface {v1}, Lcom/texa/carelib/profile/Profile;->isReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    invoke-direct {p0, v0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->onDongleReady(Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mProfile:Lcom/texa/carelib/profile/Profile;

    new-instance v4, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Lcom/texa/carelib/profile/Profile;->forceAuthentication(Lcom/texa/carelib/core/Callback;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 330
    :catch_0
    invoke-direct {p0, v3}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->onError(Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 331
    sget-object v1, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "%s authentication canDoIt= %s"

    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 336
    :cond_2
    invoke-direct {p0, v3}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->onError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private onDongleReady(Ljava/lang/String;)V
    .locals 4

    .line 341
    sget-object v0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "no errors"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->hideError()V

    .line 343
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->closeKeyBoard()V

    .line 344
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->onAuthenticationCompleted(Ljava/lang/String;)V

    return-void
.end method

.method private onError(Ljava/lang/String;)V
    .locals 2

    .line 383
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->dismissProgressDialogScreen()V

    .line 384
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen$$ExternalSyntheticLambda7;-><init>(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private openKeyBoard()V
    .locals 3

    .line 154
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 155
    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mValidationCareCodeNumberEditText:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 156
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mValidationCareCodeNumberEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method private setPositive(Landroid/widget/EditText;)V
    .locals 2

    const v0, 0x7f0800b6

    .line 239
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 240
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0600bf

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 2

    .line 109
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenCareValidatorBinding;

    .line 110
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenCareValidatorBinding;->screenCareValidatorFirst:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mValidationCareCodeNumberEditText:Landroid/widget/EditText;

    .line 111
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenCareValidatorBinding;->screenCareValidatorSecond:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mValidationCareCodeTextEditText:Landroid/widget/EditText;

    .line 112
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenCareValidatorBinding;->textViewCareAuthenticationError:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mErrorCareCodeTextView:Landroid/widget/TextView;

    .line 113
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenCareValidatorBinding;->buttonCareValidator:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mButton:Landroid/widget/RelativeLayout;

    .line 114
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenCareValidatorBinding;->buttonCareValidatorText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mButtonText:Landroid/widget/TextView;

    .line 115
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenCareValidatorBinding;->buttonCareValidatorArrow:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mButtonArrow:Landroid/widget/ImageView;

    .line 116
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mButton:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->initEditTextCareCode()V

    .line 119
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_OUT_OF_THE_BOX_PIN_REQUEST:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 120
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->openKeyBoard()V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 278
    sget-object v0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00b0

    return v0
.end method

.method public getType()Lcom/texa/care/navigation/ScreenType;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/texa/care/navigation/ScreenType;->DEFAULT:Lcom/texa/care/navigation/ScreenType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/texa/care/navigation/ScreenType;->DIALOG_FULL_WIDTH:Lcom/texa/care/navigation/ScreenType;

    :goto_0
    return-object v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-onboarding-CareAuthenticationScreen(Landroid/view/View;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->onCareAuthenticationClicked()V

    return-void
.end method

.method public synthetic lambda$initEditTextCareCode$2$com-texa-careapp-app-onboarding-CareAuthenticationScreen(Landroid/view/View;Z)V
    .locals 0

    .line 222
    check-cast p1, Landroid/widget/EditText;

    iget-object p2, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mValidationCareCodeNumberEditText:Landroid/widget/EditText;

    invoke-direct {p0, p2}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->getText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->isValidCode(Ljava/lang/String;)Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->changeBackgroundAndTextColor(Landroid/widget/EditText;Z)V

    .line 223
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->changeButtonColor()V

    return-void
.end method

.method public synthetic lambda$initEditTextCareCode$3$com-texa-careapp-app-onboarding-CareAuthenticationScreen(Landroid/view/View;Z)V
    .locals 0

    .line 228
    check-cast p1, Landroid/widget/EditText;

    iget-object p2, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mValidationCareCodeTextEditText:Landroid/widget/EditText;

    invoke-direct {p0, p2}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->getText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->isValidCode(Ljava/lang/String;)Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->changeBackgroundAndTextColor(Landroid/widget/EditText;Z)V

    .line 229
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->changeButtonColor()V

    return-void
.end method

.method public synthetic lambda$onAuthenticationCompleted$5$com-texa-careapp-app-onboarding-CareAuthenticationScreen(Lcom/texa/careapp/model/DongleModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 370
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->dismissProgressDialogScreen()V

    .line 371
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/navigation/Navigator;->clearBackStack()V

    .line 372
    new-instance p1, Lcom/texa/careapp/app/onboarding/StartEngineScreen;

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-direct {p1, v0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen;-><init>(Lcom/texa/careapp/app/onboarding/OnBoardingActivity;)V

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method public synthetic lambda$onAuthenticationCompleted$6$com-texa-careapp-app-onboarding-CareAuthenticationScreen(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ON ERROR SAVING DONGLE"

    .line 374
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->dismissProgressDialogScreen()V

    return-void
.end method

.method public synthetic lambda$onCareAuthenticationClicked$4$com-texa-careapp-app-onboarding-CareAuthenticationScreen(Ljava/lang/String;Lcom/texa/carelib/profile/events/AuthenticationCompletedEvent;)V
    .locals 2

    .line 301
    iget-boolean v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->isProgressShown:Z

    if-eqz v0, :cond_0

    .line 302
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->dismissProgressDialogScreen()V

    .line 303
    :cond_0
    invoke-virtual {p2}, Lcom/texa/carelib/profile/events/AuthenticationCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p2

    if-nez p2, :cond_1

    .line 305
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->onDongleReady(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    sget-object p2, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_OUT_OF_THE_BOX_DONGLE_CONNECTED:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {p2}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 309
    :cond_1
    invoke-virtual {p2}, Lcom/texa/carelib/core/CareError;->getErrorCode()I

    move-result p1

    const/4 p2, 0x6

    if-eq p1, p2, :cond_4

    const/16 p2, 0x13

    if-eq p1, p2, :cond_3

    const/16 p2, 0x15

    if-eq p1, p2, :cond_2

    .line 320
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1109e4

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 311
    :cond_2
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1100a0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 314
    :cond_3
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f11009f

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 317
    :cond_4
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1100a1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 325
    :goto_0
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->onError(Ljava/lang/String;)V

    .line 326
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object p2, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->CARE_CONN:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v0, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->FAILED:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    sget-object v1, Lcom/texa/careapp/model/ServerLogModel$LogNote;->PIN_ERROR:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v1}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    :goto_1
    return-void
.end method

.method public synthetic lambda$onError$7$com-texa-careapp-app-onboarding-CareAuthenticationScreen(Ljava/lang/String;)V
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mValidationCareCodeNumberEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 387
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mValidationCareCodeNumberEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mValidationCareCodeTextEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 390
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mErrorCareCodeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mErrorCareCodeTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$onResume$1$com-texa-careapp-app-onboarding-CareAuthenticationScreen(Lcom/texa/carelib/communication/CommunicationStatus;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTING:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p1, v0}, Lcom/texa/carelib/communication/CommunicationStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p1, v0}, Lcom/texa/carelib/communication/CommunicationStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mActivity:Landroid/app/Activity;

    instance-of p1, p1, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    if-nez p1, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->goBack()V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 268
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .line 144
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onPause()V

    .line 145
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->connectionDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 146
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->firmwareVersionDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 125
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    .line 126
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mTexaProfileDelegate:Lcom/texa/careapp/utils/TexaProfileDelegate;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/texa/careapp/utils/TexaProfileDelegate;->setPassword(Ljava/lang/String;)V

    .line 127
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->changeButtonColor()V

    .line 128
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->connectionDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 129
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->mRxCommunication:Lcom/texa/care/eco_driving/RxCommunication;

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/RxCommunication;->observeCommunicationStatus()Lio/reactivex/Observable;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    .line 131
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 132
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;)V

    sget-object v2, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda1;->INSTANCE:Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda1;

    .line 133
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;->connectionDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

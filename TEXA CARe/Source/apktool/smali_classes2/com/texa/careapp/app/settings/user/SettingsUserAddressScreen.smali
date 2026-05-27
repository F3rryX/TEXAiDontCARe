.class public Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;
.super Lcom/texa/care/navigation/Screen;
.source "SettingsUserAddressScreen.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsUserAddressScreen"


# instance fields
.field protected mContext:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mCountryAdapter:Lcom/texa/careapp/utils/CountryAdapter;

.field private mCountryIndex:I

.field private mEditTextAddress:Landroid/widget/EditText;

.field private mEditTextCap:Landroid/widget/EditText;

.field private mEditTextCity:Landroid/widget/EditText;

.field private mEditTextCivicNumber:Landroid/widget/EditText;

.field private mEditTextProvince:Landroid/widget/EditText;

.field protected mFlavorDelegator:Lcom/texa/careapp/FlavorDelegator;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSpinnerCountry:Landroid/widget/Spinner;

.field private mUser:Lcom/texa/careapp/model/UserModel;

.field private mUserAddress:Ljava/lang/String;

.field private mUserCap:Ljava/lang/String;

.field private mUserCity:Ljava/lang/String;

.field private mUserCivicNumber:Ljava/lang/String;

.field private mUserCountry:Ljava/lang/String;

.field protected mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUserProvince:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    const-string v0, ""

    .line 60
    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUserAddress:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUserCivicNumber:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUserCap:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUserCity:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUserProvince:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUserCountry:Ljava/lang/String;

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mCountryIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;)Lcom/texa/careapp/model/UserModel;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    return-object p0
.end method

.method static synthetic access$102(Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mCountryIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;)Lcom/texa/careapp/utils/CountryAdapter;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mCountryAdapter:Lcom/texa/careapp/utils/CountryAdapter;

    return-object p0
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;)V

    .line 72
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenSettingsUserAddressBinding;

    .line 73
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSettingsUserAddressBinding;->editTextUserAddress:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mEditTextAddress:Landroid/widget/EditText;

    .line 74
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSettingsUserAddressBinding;->editTextUserCivicNumber:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mEditTextCivicNumber:Landroid/widget/EditText;

    .line 75
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSettingsUserAddressBinding;->editTextUserCap:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mEditTextCap:Landroid/widget/EditText;

    .line 76
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSettingsUserAddressBinding;->editTextUserCity:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mEditTextCity:Landroid/widget/EditText;

    .line 77
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSettingsUserAddressBinding;->editTextUserProvince:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mEditTextProvince:Landroid/widget/EditText;

    .line 78
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenSettingsUserAddressBinding;->spinnerSetUserCountry:Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mSpinnerCountry:Landroid/widget/Spinner;

    .line 80
    iget-object p1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {p1}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    if-nez p1, :cond_0

    .line 82
    new-instance p1, Lcom/texa/careapp/model/UserModel;

    invoke-direct {p1}, Lcom/texa/careapp/model/UserModel;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->initEditText()V

    .line 86
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->initCountrySpinner()V

    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mEditTextAddress:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCap()Ljava/lang/String;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mEditTextCap:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mEditTextCity:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCivicNumber()Ljava/lang/String;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mEditTextCivicNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 97
    sget-object v0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00e3

    return v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mEditTextProvince:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initCountrySpinner()V
    .locals 2

    .line 237
    new-instance v0, Lcom/texa/careapp/utils/CountryAdapter;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/texa/careapp/utils/CountryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mCountryAdapter:Lcom/texa/careapp/utils/CountryAdapter;

    .line 238
    iget-object v1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mSpinnerCountry:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 240
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mSpinnerCountry:Landroid/widget/Spinner;

    new-instance v1, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen$6;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen$6;-><init>(Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 253
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->setCurrentCountry()V

    return-void
.end method

.method public initEditText()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    if-eqz v0, :cond_6

    .line 127
    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUserAddress:Ljava/lang/String;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getCivicNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getCivicNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUserCivicNumber:Ljava/lang/String;

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUserCap:Ljava/lang/String;

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getCity()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 137
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getCity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUserCity:Ljava/lang/String;

    .line 139
    :cond_3
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getProvince()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 140
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getProvince()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUserProvince:Ljava/lang/String;

    .line 142
    :cond_4
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 143
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUserCountry:Ljava/lang/String;

    .line 146
    :cond_5
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mEditTextAddress:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUserAddress:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->setText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mEditTextCivicNumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUserCivicNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->setText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mEditTextCap:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUserCap:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->setText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mEditTextCity:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUserCity:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->setText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mEditTextProvince:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUserProvince:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->setText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 153
    :cond_6
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mEditTextAddress:Landroid/widget/EditText;

    new-instance v1, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen$1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen$1;-><init>(Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 169
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mEditTextCivicNumber:Landroid/widget/EditText;

    new-instance v1, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen$2;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen$2;-><init>(Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 185
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mEditTextCap:Landroid/widget/EditText;

    new-instance v1, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen$3;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen$3;-><init>(Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 201
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mEditTextCity:Landroid/widget/EditText;

    new-instance v1, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen$4;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen$4;-><init>(Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 217
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mEditTextProvince:Landroid/widget/EditText;

    new-instance v1, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen$5;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen$5;-><init>(Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public isDifferent()Z
    .locals 4

    .line 279
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUserAddress:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUserCivicNumber:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->getCivicNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUserCap:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->getCap()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUserCity:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 287
    :cond_3
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUserProvince:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 289
    :cond_4
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUserCountry:Ljava/lang/String;

    iget-object v2, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mCountryAdapter:Lcom/texa/careapp/utils/CountryAdapter;

    iget v3, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mCountryIndex:I

    invoke-virtual {v2, v3}, Lcom/texa/careapp/utils/CountryAdapter;->getCountryCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 5

    .line 102
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onPause()V

    .line 104
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->isDifferent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 105
    sget-object v2, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%s User address info SyncNeeded"

    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget-object v1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v1, v0}, Lcom/texa/careapp/model/UserModel;->setSyncNeeded(Z)V

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 111
    iget-object v2, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mContext:Landroid/content/Context;

    const v4, 0x7f110a24

    invoke-static {v2, v4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "Could not save user address in database"

    .line 112
    invoke-static {v1, v2, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 120
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    return-void
.end method

.method public setCurrentCountry()V
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUserCountry:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 261
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mSpinnerCountry:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mCountryAdapter:Lcom/texa/careapp/utils/CountryAdapter;

    invoke-virtual {v2, v0}, Lcom/texa/careapp/utils/CountryAdapter;->getCountryPosition(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 267
    :cond_0
    new-instance v0, Ljava/util/Locale;

    iget-object v2, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mUserCountry:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mCountryAdapter:Lcom/texa/careapp/utils/CountryAdapter;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/texa/careapp/utils/CountryAdapter;->getCountryPosition(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mCountryIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 270
    iget-object v1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->mSpinnerCountry:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_1
    :goto_0
    return-void
.end method

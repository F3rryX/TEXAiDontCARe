.class public Lcom/texa/careapp/app/settings/user/SettingsUserScreen;
.super Lcom/texa/care/navigation/Screen;
.source "SettingsUserScreen.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsUserScreen"


# instance fields
.field private UserLogoutItem:Landroid/widget/LinearLayout;

.field private editText_email:Landroid/widget/EditText;

.field private editText_firstName:Landroid/widget/EditText;

.field private editText_lastName:Landroid/widget/EditText;

.field private editText_phoneNumber:Landroid/widget/EditText;

.field private editText_taxCode:Landroid/widget/EditText;

.field protected mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mDivLogoutItem:Landroid/view/View;

.field private mDriverLicenseExpDate:Lcom/texa/careapp/views/EditableDateView;

.field protected mFlavorDelegator:Lcom/texa/careapp/FlavorDelegator;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mIconUserAddress:Landroid/widget/ImageView;

.field protected mLoginHelperRx:Lcom/texa/careapp/utils/LoginHelperRx;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUser:Lcom/texa/careapp/model/UserModel;

.field protected mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private userDriveLicenseExp:Ljava/util/Date;

.field private userEmail:Ljava/lang/String;

.field private userFirstName:Ljava/lang/String;

.field private userLastName:Ljava/lang/String;

.field private userPhoneNumber:Ljava/lang/String;

.field private userTaxCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    const-string v0, ""

    .line 75
    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->userFirstName:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->userLastName:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->userTaxCode:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->userEmail:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->userPhoneNumber:Ljava/lang/String;

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->userDriveLicenseExp:Ljava/util/Date;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;)Landroid/widget/EditText;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->editText_firstName:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;)Landroid/widget/EditText;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->editText_lastName:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;)Ljava/lang/String;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->getFirstName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;)Lcom/texa/careapp/model/UserModel;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    return-object p0
.end method

.method static synthetic access$400(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;)Ljava/lang/String;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->getLastName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;)Ljava/lang/String;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->getTaxCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private enabledUserLogout()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->UserLogoutItem:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mDivLogoutItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private getDriverLicenseExpDate()Ljava/util/Date;
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mDriverLicenseExpDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {v0}, Lcom/texa/careapp/views/EditableDateView;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private getEmail()Ljava/lang/String;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->editText_email:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFirstName()Ljava/lang/String;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->editText_firstName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLastName()Ljava/lang/String;
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->editText_lastName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTaxCode()Ljava/lang/String;
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->editText_taxCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private goToNumberValidatorScreen()V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private goToSettingsUserAddressActivity()V
    .locals 2

    .line 387
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/texa/careapp/app/settings/user/SettingsUserAddressActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 388
    iget-object v1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private initEditText()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    if-eqz v0, :cond_6

    .line 233
    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getFirstName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getFirstName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->userFirstName:Ljava/lang/String;

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getLastName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getLastName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->userLastName:Ljava/lang/String;

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getFiscalCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getFiscalCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->userTaxCode:Ljava/lang/String;

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getUserName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 243
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getUserName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->userEmail:Ljava/lang/String;

    .line 245
    :cond_3
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getUserCellPhoneContact()Lcom/texa/careapp/model/ContactModel;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 246
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getUserCellPhoneContact()Lcom/texa/careapp/model/ContactModel;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 247
    invoke-virtual {v0}, Lcom/texa/careapp/model/ContactModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 248
    invoke-virtual {v0}, Lcom/texa/careapp/model/ContactModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->userPhoneNumber:Ljava/lang/String;

    .line 251
    :cond_4
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getLicenseExpireDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 252
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getLicenseExpireDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->userDriveLicenseExp:Ljava/util/Date;

    .line 255
    :cond_5
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->editText_firstName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->userFirstName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->setText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->editText_lastName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->userLastName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->setText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->editText_taxCode:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->userTaxCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->setText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->editText_email:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->userEmail:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->setText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->editText_phoneNumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->userPhoneNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->setText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mDriverLicenseExpDate:Lcom/texa/careapp/views/EditableDateView;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->userDriveLicenseExp:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/EditableDateView;->setDate(Ljava/util/Date;)V

    .line 264
    :cond_6
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->editText_firstName:Landroid/widget/EditText;

    new-instance v1, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$3;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$3;-><init>(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 280
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->editText_lastName:Landroid/widget/EditText;

    new-instance v1, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$4;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$4;-><init>(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 296
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->editText_taxCode:Landroid/widget/EditText;

    new-instance v1, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$5;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$5;-><init>(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 312
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->editText_email:Landroid/widget/EditText;

    new-instance v1, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$6;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$6;-><init>(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 328
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mDriverLicenseExpDate:Lcom/texa/careapp/views/EditableDateView;

    new-instance v1, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;)V

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/EditableDateView;->setListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 330
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->editText_phoneNumber:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 332
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->editText_email:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method private isAddressInfoSet()Z
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    if-eqz v0, :cond_4

    .line 397
    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getCivicNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getCivicNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 403
    :cond_2
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getCity()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    :goto_0
    return v1

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private isDifferent()Z
    .locals 3

    .line 341
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->userFirstName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->userLastName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->userTaxCode:Ljava/lang/String;

    invoke-direct {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->getTaxCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 347
    :cond_2
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->userEmail:Ljava/lang/String;

    invoke-direct {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 349
    :cond_3
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->userDriveLicenseExp:Ljava/util/Date;

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->getDriverLicenseExpDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->userDriveLicenseExp:Ljava/util/Date;

    if-eqz v0, :cond_5

    .line 350
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->getDriverLicenseExpDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->userDriveLicenseExp:Ljava/util/Date;

    .line 351
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->getDriverLicenseExpDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$requestLogoutDialog$7(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 372
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private requestLogoutDialog()V
    .locals 4

    .line 363
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 364
    iget-object v1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mContext:Landroid/content/Context;

    const v2, 0x7f110ad0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 365
    iget-object v1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mContext:Landroid/content/Context;

    const v2, 0x7f110acc

    .line 366
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 367
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mContext:Landroid/content/Context;

    const v3, 0x7f110acd

    .line 368
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mContext:Landroid/content/Context;

    const/high16 v3, 0x1040000

    .line 372
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$$ExternalSyntheticLambda1;->INSTANCE:Lcom/texa/careapp/app/settings/user/SettingsUserScreen$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 373
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private scheduleUserSyncTask()V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-virtual {v0}, Lcom/texa/careapp/sync/CAReWorkerManager;->scheduleUserTask()V

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 2

    .line 85
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;)V

    .line 86
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;

    .line 87
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;->editTextUserFirstName:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->editText_firstName:Landroid/widget/EditText;

    .line 88
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;->editTextUserLastName:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->editText_lastName:Landroid/widget/EditText;

    .line 89
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;->editTextUserFiscalCode:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->editText_taxCode:Landroid/widget/EditText;

    .line 90
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;->editTextUserEmail:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->editText_email:Landroid/widget/EditText;

    .line 91
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;->editTextUserPhoneNumber:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->editText_phoneNumber:Landroid/widget/EditText;

    .line 92
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;->editDateViewUserDriverLicense:Lcom/texa/careapp/views/EditableDateView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mDriverLicenseExpDate:Lcom/texa/careapp/views/EditableDateView;

    .line 93
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;->iconSetUserAddress:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mIconUserAddress:Landroid/widget/ImageView;

    .line 94
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;->layoutUserLogout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->UserLogoutItem:Landroid/widget/LinearLayout;

    .line 95
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;->divTopUserLogout:Landroid/view/View;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mDivLogoutItem:Landroid/view/View;

    .line 97
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;->layoutSetUserAddress:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->editText_phoneNumber:Landroid/widget/EditText;

    new-instance v1, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->UserLogoutItem:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->editText_phoneNumber:Landroid/widget/EditText;

    new-instance v1, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$$ExternalSyntheticLambda7;-><init>(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 107
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;->layoutExpDriverLicense:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object p1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->editText_firstName:Landroid/widget/EditText;

    new-instance v0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$1;-><init>(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 132
    iget-object p1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->editText_lastName:Landroid/widget/EditText;

    new-instance v0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$2;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen$2;-><init>(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 163
    sget-object v0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00e2

    return v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-settings-user-SettingsUserScreen(Landroid/view/View;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->goToSettingsUserAddressActivity()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$1$com-texa-careapp-app-settings-user-SettingsUserScreen(Landroid/view/View;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->goToNumberValidatorScreen()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$2$com-texa-careapp-app-settings-user-SettingsUserScreen(Landroid/view/View;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->requestLogoutDialog()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$3$com-texa-careapp-app-settings-user-SettingsUserScreen(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->goToNumberValidatorScreen()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$afterViewInjection$4$com-texa-careapp-app-settings-user-SettingsUserScreen(Landroid/view/View;)V
    .locals 0

    .line 107
    iget-object p1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mDriverLicenseExpDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {p1}, Lcom/texa/careapp/views/EditableDateView;->showDatePicker()V

    return-void
.end method

.method public synthetic lambda$initEditText$5$com-texa-careapp-app-settings-user-SettingsUserScreen(Landroid/content/DialogInterface;)V
    .locals 1

    .line 328
    iget-object p1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-direct {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->getDriverLicenseExpDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/careapp/model/UserModel;->setLicenseExpireDate(Ljava/util/Date;)V

    return-void
.end method

.method public synthetic lambda$requestLogoutDialog$6$com-texa-careapp-app-settings-user-SettingsUserScreen(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 369
    iget-object p2, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mLoginHelperRx:Lcom/texa/careapp/utils/LoginHelperRx;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/texa/careapp/utils/LoginHelperRx;->doLogOut(Z)V

    .line 370
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public loadUser()V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Lcom/texa/careapp/model/UserModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/UserModel;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 5

    .line 182
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onPause()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 183
    sget-object v2, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v4, "%s onPause"

    invoke-static {v4, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iget-object v1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->editText_lastName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->editText_lastName:Landroid/widget/EditText;

    .line 186
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    if-eqz v1, :cond_1

    .line 188
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->isDifferent()Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v2, v1, v3

    const-string v2, "%s User info SyncNeeded"

    .line 189
    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    iget-object v1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v1, v0}, Lcom/texa/careapp/model/UserModel;->setSyncNeeded(Z)V

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 194
    iget-object v2, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mContext:Landroid/content/Context;

    const v4, 0x7f110a24

    invoke-static {v2, v4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "Could not save user data in database"

    .line 196
    invoke-static {v1, v4, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/UserModel;->isSyncNeeded()Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v0, v0, [Ljava/lang/Object;

    .line 201
    sget-object v1, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->TAG:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string v1, "%s scheduleUserSyncTask()"

    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->scheduleUserSyncTask()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 168
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 169
    sget-object v1, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s onResume"

    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->loadUser()V

    .line 172
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->initEditText()V

    .line 173
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->showIconEmptyField()V

    .line 174
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->enabledUserLogout()V

    return-void
.end method

.method public showIconEmptyField()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 417
    sget-object v1, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 418
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->isAddressInfoSet()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/UserDataManager;->countContactsFamilyForEmergency()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "%s showIconEmptyField isAddressInfoSet: %s   mUserDataManager.countContactsFamilyForEmergency(): %s"

    .line 417
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->isAddressInfoSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mIconUserAddress:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/settings/user/SettingsUserScreen;->mIconUserAddress:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

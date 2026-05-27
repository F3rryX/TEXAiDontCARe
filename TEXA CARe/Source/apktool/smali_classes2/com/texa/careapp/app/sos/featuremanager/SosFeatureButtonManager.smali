.class public Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;
.super Ljava/lang/Object;
.source "SosFeatureButtonManager.java"


# instance fields
.field private buttonLayout:Landroid/view/ViewGroup;

.field private image:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

.field private mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

.field private mVibrator:Landroid/os/Vibrator;

.field private navigator:Lcom/texa/care/navigation/Navigator;

.field private sosService:Lcom/texa/careapp/model/ServiceDataModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/texa/careapp/utils/UserDataManager;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/model/ServiceDataModel;Landroid/view/ViewGroup;Landroid/widget/ImageView;Lcom/texa/care/navigation/Navigator;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->mContext:Landroid/content/Context;

    .line 54
    iput-object p4, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->sosService:Lcom/texa/careapp/model/ServiceDataModel;

    .line 55
    iput-object p2, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    .line 56
    iput-object p3, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    .line 57
    iput-object p5, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->buttonLayout:Landroid/view/ViewGroup;

    .line 58
    iput-object p6, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->image:Landroid/widget/ImageView;

    .line 59
    iput-object p7, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->navigator:Lcom/texa/care/navigation/Navigator;

    .line 61
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->initResources(Landroid/content/Context;)V

    return-void
.end method

.method private initResources(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "vibrator"

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method

.method private isCellPhoneNumberNotEmpty()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getUserCellPhoneContact()Lcom/texa/careapp/model/ContactModel;

    move-result-object v0

    .line 115
    invoke-direct {p0, v0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->isCellPhoneNumberNotEmpty(Lcom/texa/careapp/model/ContactModel;)Z

    move-result v0

    return v0
.end method

.method private isCellPhoneNumberNotEmpty(Lcom/texa/careapp/model/ContactModel;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1}, Lcom/texa/careapp/model/ContactModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private onManualSosButtonClicked()V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->startAlertActivity()V

    return-void
.end method

.method private showAcceptationPolicySosActivity(Lcom/texa/careapp/model/ServiceDataModel;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/texa/careapp/app/sos/SosPrerequisiteActivity;->buildIntent(Landroid/content/Context;Lcom/texa/careapp/model/ServiceDataModel;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showActivationSosActivity(Lcom/texa/careapp/model/ServiceDataModel;)V
    .locals 6

    .line 79
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getMainAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object v0

    new-instance v1, Lcom/texa/carelib/core/utils/FirmwareVersion;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v3, v5, v5}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/Version;->compareTo(Lcom/texa/carelib/core/utils/Version;)I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    .line 80
    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getServiceAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object v0

    new-instance v1, Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-direct {v1, v2, v3, v5, v5}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/Version;->compareTo(Lcom/texa/carelib/core/utils/Version;)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 81
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->buildIntent(Landroid/content/Context;Lcom/texa/careapp/model/ServiceDataModel;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 83
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->navigator:Lcom/texa/care/navigation/Navigator;

    new-instance v0, Lcom/texa/careapp/app/activationSosServices/FirmwareVersionAlertDialog;

    invoke-direct {v0}, Lcom/texa/careapp/app/activationSosServices/FirmwareVersionAlertDialog;-><init>()V

    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    :goto_0
    return-void
.end method

.method private showCheckList(Lcom/texa/careapp/model/ServiceDataModel;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/texa/careapp/app/sos/SosPrerequisiteActivity;->buildIntent(Landroid/content/Context;Lcom/texa/careapp/model/ServiceDataModel;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startAlertActivity()V
    .locals 3

    .line 98
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->isCellPhoneNumberNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->sosService:Lcom/texa/careapp/model/ServiceDataModel;

    if-eqz v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->ordinal()I

    move-result v0

    invoke-static {v1, v0}, Lcom/texa/careapp/app/sos/AlertCentralActivity;->buildIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->isCellPhoneNumberNotEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110d25

    .line 103
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 102
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method private vibrate()V
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->mVibrator:Landroid/os/Vibrator;

    sget v1, Lcom/texa/careapp/Constants;->TIME_TO_VIBRATE_ON_TOUCH:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method


# virtual methods
.method public addClick(Landroid/view/View;Lcom/texa/careapp/model/ServiceDataModel;)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 124
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 125
    new-instance p2, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 131
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public disableButton()V
    .locals 4

    .line 246
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08009a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->mContext:Landroid/content/Context;

    const v3, 0x7f06002e

    invoke-static {v1, v3}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 252
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->buttonLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public disableButtonCauseCheck()V
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08009a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->mContext:Landroid/content/Context;

    const v2, 0x7f06002e

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 224
    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->buttonLayout:Landroid/view/ViewGroup;

    new-instance v2, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public enableButtonForAcceptTerms()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08009a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->mContext:Landroid/content/Context;

    const v2, 0x7f06002e

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 197
    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->buttonLayout:Landroid/view/ViewGroup;

    new-instance v2, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public enableButtonForSos()V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08009a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->mContext:Landroid/content/Context;

    const v2, 0x7f060074

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 262
    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->buttonLayout:Landroid/view/ViewGroup;

    new-instance v2, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public enableButtonForSosActivation()V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08009a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->mContext:Landroid/content/Context;

    const v2, 0x7f06002e

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 170
    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->buttonLayout:Landroid/view/ViewGroup;

    new-instance v2, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public synthetic lambda$addClick$0$com-texa-careapp-app-sos-featuremanager-SosFeatureButtonManager(Landroid/view/View;)V
    .locals 2

    .line 126
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->mContext:Landroid/content/Context;

    const-class v1, Lcom/texa/careapp/app/settings/SettingsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "SCROLL_TO_SERVICE"

    const/4 v1, 0x1

    .line 127
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 128
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 129
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$disableButtonCauseCheck$3$com-texa-careapp-app-sos-featuremanager-SosFeatureButtonManager(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 225
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const p3, 0x7f06002e

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 235
    iget-object p2, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->mContext:Landroid/content/Context;

    invoke-static {p2, p3}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 236
    :cond_1
    iget-object p2, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->image:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 237
    iget-object p1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->sosService:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->showCheckList(Lcom/texa/careapp/model/ServiceDataModel;)V

    return v0

    .line 228
    :cond_2
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->vibrate()V

    if-eqz p1, :cond_3

    .line 230
    iget-object p2, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->mContext:Landroid/content/Context;

    invoke-static {p2, p3}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 231
    :cond_3
    iget-object p2, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->image:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return v0
.end method

.method public synthetic lambda$enableButtonForAcceptTerms$2$com-texa-careapp-app-sos-featuremanager-SosFeatureButtonManager(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 198
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const p3, 0x7f06002e

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 208
    iget-object p2, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->mContext:Landroid/content/Context;

    invoke-static {p2, p3}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 209
    :cond_1
    iget-object p2, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->image:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 210
    iget-object p1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->sosService:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->showAcceptationPolicySosActivity(Lcom/texa/careapp/model/ServiceDataModel;)V

    return v0

    .line 201
    :cond_2
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->vibrate()V

    if-eqz p1, :cond_3

    .line 203
    iget-object p2, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->mContext:Landroid/content/Context;

    invoke-static {p2, p3}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 204
    :cond_3
    iget-object p2, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->image:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return v0
.end method

.method public synthetic lambda$enableButtonForSos$4$com-texa-careapp-app-sos-featuremanager-SosFeatureButtonManager(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 263
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_2

    if-eq p2, p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 273
    iget-object p2, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->mContext:Landroid/content/Context;

    const v0, 0x7f060074

    invoke-static {p2, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 274
    :cond_1
    iget-object p2, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->image:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 275
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->onManualSosButtonClicked()V

    return p3

    .line 266
    :cond_2
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->vibrate()V

    if-eqz p1, :cond_3

    .line 268
    iget-object p2, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->mContext:Landroid/content/Context;

    const v0, 0x7f060077

    invoke-static {p2, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 269
    :cond_3
    iget-object p2, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->image:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return p3
.end method

.method public synthetic lambda$enableButtonForSosActivation$1$com-texa-careapp-app-sos-featuremanager-SosFeatureButtonManager(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 171
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const p3, 0x7f06002e

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 181
    iget-object p2, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->mContext:Landroid/content/Context;

    invoke-static {p2, p3}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 182
    :cond_1
    iget-object p2, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->image:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 183
    iget-object p1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->sosService:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->showActivationSosActivity(Lcom/texa/careapp/model/ServiceDataModel;)V

    return v0

    .line 174
    :cond_2
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->vibrate()V

    if-eqz p1, :cond_3

    .line 176
    iget-object p2, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->mContext:Landroid/content/Context;

    invoke-static {p2, p3}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 177
    :cond_3
    iget-object p2, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->image:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return v0
.end method

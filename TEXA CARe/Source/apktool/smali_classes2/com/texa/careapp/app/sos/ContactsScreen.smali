.class public Lcom/texa/careapp/app/sos/ContactsScreen;
.super Lcom/texa/care/navigation/Screen;
.source "ContactsScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/sos/ContactsScreen$MechanicTouchListener;
    }
.end annotation


# instance fields
.field private background:Landroid/graphics/drawable/Drawable;

.field private badgeBtn:Landroid/widget/LinearLayout;

.field private badgeText:Landroidx/appcompat/widget/AppCompatTextView;

.field protected eventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mAlertIcon:Lcom/texa/careapp/views/AlertImageView;

.field private mButtonManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;

.field private mButtonSettings:Landroid/view/View;

.field protected mCareApplication:Lcom/texa/careapp/CareApplication;

.field protected mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mCentralOperator:Landroid/widget/RelativeLayout;

.field protected mCommunication:Lcom/texa/carelib/communication/Communication;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field protected mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mFlavorDelegator:Lcom/texa/careapp/FlavorDelegator;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mMechanicDataManager:Lcom/texa/careapp/utils/MechanicDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mMechanicDescriptionTw:Landroid/widget/TextView;

.field private mMechanicDisposable:Lio/reactivex/disposables/Disposable;

.field private mMechanicModel:Lcom/texa/careapp/model/MechanicModel;

.field private mMechanicOperator:Landroid/widget/RelativeLayout;

.field protected mProfile:Lcom/texa/carelib/profile/Profile;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSosServiceStatusTw:Landroid/widget/TextView;

.field private mSosServiceTitleTw:Landroid/widget/TextView;

.field protected mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mechanicImage:Landroid/widget/ImageView;

.field private sosImage:Landroid/widget/ImageView;

.field private sosService:Lcom/texa/careapp/model/ServiceDataModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/CareApplication;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mCareApplication:Lcom/texa/careapp/CareApplication;

    .line 118
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/sos/ContactsScreen;)V

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/sos/ContactsScreen;)Landroid/widget/ImageView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->sosImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/careapp/app/sos/ContactsScreen;)Landroid/widget/ImageView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mechanicImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/texa/careapp/app/sos/ContactsScreen;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/ContactsScreen;->vibrateOnTouch()V

    return-void
.end method

.method static synthetic access$300(Lcom/texa/careapp/app/sos/ContactsScreen;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->background:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/texa/careapp/app/sos/ContactsScreen;)Landroid/content/Context;
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/ContactsScreen;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/texa/careapp/app/sos/ContactsScreen;)Landroid/content/Context;
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/ContactsScreen;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/texa/careapp/app/sos/ContactsScreen;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/ContactsScreen;->startMechanicActivity()V

    return-void
.end method

.method private getMechanicData()Lio/reactivex/disposables/Disposable;
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mMechanicDataManager:Lcom/texa/careapp/utils/MechanicDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/MechanicDataManager;->observeCustomerResponse()Lio/reactivex/Maybe;

    move-result-object v0

    .line 244
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->applyMaybeSchedulers()Lio/reactivex/MaybeTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->compose(Lio/reactivex/MaybeTransformer;)Lio/reactivex/Maybe;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/sos/ContactsScreen$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/sos/ContactsScreen$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/app/sos/ContactsScreen;)V

    new-instance v2, Lcom/texa/careapp/app/sos/ContactsScreen$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/sos/ContactsScreen$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/app/sos/ContactsScreen;)V

    .line 245
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method

.method private initMechanicInfo()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mMechanicModel:Lcom/texa/careapp/model/MechanicModel;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Lcom/texa/careapp/model/MechanicModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/careapp/app/sos/ContactsScreen;->updateMechanicDescription(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mMechanicOperator:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/texa/careapp/app/sos/ContactsScreen$MechanicTouchListener;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/sos/ContactsScreen$MechanicTouchListener;-><init>(Lcom/texa/careapp/app/sos/ContactsScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$checkSosPrerequisites$1(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "error checking sos prerequisites"

    .line 144
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private manageBadge(Lcom/texa/careapp/model/ServiceDataModel;Z)V
    .locals 8

    .line 342
    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-virtual {v1, v0}, Lcom/texa/careapp/utils/ServiceDataManager;->getAvailableSosPlus(Ljava/lang/String;)Lcom/texa/careapp/model/ServiceDataModel;

    move-result-object v1

    .line 346
    iget-object v2, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v2}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/model/DongleModel;->getMainAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v2

    .line 347
    iget-object v3, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v3}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/careapp/model/DongleModel;->getServiceAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v3

    const/16 v4, 0x8

    if-eqz p2, :cond_0

    .line 350
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->badgeBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    :cond_0
    const/4 p2, 0x0

    const v5, 0x7f110c5b

    const v6, 0x7f110c5a

    if-nez p1, :cond_3

    if-eqz v1, :cond_1

    .line 352
    invoke-virtual {v1}, Lcom/texa/careapp/model/ServiceDataModel;->isTrial()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 353
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->badgeText:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    goto :goto_0

    .line 355
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->badgeText:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 357
    :goto_0
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    .line 358
    invoke-virtual {p1}, Lcom/texa/careapp/utils/ServiceDataManager;->getSosServices()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/texa/careapp/utils/ServiceDataManager;->filterSosServicesForHwId(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 357
    invoke-virtual {p1, v0}, Lcom/texa/careapp/utils/ServiceDataManager;->getServicePriority(Ljava/util/List;)Lcom/texa/careapp/model/ServiceDataModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 360
    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->badgeBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 361
    iget-object p2, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->badgeBtn:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/texa/careapp/app/sos/ContactsScreen$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v2, v3, p1}, Lcom/texa/careapp/app/sos/ContactsScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/sos/ContactsScreen;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/careapp/model/ServiceDataModel;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 371
    :cond_2
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->badgeBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 373
    :cond_3
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 374
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v0

    sget-object v7, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    if-ne v0, v7, :cond_4

    .line 375
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->badgeBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 376
    :cond_4
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 377
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v0

    sget-object v7, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS_LIGHT:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    if-ne v0, v7, :cond_6

    if-eqz v1, :cond_5

    .line 379
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->badgeBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 380
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->badgeText:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 381
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->badgeBtn:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/texa/careapp/app/sos/ContactsScreen$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v2, v3, v1}, Lcom/texa/careapp/app/sos/ContactsScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/sos/ContactsScreen;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/careapp/model/ServiceDataModel;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 391
    :cond_5
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->badgeBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 393
    :cond_6
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object p2

    sget-object v0, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    if-ne p2, v0, :cond_7

    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->isTrial()Z

    move-result p2

    if-nez p2, :cond_8

    .line 394
    :cond_7
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object p2

    sget-object v0, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS_LIGHT:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    if-ne p2, v0, :cond_9

    .line 395
    :cond_8
    iget-object p2, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->badgeText:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    goto :goto_1

    .line 397
    :cond_9
    iget-object p2, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->badgeText:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 399
    :goto_1
    iget-object p2, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->badgeBtn:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/texa/careapp/app/sos/ContactsScreen$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v2, v3, p1}, Lcom/texa/careapp/app/sos/ContactsScreen$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/sos/ContactsScreen;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/careapp/model/ServiceDataModel;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    return-void
.end method

.method private manageSosTitle(Lcom/texa/careapp/model/ServiceDataModel;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 330
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getStatus()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->ACTIVE:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    if-eq v0, v1, :cond_0

    .line 331
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getStatus()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->PENDING:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 333
    :cond_0
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    if-ne p1, v0, :cond_1

    .line 334
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mSosServiceTitleTw:Landroid/widget/TextView;

    const v0, 0x7f110b2f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 336
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mSosServiceTitleTw:Landroid/widget/TextView;

    const v0, 0x7f110c08

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 332
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mSosServiceTitleTw:Landroid/widget/TextView;

    const v0, 0x7f110ca1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void
.end method

.method private setViewSosButton()V
    .locals 9

    .line 291
    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    .line 294
    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-virtual {v2}, Lcom/texa/careapp/utils/ServiceDataManager;->getSosServices()Ljava/util/List;

    move-result-object v2

    .line 293
    invoke-virtual {v1, v0, v2}, Lcom/texa/careapp/utils/ServiceDataManager;->filterActiveSosServicesForHwId(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 292
    invoke-virtual {v1, v0}, Lcom/texa/careapp/utils/ServiceDataManager;->getServicePriority(Ljava/util/List;)Lcom/texa/careapp/model/ServiceDataModel;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->sosService:Lcom/texa/careapp/model/ServiceDataModel;

    .line 296
    new-instance v0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;

    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/ContactsScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    iget-object v4, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    iget-object v5, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->sosService:Lcom/texa/careapp/model/ServiceDataModel;

    iget-object v6, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mCentralOperator:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->sosImage:Landroid/widget/ImageView;

    .line 297
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/ContactsScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;-><init>(Landroid/content/Context;Lcom/texa/careapp/utils/UserDataManager;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/model/ServiceDataModel;Landroid/view/ViewGroup;Landroid/widget/ImageView;Lcom/texa/care/navigation/Navigator;)V

    iput-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mButtonManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;

    .line 298
    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    iget-object v1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->sosService:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-interface {v0, v1}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;->initData(Lcom/texa/careapp/model/ServiceDataModel;)V

    .line 299
    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    invoke-interface {v0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;->startButtonObserver()V

    return-void
.end method

.method private startMechanicActivity()V
    .locals 3

    .line 230
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/ContactsScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/texa/careapp/app/sos/MechanicActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 231
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/ContactsScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateButton(I)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 414
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "updateButton %s"

    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    iget-object v1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mSosServiceStatusTw:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/ContactsScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->sosService:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-interface {v2, v4, v5}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;->getSosServiceStatusDescription(Landroid/content/Context;Lcom/texa/careapp/model/ServiceDataModel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->sosService:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-direct {p0, v1}, Lcom/texa/careapp/app/sos/ContactsScreen;->manageSosTitle(Lcom/texa/careapp/model/ServiceDataModel;)V

    .line 418
    iget-object v1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->sosService:Lcom/texa/careapp/model/ServiceDataModel;

    iget-object v2, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    const/4 v4, 0x7

    if-eq p1, v4, :cond_0

    iget-object v5, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    .line 419
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p1, v2, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 418
    :cond_1
    invoke-direct {p0, v1, v3}, Lcom/texa/careapp/app/sos/ContactsScreen;->manageBadge(Lcom/texa/careapp/model/ServiceDataModel;Z)V

    .line 421
    iget-object v1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mButtonSettings:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 422
    iget-object v3, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mButtonManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;

    iget-object v5, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->sosService:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-virtual {v3, v1, v5}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->addClick(Landroid/view/View;Lcom/texa/careapp/model/ServiceDataModel;)V

    .line 424
    :cond_2
    iget-object v1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p1, v2, :cond_3

    .line 425
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mButtonManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;

    invoke-virtual {p1}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->enableButtonForSos()V

    goto :goto_0

    .line 426
    :cond_3
    iget-object v1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p1, v0, :cond_4

    .line 427
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mButtonManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;

    invoke-virtual {p1}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->disableButton()V

    goto :goto_0

    .line 428
    :cond_4
    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    .line 429
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mButtonManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;

    invoke-virtual {p1}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->disableButton()V

    goto :goto_0

    .line 430
    :cond_5
    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x8

    if-ne p1, v0, :cond_6

    .line 431
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mButtonManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;

    invoke-virtual {p1}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->disableButtonCauseCheck()V

    goto :goto_0

    .line 432
    :cond_6
    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    .line 433
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mButtonManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;

    invoke-virtual {p1}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->enableButtonForAcceptTerms()V

    goto :goto_0

    .line 434
    :cond_7
    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p1, v4, :cond_8

    .line 435
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mButtonManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;

    invoke-virtual {p1}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->enableButtonForSos()V

    goto :goto_0

    .line 436
    :cond_8
    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x6

    if-ne p1, v0, :cond_9

    .line 437
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mButtonManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;

    invoke-virtual {p1}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->enableButtonForSosActivation()V

    :cond_9
    :goto_0
    return-void
.end method

.method private updateMechanicDescription(Ljava/lang/String;)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mMechanicDescriptionTw:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private vibrateOnTouch()V
    .locals 3

    .line 225
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/ContactsScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 226
    sget v1, Lcom/texa/careapp/Constants;->TIME_TO_VIBRATE_ON_TOUCH:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 2

    .line 159
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ContactsGridBinding;

    .line 160
    iget-object v0, p1, Lcom/texa/careapp/databinding/ContactsGridBinding;->centralOperatorItem:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mCentralOperator:Landroid/widget/RelativeLayout;

    .line 161
    iget-object v0, p1, Lcom/texa/careapp/databinding/ContactsGridBinding;->sosImage:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->sosImage:Landroid/widget/ImageView;

    .line 162
    iget-object v0, p1, Lcom/texa/careapp/databinding/ContactsGridBinding;->mechanicItem:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mMechanicOperator:Landroid/widget/RelativeLayout;

    .line 163
    iget-object v0, p1, Lcom/texa/careapp/databinding/ContactsGridBinding;->callMechanicButton:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mechanicImage:Landroid/widget/ImageView;

    .line 164
    iget-object v0, p1, Lcom/texa/careapp/databinding/ContactsGridBinding;->sosServiceStatus:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mSosServiceStatusTw:Landroid/widget/TextView;

    .line 165
    iget-object v0, p1, Lcom/texa/careapp/databinding/ContactsGridBinding;->sosServiceTitle:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mSosServiceTitleTw:Landroid/widget/TextView;

    .line 166
    iget-object v0, p1, Lcom/texa/careapp/databinding/ContactsGridBinding;->emergencyButtonAlertIcon:Lcom/texa/careapp/views/AlertImageView;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mAlertIcon:Lcom/texa/careapp/views/AlertImageView;

    .line 167
    iget-object v0, p1, Lcom/texa/careapp/databinding/ContactsGridBinding;->mechanicDescription:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mMechanicDescriptionTw:Landroid/widget/TextView;

    .line 168
    iget-object v0, p1, Lcom/texa/careapp/databinding/ContactsGridBinding;->contactSosGoToSettings:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mButtonSettings:Landroid/view/View;

    .line 169
    iget-object v0, p1, Lcom/texa/careapp/databinding/ContactsGridBinding;->contactsGridBadge:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->badgeBtn:Landroid/widget/LinearLayout;

    .line 170
    iget-object p1, p1, Lcom/texa/careapp/databinding/ContactsGridBinding;->contactsGridBadgeText:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->badgeText:Landroidx/appcompat/widget/AppCompatTextView;

    .line 172
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/ContactsScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;->setFragmentManager(Landroidx/fragment/app/FragmentManager;)V

    .line 174
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/ContactsScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f08009a

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->background:Landroid/graphics/drawable/Drawable;

    .line 177
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->sosImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 178
    new-instance v0, Lcom/texa/careapp/app/sos/ContactsScreen$1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/sos/ContactsScreen$1;-><init>(Lcom/texa/careapp/app/sos/ContactsScreen;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 190
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mechanicImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 191
    new-instance v0, Lcom/texa/careapp/app/sos/ContactsScreen$2;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/sos/ContactsScreen$2;-><init>(Lcom/texa/careapp/app/sos/ContactsScreen;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 203
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->background:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/ContactsScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06008b

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 205
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mechanicImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected checkSosPrerequisites()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    invoke-interface {v0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;->shouldCheckSosPrerequisites()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    invoke-interface {v0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;->observeChecks()Lio/reactivex/Observable;

    move-result-object v0

    .line 137
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->applySchedulers()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/sos/ContactsScreen$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/sos/ContactsScreen$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/sos/ContactsScreen;)V

    sget-object v2, Lcom/texa/careapp/app/sos/ContactsScreen$$ExternalSyntheticLambda6;->INSTANCE:Lcom/texa/careapp/app/sos/ContactsScreen$$ExternalSyntheticLambda6;

    .line 138
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "sos-manual"

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d004f

    return v0
.end method

.method public getTitle()I
    .locals 1

    const v0, 0x7f110c44

    return v0
.end method

.method public synthetic lambda$checkSosPrerequisites$0$com-texa-careapp-app-sos-ContactsScreen(Lcom/texa/careapp/checks/Check$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 139
    sget-object v0, Lcom/texa/careapp/checks/Check$Result;->OK:Lcom/texa/careapp/checks/Check$Result;

    if-ne p1, v0, :cond_0

    .line 140
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mAlertIcon:Lcom/texa/careapp/views/AlertImageView;

    invoke-virtual {p1}, Lcom/texa/careapp/views/AlertImageView;->hide()V

    goto :goto_0

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mAlertIcon:Lcom/texa/careapp/views/AlertImageView;

    invoke-virtual {p1}, Lcom/texa/careapp/views/AlertImageView;->showWithFade()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$getMechanicData$2$com-texa-careapp-app-sos-ContactsScreen(Lcom/texa/careapp/networking/response/CustomerResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v2, "customerResponse: %s"

    .line 246
    invoke-static {v2, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    :try_start_0
    invoke-static {p1}, Lcom/texa/careapp/model/MechanicModel;->from(Lcom/texa/careapp/networking/response/CustomerResponse;)Lcom/texa/careapp/model/MechanicModel;

    move-result-object p1

    .line 249
    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mMechanicDataManager:Lcom/texa/careapp/utils/MechanicDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/MechanicDataManager;->deleteMechanicsData()V

    .line 250
    iput-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mMechanicModel:Lcom/texa/careapp/model/MechanicModel;

    .line 252
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/ContactsScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    .line 253
    iget-object v0, p1, Lcom/texa/careapp/model/MechanicModel;->business_times:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/model/BusinessTime;

    .line 254
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/ContactsScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    goto :goto_0

    .line 256
    :cond_0
    iget-object p1, p1, Lcom/texa/careapp/model/MechanicModel;->contacts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/MechanicContact;

    .line 257
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/ContactsScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 261
    instance-of v0, p1, Lcom/texa/careapp/exceptions/DatabaseIOException;

    if-eqz v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Could not save mechanic model to database."

    .line 262
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 264
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Could not retrieve mechanic data."

    .line 265
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/ContactsScreen;->initMechanicInfo()V

    return-void
.end method

.method public synthetic lambda$getMechanicData$3$com-texa-careapp-app-sos-ContactsScreen(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "observeCustomerResponse exception"

    .line 270
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mMechanicDataManager:Lcom/texa/careapp/utils/MechanicDataManager;

    invoke-virtual {p1}, Lcom/texa/careapp/utils/MechanicDataManager;->getMechanicModel()Lcom/texa/careapp/model/MechanicModel;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mMechanicModel:Lcom/texa/careapp/model/MechanicModel;

    .line 272
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/ContactsScreen;->initMechanicInfo()V

    return-void
.end method

.method public synthetic lambda$manageBadge$4$com-texa-careapp-app-sos-ContactsScreen(Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/careapp/model/ServiceDataModel;Landroid/view/View;)V
    .locals 4

    .line 362
    invoke-virtual {p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object p1

    new-instance p4, Lcom/texa/carelib/core/utils/FirmwareVersion;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p4, v0, v1, v3, v3}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p4}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/texa/carelib/core/utils/Version;->compareTo(Lcom/texa/carelib/core/utils/Version;)I

    move-result p1

    if-ne p1, v2, :cond_0

    .line 363
    invoke-virtual {p2}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object p1

    new-instance p2, Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-direct {p2, v0, v1, v3, v3}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/carelib/core/utils/Version;->compareTo(Lcom/texa/carelib/core/utils/Version;)I

    move-result p1

    if-ne p1, v2, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/ContactsScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->buildIntent(Landroid/content/Context;Lcom/texa/careapp/model/ServiceDataModel;)Landroid/content/Intent;

    move-result-object p1

    .line 365
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/ContactsScreen;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/ContactsScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    new-instance p2, Lcom/texa/careapp/app/activationSosServices/FirmwareVersionAlertDialog;

    invoke-direct {p2}, Lcom/texa/careapp/app/activationSosServices/FirmwareVersionAlertDialog;-><init>()V

    invoke-virtual {p1, p2}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$manageBadge$5$com-texa-careapp-app-sos-ContactsScreen(Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/careapp/model/ServiceDataModel;Landroid/view/View;)V
    .locals 4

    .line 382
    invoke-virtual {p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object p1

    new-instance p4, Lcom/texa/carelib/core/utils/FirmwareVersion;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p4, v0, v1, v3, v3}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p4}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/texa/carelib/core/utils/Version;->compareTo(Lcom/texa/carelib/core/utils/Version;)I

    move-result p1

    if-ne p1, v2, :cond_0

    .line 383
    invoke-virtual {p2}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object p1

    new-instance p2, Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-direct {p2, v0, v1, v3, v3}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/carelib/core/utils/Version;->compareTo(Lcom/texa/carelib/core/utils/Version;)I

    move-result p1

    if-ne p1, v2, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/ContactsScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->buildIntent(Landroid/content/Context;Lcom/texa/careapp/model/ServiceDataModel;)Landroid/content/Intent;

    move-result-object p1

    .line 385
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/ContactsScreen;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/ContactsScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    new-instance p2, Lcom/texa/careapp/app/activationSosServices/FirmwareVersionAlertDialog;

    invoke-direct {p2}, Lcom/texa/careapp/app/activationSosServices/FirmwareVersionAlertDialog;-><init>()V

    invoke-virtual {p1, p2}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$manageBadge$6$com-texa-careapp-app-sos-ContactsScreen(Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/careapp/model/ServiceDataModel;Landroid/view/View;)V
    .locals 4

    .line 400
    invoke-virtual {p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object p1

    new-instance p4, Lcom/texa/carelib/core/utils/FirmwareVersion;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p4, v0, v1, v3, v3}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p4}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/texa/carelib/core/utils/Version;->compareTo(Lcom/texa/carelib/core/utils/Version;)I

    move-result p1

    if-ne p1, v2, :cond_0

    .line 401
    invoke-virtual {p2}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object p1

    new-instance p2, Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-direct {p2, v0, v1, v3, v3}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/carelib/core/utils/Version;->compareTo(Lcom/texa/carelib/core/utils/Version;)I

    move-result p1

    if-ne p1, v2, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/ContactsScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->buildIntent(Landroid/content/Context;Lcom/texa/careapp/model/ServiceDataModel;)Landroid/content/Intent;

    move-result-object p1

    .line 403
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/ContactsScreen;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/ContactsScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    new-instance p2, Lcom/texa/careapp/app/activationSosServices/FirmwareVersionAlertDialog;

    invoke-direct {p2}, Lcom/texa/careapp/app/activationSosServices/FirmwareVersionAlertDialog;-><init>()V

    invoke-virtual {p1, p2}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    :goto_0
    return-void
.end method

.method public onEventMainThread(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$UpdateButton;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 287
    invoke-virtual {p1}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$UpdateButton;->getSosStatus()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/sos/ContactsScreen;->updateButton(I)V

    return-void
.end method

.method public onEventMainThread(Lcom/texa/careapp/utils/VehicleObserver$VehicleChangedEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 282
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/ContactsScreen;->setViewSosButton()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 150
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onPause()V

    .line 151
    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    invoke-interface {v0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;->getButtonObservableSubscription()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 153
    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mMechanicDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 154
    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 123
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    .line 124
    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 125
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/ContactsScreen;->getMechanicData()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen;->mMechanicDisposable:Lio/reactivex/disposables/Disposable;

    .line 127
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/ContactsScreen;->setViewSosButton()V

    .line 129
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/ContactsScreen;->checkSosPrerequisites()V

    return-void
.end method

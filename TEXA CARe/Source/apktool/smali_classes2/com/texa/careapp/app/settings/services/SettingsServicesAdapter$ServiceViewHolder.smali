.class public Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SettingsServicesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceViewHolder"
.end annotation


# instance fields
.field private alertIcon:Landroid/widget/ImageView;

.field private checkResult:Z

.field private clickableItem:Landroid/widget/LinearLayout;

.field private deleteSubscription:Landroidx/appcompat/widget/AppCompatTextView;

.field private dueDay:Landroid/widget/TextView;

.field private dueMonth:Landroid/widget/TextView;

.field private labelInfo:Landroid/widget/TextView;

.field private mCardView:Landroidx/cardview/widget/CardView;

.field private mCheckDisposable:Lio/reactivex/disposables/Disposable;

.field private mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

.field private mainInfo:Landroidx/appcompat/widget/AppCompatTextView;

.field private secondInfo:Landroidx/appcompat/widget/AppCompatTextView;

.field private status:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;)V
    .locals 1

    .line 121
    invoke-virtual {p1}, Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->checkResult:Z

    .line 122
    iput-object p2, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    .line 123
    iget-object p2, p1, Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;->settingsServicesListItemCardView:Landroidx/cardview/widget/CardView;

    iput-object p2, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->mCardView:Landroidx/cardview/widget/CardView;

    .line 124
    iget-object p2, p1, Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;->settingsServicesListItemInfoLay:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->clickableItem:Landroid/widget/LinearLayout;

    .line 125
    iget-object p2, p1, Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;->settingsServicesListItemMainInfo:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p2, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->mainInfo:Landroidx/appcompat/widget/AppCompatTextView;

    .line 126
    iget-object p2, p1, Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;->settingsServicesListItemSecondInfo:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p2, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->secondInfo:Landroidx/appcompat/widget/AppCompatTextView;

    .line 127
    iget-object p2, p1, Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;->settingsServicesListItemStatus:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p2, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->status:Landroidx/appcompat/widget/AppCompatTextView;

    .line 128
    iget-object p2, p1, Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;->settingsServicesListItemDelete:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p2, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->deleteSubscription:Landroidx/appcompat/widget/AppCompatTextView;

    .line 129
    iget-object p2, p1, Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;->settingsServicesListItemLabel:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->labelInfo:Landroid/widget/TextView;

    .line 130
    iget-object p2, p1, Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;->settingsServicesListItemDueDay:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->dueDay:Landroid/widget/TextView;

    .line 131
    iget-object p2, p1, Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;->settingsServicesListItemDueMonth:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->dueMonth:Landroid/widget/TextView;

    .line 132
    iget-object p1, p1, Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;->alertIconService:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->alertIcon:Landroid/widget/ImageView;

    return-void
.end method

.method private checkIfThereAreProblems(Lcom/texa/careapp/model/ServiceDataModel;)Z
    .locals 1

    .line 310
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->checkSosPrerequisite()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->isTermsAccepted()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private checkSosPrerequisite()Z
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->mCheckDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 315
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    invoke-interface {v0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;->observeChecksForNotification()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;)V

    sget-object v2, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda5;->INSTANCE:Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda5;

    .line 316
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->mCheckDisposable:Lio/reactivex/disposables/Disposable;

    .line 319
    iget-boolean v0, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->checkResult:Z

    return v0
.end method

.method private isSOSTrialNotAvailable(Ljava/lang/String;)Z
    .locals 5

    .line 300
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/ServiceDataModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "service_type = ?"

    .line 301
    invoke-virtual {v0, v3, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    .line 302
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "trial = ?"

    invoke-virtual {v0, v3, v2}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const-string p1, "hwid = ?"

    .line 303
    invoke-virtual {v0, p1, v2}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    .line 304
    invoke-virtual {p1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/model/ServiceDataModel;

    if-eqz p1, :cond_1

    .line 306
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getStatus()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->INACTIVE:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic lambda$bindView$1(Landroid/content/Context;Lcom/texa/careapp/model/ServiceDataModel;Landroid/view/View;)V
    .locals 0

    .line 189
    invoke-static {p0, p1}, Lcom/texa/careapp/app/sos/SosPrerequisiteActivity;->buildIntent(Landroid/content/Context;Lcom/texa/careapp/model/ServiceDataModel;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$bindView$2(Landroid/content/Context;Lcom/texa/careapp/model/ServiceDataModel;Landroid/view/View;)V
    .locals 1

    .line 223
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 224
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 225
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getUid()Ljava/lang/String;

    move-result-object p1

    const-string v0, "serviceDataModelId"

    .line 226
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$bindView$3(Lcom/texa/careapp/model/DongleDataManager;Landroid/content/Context;Lcom/texa/careapp/model/ServiceDataModel;Lcom/texa/care/navigation/Navigator;Landroid/view/View;)V
    .locals 5

    .line 267
    invoke-virtual {p0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object p4

    invoke-virtual {p4}, Lcom/texa/careapp/model/DongleModel;->getMainAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p4

    invoke-virtual {p4}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object p4

    new-instance v0, Lcom/texa/carelib/core/utils/FirmwareVersion;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4, v4}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/texa/carelib/core/utils/Version;->compareTo(Lcom/texa/carelib/core/utils/Version;)I

    move-result p4

    if-ne p4, v3, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/texa/careapp/model/DongleModel;->getServiceAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p0

    invoke-virtual {p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object p0

    new-instance p4, Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-direct {p4, v1, v2, v4, v4}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p4}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/texa/carelib/core/utils/Version;->compareTo(Lcom/texa/carelib/core/utils/Version;)I

    move-result p0

    if-ne p0, v3, :cond_0

    .line 270
    invoke-static {p1, p2}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->buildIntent(Landroid/content/Context;Lcom/texa/careapp/model/ServiceDataModel;)Landroid/content/Intent;

    move-result-object p0

    .line 272
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 274
    :cond_0
    new-instance p0, Lcom/texa/careapp/app/activationSosServices/FirmwareVersionAlertDialog;

    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/FirmwareVersionAlertDialog;-><init>()V

    invoke-virtual {p3, p0}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$checkSosPrerequisite$5(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "error checking sos prerequisite"

    .line 317
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/content/Context;Lcom/texa/care/navigation/Navigator;Lcom/texa/careapp/model/ServiceDataModel;Lcom/texa/careapp/utils/UserDataManager;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$UpdateData;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 141
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x0

    const/16 v6, 0x15

    if-ge v4, v6, :cond_0

    .line 142
    iget-object v4, v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->mCardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v4, v5}, Landroidx/cardview/widget/CardView;->setPreventCornerOverlap(Z)V

    .line 144
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/model/ServiceDataModel;->getDongle()Lcom/texa/careapp/model/DongleModel;

    move-result-object v4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_1

    .line 145
    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/model/ServiceDataModel;->getDongle()Lcom/texa/careapp/model/DongleModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/texa/careapp/model/DongleModel;->getVehicleByHwId()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 147
    iget-object v8, v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->mainInfo:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v4}, Lcom/texa/careapp/utils/Utils;->formatVehicleModel(Lcom/texa/careapp/model/VehicleModel;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v8, v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->secondInfo:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v4}, Lcom/texa/careapp/model/VehicleModel;->getPlate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual/range {p4 .. p4}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v4

    .line 152
    iget-object v8, v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->mainInfo:Landroidx/appcompat/widget/AppCompatTextView;

    const v9, 0x7f110a7d

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v6, [Ljava/lang/Object;

    .line 153
    invoke-virtual {v4}, Lcom/texa/careapp/model/UserModel;->getFirstName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-virtual {v4}, Lcom/texa/careapp/model/UserModel;->getLastName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    .line 152
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v8, v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->secondInfo:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v4}, Lcom/texa/careapp/model/UserModel;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :cond_2
    :goto_0
    iget-object v4, v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->deleteSubscription:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 164
    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v4

    sget-object v9, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    const-string v10, ""

    if-ne v4, v9, :cond_4

    .line 165
    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/model/ServiceDataModel;->isTrial()Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f110c25

    .line 166
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    const v4, 0x7f110c24

    .line 167
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 168
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v4

    sget-object v9, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS_LIGHT:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    if-ne v4, v9, :cond_5

    const v4, 0x7f110c23

    .line 169
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_5
    move-object v4, v10

    .line 171
    :goto_1
    sget-object v9, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$1;->$SwitchMap$com$texa$careapp$model$ServiceDataModel$DongleServiceStatus:[I

    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/model/ServiceDataModel;->getStatus()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    move-result-object v11

    invoke-virtual {v11}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->ordinal()I

    move-result v11

    aget v9, v9, v11

    const/4 v11, 0x4

    const/4 v12, 0x0

    if-eq v9, v7, :cond_c

    const v13, 0x7f0600df

    const v14, 0x7f0600da

    const v15, 0x7f110c21

    if-eq v9, v6, :cond_b

    const/4 v6, 0x3

    if-eq v9, v6, :cond_a

    if-eq v9, v11, :cond_6

    move-object v1, v10

    :goto_2
    move-object v9, v12

    goto/16 :goto_f

    .line 254
    :cond_6
    invoke-virtual {v1, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 255
    iget-object v4, v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->clickableItem:Landroid/widget/LinearLayout;

    invoke-static {v1, v14}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 257
    iget-object v4, v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->status:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v13, v12}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 260
    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v4

    sget-object v6, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS_LIGHT:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    if-eq v4, v6, :cond_9

    .line 261
    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/model/ServiceDataModel;->isTrial()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v4

    sget-object v6, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    if-eq v4, v6, :cond_9

    .line 262
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/model/ServiceDataModel;->isTrial()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v4

    sget-object v6, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    if-ne v4, v6, :cond_8

    .line 263
    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/model/ServiceDataModel;->getDongle()Lcom/texa/careapp/model/DongleModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->isSOSTrialNotAvailable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    const v2, 0x7f110c27

    .line 278
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_9
    :goto_3
    const v4, 0x7f110c1c

    .line 264
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 265
    iget-object v6, v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->clickableItem:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda3;

    move-object/from16 v9, p5

    invoke-direct {v7, v9, v1, v3, v2}, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/model/DongleDataManager;Landroid/content/Context;Lcom/texa/careapp/model/ServiceDataModel;Lcom/texa/care/navigation/Navigator;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v1, v4

    goto :goto_2

    :cond_a
    const v2, 0x7f110c1d

    .line 245
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 246
    invoke-virtual {v1, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 247
    iget-object v3, v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->clickableItem:Landroid/widget/LinearLayout;

    const v4, 0x7f0600db

    invoke-static {v1, v4}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 249
    iget-object v3, v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->status:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0600e2

    invoke-static {v1, v4, v12}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    goto :goto_4

    :cond_b
    const v2, 0x7f110c1a

    .line 235
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 236
    invoke-virtual {v1, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 237
    iget-object v3, v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->clickableItem:Landroid/widget/LinearLayout;

    invoke-static {v1, v14}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 239
    iget-object v3, v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->status:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v13, v12}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    :goto_4
    move-object v1, v10

    move-object v9, v12

    :goto_5
    move-object v10, v2

    goto/16 :goto_f

    .line 173
    :cond_c
    invoke-direct {v0, v3}, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->checkIfThereAreProblems(Lcom/texa/careapp/model/ServiceDataModel;)Z

    move-result v9

    const v13, 0x7f110c19

    if-eqz v9, :cond_e

    .line 174
    iget-boolean v9, v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->checkResult:Z

    if-eqz v9, :cond_d

    const v9, 0x7f110c1e

    .line 175
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 176
    iget-object v10, v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->clickableItem:Landroid/widget/LinearLayout;

    new-instance v13, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda2;

    move-object/from16 v14, p6

    invoke-direct {v13, v0, v2, v3, v14}, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;Lcom/texa/care/navigation/Navigator;Lcom/texa/careapp/model/ServiceDataModel;Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$UpdateData;)V

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 187
    :cond_d
    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 188
    iget-object v2, v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->clickableItem:Landroid/widget/LinearLayout;

    new-instance v10, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v10, v1, v3}, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lcom/texa/careapp/model/ServiceDataModel;)V

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    :goto_6
    iget-object v2, v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->alertIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    iget-object v2, v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->clickableItem:Landroid/widget/LinearLayout;

    const v10, 0x7f0600dc

    invoke-static {v1, v10}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 195
    iget-object v2, v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->status:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x7f0600e0

    invoke-static {v10, v13, v12}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v10

    invoke-virtual {v2, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    move-object v10, v9

    move-object v9, v12

    goto/16 :goto_d

    .line 199
    :cond_e
    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v2

    sget-object v9, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    if-ne v2, v9, :cond_15

    .line 200
    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/model/ServiceDataModel;->isTrial()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/model/ServiceDataModel;->isMechanicPurchase()Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_7

    :cond_f
    move-object v2, v12

    goto :goto_8

    .line 201
    :cond_10
    :goto_7
    invoke-static {}, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;->access$000()Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/model/ServiceDataModel;->getExpiration()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 202
    :goto_8
    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/model/ServiceDataModel;->isTrial()Z

    move-result v9

    if-nez v9, :cond_12

    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/model/ServiceDataModel;->isMechanicPurchase()Z

    move-result v9

    if-eqz v9, :cond_11

    goto :goto_9

    :cond_11
    move-object v9, v12

    goto :goto_a

    .line 203
    :cond_12
    :goto_9
    invoke-static {}, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;->access$100()Ljava/text/DateFormat;

    move-result-object v9

    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/model/ServiceDataModel;->getExpiration()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 204
    :goto_a
    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/model/ServiceDataModel;->isTrial()Z

    move-result v10

    if-nez v10, :cond_14

    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/model/ServiceDataModel;->isMechanicPurchase()Z

    move-result v10

    if-eqz v10, :cond_13

    goto :goto_b

    :cond_13
    const v10, 0x7f110c22

    .line 206
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_c

    :cond_14
    :goto_b
    const v10, 0x7f110c1b

    .line 205
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_c

    .line 207
    :cond_15
    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v2

    sget-object v9, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS_LIGHT:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    if-ne v2, v9, :cond_16

    .line 208
    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_16
    move-object v2, v12

    move-object v9, v2

    .line 210
    :goto_c
    iget-object v13, v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->clickableItem:Landroid/widget/LinearLayout;

    const v14, 0x7f0600d9

    invoke-static {v1, v14}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 212
    iget-object v13, v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->status:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0600de

    invoke-static {v14, v15, v12}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v12

    invoke-virtual {v13, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    move-object v12, v2

    :goto_d
    const v2, 0x7f110c20

    .line 216
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v13, v7, [Ljava/lang/Object;

    .line 217
    invoke-static {}, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;->access$200()Ljava/text/DateFormat;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/model/ServiceDataModel;->getActivation()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v5

    .line 216
    invoke-static {v2, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v13, 0x7f110c1f

    .line 218
    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v5

    aput-object v2, v6, v7

    invoke-static {v13, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/model/ServiceDataModel;->isTrial()Z

    move-result v4

    if-nez v4, :cond_17

    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v4

    sget-object v6, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    if-ne v4, v6, :cond_17

    invoke-virtual/range {p3 .. p3}, Lcom/texa/careapp/model/ServiceDataModel;->isMechanicPurchase()Z

    move-result v4

    if-nez v4, :cond_17

    .line 221
    iget-object v4, v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->deleteSubscription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 222
    iget-object v4, v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->deleteSubscription:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v6, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v6, v1, v3}, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Lcom/texa/careapp/model/ServiceDataModel;)V

    invoke-virtual {v4, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_e

    .line 230
    :cond_17
    iget-object v1, v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->deleteSubscription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    :goto_e
    move-object v1, v10

    goto/16 :goto_5

    .line 283
    :goto_f
    iget-object v2, v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->labelInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v2, v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->labelInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v12, :cond_18

    .line 286
    iget-object v1, v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->dueDay:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    iget-object v1, v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->dueDay:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 289
    :cond_18
    iget-object v1, v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->dueDay:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_10
    if-eqz v9, :cond_19

    .line 291
    iget-object v1, v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->dueMonth:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    iget-object v1, v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->dueMonth:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11

    .line 294
    :cond_19
    iget-object v1, v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->dueMonth:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    :goto_11
    iget-object v1, v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->status:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$bindView$0$com-texa-careapp-app-settings-services-SettingsServicesAdapter$ServiceViewHolder(Lcom/texa/care/navigation/Navigator;Lcom/texa/careapp/model/ServiceDataModel;Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$UpdateData;Landroid/view/View;)V
    .locals 0

    .line 176
    new-instance p4, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$1;

    invoke-direct {p4, p0, p2, p3}, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder$1;-><init>(Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;Lcom/texa/careapp/model/ServiceDataModel;Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$UpdateData;)V

    invoke-virtual {p1, p4}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method public synthetic lambda$checkSosPrerequisite$4$com-texa-careapp-app-settings-services-SettingsServicesAdapter$ServiceViewHolder(Lcom/texa/careapp/checks/Check$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 316
    sget-object v0, Lcom/texa/careapp/checks/Check$Result;->OK:Lcom/texa/careapp/checks/Check$Result;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->checkResult:Z

    return-void
.end method

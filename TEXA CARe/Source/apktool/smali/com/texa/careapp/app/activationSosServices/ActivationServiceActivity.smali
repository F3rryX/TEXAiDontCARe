.class public Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;
.super Lcom/texa/careapp/base/BaseActivity;
.source "ActivationServiceActivity.java"


# instance fields
.field protected mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mNavigator:Lcom/texa/care/navigation/Navigator;

.field protected mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private ops:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/texa/careapp/base/BaseActivity;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->ops:Ljava/util/ArrayList;

    return-void
.end method

.method private addCompany(Ljava/lang/String;)V
    .locals 4

    const-string v0, ""

    .line 244
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->ops:Ljava/util/ArrayList;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "raw_contact_id"

    .line 246
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "mimetype"

    const-string/jumbo v3, "vnd.android.cursor.item/organization"

    .line 247
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "data1"

    .line 249
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    const/4 v1, 0x1

    .line 250
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "data2"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 251
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 252
    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    .line 245
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private addDisplayName(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->ops:Ljava/util/ArrayList;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "raw_contact_id"

    .line 221
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "mimetype"

    const-string/jumbo v3, "vnd.android.cursor.item/name"

    .line 222
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "data1"

    .line 224
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 226
    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    .line 219
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private addTexaContact()V
    .locals 5

    const-string v0, "android.permission.WRITE_CONTACTS"

    .line 195
    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->ops:Ljava/util/ArrayList;

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "account_type"

    const/4 v4, 0x0

    .line 197
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "account_name"

    .line 198
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 199
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 195
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f110cca

    .line 201
    invoke-virtual {p0, v1}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->addDisplayName(Ljava/lang/String;)V

    const-string v1, "0422791777"

    .line 203
    invoke-direct {p0, v1}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->addWorkNumber(Ljava/lang/String;)V

    const-string v1, "TEXA S.p.A"

    .line 205
    invoke-direct {p0, v1}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->addCompany(Ljava/lang/String;)V

    .line 207
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.android.contacts"

    iget-object v2, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->ops:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 213
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private addWorkNumber(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->ops:Ljava/util/ArrayList;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "raw_contact_id"

    .line 233
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "mimetype"

    const-string/jumbo v3, "vnd.android.cursor.item/phone_v2"

    .line 234
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "data1"

    .line 236
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    const/4 v1, 0x3

    .line 238
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "data2"

    .line 237
    invoke-virtual {p1, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 239
    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    .line 232
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static buildIntent(Landroid/content/Context;Lcom/texa/careapp/model/ServiceDataModel;)Landroid/content/Intent;
    .locals 2

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getUid()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SOS_ID"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 60
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private getAvailableNotTrialPlus()Lcom/texa/careapp/model/ServiceDataModel;
    .locals 5

    .line 123
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/ServiceDataModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    .line 124
    invoke-virtual {v3}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "hwid = ?"

    invoke-virtual {v0, v3, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    aput-object v3, v2, v4

    const-string v3, "service_type = ?"

    .line 125
    invoke-virtual {v0, v3, v2}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 126
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    const-string/jumbo v2, "trial = ?"

    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/ServiceDataModel;

    return-object v0
.end method

.method private getAvailablePlus()Lcom/texa/careapp/model/ServiceDataModel;
    .locals 5

    .line 115
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/ServiceDataModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    .line 116
    invoke-virtual {v3}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "hwid = ?"

    invoke-virtual {v0, v3, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    aput-object v2, v1, v4

    const-string v2, "service_type = ?"

    .line 117
    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/ServiceDataModel;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 66
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001c

    .line 67
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->setContentView(I)V

    .line 69
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->getCareApplication()Lcom/texa/careapp/CareApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;)V

    .line 71
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "SOS_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 77
    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-virtual {v1, p1}, Lcom/texa/careapp/utils/ServiceDataManager;->getServiceByUid(Ljava/lang/String;)Lcom/texa/careapp/model/ServiceDataModel;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 81
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v1

    sget-object v2, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v1

    sget-object v2, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS_LIGHT:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    if-ne v1, v2, :cond_8

    .line 82
    :cond_0
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getStatus()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    move-result-object v1

    sget-object v2, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->AVAILABLE:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    if-eq v1, v2, :cond_1

    .line 83
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getStatus()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    move-result-object v1

    sget-object v2, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->ACTIVE:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->isTermsAccepted()Z

    move-result v1

    if-nez v1, :cond_8

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 90
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 91
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 93
    :cond_2
    invoke-static {p0}, Lcom/texa/care/navigation/Navigator;->getInstanceFor(Landroid/app/Activity;)Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    const v1, 0x7f0a00d7

    .line 94
    invoke-virtual {v0, v1}, Lcom/texa/care/navigation/Navigator;->setContainerResId(I)V

    .line 95
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->isTrial()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;

    invoke-direct {v1, p1}, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;-><init>(Lcom/texa/careapp/model/ServiceDataModel;)V

    invoke-virtual {v0, v1}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    goto :goto_1

    .line 97
    :cond_3
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    if-ne v0, v1, :cond_4

    .line 98
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;

    iget-object v2, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    iget-object v3, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    .line 99
    invoke-virtual {v3}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/texa/careapp/utils/ServiceDataManager;->getAvailableSosLight(Lcom/texa/careapp/model/UserModel;)Lcom/texa/careapp/model/ServiceDataModel;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;-><init>(Lcom/texa/careapp/model/ServiceDataModel;Lcom/texa/careapp/model/ServiceDataModel;)V

    .line 98
    invoke-virtual {v0, v1}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    goto :goto_1

    .line 100
    :cond_4
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS_LIGHT:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    if-ne v0, v1, :cond_7

    .line 101
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->getAvailablePlus()Lcom/texa/careapp/model/ServiceDataModel;

    move-result-object v0

    .line 102
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->getAvailableNotTrialPlus()Lcom/texa/careapp/model/ServiceDataModel;

    move-result-object v1

    if-eqz v0, :cond_6

    .line 104
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    new-instance v2, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;

    if-eqz v1, :cond_5

    .line 106
    invoke-virtual {v1}, Lcom/texa/careapp/model/ServiceDataModel;->getStatus()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    move-result-object v3

    sget-object v4, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->AVAILABLE:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    if-ne v3, v4, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    .line 107
    :goto_0
    invoke-direct {v2, p1, v1}, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;-><init>(Lcom/texa/careapp/model/ServiceDataModel;Lcom/texa/careapp/model/ServiceDataModel;)V

    .line 104
    invoke-virtual {v0, v2}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    goto :goto_1

    .line 109
    :cond_6
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;

    invoke-direct {v1, p1}, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;-><init>(Lcom/texa/careapp/model/ServiceDataModel;)V

    invoke-virtual {v0, v1}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    :cond_7
    :goto_1
    return-void

    :cond_8
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "ServiceDataModel is inconsistent"

    .line 84
    invoke-static {v0, p1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "ServiceDataModel uuid == null"

    .line 73
    invoke-static {v0, p1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onEvent(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$ActivationCompletedEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 190
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->addTexaContact()V

    return-void
.end method

.method public onEvent(Lcom/texa/careapp/app/events/CloseActivityEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 182
    invoke-virtual {p1}, Lcom/texa/careapp/app/events/CloseActivityEvent;->getActivity()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "TOS changed on server"

    .line 183
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 151
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 156
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 138
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onPause()V

    .line 139
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0x64

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 169
    aget p1, p3, p1

    if-nez p1, :cond_0

    .line 171
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "com.android.contacts"

    iget-object p3, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->ops:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 173
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 132
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onResume()V

    .line 133
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected requiresAuthentication()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

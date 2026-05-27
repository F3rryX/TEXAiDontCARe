.class public Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;
.super Lcom/texa/care/navigation/Screen;
.source "ServicesSubscriptionManagerScreen.java"


# static fields
.field private static sDateFormat:Ljava/text/DateFormat;

.field private static sDayFormat:Ljava/text/DateFormat;

.field private static sMonthFormat:Ljava/text/DateFormat;


# instance fields
.field private alertIcon:Landroid/widget/ImageView;

.field private day:Ljava/lang/String;

.field private deleteSubscription:Landroidx/appcompat/widget/AppCompatTextView;

.field private dueDay:Landroid/widget/TextView;

.field private dueMonth:Landroid/widget/TextView;

.field private id:Ljava/lang/String;

.field private inflatedLayout:Landroid/view/View;

.field private label:Ljava/lang/String;

.field private labelInfo:Landroid/widget/TextView;

.field protected mContext:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mainInfo:Landroidx/appcompat/widget/AppCompatTextView;

.field private month:Ljava/lang/String;

.field private packageName:Landroid/widget/TextView;

.field private secondInfo:Landroidx/appcompat/widget/AppCompatTextView;

.field private sosName:Ljava/lang/String;

.field private status:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->sDateFormat:Ljava/text/DateFormat;

    .line 39
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->sDayFormat:Ljava/text/DateFormat;

    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "MMM\nyyyy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->sMonthFormat:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    const-string v0, ""

    .line 57
    iput-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->id:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->sosName:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->label:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->day:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->month:Ljava/lang/String;

    return-void
.end method

.method private clickOnPlayStore()V
    .locals 2

    .line 180
    invoke-static {}, Lcom/texa/careapp/app/MainActivity;->buildIntentForTexaCarePageOnGooglePlay()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 181
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 182
    iget-object v1, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private getServiceModelFromId(Ljava/lang/String;)V
    .locals 4

    .line 103
    const-class v0, Lcom/texa/careapp/model/ServiceDataModel;

    invoke-static {v0}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/activeandroid/query/Select;

    invoke-direct {v1}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v2, Lcom/texa/careapp/model/ServiceDataModel;

    .line 105
    invoke-virtual {v1, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".uid=?"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 106
    invoke-virtual {v1, v0, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/model/ServiceDataModel;

    .line 109
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->initItem(Lcom/texa/careapp/model/ServiceDataModel;)V

    return-void
.end method

.method private initComponents()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->inflatedLayout:Landroid/view/View;

    const v1, 0x7f0a0400

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->mainInfo:Landroidx/appcompat/widget/AppCompatTextView;

    .line 83
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->inflatedLayout:Landroid/view/View;

    const v1, 0x7f0a0401

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->secondInfo:Landroidx/appcompat/widget/AppCompatTextView;

    .line 84
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->inflatedLayout:Landroid/view/View;

    const v1, 0x7f0a0402

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->status:Landroidx/appcompat/widget/AppCompatTextView;

    .line 85
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->inflatedLayout:Landroid/view/View;

    const v1, 0x7f0a03fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->deleteSubscription:Landroidx/appcompat/widget/AppCompatTextView;

    .line 86
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->inflatedLayout:Landroid/view/View;

    const v1, 0x7f0a03ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->labelInfo:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->inflatedLayout:Landroid/view/View;

    const v1, 0x7f0a03fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->dueDay:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->inflatedLayout:Landroid/view/View;

    const v1, 0x7f0a03fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->dueMonth:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->inflatedLayout:Landroid/view/View;

    const v1, 0x7f0a0086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->alertIcon:Landroid/widget/ImageView;

    return-void
.end method

.method private initItem(Lcom/texa/careapp/model/ServiceDataModel;)V
    .locals 8

    .line 114
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getDongle()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->mainInfo:Landroidx/appcompat/widget/AppCompatTextView;

    .line 116
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getDongle()Lcom/texa/careapp/model/DongleModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/texa/careapp/model/DongleModel;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v4

    .line 115
    invoke-static {v4}, Lcom/texa/careapp/utils/Utils;->formatVehicleModel(Lcom/texa/careapp/model/VehicleModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->secondInfo:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getDongle()Lcom/texa/careapp/model/DongleModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/texa/careapp/model/DongleModel;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/texa/careapp/model/VehicleModel;->getPlate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v0

    .line 120
    iget-object v4, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->mainInfo:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v5, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->mContext:Landroid/content/Context;

    const v6, 0x7f110a7d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    .line 121
    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getFirstName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getLastName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 120
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v4, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->secondInfo:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :goto_0
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->secondInfo:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getDongle()Lcom/texa/careapp/model/DongleModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/texa/careapp/model/DongleModel;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/texa/careapp/model/VehicleModel;->getPlate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->deleteSubscription:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 128
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v0

    sget-object v5, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    if-ne v0, v5, :cond_2

    .line 129
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->isTrial()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->mContext:Landroid/content/Context;

    const v5, 0x7f110c25

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->mContext:Landroid/content/Context;

    const v5, 0x7f110c24

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->sosName:Ljava/lang/String;

    goto :goto_2

    .line 132
    :cond_2
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v0

    sget-object v5, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS_LIGHT:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    if-ne v0, v5, :cond_3

    .line 133
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->mContext:Landroid/content/Context;

    const v5, 0x7f110c23

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->sosName:Ljava/lang/String;

    .line 135
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->mContext:Landroid/content/Context;

    const v5, 0x7f110c20

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    sget-object v6, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->sDateFormat:Ljava/text/DateFormat;

    .line 136
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getActivation()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 135
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 138
    iget-object v5, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->mContext:Landroid/content/Context;

    const v6, 0x7f110c1f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->sosName:Ljava/lang/String;

    aput-object v6, v1, v3

    aput-object v0, v1, v2

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->status:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->isTermsAccepted()Z

    move-result v1

    if-nez v1, :cond_4

    .line 144
    iget-object v1, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->mContext:Landroid/content/Context;

    const v2, 0x7f110c1e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->label:Ljava/lang/String;

    .line 145
    iget-object v1, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->alertIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 147
    :cond_4
    iget-object v1, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->alertIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v1

    sget-object v2, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    if-ne v1, v2, :cond_b

    .line 149
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->isTrial()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->isMechanicPurchase()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move-object v1, v2

    goto :goto_4

    .line 150
    :cond_6
    :goto_3
    sget-object v1, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->sDayFormat:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getExpiration()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    iput-object v1, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->day:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->isTrial()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->isMechanicPurchase()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 152
    :cond_7
    sget-object v1, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->sMonthFormat:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getExpiration()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    :cond_8
    iput-object v2, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->month:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->isTrial()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->isMechanicPurchase()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_5

    .line 155
    :cond_9
    iget-object v1, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->mContext:Landroid/content/Context;

    const v2, 0x7f110c22

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 154
    :cond_a
    :goto_5
    iget-object v1, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->mContext:Landroid/content/Context;

    const v2, 0x7f110c1b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 155
    :goto_6
    iput-object v1, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->label:Ljava/lang/String;

    goto :goto_7

    .line 156
    :cond_b
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v1

    sget-object v2, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS_LIGHT:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    if-ne v1, v2, :cond_c

    .line 157
    iget-object v1, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->mContext:Landroid/content/Context;

    const v2, 0x7f110c19

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->label:Ljava/lang/String;

    .line 161
    :cond_c
    :goto_7
    iget-object v1, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->labelInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->labelInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->day:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 165
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->dueDay:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->dueDay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->day:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 168
    :cond_d
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->dueDay:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    :goto_8
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->month:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 170
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->dueMonth:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->dueMonth:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->month:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 173
    :cond_e
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->dueMonth:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    :goto_9
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->packageName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 4

    .line 68
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;)V

    .line 69
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenServicesSubscriptionManagerBinding;

    .line 70
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenServicesSubscriptionManagerBinding;->screenServicesSubscriptionManagerPackageName:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->packageName:Landroid/widget/TextView;

    .line 71
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenServicesSubscriptionManagerBinding;->screenServicesSubscriptionManagerPlayStore:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00f4

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 73
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->inflatedLayout:Landroid/view/View;

    .line 74
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenServicesSubscriptionManagerBinding;->screenServicesSubscriptionManagerItemContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->inflatedLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->initComponents()V

    .line 76
    invoke-static {}, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerActivity;->getServiceDataModelId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->id:Ljava/lang/String;

    .line 77
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->getServiceModelFromId(Ljava/lang/String;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 99
    const-class v0, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00da

    return v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-settings-services-ServicesSubscriptionManagerScreen(Landroid/view/View;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;->clickOnPlayStore()V

    return-void
.end method

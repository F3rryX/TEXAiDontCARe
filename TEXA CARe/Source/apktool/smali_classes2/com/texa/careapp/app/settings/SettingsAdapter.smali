.class public Lcom/texa/careapp/app/settings/SettingsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SettingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderMyVehiclesList;,
        Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderListItem;,
        Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderHeader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ISettingsModel;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Landroid/app/Activity;

.field protected mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field protected mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mNavigator:Lcom/texa/care/navigation/Navigator;

.field protected mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/texa/care/navigation/Navigator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ISettingsModel;",
            ">;",
            "Lcom/texa/care/navigation/Navigator;",
            ")V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->mActivity:Landroid/app/Activity;

    .line 92
    iput-object p2, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->items:Ljava/util/List;

    .line 93
    iput-object p3, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->mNavigator:Lcom/texa/care/navigation/Navigator;

    .line 94
    invoke-virtual {p3}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->mContext:Landroid/content/Context;

    .line 95
    iget-object p1, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {p1}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/CareApplication;

    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/settings/SettingsAdapter;)V

    return-void
.end method

.method private addListeners(Lcom/texa/careapp/model/ItemSettingsModel;Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderListItem;)V
    .locals 3

    .line 148
    invoke-virtual {p1}, Lcom/texa/careapp/model/ItemSettingsModel;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p2, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderListItem;->mSettingsItemContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, p1}, Lcom/texa/careapp/app/settings/SettingsAdapter;->markEnabled(Landroid/view/View;Lcom/texa/careapp/model/ItemSettingsModel;)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p2, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderListItem;->mSettingsItemContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, p1}, Lcom/texa/careapp/app/settings/SettingsAdapter;->markDisabled(Landroid/view/View;Lcom/texa/careapp/model/ItemSettingsModel;)V

    .line 153
    :goto_0
    invoke-virtual {p1}, Lcom/texa/careapp/model/ItemSettingsModel;->getAction()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 154
    iget-object v0, p2, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderListItem;->mSettingsItemContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {p1, v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->setOnCLickListener(Landroid/widget/RelativeLayout;Lcom/texa/care/navigation/Navigator;)V

    goto :goto_1

    .line 155
    :cond_1
    invoke-virtual {p1}, Lcom/texa/careapp/model/ItemSettingsModel;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 156
    invoke-direct {p0, p2, p1}, Lcom/texa/careapp/app/settings/SettingsAdapter;->startSOSTerms(Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderListItem;Lcom/texa/careapp/model/ItemSettingsModel;)V

    goto :goto_1

    .line 157
    :cond_2
    invoke-virtual {p1}, Lcom/texa/careapp/model/ItemSettingsModel;->getAction()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/texa/careapp/app/settings/SettingsAdapter;->validateServices()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p2, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderListItem;->mSettingsItemContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Lcom/texa/careapp/model/ItemSettingsModel;->getAction()I

    move-result v1

    iget-object v2, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1, v2}, Lcom/texa/careapp/model/ItemSettingsModel;->setOnCLickListener(Landroid/widget/RelativeLayout;ILandroid/content/Context;)V

    goto :goto_1

    .line 160
    :cond_3
    iget-object v0, p2, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderListItem;->mSettingsItemContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Lcom/texa/careapp/model/ItemSettingsModel;->getAction()I

    move-result v1

    iget-object v2, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1, v2}, Lcom/texa/careapp/model/ItemSettingsModel;->setOnCLickListener(Landroid/widget/RelativeLayout;ILandroid/content/Context;)V

    .line 163
    :goto_1
    invoke-virtual {p1}, Lcom/texa/careapp/model/ItemSettingsModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 164
    iget-object v0, p2, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderListItem;->mSettingsItemImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/texa/careapp/model/ItemSettingsModel;->getImage()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 165
    iget-object p1, p2, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderListItem;->mSettingsItemImage:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 167
    :cond_4
    iget-object p1, p2, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderListItem;->mSettingsItemImage:Landroid/widget/ImageView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private getAllServices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ServiceDataModel;",
            ">;"
        }
    .end annotation

    .line 194
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/ServiceDataModel;

    .line 195
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "activation"

    .line 196
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private inflateVehicleList(Lcom/texa/careapp/model/VehicleListSettingsModel;Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderMyVehiclesList;)V
    .locals 5

    .line 202
    iget-object v0, p2, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderMyVehiclesList;->mSettingsMyVehiclesList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 204
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleListSettingsModel;->getVehicleModels()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/VehicleModel;

    .line 206
    iget-object v1, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0d00f8

    .line 207
    iget-object v3, p2, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderMyVehiclesList;->mSettingsMyVehiclesList:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a04ae

    .line 208
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a04ad

    .line 209
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a04ac

    .line 210
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 212
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/texa/careapp/app/settings/SettingsAdapter;->fillVehicleData(Lcom/texa/careapp/model/VehicleModel;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 214
    new-instance v2, Lcom/texa/careapp/app/settings/SettingsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/texa/careapp/app/settings/SettingsAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/settings/SettingsAdapter;Lcom/texa/careapp/model/VehicleModel;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v0, p2, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderMyVehiclesList;->mSettingsMyVehiclesList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private markDisabled(Landroid/view/View;)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private markDisabled(Landroid/view/View;Lcom/texa/careapp/model/ItemSettingsModel;)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {p2}, Lcom/texa/careapp/model/ItemSettingsModel;->getAction()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/16 p2, 0x8

    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private markEnabled(Landroid/view/View;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private markEnabled(Landroid/view/View;Lcom/texa/careapp/model/ItemSettingsModel;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 79
    invoke-virtual {p2}, Lcom/texa/careapp/model/ItemSettingsModel;->getAction()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private startSOSTerms(Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderListItem;Lcom/texa/careapp/model/ItemSettingsModel;)V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    .line 175
    invoke-virtual {v1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    .line 176
    invoke-virtual {v2}, Lcom/texa/careapp/utils/ServiceDataManager;->getActiveGenericSosServices()Ljava/util/List;

    move-result-object v2

    .line 174
    invoke-virtual {v0, v1, v2}, Lcom/texa/careapp/utils/ServiceDataManager;->filterActiveSosServicesForHwId(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 173
    invoke-virtual {v0, v1}, Lcom/texa/careapp/utils/ServiceDataManager;->getServicePriority(Ljava/util/List;)Lcom/texa/careapp/model/ServiceDataModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v1, p1, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderListItem;->mSettingsItemContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcom/texa/careapp/app/settings/SettingsAdapter;->markEnabled(Landroid/view/View;)V

    .line 179
    iget-object p1, p1, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderListItem;->mSettingsItemContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1, v1, v0}, Lcom/texa/careapp/model/ItemSettingsModel;->setOnCLickListener(Landroid/widget/RelativeLayout;Landroid/content/Context;Lcom/texa/careapp/model/ServiceDataModel;)V

    goto :goto_0

    .line 181
    :cond_0
    iget-object p1, p1, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderListItem;->mSettingsItemContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/settings/SettingsAdapter;->markDisabled(Landroid/view/View;)V

    goto :goto_0

    .line 184
    :cond_1
    iget-object p1, p1, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderListItem;->mSettingsItemContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/settings/SettingsAdapter;->markDisabled(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private validateServices()Z
    .locals 1

    .line 189
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/SettingsAdapter;->getAllServices()Ljava/util/List;

    move-result-object v0

    .line 190
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method fillVehicleData(Lcom/texa/careapp/model/VehicleModel;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1

    .line 242
    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->formatVehicleModel(Lcom/texa/careapp/model/VehicleModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getPlate()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object p2, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/texa/careapp/model/VehicleModel;->formatOdometer(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/texa/careapp/model/HeaderSettingsModel;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/model/ISettingsModel;

    invoke-interface {p1}, Lcom/texa/careapp/model/ISettingsModel;->getType()I

    move-result p1

    return p1

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/texa/careapp/model/VehicleListSettingsModel;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/model/ISettingsModel;

    invoke-interface {p1}, Lcom/texa/careapp/model/ISettingsModel;->getType()I

    move-result p1

    return p1

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/texa/careapp/model/ItemSettingsModel;

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/model/ISettingsModel;

    invoke-interface {p1}, Lcom/texa/careapp/model/ISettingsModel;->getType()I

    move-result p1

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public synthetic lambda$inflateVehicleList$0$com-texa-careapp-app-settings-SettingsAdapter(Lcom/texa/careapp/model/VehicleModel;Landroid/view/View;)V
    .locals 4

    .line 215
    iget-object p2, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-virtual {p2}, Lcom/texa/careapp/carelib/CommunicationObservable;->getCurrentStatus()Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    move-result-object p2

    sget-object v0, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_NOT_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    const/high16 v1, 0x10000000

    const-string/jumbo v2, "uid"

    if-ne p2, v0, :cond_0

    .line 217
    iget-object p2, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getHwid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/texa/careapp/model/DongleDataManager;->setDongleLikeSelectedWithHWID(Ljava/lang/String;)Lcom/texa/careapp/model/DongleModel;

    .line 218
    iget-object p2, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {p2}, Lcom/texa/careapp/utils/VehicleObserver;->forceUpdate()V

    .line 220
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 221
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 223
    iget-object p1, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->isCurrentVehicle()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 226
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "settings: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getHwid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleActivity;

    invoke-direct {p2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 229
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    iget-object p1, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "impossibile entrare nei settings se un altro veicolo \u00e8 connesso"

    .line 232
    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$refreshUserItem$1$com-texa-careapp-app-settings-SettingsAdapter(I)V
    .locals 0

    .line 259
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/settings/SettingsAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/ISettingsModel;

    .line 122
    invoke-interface {v0}, Lcom/texa/careapp/model/ISettingsModel;->getType()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    check-cast p1, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderMyVehiclesList;

    .line 139
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/texa/careapp/model/VehicleListSettingsModel;

    .line 140
    invoke-direct {p0, p2, p1}, Lcom/texa/careapp/app/settings/SettingsAdapter;->inflateVehicleList(Lcom/texa/careapp/model/VehicleListSettingsModel;Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderMyVehiclesList;)V

    goto :goto_0

    .line 130
    :cond_1
    check-cast p1, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderListItem;

    .line 131
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/texa/careapp/model/ItemSettingsModel;

    .line 132
    invoke-direct {p0, p2, p1}, Lcom/texa/careapp/app/settings/SettingsAdapter;->addListeners(Lcom/texa/careapp/model/ItemSettingsModel;Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderListItem;)V

    .line 133
    iget-object v0, p1, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderListItem;->mSettingsItemTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/texa/careapp/model/ItemSettingsModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object p1, p1, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderListItem;->mSettingsItemSubtitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/texa/careapp/model/ItemSettingsModel;->getSubtitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 124
    :cond_2
    check-cast p1, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderHeader;

    .line 125
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/texa/careapp/model/HeaderSettingsModel;

    .line 126
    iget-object p1, p1, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderHeader;->mSettingsHeaderTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/texa/careapp/model/HeaderSettingsModel;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 101
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p2, 0x7f0d00f3

    .line 113
    new-instance v2, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderMyVehiclesList;

    invoke-static {v0, p2, p1, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/SettingsMyVehiclesListBinding;

    invoke-direct {v2, p0, p1}, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderMyVehiclesList;-><init>(Lcom/texa/careapp/app/settings/SettingsAdapter;Lcom/texa/careapp/databinding/SettingsMyVehiclesListBinding;)V

    return-object v2

    :cond_1
    const p2, 0x7f0d00f2

    .line 109
    new-instance v2, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderListItem;

    invoke-static {v0, p2, p1, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/SettingsListItemBinding;

    invoke-direct {v2, p0, p1}, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderListItem;-><init>(Lcom/texa/careapp/app/settings/SettingsAdapter;Lcom/texa/careapp/databinding/SettingsListItemBinding;)V

    return-object v2

    :cond_2
    const p2, 0x7f0d00f1

    .line 105
    new-instance v2, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderHeader;

    invoke-static {v0, p2, p1, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/SettingsHeaderItemBinding;

    invoke-direct {v2, p0, p1}, Lcom/texa/careapp/app/settings/SettingsAdapter$ISettingsViewHolderHeader;-><init>(Lcom/texa/careapp/app/settings/SettingsAdapter;Lcom/texa/careapp/databinding/SettingsHeaderItemBinding;)V

    return-object v2
.end method

.method refreshUserItem(ILcom/texa/careapp/model/UserModel;)V
    .locals 6

    .line 248
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/ISettingsModel;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f110a7d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 249
    invoke-virtual {p2}, Lcom/texa/careapp/model/UserModel;->getFirstName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p2}, Lcom/texa/careapp/model/UserModel;->getLastName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 248
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/texa/careapp/model/ISettingsModel;->setTitle(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/ISettingsModel;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f1108aa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/texa/careapp/model/ISettingsModel;->setSubtitle(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/ISettingsModel;

    invoke-interface {v0, v4}, Lcom/texa/careapp/model/ISettingsModel;->setAction(I)V

    .line 252
    invoke-static {p2}, Lcom/texa/careapp/utils/SettingsUtils;->isInfoSet(Lcom/texa/careapp/model/UserModel;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 253
    iget-object p2, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->items:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/texa/careapp/model/ISettingsModel;

    invoke-interface {p2, v5}, Lcom/texa/careapp/model/ISettingsModel;->setHasImage(Z)V

    .line 254
    iget-object p2, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->items:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/texa/careapp/model/ISettingsModel;

    const v0, 0x7f08014c

    invoke-interface {p2, v0}, Lcom/texa/careapp/model/ISettingsModel;->setImage(I)V

    goto :goto_0

    .line 256
    :cond_0
    iget-object p2, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->items:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/texa/careapp/model/ISettingsModel;

    invoke-interface {p2, v4}, Lcom/texa/careapp/model/ISettingsModel;->setHasImage(Z)V

    .line 258
    :goto_0
    iget-object p2, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->items:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/texa/careapp/model/ISettingsModel;

    invoke-interface {p2, v5}, Lcom/texa/careapp/model/ISettingsModel;->setType(I)V

    .line 259
    iget-object p2, p0, Lcom/texa/careapp/app/settings/SettingsAdapter;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/texa/careapp/app/settings/SettingsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/app/settings/SettingsAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/settings/SettingsAdapter;I)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

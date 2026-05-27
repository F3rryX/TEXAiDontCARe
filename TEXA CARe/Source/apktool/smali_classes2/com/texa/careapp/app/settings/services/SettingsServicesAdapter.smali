.class public Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SettingsServicesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;,
        Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$UpdateData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static sDateFormat:Ljava/text/DateFormat;

.field private static sDayFormat:Ljava/text/DateFormat;

.field private static sMonthFormat:Ljava/text/DateFormat;


# instance fields
.field private dongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ServiceDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private mNavigator:Lcom/texa/care/navigation/Navigator;

.field private mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

.field private mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

.field public final preLollipopVersion:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private updateDataListener:Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$UpdateData;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 55
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;->sDateFormat:Ljava/text/DateFormat;

    .line 56
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;->sDayFormat:Ljava/text/DateFormat;

    .line 57
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "MMM\nyyyy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;->sMonthFormat:Ljava/text/DateFormat;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/texa/care/navigation/Navigator;Ljava/util/List;Lcom/texa/careapp/utils/UserDataManager;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$UpdateData;Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/texa/care/navigation/Navigator;",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ServiceDataModel;",
            ">;",
            "Lcom/texa/careapp/utils/UserDataManager;",
            "Lcom/texa/careapp/model/DongleDataManager;",
            "Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$UpdateData;",
            "Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;",
            ")V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 58
    new-instance v0, Landroidx/databinding/ObservableField;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;->preLollipopVersion:Landroidx/databinding/ObservableField;

    .line 75
    iput-object p1, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;->mNavigator:Lcom/texa/care/navigation/Navigator;

    .line 77
    iput-object p3, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;->mItems:Ljava/util/List;

    .line 78
    iput-object p4, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    .line 79
    iput-object p5, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;->dongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    .line 80
    iput-object p6, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;->updateDataListener:Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$UpdateData;

    .line 81
    iput-object p7, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;->mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    .line 82
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    .line 83
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/text/DateFormat;
    .locals 1

    .line 53
    sget-object v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;->sDayFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method static synthetic access$100()Ljava/text/DateFormat;
    .locals 1

    .line 53
    sget-object v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;->sMonthFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method static synthetic access$200()Ljava/text/DateFormat;
    .locals 1

    .line 53
    sget-object v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;->sDateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method public static setLayoutWidth(Landroid/view/View;F)V
    .locals 1

    .line 353
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    float-to-int p1, p1

    .line 354
    iput p1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    .line 355
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static setMarginBottom(Landroid/view/View;F)V
    .locals 4

    .line 346
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 347
    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    iget v3, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    float-to-int p1, p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->setMargins(IIII)V

    .line 348
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static setMarginEnd(Landroid/view/View;F)V
    .locals 1

    .line 332
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    float-to-int p1, p1

    .line 333
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->setMarginEnd(I)V

    .line 334
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static setMarginStart(Landroid/view/View;F)V
    .locals 1

    .line 325
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    float-to-int p1, p1

    .line 326
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->setMarginStart(I)V

    .line 327
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static setMarginTop(Landroid/view/View;F)V
    .locals 4

    .line 339
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 340
    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    float-to-int p1, p1

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    iget v3, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, p1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->setMargins(IIII)V

    .line 341
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 53
    check-cast p1, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;->onBindViewHolder(Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;I)V
    .locals 7

    .line 94
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/texa/careapp/model/ServiceDataModel;

    .line 95
    iget-object v1, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;->mNavigator:Lcom/texa/care/navigation/Navigator;

    iget-object v4, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    iget-object v5, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;->dongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    iget-object v6, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;->updateDataListener:Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$UpdateData;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;->bindView(Landroid/content/Context;Lcom/texa/care/navigation/Navigator;Lcom/texa/careapp/model/ServiceDataModel;Lcom/texa/careapp/utils/UserDataManager;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$UpdateData;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;
    .locals 3

    .line 89
    new-instance p2, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00f4

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;

    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;->mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    invoke-direct {p2, p1, v0}, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$ServiceViewHolder;-><init>(Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;)V

    return-object p2
.end method

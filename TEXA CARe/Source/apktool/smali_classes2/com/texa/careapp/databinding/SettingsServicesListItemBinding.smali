.class public abstract Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SettingsServicesListItemBinding.java"


# instance fields
.field public final alertIconService:Landroid/widget/ImageView;

.field protected mSettingsAdapter:Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final settingsServicesListItemCardView:Landroidx/cardview/widget/CardView;

.field public final settingsServicesListItemDelete:Landroidx/appcompat/widget/AppCompatTextView;

.field public final settingsServicesListItemDueDay:Landroid/widget/TextView;

.field public final settingsServicesListItemDueMonth:Landroid/widget/TextView;

.field public final settingsServicesListItemInfoLay:Landroid/widget/LinearLayout;

.field public final settingsServicesListItemLabel:Landroid/widget/TextView;

.field public final settingsServicesListItemMainInfo:Landroidx/appcompat/widget/AppCompatTextView;

.field public final settingsServicesListItemSecondInfo:Landroidx/appcompat/widget/AppCompatTextView;

.field public final settingsServicesListItemStatus:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroidx/cardview/widget/CardView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 64
    iput-object p4, p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;->alertIconService:Landroid/widget/ImageView;

    .line 65
    iput-object p5, p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;->settingsServicesListItemCardView:Landroidx/cardview/widget/CardView;

    .line 66
    iput-object p6, p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;->settingsServicesListItemDelete:Landroidx/appcompat/widget/AppCompatTextView;

    .line 67
    iput-object p7, p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;->settingsServicesListItemDueDay:Landroid/widget/TextView;

    .line 68
    iput-object p8, p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;->settingsServicesListItemDueMonth:Landroid/widget/TextView;

    .line 69
    iput-object p9, p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;->settingsServicesListItemInfoLay:Landroid/widget/LinearLayout;

    .line 70
    iput-object p10, p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;->settingsServicesListItemLabel:Landroid/widget/TextView;

    .line 71
    iput-object p11, p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;->settingsServicesListItemMainInfo:Landroidx/appcompat/widget/AppCompatTextView;

    .line 72
    iput-object p12, p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;->settingsServicesListItemSecondInfo:Landroidx/appcompat/widget/AppCompatTextView;

    .line 73
    iput-object p13, p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;->settingsServicesListItemStatus:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;
    .locals 1

    .line 123
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00f4

    .line 136
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;
    .locals 1

    .line 105
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;
    .locals 1

    .line 86
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00f4

    .line 100
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00f4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 119
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;

    return-object p0
.end method


# virtual methods
.method public getSettingsAdapter()Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;->mSettingsAdapter:Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;

    return-object v0
.end method

.method public abstract setSettingsAdapter(Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;)V
.end method

.class public abstract Lcom/texa/careapp/databinding/SettingsCareScreenBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SettingsCareScreenBinding.java"


# instance fields
.field public final fontTextView:Landroid/widget/TextView;

.field public final fontTextView2:Landroid/widget/TextView;

.field public final settingsAccessoryGroup:Landroid/widget/LinearLayout;

.field public final settingsAccessoryStatus:Landroid/widget/TextView;

.field public final settingsAppVersion:Landroid/widget/TextView;

.field public final settingsLibraryVersion:Landroid/widget/TextView;

.field public final settingsMainAppLatest:Landroid/widget/TextView;

.field public final settingsMainAppLatestGroup:Landroid/widget/LinearLayout;

.field public final settingsMainAppVersion:Landroid/widget/TextView;

.field public final settingsSerialNumber:Landroid/widget/TextView;

.field public final settingsServiceAppLatest:Landroid/widget/TextView;

.field public final settingsServiceAppLatestGroup:Landroid/widget/LinearLayout;

.field public final settingsServiceAppVersion:Landroid/widget/TextView;

.field public final settingsUpdateConfiguation:Landroid/widget/TextView;

.field public final settingsUpdateFirmware:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 72
    iput-object v1, v0, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;->fontTextView:Landroid/widget/TextView;

    move-object v1, p5

    .line 73
    iput-object v1, v0, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;->fontTextView2:Landroid/widget/TextView;

    move-object v1, p6

    .line 74
    iput-object v1, v0, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;->settingsAccessoryGroup:Landroid/widget/LinearLayout;

    move-object v1, p7

    .line 75
    iput-object v1, v0, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;->settingsAccessoryStatus:Landroid/widget/TextView;

    move-object v1, p8

    .line 76
    iput-object v1, v0, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;->settingsAppVersion:Landroid/widget/TextView;

    move-object v1, p9

    .line 77
    iput-object v1, v0, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;->settingsLibraryVersion:Landroid/widget/TextView;

    move-object v1, p10

    .line 78
    iput-object v1, v0, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;->settingsMainAppLatest:Landroid/widget/TextView;

    move-object v1, p11

    .line 79
    iput-object v1, v0, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;->settingsMainAppLatestGroup:Landroid/widget/LinearLayout;

    move-object v1, p12

    .line 80
    iput-object v1, v0, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;->settingsMainAppVersion:Landroid/widget/TextView;

    move-object v1, p13

    .line 81
    iput-object v1, v0, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;->settingsSerialNumber:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 82
    iput-object v1, v0, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;->settingsServiceAppLatest:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 83
    iput-object v1, v0, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;->settingsServiceAppLatestGroup:Landroid/widget/LinearLayout;

    move-object/from16 v1, p16

    .line 84
    iput-object v1, v0, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;->settingsServiceAppVersion:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 85
    iput-object v1, v0, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;->settingsUpdateConfiguation:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 86
    iput-object v1, v0, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;->settingsUpdateFirmware:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/SettingsCareScreenBinding;
    .locals 1

    .line 129
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/SettingsCareScreenBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/SettingsCareScreenBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00f0

    .line 141
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/SettingsCareScreenBinding;
    .locals 1

    .line 111
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/SettingsCareScreenBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/SettingsCareScreenBinding;
    .locals 1

    .line 92
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/SettingsCareScreenBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/SettingsCareScreenBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00f0

    .line 106
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/SettingsCareScreenBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00f0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 125
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/SettingsCareScreenBinding;

    return-object p0
.end method

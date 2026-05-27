.class public abstract Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ScreenGeneralSettingsPreferencesBinding.java"


# instance fields
.field public final buttonAdditionalPhoneImpactDetection:Landroid/widget/RelativeLayout;

.field public final buttonEcoDrivingActivation:Landroid/widget/RelativeLayout;

.field public final buttonEcoDrivingProfile:Landroid/widget/LinearLayout;

.field public final buttonEnableNotification:Landroid/widget/RelativeLayout;

.field public final buttonSoundOnConnection:Landroid/widget/RelativeLayout;

.field public final radioEcoDrivingProfileEco:Landroid/widget/RadioButton;

.field public final radioEcoDrivingProfileNormal:Landroid/widget/RadioButton;

.field public final radioEcoDrivingProfileSport:Landroid/widget/RadioButton;

.field public final radioGroupProfileEcoDriving:Landroid/widget/RadioGroup;

.field public final toggleButtonAdditionalPhoneImpactDetection:Landroidx/appcompat/widget/SwitchCompat;

.field public final toggleButtonEcoDrivingActivation:Landroidx/appcompat/widget/SwitchCompat;

.field public final toggleButtonEnableNotification:Landroidx/appcompat/widget/SwitchCompat;

.field public final toggleButtonSoundOnConnection:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;)V
    .locals 2

    move-object v0, p0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 70
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;->buttonAdditionalPhoneImpactDetection:Landroid/widget/RelativeLayout;

    move-object v1, p5

    .line 71
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;->buttonEcoDrivingActivation:Landroid/widget/RelativeLayout;

    move-object v1, p6

    .line 72
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;->buttonEcoDrivingProfile:Landroid/widget/LinearLayout;

    move-object v1, p7

    .line 73
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;->buttonEnableNotification:Landroid/widget/RelativeLayout;

    move-object v1, p8

    .line 74
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;->buttonSoundOnConnection:Landroid/widget/RelativeLayout;

    move-object v1, p9

    .line 75
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;->radioEcoDrivingProfileEco:Landroid/widget/RadioButton;

    move-object v1, p10

    .line 76
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;->radioEcoDrivingProfileNormal:Landroid/widget/RadioButton;

    move-object v1, p11

    .line 77
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;->radioEcoDrivingProfileSport:Landroid/widget/RadioButton;

    move-object v1, p12

    .line 78
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;->radioGroupProfileEcoDriving:Landroid/widget/RadioGroup;

    move-object v1, p13

    .line 79
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;->toggleButtonAdditionalPhoneImpactDetection:Landroidx/appcompat/widget/SwitchCompat;

    move-object/from16 v1, p14

    .line 80
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;->toggleButtonEcoDrivingActivation:Landroidx/appcompat/widget/SwitchCompat;

    move-object/from16 v1, p15

    .line 81
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;->toggleButtonEnableNotification:Landroidx/appcompat/widget/SwitchCompat;

    move-object/from16 v1, p16

    .line 82
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;->toggleButtonSoundOnConnection:Landroidx/appcompat/widget/SwitchCompat;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;
    .locals 1

    .line 125
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00ca

    .line 138
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;
    .locals 1

    .line 107
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;
    .locals 1

    .line 88
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00ca

    .line 102
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00ca

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 121
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;

    return-object p0
.end method

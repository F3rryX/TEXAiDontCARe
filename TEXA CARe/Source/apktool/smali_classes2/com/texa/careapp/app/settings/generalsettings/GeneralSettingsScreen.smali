.class public Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;
.super Lcom/texa/care/navigation/Screen;
.source "GeneralSettingsScreen.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GeneralSettingsScreen"


# instance fields
.field protected drivingStyleManager:Lcom/texa/care/eco_driving/DrivingStyleManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mAdditionalPhoneImpactDetectionValue:Z

.field private mEcoDrivingValue:Z

.field private mNotificationEnableValue:Z

.field private mPlaySoundOnConnectionValue:Z

.field private mProfileLayout:Landroid/widget/LinearLayout;

.field protected mServiceNotificationController:Lcom/texa/careapp/app/service/ServiceNotificationController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mToggleViewAdditionalPhoneImpactDetection:Landroidx/appcompat/widget/SwitchCompat;

.field private mToggleViewEcoDriving:Landroidx/appcompat/widget/SwitchCompat;

.field private mToggleViewNotification:Landroidx/appcompat/widget/SwitchCompat;

.field private mToggleViewPlaySoundOnConnection:Landroidx/appcompat/widget/SwitchCompat;

.field private mViewAdditionalPhoneImpactDetection:Landroid/widget/RelativeLayout;

.field private mViewEcoDriving:Landroid/widget/RelativeLayout;

.field private mViewNotification:Landroid/widget/RelativeLayout;

.field private mViewPlaySoundOnConnection:Landroid/widget/RelativeLayout;

.field private profileEco:Landroid/widget/RadioButton;

.field private profileNormal:Landroid/widget/RadioButton;

.field private profileSport:Landroid/widget/RadioButton;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mPlaySoundOnConnectionValue:Z

    .line 61
    iput-boolean v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mAdditionalPhoneImpactDetectionValue:Z

    .line 62
    iput-boolean v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mEcoDrivingValue:Z

    .line 63
    iput-boolean v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mNotificationEnableValue:Z

    return-void
.end method

.method static synthetic lambda$loadListeners$6(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$loadPrefs$0(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 163
    sget-object p1, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->CHAUFFEUR:Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->setProfilePref(Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;Z)V

    return-void
.end method

.method private synthetic lambda$loadPrefs$1(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 165
    sget-object p1, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->EXPERIENCED:Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->setProfilePref(Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;Z)V

    return-void
.end method

.method private synthetic lambda$loadPrefs$2(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 167
    sget-object p1, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->NEWBIE:Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->setProfilePref(Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;Z)V

    return-void
.end method

.method private loadListeners()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mViewPlaySoundOnConnection:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mViewAdditionalPhoneImpactDetection:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mViewEcoDriving:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mViewNotification:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen$$ExternalSyntheticLambda3;->INSTANCE:Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private loadPrefs()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 111
    :try_start_0
    iget-object v2, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "SOUND_ON_CONNECTION"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mPlaySoundOnConnectionValue:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Prefs of KEY PREFS_KEY_SOUND_ON_CONNECTION not found"

    .line 114
    invoke-static {v3, v2}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "ADDITIONAL_PHONE_IMPACT_DETECTION"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mAdditionalPhoneImpactDetectionValue:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Prefs of KEY PREFS_KEY_ADDITIONAL_PHONE_IMPACT_DETECTION not found"

    .line 121
    invoke-static {v3, v2}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "ECO_DRIVING_ACTIVATION"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mEcoDrivingValue:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Prefs of KEY PREFS_KEY_ECO_DRIVING_ACTIVATION not found"

    .line 128
    invoke-static {v3, v2}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    :goto_2
    :try_start_3
    iget-object v2, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "NOTIFICATION_ENABLE"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mNotificationEnableValue:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Prefs of KEY PREFS_KEY_NOTIFICATION not found"

    .line 135
    invoke-static {v3, v2}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 138
    iget-boolean v3, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mPlaySoundOnConnectionValue:Z

    .line 139
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    iget-boolean v3, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mAdditionalPhoneImpactDetectionValue:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "mPlaySoundOnConnectionValue: %s  mAdditionalPhoneImpactDetectionValue: %s"

    .line 138
    invoke-static {v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mToggleViewPlaySoundOnConnection:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v2, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mPlaySoundOnConnectionValue:Z

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 143
    iget-object v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mToggleViewPlaySoundOnConnection:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setClickable(Z)V

    .line 144
    iget-object v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mToggleViewAdditionalPhoneImpactDetection:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v2, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mAdditionalPhoneImpactDetectionValue:Z

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 145
    iget-object v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mToggleViewAdditionalPhoneImpactDetection:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setClickable(Z)V

    .line 146
    iget-object v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mToggleViewEcoDriving:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v2, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mEcoDrivingValue:Z

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 147
    iget-object v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mToggleViewEcoDriving:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setClickable(Z)V

    .line 148
    iget-object v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mToggleViewNotification:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v2, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mNotificationEnableValue:Z

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 149
    iget-object v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mToggleViewNotification:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setClickable(Z)V

    .line 169
    iget-object v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mProfileLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private savePrefs(Ljava/lang/String;Z)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 229
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 230
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setProfilePref(Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 220
    iget-object p2, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 221
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->getNumericType()I

    move-result v0

    const-string v1, "ECO_DRIVING_PROFILE"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 222
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 223
    iget-object p2, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->drivingStyleManager:Lcom/texa/care/eco_driving/DrivingStyleManager;

    invoke-virtual {p2, p1}, Lcom/texa/care/eco_driving/DrivingStyleManager;->setDrivingProfile(Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;)V

    .line 68
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;

    .line 69
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;->toggleButtonSoundOnConnection:Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mToggleViewPlaySoundOnConnection:Landroidx/appcompat/widget/SwitchCompat;

    .line 70
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;->buttonSoundOnConnection:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mViewPlaySoundOnConnection:Landroid/widget/RelativeLayout;

    .line 71
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;->toggleButtonAdditionalPhoneImpactDetection:Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mToggleViewAdditionalPhoneImpactDetection:Landroidx/appcompat/widget/SwitchCompat;

    .line 72
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;->buttonAdditionalPhoneImpactDetection:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mViewAdditionalPhoneImpactDetection:Landroid/widget/RelativeLayout;

    .line 73
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;->toggleButtonEcoDrivingActivation:Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mToggleViewEcoDriving:Landroidx/appcompat/widget/SwitchCompat;

    .line 74
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;->buttonEcoDrivingActivation:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mViewEcoDriving:Landroid/widget/RelativeLayout;

    .line 75
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;->radioEcoDrivingProfileEco:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->profileEco:Landroid/widget/RadioButton;

    .line 76
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;->radioEcoDrivingProfileNormal:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->profileNormal:Landroid/widget/RadioButton;

    .line 77
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;->radioEcoDrivingProfileSport:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->profileSport:Landroid/widget/RadioButton;

    .line 78
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;->buttonEcoDrivingProfile:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mProfileLayout:Landroid/widget/LinearLayout;

    .line 79
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;->toggleButtonEnableNotification:Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mToggleViewNotification:Landroidx/appcompat/widget/SwitchCompat;

    .line 80
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenGeneralSettingsPreferencesBinding;->buttonEnableNotification:Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mViewNotification:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 90
    sget-object v0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00ca

    return v0
.end method

.method public synthetic lambda$loadListeners$3$com-texa-careapp-app-settings-generalsettings-GeneralSettingsScreen(Landroid/view/View;)V
    .locals 2

    .line 179
    iget-boolean p1, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mPlaySoundOnConnectionValue:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mPlaySoundOnConnectionValue:Z

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 180
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Prefs PREFS_KEY_SOUND_ON_CONNECTION value: %s"

    invoke-static {p1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    iget-object p1, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mToggleViewPlaySoundOnConnection:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mPlaySoundOnConnectionValue:Z

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 182
    iget-boolean p1, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mPlaySoundOnConnectionValue:Z

    const-string v0, "SOUND_ON_CONNECTION"

    invoke-direct {p0, v0, p1}, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->savePrefs(Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$loadListeners$4$com-texa-careapp-app-settings-generalsettings-GeneralSettingsScreen(Landroid/view/View;)V
    .locals 2

    .line 186
    iget-boolean p1, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mAdditionalPhoneImpactDetectionValue:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mAdditionalPhoneImpactDetectionValue:Z

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 187
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Prefs PREFS_KEY_ADDITIONAL_PHONE_IMPACT_DETECTION value: %s"

    invoke-static {p1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    iget-object p1, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mToggleViewAdditionalPhoneImpactDetection:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mAdditionalPhoneImpactDetectionValue:Z

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 189
    iget-boolean p1, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mAdditionalPhoneImpactDetectionValue:Z

    const-string v0, "ADDITIONAL_PHONE_IMPACT_DETECTION"

    invoke-direct {p0, v0, p1}, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->savePrefs(Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$loadListeners$5$com-texa-careapp-app-settings-generalsettings-GeneralSettingsScreen(Landroid/view/View;)V
    .locals 2

    .line 194
    iget-boolean p1, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mEcoDrivingValue:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mEcoDrivingValue:Z

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 195
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Prefs PREFS_KEY_ECO_DRIVING_ACTIVATION value: %s"

    invoke-static {p1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    iget-object p1, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mToggleViewEcoDriving:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mEcoDrivingValue:Z

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 197
    iget-boolean p1, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mEcoDrivingValue:Z

    const-string v0, "ECO_DRIVING_ACTIVATION"

    invoke-direct {p0, v0, p1}, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->savePrefs(Ljava/lang/String;Z)V

    .line 199
    iget-object p1, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->drivingStyleManager:Lcom/texa/care/eco_driving/DrivingStyleManager;

    if-eqz p1, :cond_1

    .line 200
    iget-boolean v0, p0, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->mEcoDrivingValue:Z

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/DrivingStyleManager;->start()V

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/DrivingStyleManager;->stop()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 102
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 95
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    .line 96
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->loadPrefs()V

    .line 97
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;->loadListeners()V

    return-void
.end method

.class public Lcom/texa/careapp/app/permission/PermissionActivity;
.super Lcom/texa/careapp/base/BaseActivity;
.source "PermissionActivity.java"


# instance fields
.field private mAdapter:Lcom/texa/careapp/app/permission/PermissionAdapter;

.field protected mCareApplication:Lcom/texa/careapp/CareApplication;

.field private mPermissionRequest:Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

.field protected mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mSkipBtn:Landroid/widget/TextView;

.field private mViewPager:Lcom/texa/careapp/views/NoSwipeableViewPager;

.field private permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/permission/PermissionModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/texa/careapp/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/permission/PermissionActivity;)Lcom/texa/careapp/app/permission/PermissionAdapter;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/texa/careapp/app/permission/PermissionActivity;->mAdapter:Lcom/texa/careapp/app/permission/PermissionAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/careapp/app/permission/PermissionActivity;)Lcom/texa/careapp/views/NoSwipeableViewPager;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/texa/careapp/app/permission/PermissionActivity;->mViewPager:Lcom/texa/careapp/views/NoSwipeableViewPager;

    return-object p0
.end method

.method public static buildIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/app/permission/PermissionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000000

    .line 53
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private getPermissions()Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/permission/PermissionModel;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 132
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_0

    sget-object v2, Lcom/texa/careapp/utils/permission/CorePermission;->USE_NEARBY_DEVICES:[Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/texa/careapp/utils/Utils;->isPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 133
    new-instance v2, Lcom/texa/careapp/app/permission/PermissionModel;

    const v4, 0x7f110b5b

    const v5, 0x7f110b5a

    const v6, 0x7f110b63

    const v7, 0x7f080069

    sget-object v8, Lcom/texa/careapp/utils/permission/CorePermission;->USE_NEARBY_DEVICES:[Ljava/lang/String;

    const/4 v9, 0x0

    const v10, 0x7f110b66

    const/4 v11, 0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Lcom/texa/careapp/app/permission/PermissionModel;-><init>(IIII[Ljava/lang/String;ZIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_0
    sget-object v2, Lcom/texa/careapp/utils/permission/CorePermission;->USE_ACCESS_LOCATION:[Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/texa/careapp/utils/Utils;->isPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 137
    new-instance v2, Lcom/texa/careapp/app/permission/PermissionModel;

    const v4, 0x7f110b6a

    const v5, 0x7f110b59

    const v6, 0x7f110b64

    const v7, 0x7f080172

    sget-object v8, Lcom/texa/careapp/utils/permission/CorePermission;->USE_ACCESS_LOCATION:[Ljava/lang/String;

    const/4 v9, 0x0

    const v10, 0x7f110b66

    const/4 v11, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Lcom/texa/careapp/app/permission/PermissionModel;-><init>(IIII[Ljava/lang/String;ZIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_2

    sget-object v2, Lcom/texa/careapp/utils/permission/CorePermission;->USE_ACCESS_BACKGROUND_LOCATION:[Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/texa/careapp/utils/Utils;->isPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 141
    new-instance v2, Lcom/texa/careapp/app/permission/PermissionModel;

    const v5, 0x7f110b6a

    const v6, 0x7f110b59

    const v7, 0x7f110b64

    const v8, 0x7f080172

    sget-object v9, Lcom/texa/careapp/utils/permission/CorePermission;->USE_ACCESS_BACKGROUND_LOCATION:[Ljava/lang/String;

    const/4 v10, 0x0

    const v11, 0x7f110b66

    const/4 v12, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Lcom/texa/careapp/app/permission/PermissionModel;-><init>(IIII[Ljava/lang/String;ZIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_2
    sget-object v2, Lcom/texa/careapp/utils/permission/CorePermission;->USE_PHONE:[Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/texa/careapp/utils/Utils;->isPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 146
    new-instance v2, Lcom/texa/careapp/app/permission/PermissionModel;

    const v5, 0x7f110b72

    const v6, 0x7f110b70

    const v7, 0x7f110b6f

    const v8, 0x7f080175

    sget-object v9, Lcom/texa/careapp/utils/permission/CorePermission;->USE_PHONE:[Ljava/lang/String;

    const/4 v10, 0x0

    const v11, 0x7f110b71

    const/4 v12, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Lcom/texa/careapp/app/permission/PermissionModel;-><init>(IIII[Ljava/lang/String;ZIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v2, v4, :cond_4

    invoke-static/range {p0 .. p0}, Lcom/texa/careapp/utils/Utils;->isAlreadyIgnoringBatteryOptimization(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 150
    new-instance v2, Lcom/texa/careapp/app/permission/PermissionModel;

    const v5, 0x7f110b75

    const v6, 0x7f110b74

    const v7, 0x7f110b73

    const v8, 0x7f080065

    const-string v4, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const v11, 0x7f110b71

    const/4 v12, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Lcom/texa/careapp/app/permission/PermissionModel;-><init>(IIII[Ljava/lang/String;ZIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_5

    invoke-static/range {p0 .. p0}, Lcom/texa/careapp/utils/Utils;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 155
    new-instance v2, Lcom/texa/careapp/app/permission/PermissionModel;

    const v4, 0x7f110b75

    const v5, 0x7f110b74

    const v6, 0x7f110b73

    const v7, 0x7f080065

    sget-object v8, Lcom/texa/careapp/utils/permission/CorePermission;->DRAW_OVERLAY:[Ljava/lang/String;

    const/4 v9, 0x0

    const v10, 0x7f110b71

    const/4 v11, 0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Lcom/texa/careapp/app/permission/PermissionModel;-><init>(IIII[Ljava/lang/String;ZIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_5
    new-instance v2, Lcom/texa/careapp/app/permission/PermissionModel;

    const v13, 0x7f110b5f

    const v14, 0x7f110b5d

    const v15, 0x7f110b5c

    const v16, 0x7f080171

    const/16 v17, 0x0

    const/16 v18, 0x1

    const v19, 0x7f110b5e

    const/16 v20, 0x0

    move-object v12, v2

    invoke-direct/range {v12 .. v20}, Lcom/texa/careapp/app/permission/PermissionModel;-><init>(IIII[Ljava/lang/String;ZIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private proceed(Z)V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/texa/careapp/app/permission/PermissionActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ADDITIONAL_PHONE_IMPACT_DETECTION"

    .line 185
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 186
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 188
    iget-object p1, p0, Lcom/texa/careapp/app/permission/PermissionActivity;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/texa/careapp/app/permission/PermissionActivity;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->shouldStartOutOfTheBox(Landroid/content/SharedPreferences;Lcom/texa/careapp/model/DongleDataManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 190
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/permission/PermissionActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 192
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/texa/careapp/app/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/permission/PermissionActivity;->startActivity(Landroid/content/Intent;)V

    .line 194
    :goto_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/permission/PermissionActivity;->finish()V

    return-void
.end method

.method private skipPermission()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/texa/careapp/app/permission/PermissionActivity;->permissions:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/permission/PermissionActivity;->mViewPager:Lcom/texa/careapp/views/NoSwipeableViewPager;

    invoke-virtual {v1}, Lcom/texa/careapp/views/NoSwipeableViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/permission/PermissionModel;

    invoke-virtual {v0}, Lcom/texa/careapp/app/permission/PermissionModel;->getPermissionType()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/texa/careapp/app/permission/PermissionActivity;->mViewPager:Lcom/texa/careapp/views/NoSwipeableViewPager;

    invoke-virtual {v0}, Lcom/texa/careapp/views/NoSwipeableViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/NoSwipeableViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 200
    invoke-direct {p0, v0}, Lcom/texa/careapp/app/permission/PermissionActivity;->proceed(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$com-texa-careapp-app-permission-PermissionActivity(Landroid/view/View;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/texa/careapp/app/permission/PermissionActivity;->skipPermission()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 206
    invoke-super {p0, p1, p2, p3}, Lcom/texa/careapp/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x7

    if-ne p2, p1, :cond_0

    .line 207
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x17

    if-lt p2, p3, :cond_1

    invoke-static {p0}, Lcom/texa/careapp/utils/Utils;->isAlreadyIgnoringBatteryOptimization(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    const/4 p2, 0x6

    if-ne p2, p1, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1d

    if-lt p1, p2, :cond_1

    .line 208
    invoke-static {p0}, Lcom/texa/careapp/utils/Utils;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 209
    :cond_1
    invoke-direct {p0}, Lcom/texa/careapp/app/permission/PermissionActivity;->skipPermission()V

    :cond_2
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 68
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0032

    .line 69
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ActivityPermissionBinding;

    .line 70
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityPermissionBinding;->activityPermissionViewPager:Lcom/texa/careapp/views/NoSwipeableViewPager;

    iput-object v0, p0, Lcom/texa/careapp/app/permission/PermissionActivity;->mViewPager:Lcom/texa/careapp/views/NoSwipeableViewPager;

    .line 71
    iget-object p1, p1, Lcom/texa/careapp/databinding/ActivityPermissionBinding;->activityPermissionBtnSkip:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/texa/careapp/app/permission/PermissionActivity;->mSkipBtn:Landroid/widget/TextView;

    .line 72
    new-instance v0, Lcom/texa/careapp/app/permission/PermissionActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/permission/PermissionActivity$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/permission/PermissionActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {p0}, Lcom/texa/careapp/app/permission/PermissionActivity;->getCareApplication()Lcom/texa/careapp/CareApplication;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/permission/PermissionActivity;->mCareApplication:Lcom/texa/careapp/CareApplication;

    .line 74
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/permission/PermissionActivity;)V

    .line 76
    invoke-direct {p0}, Lcom/texa/careapp/app/permission/PermissionActivity;->getPermissions()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/permission/PermissionActivity;->permissions:Ljava/util/List;

    .line 78
    iget-object p1, p0, Lcom/texa/careapp/app/permission/PermissionActivity;->mViewPager:Lcom/texa/careapp/views/NoSwipeableViewPager;

    new-instance v0, Lcom/texa/careapp/app/permission/PermissionActivity$1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/permission/PermissionActivity$1;-><init>(Lcom/texa/careapp/app/permission/PermissionActivity;)V

    invoke-virtual {p1, v0}, Lcom/texa/careapp/views/NoSwipeableViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 94
    new-instance p1, Lcom/texa/careapp/app/permission/PermissionAdapter;

    iget-object v0, p0, Lcom/texa/careapp/app/permission/PermissionActivity;->mCareApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/permission/PermissionActivity;->permissions:Ljava/util/List;

    invoke-direct {p1, p0, v0, v1}, Lcom/texa/careapp/app/permission/PermissionAdapter;-><init>(Lcom/texa/careapp/app/permission/PermissionActivity;Lcom/texa/careapp/CareApplication$ApplicationComponent;Ljava/util/List;)V

    iput-object p1, p0, Lcom/texa/careapp/app/permission/PermissionActivity;->mAdapter:Lcom/texa/careapp/app/permission/PermissionAdapter;

    .line 95
    iget-object v0, p0, Lcom/texa/careapp/app/permission/PermissionActivity;->mViewPager:Lcom/texa/careapp/views/NoSwipeableViewPager;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/views/NoSwipeableViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 96
    iget-object p1, p0, Lcom/texa/careapp/app/permission/PermissionActivity;->mAdapter:Lcom/texa/careapp/app/permission/PermissionAdapter;

    invoke-virtual {p1}, Lcom/texa/careapp/app/permission/PermissionAdapter;->getCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 97
    iget-object p1, p0, Lcom/texa/careapp/app/permission/PermissionActivity;->mSkipBtn:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/texa/careapp/app/permission/PermissionActivity;->mAdapter:Lcom/texa/careapp/app/permission/PermissionAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/permission/PermissionAdapter;->getSkipTextRes(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 98
    iget-object p1, p0, Lcom/texa/careapp/app/permission/PermissionActivity;->mSkipBtn:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/texa/careapp/app/permission/PermissionActivity;->mAdapter:Lcom/texa/careapp/app/permission/PermissionAdapter;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/permission/PermissionAdapter;->getIsMandatory(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    const-string p1, "power"

    .line 100
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/permission/PermissionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 101
    invoke-static {p0}, Lcom/texa/care/navigation/Navigator;->getInstanceFor(Landroid/app/Activity;)Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    const v0, 0x7f0a00d7

    .line 102
    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->setContainerResId(I)V

    .line 103
    new-instance v0, Lcom/texa/careapp/app/dashboard/PowerSaveScreenDialog;

    iget-object v1, p0, Lcom/texa/careapp/app/permission/PermissionActivity;->mCareApplication:Lcom/texa/careapp/CareApplication;

    invoke-direct {v0, v1}, Lcom/texa/careapp/app/dashboard/PowerSaveScreenDialog;-><init>(Lcom/texa/careapp/CareApplication;)V

    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 172
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 167
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/texa/careapp/app/permission/PermissionActivity;->mPermissionRequest:Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0, p1, p2, p3}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 180
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/texa/careapp/base/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public requestPermission([Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 109
    invoke-static {p0}, Lcom/texa/careapp/utils/permission/CorePermission;->with(Landroidx/appcompat/app/AppCompatActivity;)Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;->request([Ljava/lang/String;)Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    move-result-object p1

    new-instance v1, Lcom/texa/careapp/app/permission/PermissionActivity$3;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/permission/PermissionActivity$3;-><init>(Lcom/texa/careapp/app/permission/PermissionActivity;)V

    invoke-virtual {p1, v1}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->onAllGranted(Lcom/texa/careapp/utils/permission/Func;)Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    move-result-object p1

    new-instance v1, Lcom/texa/careapp/app/permission/PermissionActivity$2;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/permission/PermissionActivity$2;-><init>(Lcom/texa/careapp/app/permission/PermissionActivity;)V

    .line 115
    invoke-virtual {p1, v1}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->onAnyDenied(Lcom/texa/careapp/utils/permission/Func;)Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    move-result-object p1

    .line 120
    invoke-virtual {p1, v0}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->ask(I)Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/permission/PermissionActivity;->mPermissionRequest:Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    goto :goto_0

    .line 121
    :cond_0
    invoke-direct {p0, v0}, Lcom/texa/careapp/app/permission/PermissionActivity;->proceed(Z)V

    :goto_0
    return-void
.end method

.method protected requiresAuthentication()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.class public Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;
.super Lcom/texa/careapp/base/BaseActivity;
.source "EcoDrivingTutorialActivity.java"


# static fields
.field private static final HAVE_TO_OPEN_NEW_ACTIVITY:Ljava/lang/String; = "HAVE_TO_OPEN_NEW_ACTIVITY"


# instance fields
.field private adapter:Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialAdapter;

.field private mButton:Landroid/widget/TextView;

.field protected mCareApplication:Lcom/texa/careapp/CareApplication;

.field protected mNavigator:Lcom/texa/care/navigation/Navigator;

.field protected mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/texa/careapp/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;)Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialAdapter;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;->adapter:Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;->mButton:Landroid/widget/TextView;

    return-object p0
.end method

.method public static buildIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x1

    .line 50
    invoke-static {p0, v0}, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;->buildIntent(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static buildIntent(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 2

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "HAVE_TO_OPEN_NEW_ACTIVITY"

    .line 55
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 56
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private clickClose()V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;->adapter:Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialAdapter;

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_3

    const-string v0, "ECO_DRIVING_TUTORIAL"

    .line 120
    invoke-virtual {p0, v0, v2}, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;->savePrefs(Ljava/lang/String;Z)V

    .line 121
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v0

    const-string v1, "privacy"

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/UserModel;->getTermAcepted(Ljava/lang/String;)Lcom/texa/careapp/model/TermsModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    iget v0, v0, Lcom/texa/careapp/model/TermsModel;->version:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "HAVE_TO_OPEN_NEW_ACTIVITY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    invoke-static {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 123
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;->startActivity(Landroid/content/Intent;)V

    .line 127
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;->finish()V

    goto :goto_2

    .line 129
    :cond_3
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :goto_2
    return-void
.end method

.method private getTutorialItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/tutorial/TutorialItem;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    new-instance v1, Lcom/texa/careapp/app/ecodriving/tutorial/TutorialItem;

    const v2, 0x7f1109b8

    const v3, 0x7f1109b4

    const v4, 0x7f080191

    invoke-direct {v1, v2, v3, v4}, Lcom/texa/careapp/app/ecodriving/tutorial/TutorialItem;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v1, Lcom/texa/careapp/app/ecodriving/tutorial/TutorialItem;

    const v2, 0x7f1109b9

    const v3, 0x7f1109b5

    const v4, 0x7f080192

    invoke-direct {v1, v2, v3, v4}, Lcom/texa/careapp/app/ecodriving/tutorial/TutorialItem;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v1, Lcom/texa/careapp/app/ecodriving/tutorial/TutorialItem;

    const v2, 0x7f1109ba

    const v3, 0x7f1109b6

    const v4, 0x7f080193

    invoke-direct {v1, v2, v3, v4}, Lcom/texa/careapp/app/ecodriving/tutorial/TutorialItem;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$com-texa-careapp-app-ecodriving-tutorial-EcoDrivingTutorialActivity(Landroid/view/View;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;->clickClose()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 62
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0029

    .line 63
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ActivityEcoDrivingTutorialBinding;

    .line 64
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityEcoDrivingTutorialBinding;->activityEcoDrivingTutorialPager:Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 65
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityEcoDrivingTutorialBinding;->activityEcoDrivingTutorialBtn:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;->mButton:Landroid/widget/TextView;

    .line 66
    new-instance v1, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;->getCareApplication()Lcom/texa/careapp/CareApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;->mCareApplication:Lcom/texa/careapp/CareApplication;

    .line 68
    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;)V

    .line 70
    invoke-static {p0}, Lcom/texa/care/navigation/Navigator;->getInstanceFor(Landroid/app/Activity;)Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    .line 72
    new-instance v0, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialAdapter;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;->mCareApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {v1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v1

    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;->getTutorialItems()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialAdapter;-><init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;Ljava/util/List;)V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;->adapter:Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialAdapter;

    .line 73
    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 74
    iget-object p1, p1, Lcom/texa/careapp/databinding/ActivityEcoDrivingTutorialBinding;->activityEcoDrivingTutorialIndicator:Lcom/texa/careapp/views/CirclePageIndicator;

    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/views/CirclePageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 76
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity$1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity$1;-><init>(Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method protected requiresAuthentication()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected savePrefs(Ljava/lang/String;Z)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 134
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 135
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

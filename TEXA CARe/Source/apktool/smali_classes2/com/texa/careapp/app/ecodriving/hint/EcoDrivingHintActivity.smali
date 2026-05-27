.class public Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity;
.super Lcom/texa/careapp/base/BaseActivity;
.source "EcoDrivingHintActivity.java"


# static fields
.field private static final ECO_DRIVING_TIPS_TYPE:Ljava/lang/String; = "ECO_DRIVING_TIPS_TYPE"


# instance fields
.field private adapter:Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter;

.field private btnNext:Landroid/widget/TextView;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/texa/careapp/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity;)Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity;->adapter:Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity;)Landroid/widget/TextView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity;->btnNext:Landroid/widget/TextView;

    return-object p0
.end method

.method public static buildIntent(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000000

    .line 36
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p0, "ECO_DRIVING_TIPS_TYPE"

    .line 37
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method private clickNext()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity;->adapter:Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter;

    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity;->finish()V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$com-texa-careapp-app-ecodriving-hint-EcoDrivingHintActivity(Landroid/view/View;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity;->clickNext()V

    return-void
.end method

.method public synthetic lambda$onCreate$1$com-texa-careapp-app-ecodriving-hint-EcoDrivingHintActivity(Landroid/view/View;)V
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 43
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0028

    .line 44
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ActivityEcoDrivingHintBinding;

    .line 45
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityEcoDrivingHintBinding;->activityEcoDrivingHintPager:Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 46
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityEcoDrivingHintBinding;->activityEcoDrivingHintIndicator:Lcom/texa/careapp/views/CirclePageIndicator;

    .line 47
    iget-object v1, p1, Lcom/texa/careapp/databinding/ActivityEcoDrivingHintBinding;->activityEcoDrivingHintBtnNext:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity;->btnNext:Landroid/widget/TextView;

    .line 48
    new-instance v2, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object p1, p1, Lcom/texa/careapp/databinding/ActivityEcoDrivingHintBinding;->activityEcoDrivingHintClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity;->getCareApplication()Lcom/texa/careapp/CareApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity;)V

    .line 53
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "ECO_DRIVING_TIPS_TYPE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 55
    new-instance v1, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity;->getCareApplication()Lcom/texa/careapp/CareApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v2

    invoke-static {p1}, Lcom/texa/careapp/app/ecodriving/model/EcoDrivingEventsDataManager;->getTips(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter;-><init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;Ljava/util/List;)V

    iput-object v1, p0, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity;->adapter:Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter;

    .line 56
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 57
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/views/CirclePageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 59
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity$1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity$1;-><init>(Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 81
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 82
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity;->adapter:Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter;

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter;->getCount()I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity;->btnNext:Landroid/widget/TextView;

    const v0, 0x7f11099b

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method protected requiresAuthentication()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

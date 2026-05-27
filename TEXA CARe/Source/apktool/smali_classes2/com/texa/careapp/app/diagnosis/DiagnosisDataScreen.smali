.class public Lcom/texa/careapp/app/diagnosis/DiagnosisDataScreen;
.super Lcom/texa/care/navigation/Screen;
.source "DiagnosisDataScreen.java"


# instance fields
.field private mComponent:Lcom/texa/careapp/CareApplication$ApplicationComponent;

.field private mTabIndex:I


# direct methods
.method public constructor <init>(Lcom/texa/careapp/CareApplication;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisDataScreen;->mTabIndex:I

    .line 31
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisDataScreen;->mComponent:Lcom/texa/careapp/CareApplication$ApplicationComponent;

    .line 32
    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/diagnosis/DiagnosisDataScreen;)V

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/CareApplication;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/diagnosis/DiagnosisDataScreen;-><init>(Lcom/texa/careapp/CareApplication;)V

    .line 27
    iput p2, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisDataScreen;->mTabIndex:I

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 5

    .line 37
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenDiagnosisDataBinding;

    .line 39
    new-instance v0, Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;

    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisDataScreen;->mComponent:Lcom/texa/careapp/CareApplication$ApplicationComponent;

    invoke-direct {v0, v1}, Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;-><init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;)V

    .line 40
    iget-object v1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisDataBinding;->screenDiagnosisDataViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 41
    iget-object v1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisDataBinding;->screenDiagnosisDataViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 43
    iget-object v1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisDataBinding;->screenDiagnosisDataSlidingTabs:Lcom/texa/careapp/views/SlidingTabLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/texa/careapp/views/SlidingTabLayout;->setDistributeEvenly(Z)V

    .line 44
    iget-object v1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisDataBinding;->screenDiagnosisDataSlidingTabs:Lcom/texa/careapp/views/SlidingTabLayout;

    iget-object v3, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisDataBinding;->screenDiagnosisDataViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v3}, Lcom/texa/careapp/views/SlidingTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 45
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDiagnosisDataBinding;->screenDiagnosisDataSlidingTabs:Lcom/texa/careapp/views/SlidingTabLayout;

    new-array v1, v2, [I

    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisDataScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060019

    invoke-static {v3, v4}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v1, v4

    invoke-virtual {p1, v1}, Lcom/texa/careapp/views/SlidingTabLayout;->setSelectedIndicatorColors([I)V

    .line 47
    iget p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisDataScreen;->mTabIndex:I

    if-ne p1, v2, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisDataScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_OPENED_PARAMETERS_SCREEN:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 51
    :cond_0
    iget p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisDataScreen;->mTabIndex:I

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;->goToPage(I)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "diagnosisData"

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00b3

    return v0
.end method

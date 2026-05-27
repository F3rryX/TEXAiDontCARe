.class public Lcom/texa/careapp/app/walkthrough/WalkthroughActivity;
.super Lcom/texa/careapp/base/BaseActivity;
.source "WalkthroughActivity.java"


# static fields
.field protected static final HAS_SHOT_PREFS_KEY:Ljava/lang/String; = "walkthrough-activity-has-shot"


# instance fields
.field private adapter:Lcom/texa/careapp/app/walkthrough/WalkThroughAdapter;

.field protected mPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/texa/careapp/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static buildIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/app/walkthrough/WalkthroughActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000000

    .line 43
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private clickNext()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivity;->adapter:Lcom/texa/careapp/app/walkthrough/WalkThroughAdapter;

    invoke-virtual {v1}, Lcom/texa/careapp/app/walkthrough/WalkThroughAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivity;->setHasShot()V

    .line 132
    invoke-static {p0}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivity;->startActivity(Landroid/content/Intent;)V

    .line 133
    invoke-virtual {p0}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivity;->finish()V

    :goto_0
    return-void
.end method

.method private clickSkip()V
    .locals 1

    .line 138
    invoke-virtual {p0}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivity;->setHasShot()V

    .line 139
    invoke-static {p0}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private getWalkthrough()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/walkthrough/WalkthroughModel;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    new-instance v1, Lcom/texa/careapp/app/walkthrough/WalkthroughModel;

    const v2, 0x7f110d4a

    const v3, 0x7f110d44

    invoke-direct {v1, v2, v3}, Lcom/texa/careapp/app/walkthrough/WalkthroughModel;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v1, Lcom/texa/careapp/app/walkthrough/WalkthroughModel;

    const v2, 0x7f110d4b

    const v3, 0x7f110d45

    invoke-direct {v1, v2, v3}, Lcom/texa/careapp/app/walkthrough/WalkthroughModel;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v1, Lcom/texa/careapp/app/walkthrough/WalkthroughModel;

    const v2, 0x7f110d4c

    const v3, 0x7f110d46

    invoke-direct {v1, v2, v3}, Lcom/texa/careapp/app/walkthrough/WalkthroughModel;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v1, Lcom/texa/careapp/app/walkthrough/WalkthroughModel;

    const v2, 0x7f110d4d

    const v3, 0x7f110d47

    invoke-direct {v1, v2, v3}, Lcom/texa/careapp/app/walkthrough/WalkthroughModel;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static hasShot(Landroid/content/SharedPreferences;)Z
    .locals 2

    const-string/jumbo v0, "walkthrough-activity-has-shot"

    const/4 v1, 0x0

    .line 48
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "preventShowVideoControls"

    .line 65
    invoke-static {v0, p0}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "preventShowVideoControls"

    .line 66
    invoke-static {v0, p0}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onCreate$4(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 91
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    .line 93
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V

    .line 94
    new-instance p0, Landroid/media/MediaPlayer;

    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    :cond_0
    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    const/4 v0, 0x1

    .line 97
    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 98
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$2$com-texa-careapp-app-walkthrough-WalkthroughActivity(Landroid/view/View;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivity;->clickNext()V

    return-void
.end method

.method public synthetic lambda$onCreate$3$com-texa-careapp-app-walkthrough-WalkthroughActivity(Landroid/view/View;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivity;->clickSkip()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 60
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0043

    .line 61
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ActivityWalkthroughBinding;

    .line 62
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityWalkthroughBinding;->activityWalkthroughVideoView:Landroid/widget/VideoView;

    .line 63
    iget-object v1, p1, Lcom/texa/careapp/databinding/ActivityWalkthroughBinding;->activityWalkthroughPager:Landroidx/viewpager/widget/ViewPager;

    iput-object v1, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 64
    iget-object v1, p1, Lcom/texa/careapp/databinding/ActivityWalkthroughBinding;->activityWalkthroughIndicator:Lcom/texa/careapp/views/CirclePageIndicator;

    .line 65
    iget-object v2, p1, Lcom/texa/careapp/databinding/ActivityWalkthroughBinding;->activityWalkthroughClick:Landroid/view/View;

    sget-object v3, Lcom/texa/careapp/app/walkthrough/WalkthroughActivity$$ExternalSyntheticLambda3;->INSTANCE:Lcom/texa/careapp/app/walkthrough/WalkthroughActivity$$ExternalSyntheticLambda3;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v2, p1, Lcom/texa/careapp/databinding/ActivityWalkthroughBinding;->activityWalkthroughBottomLayContent:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/texa/careapp/app/walkthrough/WalkthroughActivity$$ExternalSyntheticLambda4;->INSTANCE:Lcom/texa/careapp/app/walkthrough/WalkthroughActivity$$ExternalSyntheticLambda4;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v2, p1, Lcom/texa/careapp/databinding/ActivityWalkthroughBinding;->activityWalkthroughBtnNext:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/texa/careapp/app/walkthrough/WalkthroughActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivity$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/walkthrough/WalkthroughActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object p1, p1, Lcom/texa/careapp/databinding/ActivityWalkthroughBinding;->activityWalkthroughBtnSkip:Landroid/widget/TextView;

    new-instance v2, Lcom/texa/careapp/app/walkthrough/WalkthroughActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivity$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/walkthrough/WalkthroughActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {p0}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivity;->getCareApplication()Lcom/texa/careapp/CareApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/walkthrough/WalkthroughActivity;)V

    .line 72
    invoke-virtual {p0}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/Window;->setFormat(I)V

    .line 74
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 75
    invoke-virtual {p0}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 76
    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 77
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 79
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f100017

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 83
    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 85
    new-instance p1, Landroid/widget/MediaController;

    invoke-direct {p1, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 86
    invoke-virtual {p1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 87
    invoke-virtual {p1, v0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 88
    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 90
    sget-object p1, Lcom/texa/careapp/app/walkthrough/WalkthroughActivity$$ExternalSyntheticLambda0;->INSTANCE:Lcom/texa/careapp/app/walkthrough/WalkthroughActivity$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 101
    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 103
    new-instance p1, Lcom/texa/careapp/app/walkthrough/WalkThroughAdapter;

    invoke-virtual {p0}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivity;->getCareApplication()Lcom/texa/careapp/CareApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-direct {p0}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivity;->getWalkthrough()Ljava/util/List;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lcom/texa/careapp/app/walkthrough/WalkThroughAdapter;-><init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;Ljava/util/List;)V

    iput-object p1, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivity;->adapter:Lcom/texa/careapp/app/walkthrough/WalkThroughAdapter;

    .line 104
    iget-object v0, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 105
    iget-object p1, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, p1}, Lcom/texa/careapp/views/CirclePageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method

.method protected requiresAuthentication()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected setHasShot()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "walkthrough-activity-has-shot"

    const/4 v2, 0x1

    .line 122
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

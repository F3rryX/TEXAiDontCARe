.class public abstract Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;
.super Lcom/texa/care/navigation/Screen;
.source "AcceptationTermsScreen.java"


# static fields
.field private static final DELAY_SCROLL:I = 0xa

.field private static final TAG:Ljava/lang/String; = "AcceptationTermsScreen"


# instance fields
.field private activeButtonListenerForAcceptTos:Landroid/view/View$OnClickListener;

.field private inactiveButtonListener:Landroid/view/View$OnClickListener;

.field private loadTos:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mProgressBar:Landroid/widget/ProgressBar;

.field protected mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private scrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private tosButton:Landroid/widget/RelativeLayout;

.field private tosButtonDescription:Landroid/widget/TextView;

.field private tosButtonImage:Landroid/widget/ImageView;

.field private tosHasBeanRead:Z

.field private tosWebView:Lcom/texa/careapp/views/ObservableWebView;

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 67
    new-instance v0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;)V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->inactiveButtonListener:Landroid/view/View$OnClickListener;

    .line 68
    new-instance v0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;)V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->activeButtonListenerForAcceptTos:Landroid/view/View$OnClickListener;

    const-string v0, "&lang"

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->url:Ljava/lang/String;

    goto :goto_0

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->getLangUrlParam()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->url:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->hideProgressBar()V

    return-void
.end method

.method private enableTosButton()V
    .locals 4

    .line 132
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->tosButton:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080076

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 134
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->tosButtonImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->tosButtonDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->setButtonListener()V

    return-void
.end method

.method private getLangUrlParam()Ljava/lang/String;
    .locals 3

    .line 79
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, "-"

    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&lang="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private goDownToWebView()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, " click"

    .line 148
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->tosWebView:Lcom/texa/careapp/views/ObservableWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/ObservableWebView;->pageDown(Z)Z

    return-void
.end method

.method private hideProgressBar()V
    .locals 3

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error dismiss progress"

    .line 197
    invoke-static {v0, v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private setButtonListener()V
    .locals 2

    .line 140
    iget-boolean v0, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->tosHasBeanRead:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->tosButton:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->activeButtonListenerForAcceptTos:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->tosButton:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->inactiveButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private setScrollChangedCallback()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->tosWebView:Lcom/texa/careapp/views/ObservableWebView;

    new-instance v1, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;)V

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/ObservableWebView;->setOnScrollChangedCallback(Lcom/texa/careapp/views/ObservableWebView$OnScrollChangedCallback;)V

    return-void
.end method

.method private setWebViewClient()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->tosWebView:Lcom/texa/careapp/views/ObservableWebView;

    new-instance v1, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen$1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen$1;-><init>(Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;)V

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/ObservableWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method


# virtual methods
.method public abstract acceptedCondition()V
.end method

.method public afterViewInjection(Landroid/view/View;)V
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;)V

    .line 90
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenTermOfConditionsServicesBinding;

    .line 91
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenTermOfConditionsServicesBinding;->tosButton:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->tosButton:Landroid/widget/RelativeLayout;

    .line 92
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenTermOfConditionsServicesBinding;->tosScrollView:Lcom/texa/careapp/views/ObservableWebView;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->tosWebView:Lcom/texa/careapp/views/ObservableWebView;

    .line 93
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenTermOfConditionsServicesBinding;->tosButtonImage:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->tosButtonImage:Landroid/widget/ImageView;

    .line 94
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenTermOfConditionsServicesBinding;->tosButtonDescription:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->tosButtonDescription:Landroid/widget/TextView;

    .line 95
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenTermOfConditionsServicesBinding;->progressBarFragmentTermOfConditions:Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->mProgressBar:Landroid/widget/ProgressBar;

    .line 96
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->setWebViewClient()V

    .line 97
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->tosWebView:Lcom/texa/careapp/views/ObservableWebView;

    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/views/ObservableWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public createProgressDialogScreen()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/events/ShowProgressEvent;

    invoke-direct {v1}, Lcom/texa/careapp/app/events/ShowProgressEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public dismissProgressDialogScreen()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/events/CancelProgressEvent;

    invoke-direct {v1}, Lcom/texa/careapp/app/events/CancelProgressEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 107
    sget-object v0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00e7

    return v0
.end method

.method public synthetic lambda$new$0$com-texa-careapp-app-ecodriving-AcceptationTermsScreen(Landroid/view/View;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->goDownToWebView()V

    return-void
.end method

.method public synthetic lambda$new$1$com-texa-careapp-app-ecodriving-AcceptationTermsScreen(Landroid/view/View;)V
    .locals 0

    .line 68
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->acceptedCondition()V

    return-void
.end method

.method public synthetic lambda$setScrollChangedCallback$2$com-texa-careapp-app-ecodriving-AcceptationTermsScreen(IIII)V
    .locals 0

    if-eq p2, p4, :cond_0

    .line 158
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->tosWebView:Lcom/texa/careapp/views/ObservableWebView;

    invoke-virtual {p1}, Lcom/texa/careapp/views/ObservableWebView;->getContentHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p2

    .line 159
    iget-object p2, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->tosWebView:Lcom/texa/careapp/views/ObservableWebView;

    invoke-virtual {p2}, Lcom/texa/careapp/views/ObservableWebView;->getScrollY()I

    move-result p2

    iget-object p3, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->tosWebView:Lcom/texa/careapp/views/ObservableWebView;

    invoke-virtual {p3}, Lcom/texa/careapp/views/ObservableWebView;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p2, p3

    .line 161
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Height->"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p4, " getScrollY()->"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    new-array p4, p4, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    int-to-float p2, p2

    const/high16 p3, 0x41200000    # 10.0f

    sub-float/2addr p1, p3

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    .line 163
    iget-boolean p1, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->tosHasBeanRead:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 164
    iput-boolean p1, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->tosHasBeanRead:Z

    .line 165
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->enableTosButton()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 120
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onPause()V

    .line 122
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->tosWebView:Lcom/texa/careapp/views/ObservableWebView;

    invoke-virtual {v0}, Lcom/texa/careapp/views/ObservableWebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->scrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 124
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->tosButton:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->loadTos:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->loadTos:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 112
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    .line 114
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->setScrollChangedCallback()V

    .line 115
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;->setButtonListener()V

    return-void
.end method

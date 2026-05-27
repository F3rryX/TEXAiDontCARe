.class public Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;
.super Lcom/texa/careapp/base/BaseActivity;
.source "AcceptationTermsActivity.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNavigator:Lcom/texa/care/navigation/Navigator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/texa/careapp/base/BaseActivity;-><init>()V

    .line 49
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;)Lio/reactivex/disposables/CompositeDisposable;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static buildIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private getLangUrlParam()Ljava/lang/String;
    .locals 3

    .line 111
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, "-"

    .line 112
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?lang="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUrl()Ljava/lang/String;
    .locals 3

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://care.texa.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110d1d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;->getLangUrlParam()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "privacy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 57
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001c

    .line 58
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;->getCareApplication()Lcom/texa/careapp/CareApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;)V

    .line 62
    iput-object p0, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 65
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 66
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 69
    :cond_0
    invoke-static {p0}, Lcom/texa/care/navigation/Navigator;->getInstanceFor(Landroid/app/Activity;)Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    const v0, 0x7f0a00d7

    .line 70
    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->setContainerResId(I)V

    .line 71
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    new-instance v0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity$1;

    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity$1;-><init>(Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 130
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onDestroy()V

    .line 131
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method public onEvent(Lcom/texa/careapp/app/events/CloseActivityEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 142
    invoke-virtual {p1}, Lcom/texa/careapp/app/events/CloseActivityEvent;->getActivity()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 124
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onPause()V

    .line 125
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 118
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onResume()V

    .line 119
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected requiresAuthentication()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.class public Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;
.super Lcom/texa/careapp/base/BaseActivity;
.source "EcoDrivingActivity.java"


# instance fields
.field protected mCareApplication:Lcom/texa/careapp/CareApplication;

.field private mContext:Landroid/content/Context;

.field private final mDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field private mNavigator:Lcom/texa/care/navigation/Navigator;

.field mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/texa/careapp/base/BaseActivity;-><init>()V

    .line 48
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method public static buildIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000000

    .line 54
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic lambda$onCreate$1(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ERROR PROCESS HINT CALL"

    .line 101
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getMDisposable()Lio/reactivex/disposables/CompositeDisposable;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-object v0
.end method

.method public synthetic lambda$onCreate$0$com-texa-careapp-app-ecodriving-EcoDrivingActivity(Lcom/texa/careapp/app/ecodriving/serviceserializer/HintBaseEntity;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintBaseEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;

    .line 86
    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->getHintModel()Lcom/texa/careapp/app/ecodriving/model/HintModel;

    move-result-object v2

    const/4 v3, 0x0

    .line 88
    :try_start_0
    new-instance v4, Lcom/activeandroid/query/Delete;

    invoke-direct {v4}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v5, Lcom/texa/careapp/app/ecodriving/model/HintModel;

    invoke-virtual {v4, v5}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v4

    const-string v5, "idHint = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 89
    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/model/HintModel;->getIdHint()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v4

    invoke-virtual {v4}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    .line 90
    iget-object v4, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    .line 91
    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->getTranslations()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 92
    invoke-virtual {v1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintEntity;->getTranslations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintTranslationEntity;

    .line 93
    invoke-virtual {v4, v2}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintTranslationEntity;->getHintTranslationModel(Lcom/texa/careapp/app/ecodriving/model/HintModel;)Lcom/texa/careapp/app/ecodriving/model/HintTranslationModel;

    move-result-object v4

    iget-object v5, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    goto :goto_1

    .line 95
    :cond_0
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/serviceserializer/HintBaseEntity;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;->saveTimePrefs(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "ERROR SAVE HINT CALL"

    .line 98
    invoke-static {v1, v3, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 60
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0027

    .line 61
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;->getCareApplication()Lcom/texa/careapp/CareApplication;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;->mCareApplication:Lcom/texa/careapp/CareApplication;

    .line 63
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;)V

    .line 64
    iput-object p0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 67
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 68
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 71
    :cond_0
    invoke-static {p0}, Lcom/texa/care/navigation/Navigator;->getInstanceFor(Landroid/app/Activity;)Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    const v0, 0x7f0a00d7

    .line 72
    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->setContainerResId(I)V

    .line 73
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    new-instance v0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;->mCareApplication:Lcom/texa/careapp/CareApplication;

    invoke-direct {v0, v1, p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;-><init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;)V

    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    .line 76
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    const-string v1, "ECO_DRIVING_HINT_TIMESTAMP"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "1970-01-01T01:00:00Z"

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-interface {v1, p1}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->getEcoDrivingHints(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 81
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 82
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;)V

    sget-object v2, Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity$$ExternalSyntheticLambda1;->INSTANCE:Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity$$ExternalSyntheticLambda1;

    .line 83
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 80
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 103
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {p1}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object p1

    const-string v0, "privacy"

    invoke-virtual {p1, v0}, Lcom/texa/careapp/model/UserModel;->getTermAcepted(Ljava/lang/String;)Lcom/texa/careapp/model/TermsModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 104
    iget p1, p1, Lcom/texa/careapp/model/TermsModel;->version:I

    const/4 v0, 0x2

    if-ge p1, v0, :cond_3

    .line 105
    :cond_2
    invoke-static {p0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 106
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;->startActivity(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 150
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onDestroy()V

    .line 151
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 130
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 135
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 145
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 140
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onResume()V

    return-void
.end method

.method protected requiresAuthentication()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected saveTimePrefs(Ljava/lang/String;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ECO_DRIVING_HINT_TIMESTAMP"

    .line 112
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

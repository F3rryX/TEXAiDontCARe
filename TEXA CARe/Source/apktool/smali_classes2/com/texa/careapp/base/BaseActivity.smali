.class public abstract Lcom/texa/careapp/base/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActivity.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mActionBarToolbar:Landroidx/appcompat/widget/Toolbar;

.field protected mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

.field protected mRxProfile:Lcom/texa/care/eco_driving/RxProfile;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private profileDisposable:Lio/reactivex/disposables/Disposable;

.field private refreshTokenExpiredDisposable:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private checkUserData()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/texa/careapp/base/BaseActivity;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/texa/careapp/base/BaseActivity;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->removeAccount(Landroid/accounts/AccountManager;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$onResume$2(Ljava/lang/Boolean;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected createProgressDialogScreen(Ljava/lang/CharSequence;)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/texa/careapp/base/BaseActivity;->mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lcom/texa/careapp/utils/ProgressDialogFragment;

    invoke-direct {v0}, Lcom/texa/careapp/utils/ProgressDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/base/BaseActivity;->mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/base/BaseActivity;->mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/ProgressDialogFragment;->setMessage(Ljava/lang/CharSequence;)V

    .line 185
    iget-object p1, p0, Lcom/texa/careapp/base/BaseActivity;->mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

    invoke-virtual {p1}, Lcom/texa/careapp/utils/ProgressDialogFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_1

    .line 186
    iget-object p1, p0, Lcom/texa/careapp/base/BaseActivity;->mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

    invoke-virtual {p0}, Lcom/texa/careapp/base/BaseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "progress"

    invoke-virtual {p1, v0, v1}, Lcom/texa/careapp/utils/ProgressDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public disableLogoActionBarToolbar()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/texa/careapp/base/BaseActivity;->mActionBarToolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    const v1, 0x7f0a0260

    .line 145
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0x8

    .line 146
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected dismissProgressDialogScreen()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/texa/careapp/base/BaseActivity;->mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Lcom/texa/careapp/utils/ProgressDialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public getActionBarToolbar()Landroidx/appcompat/widget/Toolbar;
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/texa/careapp/base/BaseActivity;->mActionBarToolbar:Landroidx/appcompat/widget/Toolbar;

    if-nez v0, :cond_0

    const v0, 0x7f0a0489

    .line 132
    invoke-virtual {p0, v0}, Lcom/texa/careapp/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/texa/careapp/base/BaseActivity;->mActionBarToolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0, v0}, Lcom/texa/careapp/base/BaseActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 135
    invoke-virtual {p0}, Lcom/texa/careapp/base/BaseActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/texa/careapp/base/BaseActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/base/BaseActivity;->mActionBarToolbar:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method protected final getCareApplication()Lcom/texa/careapp/CareApplication;
    .locals 1

    .line 127
    invoke-virtual {p0}, Lcom/texa/careapp/base/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    return-object v0
.end method

.method public synthetic lambda$onResume$0$com-texa-careapp-base-BaseActivity(Lcom/texa/carelib/profile/events/AuthenticationErrorEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    iget-object p1, p0, Lcom/texa/careapp/base/BaseActivity;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/texa/careapp/base/BaseActivity;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->shouldStartOutOfTheBox(Landroid/content/SharedPreferences;Lcom/texa/careapp/model/DongleDataManager;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public synthetic lambda$onResume$1$com-texa-careapp-base-BaseActivity(Lcom/texa/carelib/profile/events/AuthenticationErrorEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/texa/careapp/base/BaseActivity;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v1, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->CARE_CONN:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->FAILED:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    const-string v3, "pin error after onboarding"

    invoke-virtual {v0, v1, v2, v3}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    .line 81
    invoke-static {p0}, Lcom/texa/care/navigation/Navigator;->getInstanceFor(Landroid/app/Activity;)Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    .line 82
    new-instance v1, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/AuthenticationErrorEvent;->getDeviceInfo()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;-><init>(Landroid/app/Activity;Lcom/texa/carelib/communication/DeviceInfo;)V

    invoke-virtual {v0, v1}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method public synthetic lambda$onResume$3$com-texa-careapp-base-BaseActivity(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/texa/careapp/app/auth/LoginActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 94
    invoke-virtual {p0}, Lcom/texa/careapp/base/BaseActivity;->finish()V

    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 4

    .line 153
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 154
    sget-object v3, Lcom/texa/careapp/Constants;->ACCOUNT_TYPE:Ljava/lang/String;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/texa/careapp/app/auth/LoginActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    invoke-virtual {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 162
    invoke-virtual {p0}, Lcom/texa/careapp/base/BaseActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/base/BaseActivity;->mAccountManager:Landroid/accounts/AccountManager;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 166
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/texa/careapp/base/BaseActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 170
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 110
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 111
    iget-object v0, p0, Lcom/texa/careapp/base/BaseActivity;->profileDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 112
    iget-object v0, p0, Lcom/texa/careapp/base/BaseActivity;->refreshTokenExpiredDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 113
    invoke-virtual {p0}, Lcom/texa/careapp/base/BaseActivity;->requiresAuthentication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/texa/careapp/base/BaseActivity;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 67
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 69
    invoke-virtual {p0}, Lcom/texa/careapp/base/BaseActivity;->requiresAuthentication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/texa/careapp/base/BaseActivity;->checkUserData()V

    .line 71
    iget-object v0, p0, Lcom/texa/careapp/base/BaseActivity;->mAccountManager:Landroid/accounts/AccountManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/base/BaseActivity;->mRxProfile:Lcom/texa/care/eco_driving/RxProfile;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/texa/careapp/base/BaseActivity;->profileDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 76
    iget-object v0, p0, Lcom/texa/careapp/base/BaseActivity;->mRxProfile:Lcom/texa/care/eco_driving/RxProfile;

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/RxProfile;->observeAuthenticationError()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v3, Lcom/texa/careapp/base/BaseActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/texa/careapp/base/BaseActivity$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/base/BaseActivity;)V

    .line 77
    invoke-virtual {v0, v3}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v3, Lcom/texa/careapp/base/BaseActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/texa/careapp/base/BaseActivity$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/base/BaseActivity;)V

    .line 79
    invoke-virtual {v0, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/base/BaseActivity;->profileDisposable:Lio/reactivex/disposables/Disposable;

    .line 85
    :cond_1
    instance-of v0, p0, Lcom/texa/careapp/app/auth/LoginActivity;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/texa/careapp/base/BaseActivity;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/texa/careapp/base/BaseActivity;->refreshTokenExpiredDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 87
    iget-object v0, p0, Lcom/texa/careapp/base/BaseActivity;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/UserDataManager;->observeRefreshTokenExpired()Lio/reactivex/Observable;

    move-result-object v0

    .line 88
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 89
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v3, Lcom/texa/careapp/base/BaseActivity$$ExternalSyntheticLambda3;->INSTANCE:Lcom/texa/careapp/base/BaseActivity$$ExternalSyntheticLambda3;

    .line 90
    invoke-virtual {v0, v3}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    .line 91
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/base/BaseActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/base/BaseActivity$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/base/BaseActivity;)V

    sget-object v2, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda1;->INSTANCE:Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda1;

    .line 92
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/base/BaseActivity;->refreshTokenExpiredDisposable:Lio/reactivex/disposables/Disposable;

    :cond_2
    return-void
.end method

.method protected abstract requiresAuthentication()Z
.end method

.method public setContentView(I)V
    .locals 0

    .line 121
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 122
    invoke-virtual {p0}, Lcom/texa/careapp/base/BaseActivity;->getActionBarToolbar()Landroidx/appcompat/widget/Toolbar;

    return-void
.end method

.method protected snackbarInfo(Ljava/lang/String;)Lcom/google/android/material/snackbar/Snackbar;
    .locals 2

    const v0, 0x1020002

    .line 177
    invoke-virtual {p0, v0}, Lcom/texa/careapp/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    return-object p1
.end method

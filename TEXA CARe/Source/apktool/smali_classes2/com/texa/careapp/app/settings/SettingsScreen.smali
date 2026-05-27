.class public Lcom/texa/careapp/app/settings/SettingsScreen;
.super Lcom/texa/care/navigation/Screen;
.source "SettingsScreen.java"


# instance fields
.field private goToServices:Z

.field private isDisposed:Z

.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/texa/careapp/app/settings/SettingsAdapter;

.field protected mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mLoginHelperRx:Lcom/texa/careapp/utils/LoginHelperRx;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mProfile:Lcom/texa/carelib/profile/Profile;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSettings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ISettingsModel;",
            ">;"
        }
    .end annotation
.end field

.field protected mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mTexaService:Lcom/texa/carelib/webservices/TexaService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUser:Lcom/texa/careapp/model/UserModel;

.field private mUserDataDisposable:Lio/reactivex/disposables/Disposable;

.field protected mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mVehicleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleModel;",
            ">;"
        }
    .end annotation
.end field

.field protected mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$FPzNHdPBQJSyqzz8r_U9PrGOTrk(Lcom/texa/careapp/app/settings/SettingsScreen;Lcom/texa/careapp/model/UserModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/settings/SettingsScreen;->setNameSurname(Lcom/texa/careapp/model/UserModel;)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    .line 114
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mSettings:Ljava/util/List;

    .line 115
    iput-object p1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mActivity:Landroid/app/Activity;

    .line 116
    iput-boolean p2, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->goToServices:Z

    return-void
.end method

.method private addHeaders()V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mSettings:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/texa/careapp/utils/SettingsUtils;->getSettingsUserTopHeader(Landroid/content/Context;)Lcom/texa/careapp/model/HeaderSettingsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mSettings:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/SettingsUtils;->getSettingUserItem(Landroid/content/Context;Lcom/texa/careapp/model/UserModel;)Lcom/texa/careapp/model/ItemSettingsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mSettings:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/texa/careapp/utils/SettingsUtils;->getSettingsVehicleTopHeader(Landroid/content/Context;)Lcom/texa/careapp/model/HeaderSettingsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mSettings:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mVehicleList:Ljava/util/List;

    invoke-static {v1}, Lcom/texa/careapp/utils/SettingsUtils;->getSettingsVehicleItem(Ljava/util/List;)Lcom/texa/careapp/model/VehicleListSettingsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mSettings:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mVehicleList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/SettingsUtils;->getSettingsAddVehicleItem(Landroid/content/Context;I)Lcom/texa/careapp/model/ItemSettingsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mSettings:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/texa/careapp/utils/SettingsUtils;->getSettingsServicesTopHeader(Landroid/content/Context;)Lcom/texa/careapp/model/HeaderSettingsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mSettings:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/texa/careapp/utils/SettingsUtils;->getSettingsServicesItem(Landroid/content/Context;)Lcom/texa/careapp/model/ItemSettingsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mSettings:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/texa/careapp/utils/SettingsUtils;->getSettingsServicesContactsItem(Landroid/content/Context;)Lcom/texa/careapp/model/ItemSettingsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mSettings:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/texa/careapp/utils/SettingsUtils;->getSettingsInfoTopHeader(Landroid/content/Context;)Lcom/texa/careapp/model/HeaderSettingsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mSettings:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/texa/careapp/utils/SettingsUtils;->getSettingsSwFwVersionItem(Landroid/content/Context;)Lcom/texa/careapp/model/ItemSettingsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mSettings:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/texa/careapp/utils/SettingsUtils;->getSettingsTroubleShootingItem(Landroid/content/Context;)Lcom/texa/careapp/model/ItemSettingsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mSettings:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/texa/careapp/utils/SettingsUtils;->getSettingsCompanyInfoItem(Landroid/content/Context;)Lcom/texa/careapp/model/ItemSettingsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mSettings:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/texa/careapp/utils/SettingsUtils;->getSettingsPrivacyPolicyItem(Landroid/content/Context;)Lcom/texa/careapp/model/ItemSettingsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mSettings:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/texa/careapp/utils/SettingsUtils;->getSettingsTermsServiceItem(Landroid/content/Context;)Lcom/texa/careapp/model/ItemSettingsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mSettings:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/texa/careapp/utils/SettingsUtils;->getSettingsTermsSOSItem(Landroid/content/Context;)Lcom/texa/careapp/model/ItemSettingsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mSettings:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/texa/careapp/utils/SettingsUtils;->getSettingsThirdPartsLicenseItem(Landroid/content/Context;)Lcom/texa/careapp/model/ItemSettingsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mSettings:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/texa/careapp/utils/SettingsUtils;->getSettingsConfigurationTopHeader(Landroid/content/Context;)Lcom/texa/careapp/model/HeaderSettingsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mSettings:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/texa/careapp/utils/SettingsUtils;->getSettingsGeneralSettingsItem(Landroid/content/Context;)Lcom/texa/careapp/model/ItemSettingsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mSettings:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/texa/careapp/utils/SettingsUtils;->getSettingsFabricResetItem(Landroid/content/Context;)Lcom/texa/careapp/model/ItemSettingsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 170
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 171
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    return-object v0
.end method

.method static synthetic lambda$setUserData$2(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "displayUserData() throws exception."

    .line 248
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$setUserData$3(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 252
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private observeUser()Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/model/UserModel;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-interface {v1}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->getUserObservable()Lio/reactivex/Observable;

    move-result-object v1

    if-nez v0, :cond_0

    .line 215
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/settings/SettingsScreen$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/SettingsScreen$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/settings/SettingsScreen;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 230
    :cond_0
    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->isSyncNeeded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 234
    :cond_1
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcom/texa/careapp/app/settings/SettingsScreen$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v0}, Lcom/texa/careapp/app/settings/SettingsScreen$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/app/settings/SettingsScreen;Lcom/texa/careapp/model/UserModel;)V

    .line 235
    invoke-virtual {v1, v3}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 234
    invoke-static {v2, v0}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private setNameSurname(Lcom/texa/careapp/model/UserModel;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 256
    invoke-virtual {p1}, Lcom/texa/careapp/model/UserModel;->getFirstName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/texa/careapp/model/UserModel;->getLastName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iput-object p1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mUser:Lcom/texa/careapp/model/UserModel;

    .line 258
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mAdapter:Lcom/texa/careapp/app/settings/SettingsAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 259
    invoke-virtual {v0, v1, p1}, Lcom/texa/careapp/app/settings/SettingsAdapter;->refreshUserItem(ILcom/texa/careapp/model/UserModel;)V

    :cond_0
    return-void
.end method

.method private setUserData()Lio/reactivex/disposables/Disposable;
    .locals 3

    .line 247
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/SettingsScreen;->observeUser()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/app/settings/SettingsScreen$$ExternalSyntheticLambda1;->INSTANCE:Lcom/texa/careapp/app/settings/SettingsScreen$$ExternalSyntheticLambda1;

    .line 248
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 250
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 251
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/settings/SettingsScreen$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/SettingsScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/settings/SettingsScreen;)V

    sget-object v2, Lcom/texa/careapp/app/settings/SettingsScreen$$ExternalSyntheticLambda2;->INSTANCE:Lcom/texa/careapp/app/settings/SettingsScreen$$ExternalSyntheticLambda2;

    .line 252
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 4

    .line 127
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/SettingsScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/settings/SettingsScreen;)V

    .line 129
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenSettingsLayoutBinding;

    .line 131
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/SettingsScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_OPENED_SETTINGS_SCREEN:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 133
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSettingsLayoutBinding;->settingsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 134
    iget-boolean v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->isDisposed:Z

    if-nez v0, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/SettingsScreen;->setUserData()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mUserDataDisposable:Lio/reactivex/disposables/Disposable;

    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->isDisposed:Z

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleDataManager;->getAllVehicles()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mVehicleList:Ljava/util/List;

    .line 141
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSettingsLayoutBinding;->settingsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/texa/careapp/app/settings/SettingsScreen;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 143
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/SettingsScreen;->addHeaders()V

    .line 145
    new-instance v0, Lcom/texa/careapp/app/settings/SettingsAdapter;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mSettings:Ljava/util/List;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/SettingsScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/texa/careapp/app/settings/SettingsAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/texa/care/navigation/Navigator;)V

    iput-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mAdapter:Lcom/texa/careapp/app/settings/SettingsAdapter;

    .line 147
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSettingsLayoutBinding;->settingsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mAdapter:Lcom/texa/careapp/app/settings/SettingsAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 149
    iget-boolean v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->goToServices:Z

    if-eqz v0, :cond_1

    .line 150
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenSettingsLayoutBinding;->settingsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mVehicleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1
    return-void
.end method

.method public getAdapter()Lcom/texa/careapp/app/settings/SettingsAdapter;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mAdapter:Lcom/texa/careapp/app/settings/SettingsAdapter;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "SettingsScreen"

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00e0

    return v0
.end method

.method public getTitle()I
    .locals 1

    const v0, 0x7f110c0d

    return v0
.end method

.method public synthetic lambda$observeUser$0$com-texa-careapp-app-settings-SettingsScreen(Lcom/texa/careapp/networking/response/UserResponse;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "userResponse cannot be null"

    .line 217
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 219
    iget-object p1, p1, Lcom/texa/careapp/networking/response/UserResponse;->userData:Lcom/texa/careapp/networking/response/UserResponse$UserData;

    invoke-static {p1}, Lcom/texa/careapp/model/UserModel;->from(Lcom/texa/careapp/networking/response/UserResponse$UserData;)Lcom/texa/careapp/model/UserModel;

    move-result-object p1

    .line 221
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/SettingsScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 223
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public synthetic lambda$observeUser$1$com-texa-careapp-app-settings-SettingsScreen(Lcom/texa/careapp/model/UserModel;Lcom/texa/careapp/networking/response/UserResponse;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 236
    iget-object p2, p2, Lcom/texa/careapp/networking/response/UserResponse;->userData:Lcom/texa/careapp/networking/response/UserResponse$UserData;

    invoke-virtual {p1, p2}, Lcom/texa/careapp/model/UserModel;->updateFrom(Lcom/texa/careapp/networking/response/UserResponse$UserData;)V

    .line 238
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/SettingsScreen;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 240
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 121
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 94
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onPause()V

    .line 96
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mUserDataDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->isDisposed:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 102
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    .line 104
    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mUserDataDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->isDisposed:Z

    if-nez v1, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/SettingsScreen;->setUserData()Lio/reactivex/disposables/Disposable;

    move-result-object v1

    iput-object v1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->mUserDataDisposable:Lio/reactivex/disposables/Disposable;

    const/4 v1, 0x1

    .line 107
    iput-boolean v1, p0, Lcom/texa/careapp/app/settings/SettingsScreen;->isDisposed:Z

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "mDongleModel is null"

    .line 110
    invoke-static {v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.class public Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;
.super Lcom/texa/care/navigation/Screen;
.source "SettingsServicesScreen.java"

# interfaces
.implements Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$UpdateData;


# instance fields
.field private mAdapter:Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;

.field private final mDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ServiceDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 55
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method private getAllServices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ServiceDataModel;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/ServiceDataModel;

    .line 85
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "(dongle IS NOT NULL"

    .line 86
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string/jumbo v1, "user IS NOT NULL)"

    .line 87
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->or(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->INACTIVE:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "status <> ?"

    .line 88
    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "activation"

    .line 90
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/model/ServiceDataModel;

    if-eqz v2, :cond_1

    .line 96
    invoke-virtual {v2}, Lcom/texa/careapp/model/ServiceDataModel;->getDongle()Lcom/texa/careapp/model/DongleModel;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/texa/careapp/model/ServiceDataModel;->getDongle()Lcom/texa/careapp/model/DongleModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/careapp/model/DongleModel;->getVehicleByHwId()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    if-eqz v2, :cond_0

    .line 97
    invoke-virtual {v2}, Lcom/texa/careapp/model/ServiceDataModel;->getDongle()Lcom/texa/careapp/model/DongleModel;

    move-result-object v3

    if-nez v3, :cond_0

    .line 98
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method static synthetic lambda$afterViewInjection$1(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "On error getting services"

    .line 80
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 10

    .line 59
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;)V

    .line 60
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenSettingsServicesBinding;

    .line 61
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSettingsServicesBinding;->screenSettingsServiceRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 63
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->getAllServices()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->services:Ljava/util/List;

    .line 64
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 65
    iget-object v1, p1, Lcom/texa/careapp/databinding/ScreenSettingsServicesBinding;->screenSettingsServiceList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 66
    new-instance v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v4

    iget-object v5, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->services:Ljava/util/List;

    iget-object v6, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    iget-object v7, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    iget-object v9, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    move-object v2, v0

    move-object v8, p0

    invoke-direct/range {v2 .. v9}, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;-><init>(Landroid/content/Context;Lcom/texa/care/navigation/Navigator;Ljava/util/List;Lcom/texa/careapp/utils/UserDataManager;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$UpdateData;Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;)V

    iput-object v0, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->mAdapter:Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;

    .line 67
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenSettingsServicesBinding;->screenSettingsServiceList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->mAdapter:Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 68
    iget-object p1, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 70
    iget-object p1, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;)V

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0600e5
        0x7f0600e4
        0x7f0600e3
    .end array-data
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 121
    const-class v0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00e1

    return v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-settings-services-SettingsServicesScreen(Lcom/texa/careapp/networking/response/ServiceListResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/ServiceDataManager;->saveServiceData(Lcom/texa/careapp/networking/response/ServiceListResponse;)Ljava/util/List;

    .line 76
    iget-object p1, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 77
    iget-object p1, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->services:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 78
    iget-object p1, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->services:Ljava/util/List;

    invoke-direct {p0}, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->getAllServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    iget-object p1, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->mAdapter:Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;

    invoke-virtual {p1}, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$2$com-texa-careapp-app-settings-services-SettingsServicesScreen()V
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-interface {v1}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->dongleServices()Lio/reactivex/Observable;

    move-result-object v1

    .line 72
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 73
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;)V

    sget-object v3, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen$$ExternalSyntheticLambda2;->INSTANCE:Lcom/texa/careapp/app/settings/services/SettingsServicesScreen$$ExternalSyntheticLambda2;

    .line 74
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 134
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onDestroyView()V

    .line 135
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 108
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    .line 109
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->services:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->services:Ljava/util/List;

    invoke-direct {p0}, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->getAllServices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->mAdapter:Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;

    invoke-virtual {v0}, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateDataAfterAcceptingTerms()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "UPDATE DATA AFTER TERMS ACCEPT"

    .line 126
    invoke-static {v1, v0}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->services:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->services:Ljava/util/List;

    invoke-direct {p0}, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->getAllServices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 129
    iget-object v0, p0, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;->mAdapter:Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;

    invoke-virtual {v0}, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;->notifyDataSetChanged()V

    return-void
.end method

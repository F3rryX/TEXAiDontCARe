.class public Lcom/texa/careapp/app/schedule/ScheduleScreen;
.super Lcom/texa/care/navigation/Screen;
.source "ScheduleScreen.java"


# instance fields
.field private mAdapter:Lcom/texa/careapp/app/schedule/SchedulesAdapter;

.field protected mContext:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field private mEmptyView:Landroid/widget/LinearLayout;

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mIScheduleModelComparator:Lcom/texa/careapp/utils/comparators/IScheduleModelComparator;

.field private mNavigator:Lcom/texa/care/navigation/Navigator;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field protected mScheduleDataManager:Lcom/texa/careapp/model/ScheduleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSchedules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/IScheduleModel;",
            ">;"
        }
    .end annotation
.end field

.field protected mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method public static synthetic $r8$lambda$fG7sX81XC3wFR_xnBkYjt1t9Ldw(Lcom/texa/careapp/app/schedule/ScheduleScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/texa/careapp/app/schedule/ScheduleScreen;->syncSchedules()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mSchedules:Ljava/util/List;

    .line 92
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 95
    new-instance v0, Lcom/texa/careapp/utils/comparators/IScheduleModelComparator;

    invoke-direct {v0}, Lcom/texa/careapp/utils/comparators/IScheduleModelComparator;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mIScheduleModelComparator:Lcom/texa/careapp/utils/comparators/IScheduleModelComparator;

    return-void
.end method

.method private displaySchedules()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mSchedules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 197
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mSchedules:Ljava/util/List;

    invoke-direct {p0}, Lcom/texa/careapp/app/schedule/ScheduleScreen;->getVehicleSchedulesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 199
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mSchedules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mIScheduleModelComparator:Lcom/texa/careapp/utils/comparators/IScheduleModelComparator;

    iget-object v1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mSchedules:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/utils/comparators/IScheduleModelComparator;->sort(Ljava/util/List;)V

    .line 201
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mSchedules:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/schedule/ScheduleScreen;->addHeaders(Ljava/util/List;)V

    .line 202
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mAdapter:Lcom/texa/careapp/app/schedule/SchedulesAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 203
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mAdapter:Lcom/texa/careapp/app/schedule/SchedulesAdapter;

    invoke-virtual {v0}, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private getHeader(I)Lcom/texa/careapp/model/HeaderScheduleModel;
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/ScheduleScreen;->getFarExpireHeader()Lcom/texa/careapp/model/HeaderScheduleModel;

    move-result-object p1

    return-object p1

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleModel.getExpiringStatus can\'t be: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_1
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/ScheduleScreen;->getNotExpireHeader()Lcom/texa/careapp/model/HeaderScheduleModel;

    move-result-object p1

    return-object p1

    .line 246
    :cond_2
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/ScheduleScreen;->getExpireHeader()Lcom/texa/careapp/model/HeaderScheduleModel;

    move-result-object p1

    return-object p1
.end method

.method private getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 4

    .line 302
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/ScheduleScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    return-object v0
.end method

.method private getVehicleSchedulesList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/IScheduleModel;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleDataManager;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleDataManager;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleDataManager;->getVehicleByHwId()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    .line 210
    :goto_0
    iget-object v1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mScheduleDataManager:Lcom/texa/careapp/model/ScheduleDataManager;

    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/ScheduleScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/texa/careapp/model/ScheduleDataManager;->getIScheduleModels(Lcom/texa/careapp/model/VehicleModel;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$syncSchedules$3(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "error syncing schedules"

    .line 178
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private syncSchedules()V
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    iget-object v2, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v2}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->getVehicleDetailsObservable(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    .line 132
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->applySchedulers()Lio/reactivex/ObservableTransformer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/app/schedule/ScheduleScreen$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/schedule/ScheduleScreen$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/schedule/ScheduleScreen;)V

    sget-object v3, Lcom/texa/careapp/app/schedule/ScheduleScreen$$ExternalSyntheticLambda7;->INSTANCE:Lcom/texa/careapp/app/schedule/ScheduleScreen$$ExternalSyntheticLambda7;

    .line 133
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    :cond_0
    return-void
.end method

.method private updateSchedulesWithDelay()V
    .locals 4

    .line 276
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x4

    invoke-static {v2, v3, v1}, Lio/reactivex/Single;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/app/schedule/ScheduleScreen$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/schedule/ScheduleScreen$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/app/schedule/ScheduleScreen;)V

    .line 277
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object v1

    .line 278
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 279
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/app/schedule/ScheduleScreen$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/schedule/ScheduleScreen$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/app/schedule/ScheduleScreen;)V

    new-instance v3, Lcom/texa/careapp/app/schedule/ScheduleScreen$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lcom/texa/careapp/app/schedule/ScheduleScreen$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/app/schedule/ScheduleScreen;)V

    .line 280
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 276
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method protected addHeaders(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/IScheduleModel;",
            ">;)V"
        }
    .end annotation

    .line 219
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 220
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 221
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 222
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/IScheduleModel;

    .line 224
    invoke-interface {v1}, Lcom/texa/careapp/model/IScheduleModel;->getExpiringStatus()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/texa/careapp/app/schedule/ScheduleScreen;->getHeader(I)Lcom/texa/careapp/model/HeaderScheduleModel;

    move-result-object v1

    .line 225
    invoke-interface {v0, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 227
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/IScheduleModel;

    .line 228
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/model/IScheduleModel;

    .line 229
    invoke-interface {v1}, Lcom/texa/careapp/model/IScheduleModel;->getExpiringStatus()I

    move-result v3

    invoke-interface {v2}, Lcom/texa/careapp/model/IScheduleModel;->getExpiringStatus()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 230
    invoke-interface {v2}, Lcom/texa/careapp/model/IScheduleModel;->getExpiringStatus()I

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lcom/texa/careapp/model/IScheduleModel;->getExpiringStatus()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 231
    :cond_1
    invoke-interface {v1}, Lcom/texa/careapp/model/IScheduleModel;->getExpiringStatus()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/texa/careapp/app/schedule/ScheduleScreen;->getHeader(I)Lcom/texa/careapp/model/HeaderScheduleModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 235
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public afterViewInjection(Landroid/view/View;)V
    .locals 2

    .line 104
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/ScheduleScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mNavigator:Lcom/texa/care/navigation/Navigator;

    .line 105
    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    .line 106
    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/schedule/ScheduleScreen;)V

    .line 108
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenScheduleGridBinding;

    .line 109
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenScheduleGridBinding;->screenScheduleRecycler:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 110
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenScheduleGridBinding;->emptyView:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mEmptyView:Landroid/widget/LinearLayout;

    .line 111
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenScheduleGridBinding;->screenScheduleRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 112
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenScheduleGridBinding;->gotoSettings:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/texa/careapp/app/schedule/ScheduleScreen$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/schedule/ScheduleScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/schedule/ScheduleScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenScheduleGridBinding;->addNewScheduleFloatingButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v0, Lcom/texa/careapp/app/schedule/ScheduleScreen$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/schedule/ScheduleScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/schedule/ScheduleScreen;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/ScheduleScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_OPENED_SCHEDULES_SCREEN:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 116
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 117
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/texa/careapp/app/schedule/ScheduleScreen;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 118
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 119
    new-instance p1, Lcom/texa/careapp/app/schedule/SchedulesAdapter;

    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mSchedules:Ljava/util/List;

    iget-object v1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-direct {p1, v0, v1}, Lcom/texa/careapp/app/schedule/SchedulesAdapter;-><init>(Ljava/util/List;Lcom/texa/care/navigation/Navigator;)V

    iput-object p1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mAdapter:Lcom/texa/careapp/app/schedule/SchedulesAdapter;

    .line 121
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 124
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v0, Lcom/texa/careapp/app/schedule/ScheduleScreen$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/schedule/ScheduleScreen$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/schedule/ScheduleScreen;)V

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 125
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mEmptyView:Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 126
    invoke-direct {p0}, Lcom/texa/careapp/app/schedule/ScheduleScreen;->syncSchedules()V

    return-void

    :array_0
    .array-data 4
        0x7f0600e5
        0x7f0600e4
        0x7f0600e3
    .end array-data
.end method

.method public getAdapter()Lcom/texa/careapp/app/schedule/SchedulesAdapter;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mAdapter:Lcom/texa/careapp/app/schedule/SchedulesAdapter;

    return-object v0
.end method

.method protected getExpireHeader()Lcom/texa/careapp/model/HeaderScheduleModel;
    .locals 3

    .line 256
    new-instance v0, Lcom/texa/careapp/model/HeaderScheduleModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/HeaderScheduleModel;-><init>()V

    .line 257
    iget-object v1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mContext:Landroid/content/Context;

    const v2, 0x7f110a65

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/HeaderScheduleModel;->setMTitle(Ljava/lang/String;)V

    return-object v0
.end method

.method protected getFarExpireHeader()Lcom/texa/careapp/model/HeaderScheduleModel;
    .locals 3

    .line 270
    new-instance v0, Lcom/texa/careapp/model/HeaderScheduleModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/HeaderScheduleModel;-><init>()V

    .line 271
    iget-object v1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mContext:Landroid/content/Context;

    const v2, 0x7f110a6d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/HeaderScheduleModel;->setMTitle(Ljava/lang/String;)V

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "schedule"

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00d7

    return v0
.end method

.method protected getNotExpireHeader()Lcom/texa/careapp/model/HeaderScheduleModel;
    .locals 3

    .line 263
    new-instance v0, Lcom/texa/careapp/model/HeaderScheduleModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/HeaderScheduleModel;-><init>()V

    .line 264
    iget-object v1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mContext:Landroid/content/Context;

    const v2, 0x7f110b01

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/HeaderScheduleModel;->setMTitle(Ljava/lang/String;)V

    return-object v0
.end method

.method public getTitle()I
    .locals 1

    const v0, 0x7f110ba7

    return v0
.end method

.method public gotoAddNewScheduleClicked()V
    .locals 3

    .line 312
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/ScheduleScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_SCHEDULES_TAPPED_ADD_SCHEDULE_BUTTON:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 313
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/texa/careapp/app/schedule/addThreshold/AddNewThresholdActivity;->buildIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public gotoSettingsClicked()V
    .locals 3

    .line 306
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {v1}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/texa/careapp/app/settings/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 307
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 308
    iget-object v1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {v1}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-schedule-ScheduleScreen(Landroid/view/View;)V
    .locals 0

    .line 112
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/ScheduleScreen;->gotoSettingsClicked()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$1$com-texa-careapp-app-schedule-ScheduleScreen(Landroid/view/View;)V
    .locals 0

    .line 113
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/ScheduleScreen;->gotoAddNewScheduleClicked()V

    return-void
.end method

.method public synthetic lambda$syncSchedules$2$com-texa-careapp-app-schedule-ScheduleScreen(Lcom/texa/careapp/networking/response/VehicleResponse;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleDataManager;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    const/4 v1, 0x0

    .line 136
    :try_start_0
    iget-object v2, p1, Lcom/texa/careapp/networking/response/VehicleResponse;->vehicle:Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;

    iget-object v2, v2, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->deadlines:Ljava/util/List;

    .line 137
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->deleteSchedules()V

    .line 138
    invoke-static {v2}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/texa/careapp/app/schedule/ScheduleScreen;->getVehicleSchedulesList()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mEmptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    iget-object v2, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mAdapter:Lcom/texa/careapp/app/schedule/SchedulesAdapter;

    invoke-virtual {v2}, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 139
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mEmptyView:Landroid/widget/LinearLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 140
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/networking/response/VehicleResponse$Deadline;

    .line 141
    iget-object v4, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "CARE_ENVIRONMENT"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "VIN_MISMATCH_ENVIRONMENT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 142
    invoke-virtual {v0, v3}, Lcom/texa/careapp/model/VehicleModel;->updateSchedule(Lcom/texa/careapp/networking/response/VehicleResponse$Deadline;)V

    goto :goto_1

    .line 144
    :cond_3
    iget-object v2, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mAdapter:Lcom/texa/careapp/app/schedule/SchedulesAdapter;

    invoke-virtual {v2}, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->notifyDataSetChanged()V

    .line 150
    :goto_2
    iget-object p1, p1, Lcom/texa/careapp/networking/response/VehicleResponse;->vehicle:Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;

    iget-object p1, p1, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->thresholds:Ljava/util/HashMap;

    .line 151
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_4

    const-string v3, "threshold type is null, skipping"

    new-array v4, v1, [Ljava/lang/Object;

    .line 153
    invoke-static {v3, v4}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 157
    :cond_4
    :try_start_1
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/careapp/networking/response/VehicleResponse$Threshold;

    .line 159
    invoke-static {v3}, Lcom/texa/careapp/model/ThresholdModel$Type;->getValueOf(Ljava/lang/String;)Lcom/texa/careapp/model/ThresholdModel$Type;

    move-result-object v3

    .line 160
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/ScheduleScreen;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/texa/careapp/model/VehicleModel;->getThreshold(Lcom/texa/careapp/model/ThresholdModel$Type;Landroid/content/Context;)Lcom/texa/careapp/model/ThresholdModel;

    move-result-object v3

    .line 161
    iget-object v5, v4, Lcom/texa/careapp/networking/response/VehicleResponse$Threshold;->date:Ljava/util/Date;

    invoke-virtual {v3, v5}, Lcom/texa/careapp/model/ThresholdModel;->setDate(Ljava/util/Date;)V

    .line 162
    iget-object v4, v4, Lcom/texa/careapp/networking/response/VehicleResponse$Threshold;->odometer:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Lcom/texa/careapp/model/ThresholdModel;->setOdometer(Ljava/lang/Integer;)V

    .line 164
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/ScheduleScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "threshold type not found"

    new-array v5, v1, [Ljava/lang/Object;

    .line 166
    invoke-static {v3, v4, v5}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 172
    :cond_5
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz p1, :cond_6

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 170
    :try_start_3
    invoke-virtual {p1}, Lcom/texa/careapp/exceptions/DatabaseIOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 172
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz p1, :cond_6

    .line 173
    :goto_4
    invoke-virtual {p1, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 177
    :cond_6
    invoke-direct {p0}, Lcom/texa/careapp/app/schedule/ScheduleScreen;->displaySchedules()V

    return-void

    .line 172
    :goto_5
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_7

    .line 173
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 175
    :cond_7
    throw p1
.end method

.method public synthetic lambda$updateSchedulesWithDelay$4$com-texa-careapp-app-schedule-ScheduleScreen(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 277
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/texa/careapp/app/events/ShowProgressEvent;

    invoke-direct {v0}, Lcom/texa/careapp/app/events/ShowProgressEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$updateSchedulesWithDelay$5$com-texa-careapp-app-schedule-ScheduleScreen(Ljava/lang/Long;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 281
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/texa/careapp/app/events/CancelProgressEvent;

    invoke-direct {v0}, Lcom/texa/careapp/app/events/CancelProgressEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 282
    invoke-direct {p0}, Lcom/texa/careapp/app/schedule/ScheduleScreen;->syncSchedules()V

    return-void
.end method

.method public synthetic lambda$updateSchedulesWithDelay$6$com-texa-careapp-app-schedule-ScheduleScreen(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 283
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/texa/careapp/app/events/CancelProgressEvent;

    invoke-direct {v0}, Lcom/texa/careapp/app/events/CancelProgressEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 190
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onDestroyView()V

    .line 191
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method public onEventMainThread(Lcom/texa/careapp/app/events/ShowAllDeleteButtonEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 332
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mSchedules:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/IScheduleModel;

    .line 333
    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isScheduleEditableByUser(Lcom/texa/careapp/model/IScheduleModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 334
    invoke-interface {v0, v1}, Lcom/texa/careapp/model/IScheduleModel;->setDeletable(Z)V

    goto :goto_0

    .line 336
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mAdapter:Lcom/texa/careapp/app/schedule/SchedulesAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onEventMainThread(Lcom/texa/careapp/app/events/UserUpdatedEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v0, "vehicleChangeEvent"

    .line 326
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    invoke-direct {p0}, Lcom/texa/careapp/app/schedule/ScheduleScreen;->updateSchedulesWithDelay()V

    return-void
.end method

.method public onEventMainThread(Lcom/texa/careapp/utils/VehicleObserver$VehicleChangedEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v0, "vehicleChangeEvent"

    .line 319
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    invoke-direct {p0}, Lcom/texa/careapp/app/schedule/ScheduleScreen;->displaySchedules()V

    .line 321
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/ScheduleScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/texa/careapp/app/events/CancelProgressEvent;

    invoke-direct {v0}, Lcom/texa/careapp/app/events/CancelProgressEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 184
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    .line 185
    invoke-direct {p0}, Lcom/texa/careapp/app/schedule/ScheduleScreen;->updateSchedulesWithDelay()V

    return-void
.end method

.class public Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;
.super Lcom/texa/care/navigation/Screen;
.source "SelectNewScheduleScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen$UserAdapter;,
        Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen$VehicleAdapter;,
        Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen$ThresholdTypeAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SelectNewScheduleScreen"


# instance fields
.field private mButtonConfirmedLabel:Landroid/widget/TextView;

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mScheduleDisposable:Lio/reactivex/disposables/Disposable;

.field private mScheduleSpinner:Landroid/widget/Spinner;

.field private mSpinnerChangeListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mUserDataContainer:Landroid/view/View;

.field protected mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUserSpinner:Landroid/widget/Spinner;

.field private mVehicleDataContainer:Landroid/view/View;

.field protected mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mVehicleSpinner:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 77
    new-instance v0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen$1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen$1;-><init>(Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;)V

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mSpinnerChangeListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;)Landroid/widget/Spinner;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mScheduleSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;Lcom/texa/careapp/model/ThresholdModel;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->initView(Lcom/texa/careapp/model/ThresholdModel;)V

    return-void
.end method

.method private containSchedule(Ljava/util/List;Lcom/texa/careapp/model/ScheduleType;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/IScheduleModel;",
            ">;",
            "Lcom/texa/careapp/model/ScheduleType;",
            ")Z"
        }
    .end annotation

    .line 254
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/IScheduleModel;

    .line 255
    invoke-interface {v0}, Lcom/texa/careapp/model/IScheduleModel;->getType()Lcom/texa/careapp/model/ScheduleType;

    move-result-object v0

    if-ne v0, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private createThresholdModelList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ThresholdModel;",
            ">;"
        }
    .end annotation

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    const-class v1, Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 230
    sget-object v2, Lcom/texa/careapp/model/ThresholdModel;->TYPE_UNEDITABLE:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    .line 232
    invoke-virtual {v1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/model/ThresholdModel$Type;

    .line 233
    new-instance v3, Lcom/texa/careapp/model/ThresholdModel;

    invoke-direct {v3}, Lcom/texa/careapp/model/ThresholdModel;-><init>()V

    .line 234
    invoke-virtual {v3, v2}, Lcom/texa/careapp/model/ThresholdModel;->setType(Lcom/texa/careapp/model/ThresholdModel$Type;)V

    .line 235
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getScheduleEditableObservable()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ThresholdModel;",
            ">;>;"
        }
    .end annotation

    .line 218
    new-instance v0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private getScheduleModel(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/model/ScheduleType;)Lcom/texa/careapp/model/IScheduleModel;
    .locals 2

    .line 241
    invoke-virtual {p1, p2}, Lcom/texa/careapp/model/VehicleModel;->getSchedule(Lcom/texa/careapp/model/ScheduleType;)Lcom/texa/careapp/model/VehicleScheduleModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Lcom/texa/careapp/model/VehicleScheduleModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/VehicleScheduleModel;-><init>()V

    .line 245
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleScheduleModel;->setUid(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/VehicleScheduleModel;->setVehicle(Lcom/texa/careapp/model/VehicleModel;)V

    .line 247
    invoke-virtual {v0, p2}, Lcom/texa/careapp/model/VehicleScheduleModel;->setType(Lcom/texa/careapp/model/ScheduleType;)V

    :cond_0
    return-object v0
.end method

.method private initView(Lcom/texa/careapp/model/ThresholdModel;)V
    .locals 4

    .line 169
    sget-object v0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen$2;->$SwitchMap$com$texa$careapp$model$ThresholdModel$Type:[I

    invoke-virtual {p1}, Lcom/texa/careapp/model/ThresholdModel;->getType()Lcom/texa/careapp/model/ThresholdModel$Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/careapp/model/ThresholdModel$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const v1, 0x7f110aae

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 188
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mVehicleDataContainer:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mUserDataContainer:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mButtonConfirmedLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mVehicleDataContainer:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mUserDataContainer:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mButtonConfirmedLabel:Landroid/widget/TextView;

    const v0, 0x7f110aab

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 177
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mVehicleDataContainer:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mUserDataContainer:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mButtonConfirmedLabel:Landroid/widget/TextView;

    const v0, 0x7f110aac

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 171
    :cond_2
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mVehicleDataContainer:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mUserDataContainer:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mButtonConfirmedLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$onResume$2(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "error getting threshold model list"

    .line 158
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private redirectToScreen(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/model/UserModel;)V
    .locals 3

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    goto/16 :goto_0

    .line 292
    :cond_0
    sget-object v0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen$2;->$SwitchMap$com$texa$careapp$model$ThresholdModel$Type:[I

    invoke-virtual {p1}, Lcom/texa/careapp/model/ThresholdModel;->getType()Lcom/texa/careapp/model/ThresholdModel$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/careapp/model/ThresholdModel$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 308
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;

    invoke-virtual {p1}, Lcom/texa/careapp/model/ThresholdModel;->getType()Lcom/texa/careapp/model/ThresholdModel$Type;

    move-result-object p1

    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2, p1, v2}, Lcom/texa/careapp/model/VehicleModel;->getThreshold(Lcom/texa/careapp/model/ThresholdModel$Type;Landroid/content/Context;)Lcom/texa/careapp/model/ThresholdModel;

    move-result-object p1

    invoke-direct {v1, p1, p2, p3}, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;-><init>(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/model/UserModel;)V

    invoke-virtual {v0, v1}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    goto :goto_1

    .line 297
    :cond_1
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    new-instance p3, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;

    sget-object v0, Lcom/texa/careapp/model/ThresholdModel$Type;->TYRES_SWAP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/texa/careapp/model/VehicleModel;->getThreshold(Lcom/texa/careapp/model/ThresholdModel$Type;Landroid/content/Context;)Lcom/texa/careapp/model/ThresholdModel;

    move-result-object v0

    invoke-direct {p3, v0, p2}, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;-><init>(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/model/VehicleModel;)V

    invoke-virtual {p1, p3}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    goto :goto_1

    .line 294
    :cond_2
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    new-instance p3, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;

    sget-object v0, Lcom/texa/careapp/model/ThresholdModel$Type;->TYRES_FITTING:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/texa/careapp/model/VehicleModel;->getThreshold(Lcom/texa/careapp/model/ThresholdModel$Type;Landroid/content/Context;)Lcom/texa/careapp/model/ThresholdModel;

    move-result-object v0

    invoke-direct {p3, v0, p2}, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;-><init>(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/model/VehicleModel;)V

    invoke-virtual {p1, p3}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    goto :goto_1

    .line 304
    :cond_3
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p3

    new-instance v0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;

    invoke-virtual {p1}, Lcom/texa/careapp/model/ThresholdModel;->getType()Lcom/texa/careapp/model/ThresholdModel$Type;

    move-result-object p1

    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/texa/careapp/model/VehicleModel;->getThreshold(Lcom/texa/careapp/model/ThresholdModel$Type;Landroid/content/Context;)Lcom/texa/careapp/model/ThresholdModel;

    move-result-object p1

    invoke-direct {v0, p1, v2, p2}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;-><init>(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/app/schedule/addThreshold/Insurance;Lcom/texa/careapp/model/VehicleModel;)V

    invoke-virtual {p3, v0}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    goto :goto_1

    .line 300
    :cond_4
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p3

    new-instance v0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;

    invoke-virtual {p1}, Lcom/texa/careapp/model/ThresholdModel;->getType()Lcom/texa/careapp/model/ThresholdModel$Type;

    move-result-object p1

    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/texa/careapp/model/VehicleModel;->getThreshold(Lcom/texa/careapp/model/ThresholdModel$Type;Landroid/content/Context;)Lcom/texa/careapp/model/ThresholdModel;

    move-result-object p1

    invoke-direct {v0, p1, v2, p2}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;-><init>(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/app/schedule/addThreshold/Insurance;Lcom/texa/careapp/model/VehicleModel;)V

    invoke-virtual {p3, v0}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    goto :goto_1

    .line 290
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f110ab3

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method private setCurrentVehicleSelected(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleModel;",
            ">;)V"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    const/4 v1, 0x0

    .line 141
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 142
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/model/VehicleModel;

    .line 143
    invoke-virtual {v2, v0}, Lcom/texa/careapp/model/VehicleModel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mVehicleSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private setUserListSpinner()V
    .locals 4

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    iget-object v1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 112
    iget-object v1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mUserSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 113
    iget-object v1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mUserSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setClickable(Z)V

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mUserSpinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen$UserAdapter;

    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen$UserAdapter;-><init>(Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method private setVehicleListSpinner()V
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleDataManager;->getAllVehicles()Ljava/util/List;

    move-result-object v0

    .line 125
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 126
    iget-object v1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mVehicleSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 127
    iget-object v1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mVehicleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setClickable(Z)V

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mVehicleSpinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen$VehicleAdapter;

    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen$VehicleAdapter;-><init>(Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 130
    invoke-direct {p0, v0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->setCurrentVehicleSelected(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public addNewScheduleConfirmed()V
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mScheduleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/ThresholdModel;

    .line 281
    iget-object v1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mVehicleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/VehicleModel;

    .line 282
    iget-object v2, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mUserSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/model/UserModel;

    .line 284
    invoke-direct {p0, v0, v1, v2}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->redirectToScreen(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/model/UserModel;)V

    return-void
.end method

.method public afterViewInjection(Landroid/view/View;)V
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;)V

    .line 91
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenSelectNewScheduleBinding;

    .line 92
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSelectNewScheduleBinding;->scheduleTypeSpinner:Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mScheduleSpinner:Landroid/widget/Spinner;

    .line 93
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSelectNewScheduleBinding;->userSpinner:Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mUserSpinner:Landroid/widget/Spinner;

    .line 94
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSelectNewScheduleBinding;->vehicleSpinner:Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mVehicleSpinner:Landroid/widget/Spinner;

    .line 95
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSelectNewScheduleBinding;->vehicleDataContainer:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mVehicleDataContainer:Landroid/view/View;

    .line 96
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSelectNewScheduleBinding;->userDataContainer:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mUserDataContainer:Landroid/view/View;

    .line 97
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenSelectNewScheduleBinding;->labelAddConfirmed:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mButtonConfirmedLabel:Landroid/widget/TextView;

    .line 98
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenSelectNewScheduleBinding;->layoutAddConfirmed:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-direct {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->setVehicleListSpinner()V

    .line 100
    invoke-direct {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->setUserListSpinner()V

    return-void
.end method

.method public dismissProgressDialogScreen()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/events/CancelProgressEvent;

    invoke-direct {v1}, Lcom/texa/careapp/app/events/CancelProgressEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 209
    sget-object v0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00d8

    return v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-schedule-addThreshold-SelectNewScheduleScreen(Landroid/view/View;)V
    .locals 0

    .line 98
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->addNewScheduleConfirmed()V

    return-void
.end method

.method public synthetic lambda$getScheduleEditableObservable$3$com-texa-careapp-app-schedule-addThreshold-SelectNewScheduleScreen(Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 219
    invoke-direct {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->createThresholdModelList()Ljava/util/List;

    move-result-object v0

    .line 220
    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 221
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method

.method public synthetic lambda$onResume$1$com-texa-careapp-app-schedule-addThreshold-SelectNewScheduleScreen(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mScheduleSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen$ThresholdTypeAdapter;

    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen$ThresholdTypeAdapter;-><init>(Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 157
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mScheduleSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/model/ThresholdModel;

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->initView(Lcom/texa/careapp/model/ThresholdModel;)V

    return-void
.end method

.method public onEvent(Lcom/texa/careapp/app/events/UserUpdatedEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v0, "user Sync completed"

    .line 274
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->dismissProgressDialogScreen()V

    .line 276
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/navigation/Navigator;->goBack()Z

    return-void
.end method

.method public onEvent(Lcom/texa/careapp/utils/VehicleObserver$VehicleChangedEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v0, "vehicle Sync completed"

    .line 267
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->dismissProgressDialogScreen()V

    .line 269
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/navigation/Navigator;->goBack()Z

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 196
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onPause()V

    .line 197
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mScheduleDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 198
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mScheduleSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 199
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 152
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    .line 153
    invoke-direct {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->getScheduleEditableObservable()Lio/reactivex/Observable;

    move-result-object v0

    .line 154
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->applySchedulers()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;)V

    sget-object v2, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen$$ExternalSyntheticLambda3;->INSTANCE:Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen$$ExternalSyntheticLambda3;

    .line 155
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mScheduleDisposable:Lio/reactivex/disposables/Disposable;

    .line 160
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mScheduleSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mSpinnerChangeListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 161
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.class public Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;
.super Ljava/lang/Object;
.source "ParametersViewPresenterV2.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ParametersViewPresenterV2"


# instance fields
.field private communicationSub:Lio/reactivex/disposables/Disposable;

.field private mBatteryChart:Lcom/github/mikephil/charting/charts/LineChart;

.field private mBatteryNoValue:Landroidx/appcompat/widget/AppCompatTextView;

.field private mBatteryStatus:Landroid/widget/TextView;

.field private mBatteryValue:Landroid/widget/TextView;

.field protected mCommunication:Lcom/texa/carelib/communication/Communication;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

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

.field protected mDongleModel:Lcom/texa/careapp/model/DongleModel;

.field private mEngineRpmChart:Lcom/github/mikephil/charting/charts/PieChart;

.field private mEngineRpmValue:Landroidx/appcompat/widget/AppCompatTextView;

.field private mEngineTempChart:Lcom/github/mikephil/charting/charts/LineChart;

.field private mEngineTempLay:Landroid/widget/RelativeLayout;

.field private mEngineTempNoValue:Landroidx/appcompat/widget/AppCompatTextView;

.field private mEngineTempValue:Landroid/widget/TextView;

.field private mFuelLevelChart:Lcom/github/mikephil/charting/charts/LineChart;

.field private mFuelLevelLay:Landroid/widget/RelativeLayout;

.field private mFuelLevelNoValue:Landroidx/appcompat/widget/AppCompatTextView;

.field private mFuelLevelValue:Landroid/widget/TextView;

.field private mSpeedChart:Lcom/github/mikephil/charting/charts/PieChart;

.field private mSpeedValue:Landroidx/appcompat/widget/AppCompatTextView;

.field protected mVehicleParamMapper:Lcom/texa/careapp/parameters/VehicleParamMapperV2;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mVehicleParametersManagerV2:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mViews:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mainLayout:Landroid/widget/RelativeLayout;

.field private otherParamLay:Landroid/widget/LinearLayout;

.field private paramSub:Lio/reactivex/disposables/Disposable;


# direct methods
.method public static synthetic $r8$lambda$_ONly9U_nSUd4vnXCSDkA91fdRA(Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;Lcom/texa/careapp/model/VehicleParam;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->update(Lcom/texa/careapp/model/VehicleParam;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mViews:Landroid/util/LongSparseArray;

    .line 108
    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;)V

    .line 109
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    return-void
.end method

.method private initBaseView()V
    .locals 17

    move-object/from16 v0, p0

    .line 212
    iget-object v1, v0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mVehicleParamMapper:Lcom/texa/careapp/parameters/VehicleParamMapperV2;

    sget-object v3, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_RPM:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v3}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->get(J)Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;

    move-result-object v2

    iget-object v3, v0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mEngineRpmChart:Lcom/github/mikephil/charting/charts/PieChart;

    iget-object v4, v0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mEngineRpmValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1, v2, v3, v4}, Lcom/texa/careapp/app/diagnosis/tab/parameters/chart/ParametersPieChart;->bindEmptyView(Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;Lcom/github/mikephil/charting/charts/PieChart;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 213
    iget-object v1, v0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mVehicleParamMapper:Lcom/texa/careapp/parameters/VehicleParamMapperV2;

    sget-object v3, Lcom/texa/carelib/diagresources/DataID$Parameter;->VEHICLE_SPEED:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v3}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->get(J)Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;

    move-result-object v2

    iget-object v3, v0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mSpeedChart:Lcom/github/mikephil/charting/charts/PieChart;

    iget-object v4, v0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mSpeedValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1, v2, v3, v4}, Lcom/texa/careapp/app/diagnosis/tab/parameters/chart/ParametersPieChart;->bindEmptyView(Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;Lcom/github/mikephil/charting/charts/PieChart;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 215
    iget-object v5, v0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mContext:Landroid/content/Context;

    iget-object v1, v0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mVehicleParamMapper:Lcom/texa/careapp/parameters/VehicleParamMapperV2;

    const-wide/32 v2, 0x499602d2

    invoke-virtual {v1, v2, v3}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->get(J)Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;

    iget-object v1, v0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    .line 216
    invoke-virtual {v1}, Lcom/texa/careapp/model/DongleModel;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v7

    iget-object v8, v0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mBatteryChart:Lcom/github/mikephil/charting/charts/LineChart;

    iget-object v9, v0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mBatteryValue:Landroid/widget/TextView;

    iget-object v10, v0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mBatteryNoValue:Landroidx/appcompat/widget/AppCompatTextView;

    .line 215
    invoke-static/range {v5 .. v10}, Lcom/texa/careapp/app/diagnosis/tab/parameters/chart/ParametersLineChart;->bindEmptyView(Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;Lcom/texa/careapp/model/VehicleModel;Lcom/github/mikephil/charting/charts/LineChart;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 217
    iget-object v11, v0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mContext:Landroid/content/Context;

    iget-object v1, v0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mVehicleParamMapper:Lcom/texa/careapp/parameters/VehicleParamMapperV2;

    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_TEMP:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 218
    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    .line 217
    invoke-virtual {v1, v2, v3}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->get(J)Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;

    iget-object v1, v0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    .line 218
    invoke-virtual {v1}, Lcom/texa/careapp/model/DongleModel;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v13

    iget-object v14, v0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mEngineTempChart:Lcom/github/mikephil/charting/charts/LineChart;

    iget-object v15, v0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mEngineTempValue:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mEngineTempNoValue:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v16, v1

    .line 217
    invoke-static/range {v11 .. v16}, Lcom/texa/careapp/app/diagnosis/tab/parameters/chart/ParametersLineChart;->bindEmptyView(Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;Lcom/texa/careapp/model/VehicleModel;Lcom/github/mikephil/charting/charts/LineChart;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 219
    iget-object v2, v0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mContext:Landroid/content/Context;

    iget-object v1, v0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mVehicleParamMapper:Lcom/texa/careapp/parameters/VehicleParamMapperV2;

    sget-object v3, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    .line 220
    invoke-virtual {v3}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v3

    .line 219
    invoke-virtual {v1, v3, v4}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->get(J)Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;

    iget-object v1, v0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    .line 220
    invoke-virtual {v1}, Lcom/texa/careapp/model/DongleModel;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v4

    iget-object v5, v0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mFuelLevelChart:Lcom/github/mikephil/charting/charts/LineChart;

    iget-object v6, v0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mFuelLevelValue:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mFuelLevelNoValue:Landroidx/appcompat/widget/AppCompatTextView;

    .line 219
    invoke-static/range {v2 .. v7}, Lcom/texa/careapp/app/diagnosis/tab/parameters/chart/ParametersLineChart;->bindEmptyView(Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;Lcom/texa/careapp/model/VehicleModel;Lcom/github/mikephil/charting/charts/LineChart;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-void
.end method

.method static synthetic lambda$observeParameters$0(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "mVehicleParametersManagerV2#bindView(observeParameters) onError"

    .line 193
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$observeParameters$1(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ERROR PARAMETERS CARD SUBSCRIBER"

    .line 195
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$observeParameters$3(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "error observing connection status"

    .line 207
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private observeParameters()V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/VehicleParam;

    .line 188
    invoke-direct {p0, v1}, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->update(Lcom/texa/careapp/model/VehicleParam;)V

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mVehicleParametersManagerV2:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-virtual {v0}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->observeForegroundParams()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2$$ExternalSyntheticLambda2;->INSTANCE:Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2$$ExternalSyntheticLambda2;

    .line 193
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;)V

    sget-object v2, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2$$ExternalSyntheticLambda3;->INSTANCE:Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2$$ExternalSyntheticLambda3;

    .line 195
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->paramSub:Lio/reactivex/disposables/Disposable;

    .line 197
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-virtual {v0}, Lcom/texa/careapp/carelib/CommunicationObservable;->observeConnectionStatus()Lio/reactivex/Observable;

    move-result-object v0

    .line 198
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 199
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;)V

    sget-object v2, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2$$ExternalSyntheticLambda4;->INSTANCE:Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2$$ExternalSyntheticLambda4;

    .line 200
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->communicationSub:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private update(Lcom/texa/careapp/model/VehicleParam;)V
    .locals 14

    .line 226
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getDataId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->isParameterVisibleForUser(J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mVehicleParamMapper:Lcom/texa/careapp/parameters/VehicleParamMapperV2;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->updateParam(Lcom/texa/careapp/model/VehicleParam;)Landroid/util/LongSparseArray;

    .line 233
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getDataId()J

    move-result-wide v0

    const-wide/32 v2, 0x499602d2

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-nez v6, :cond_2

    .line 234
    iget-object v7, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mVehicleParamMapper:Lcom/texa/careapp/parameters/VehicleParamMapperV2;

    invoke-virtual {p1, v2, v3}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->get(J)Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;

    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    .line 235
    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleModel;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v9

    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mCommunication:Lcom/texa/carelib/communication/Communication;

    .line 236
    invoke-interface {p1}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p1

    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne p1, v0, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    iget-object v11, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mBatteryChart:Lcom/github/mikephil/charting/charts/LineChart;

    iget-object v12, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mBatteryValue:Landroid/widget/TextView;

    iget-object v13, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mBatteryNoValue:Landroidx/appcompat/widget/AppCompatTextView;

    .line 234
    invoke-static/range {v7 .. v13}, Lcom/texa/careapp/app/diagnosis/tab/parameters/chart/ParametersLineChart;->bindView(Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;Lcom/texa/careapp/model/VehicleModel;ZLcom/github/mikephil/charting/charts/LineChart;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    goto/16 :goto_6

    .line 238
    :cond_2
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getDataId()J

    move-result-wide v0

    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_TEMP:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    cmp-long v6, v0, v2

    if-nez v6, :cond_5

    .line 240
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mEngineTempLay:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 241
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ec

    .line 242
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 244
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mVehicleParamMapper:Lcom/texa/careapp/parameters/VehicleParamMapperV2;

    invoke-virtual {v0}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->isThereFuelParameter()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 245
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mFuelLevelLay:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070063

    .line 247
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 246
    invoke-virtual {p1, v5, v5, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 248
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mEngineTempLay:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 250
    :cond_3
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mFuelLevelLay:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 251
    invoke-virtual {p1, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 252
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mEngineTempLay:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    :goto_1
    iget-object v6, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mVehicleParamMapper:Lcom/texa/careapp/parameters/VehicleParamMapperV2;

    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_TEMP:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->get(J)Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;

    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    .line 256
    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleModel;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v8

    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {p1}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p1

    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne p1, v0, :cond_4

    const/4 v9, 0x1

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    :goto_2
    iget-object v10, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mEngineTempChart:Lcom/github/mikephil/charting/charts/LineChart;

    iget-object v11, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mEngineTempValue:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mEngineTempNoValue:Landroidx/appcompat/widget/AppCompatTextView;

    .line 255
    invoke-static/range {v6 .. v12}, Lcom/texa/careapp/app/diagnosis/tab/parameters/chart/ParametersLineChart;->bindView(Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;Lcom/texa/careapp/model/VehicleModel;ZLcom/github/mikephil/charting/charts/LineChart;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    goto/16 :goto_6

    .line 258
    :cond_5
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getDataId()J

    move-result-wide v0

    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    cmp-long v6, v0, v2

    if-eqz v6, :cond_b

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getDataId()J

    move-result-wide v0

    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_REL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    cmp-long v6, v0, v2

    if-nez v6, :cond_6

    goto/16 :goto_4

    .line 262
    :cond_6
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getDataId()J

    move-result-wide v0

    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_RPM:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    cmp-long v6, v0, v2

    if-nez v6, :cond_7

    .line 263
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mVehicleParamMapper:Lcom/texa/careapp/parameters/VehicleParamMapperV2;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_RPM:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->get(J)Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mEngineRpmChart:Lcom/github/mikephil/charting/charts/PieChart;

    iget-object v2, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mEngineRpmValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, v0, v1, v2}, Lcom/texa/careapp/app/diagnosis/tab/parameters/chart/ParametersPieChart;->bindView(Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;Lcom/github/mikephil/charting/charts/PieChart;Landroidx/appcompat/widget/AppCompatTextView;)V

    goto/16 :goto_6

    .line 264
    :cond_7
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getDataId()J

    move-result-wide v0

    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Parameter;->VEHICLE_SPEED:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    cmp-long v6, v0, v2

    if-nez v6, :cond_8

    .line 265
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mVehicleParamMapper:Lcom/texa/careapp/parameters/VehicleParamMapperV2;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->VEHICLE_SPEED:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->get(J)Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mSpeedChart:Lcom/github/mikephil/charting/charts/PieChart;

    iget-object v2, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mSpeedValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, v0, v1, v2}, Lcom/texa/careapp/app/diagnosis/tab/parameters/chart/ParametersPieChart;->bindView(Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;Lcom/github/mikephil/charting/charts/PieChart;Landroidx/appcompat/widget/AppCompatTextView;)V

    goto/16 :goto_6

    .line 267
    :cond_8
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mViews:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getDataId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    .line 268
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0069

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mViews:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getDataId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 270
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 272
    iget-object v2, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070068

    .line 273
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 272
    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 274
    iget-object v2, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->otherParamLay:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    :cond_9
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mVehicleParamMapper:Lcom/texa/careapp/parameters/VehicleParamMapperV2;

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getDataId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->get(J)Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mCommunication:Lcom/texa/carelib/communication/Communication;

    .line 278
    invoke-interface {v1}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v1

    sget-object v2, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne v1, v2, :cond_a

    goto :goto_3

    :cond_a
    const/4 v4, 0x0

    :goto_3
    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mViews:Landroid/util/LongSparseArray;

    .line 279
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getDataId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 277
    invoke-static {v0, v4, p1}, Lcom/texa/careapp/app/diagnosis/tab/parameters/chart/ParametersGeneric;->bindView(Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;ZLandroid/view/View;)V

    goto :goto_6

    .line 259
    :cond_b
    :goto_4
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mVehicleParamMapper:Lcom/texa/careapp/parameters/VehicleParamMapperV2;

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->get(J)Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartItem;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;

    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    .line 260
    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v7

    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v0

    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne v0, v1, :cond_c

    const/4 v8, 0x1

    goto :goto_5

    :cond_c
    const/4 v8, 0x0

    :goto_5
    iget-object v9, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mFuelLevelChart:Lcom/github/mikephil/charting/charts/LineChart;

    iget-object v10, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mFuelLevelValue:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mFuelLevelNoValue:Landroidx/appcompat/widget/AppCompatTextView;

    move-object v5, p1

    .line 259
    invoke-static/range {v5 .. v11}, Lcom/texa/careapp/app/diagnosis/tab/parameters/chart/ParametersLineChart;->bindView(Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;Lcom/texa/careapp/model/VehicleModel;ZLcom/github/mikephil/charting/charts/LineChart;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    :goto_6
    return-void
.end method

.method private updateBatteryStatus()V
    .locals 5

    .line 145
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 160
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getAlarms()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 161
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 162
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/model/VehicleAlarm;

    .line 163
    invoke-virtual {v2}, Lcom/texa/careapp/model/VehicleAlarm;->getAlarmType()Lcom/texa/careapp/model/AlarmType;

    move-result-object v3

    sget-object v4, Lcom/texa/careapp/model/AlarmType;->BATTERY_STATE:Lcom/texa/careapp/model/AlarmType;

    if-ne v3, v4, :cond_1

    .line 164
    invoke-virtual {v2}, Lcom/texa/careapp/model/VehicleAlarm;->getAlarmStatus()Lcom/texa/careapp/model/AlarmStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/careapp/model/AlarmStatus;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 167
    :cond_2
    sget-object v0, Lcom/texa/careapp/utils/BatteryLevel;->GREEN:Lcom/texa/careapp/utils/BatteryLevel;

    .line 168
    sget-object v2, Lcom/texa/careapp/model/AlarmStatus;->RED:Lcom/texa/careapp/model/AlarmStatus;

    invoke-virtual {v2}, Lcom/texa/careapp/model/AlarmStatus;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 169
    sget-object v0, Lcom/texa/careapp/utils/BatteryLevel;->RED:Lcom/texa/careapp/utils/BatteryLevel;

    goto :goto_1

    .line 170
    :cond_3
    sget-object v2, Lcom/texa/careapp/model/AlarmStatus;->YELLOW:Lcom/texa/careapp/model/AlarmStatus;

    invoke-virtual {v2}, Lcom/texa/careapp/model/AlarmStatus;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 171
    sget-object v0, Lcom/texa/careapp/utils/BatteryLevel;->YELLOW:Lcom/texa/careapp/utils/BatteryLevel;

    .line 174
    :cond_4
    :goto_1
    invoke-direct {p0, v0}, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->updateBatteryStatusValue(Lcom/texa/careapp/utils/BatteryLevel;)V

    return-void
.end method

.method private updateBatteryStatusValue(Lcom/texa/careapp/utils/BatteryLevel;)V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mBatteryStatus:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/texa/careapp/utils/BatteryLevel;->getStringRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 179
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mBatteryStatus:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 180
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mBatteryStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 181
    invoke-virtual {p1}, Lcom/texa/careapp/utils/BatteryLevel;->getColorRes()I

    move-result p1

    const/4 v2, 0x0

    .line 180
    invoke-static {v1, p1, v2}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public afterViewInjection(Lcom/texa/careapp/databinding/DiagnosisDataParametersLayoutV2Binding;)V
    .locals 1

    .line 113
    iget-object v0, p1, Lcom/texa/careapp/databinding/DiagnosisDataParametersLayoutV2Binding;->diagnosisDataParametersLayout:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mainLayout:Landroid/widget/RelativeLayout;

    .line 114
    iget-object v0, p1, Lcom/texa/careapp/databinding/DiagnosisDataParametersLayoutV2Binding;->diagnosisDataParametersLayoutBatteryStatus:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mBatteryStatus:Landroid/widget/TextView;

    .line 115
    iget-object v0, p1, Lcom/texa/careapp/databinding/DiagnosisDataParametersLayoutV2Binding;->diagnosisDataParametersBatteryChartValue:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mBatteryValue:Landroid/widget/TextView;

    .line 116
    iget-object v0, p1, Lcom/texa/careapp/databinding/DiagnosisDataParametersLayoutV2Binding;->diagnosisDataParametersBatteryChart:Lcom/github/mikephil/charting/charts/LineChart;

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mBatteryChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 117
    iget-object v0, p1, Lcom/texa/careapp/databinding/DiagnosisDataParametersLayoutV2Binding;->diagnosisDataParametersBatteryNoDataChart:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mBatteryNoValue:Landroidx/appcompat/widget/AppCompatTextView;

    .line 118
    iget-object v0, p1, Lcom/texa/careapp/databinding/DiagnosisDataParametersLayoutV2Binding;->diagnosisDataParametersSpeedChartValue:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mSpeedValue:Landroidx/appcompat/widget/AppCompatTextView;

    .line 119
    iget-object v0, p1, Lcom/texa/careapp/databinding/DiagnosisDataParametersLayoutV2Binding;->diagnosisDataParametersSpeedChart:Lcom/github/mikephil/charting/charts/PieChart;

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mSpeedChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 120
    iget-object v0, p1, Lcom/texa/careapp/databinding/DiagnosisDataParametersLayoutV2Binding;->diagnosisDataParametersEngineRpmChartValue:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mEngineRpmValue:Landroidx/appcompat/widget/AppCompatTextView;

    .line 121
    iget-object v0, p1, Lcom/texa/careapp/databinding/DiagnosisDataParametersLayoutV2Binding;->diagnosisDataParametersEngineRpmChart:Lcom/github/mikephil/charting/charts/PieChart;

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mEngineRpmChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 122
    iget-object v0, p1, Lcom/texa/careapp/databinding/DiagnosisDataParametersLayoutV2Binding;->diagnosisDataParametersEngineTempChartValue:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mEngineTempValue:Landroid/widget/TextView;

    .line 123
    iget-object v0, p1, Lcom/texa/careapp/databinding/DiagnosisDataParametersLayoutV2Binding;->diagnosisDataParametersEngineTempChart:Lcom/github/mikephil/charting/charts/LineChart;

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mEngineTempChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 124
    iget-object v0, p1, Lcom/texa/careapp/databinding/DiagnosisDataParametersLayoutV2Binding;->diagnosisDataParametersEngineTempNoDataChart:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mEngineTempNoValue:Landroidx/appcompat/widget/AppCompatTextView;

    .line 125
    iget-object v0, p1, Lcom/texa/careapp/databinding/DiagnosisDataParametersLayoutV2Binding;->diagnosisDataParametersEngineTempChartLay:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mEngineTempLay:Landroid/widget/RelativeLayout;

    .line 126
    iget-object v0, p1, Lcom/texa/careapp/databinding/DiagnosisDataParametersLayoutV2Binding;->diagnosisDataParametersFuelLevelChartValue:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mFuelLevelValue:Landroid/widget/TextView;

    .line 127
    iget-object v0, p1, Lcom/texa/careapp/databinding/DiagnosisDataParametersLayoutV2Binding;->diagnosisDataParametersFuelLevelChart:Lcom/github/mikephil/charting/charts/LineChart;

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mFuelLevelChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 128
    iget-object v0, p1, Lcom/texa/careapp/databinding/DiagnosisDataParametersLayoutV2Binding;->diagnosisDataParametersFuelLevelNoDataChart:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mFuelLevelNoValue:Landroidx/appcompat/widget/AppCompatTextView;

    .line 129
    iget-object v0, p1, Lcom/texa/careapp/databinding/DiagnosisDataParametersLayoutV2Binding;->diagnosisDataParametersFuelLevelChartLay:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mFuelLevelLay:Landroid/widget/RelativeLayout;

    .line 130
    iget-object p1, p1, Lcom/texa/careapp/databinding/DiagnosisDataParametersLayoutV2Binding;->diagnosisDataParametersOtherLay:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->otherParamLay:Landroid/widget/LinearLayout;

    .line 132
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->initBaseView()V

    .line 133
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->observeParameters()V

    .line 134
    invoke-direct {p0}, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->updateBatteryStatus()V

    return-void
.end method

.method destroySub()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->paramSub:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 139
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->communicationSub:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public synthetic lambda$observeParameters$2$com-texa-careapp-app-diagnosis-tab-parameters-ParametersViewPresenterV2(Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 201
    iget-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleModel;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 203
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/VehicleParam;

    .line 204
    invoke-direct {p0, v0}, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;->update(Lcom/texa/careapp/model/VehicleParam;)V

    goto :goto_0

    :cond_0
    return-void
.end method

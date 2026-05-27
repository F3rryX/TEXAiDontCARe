.class public Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;
.super Ljava/lang/Object;
.source "ParametersCardViewPresenter.java"


# instance fields
.field private isSmallScreen:Z

.field private mChart:Lcom/github/mikephil/charting/charts/LineChart;

.field private mChartNoDataText:Landroidx/appcompat/widget/AppCompatTextView;

.field private mChartValue:Landroidx/appcompat/widget/AppCompatTextView;

.field protected mCommunication:Lcom/texa/carelib/communication/Communication;
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

.field private mIcon:Landroid/widget/ImageView;

.field private mNavigator:Lcom/texa/care/navigation/Navigator;

.field protected mPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mTitle:Landroidx/appcompat/widget/AppCompatTextView;

.field protected mVehicleParamMapper:Lcom/texa/careapp/parameters/VehicleParamMapperV2;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mVehicleParametersManagerV2:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private negativeColor:I

.field private paramSub:Lio/reactivex/disposables/Disposable;

.field private positiveColor:I

.field private warningColor:I


# direct methods
.method public static synthetic $r8$lambda$UYMVtejDAec_VgL5fMBG364M3yA(Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;Lcom/texa/careapp/model/VehicleParam;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->update(Lcom/texa/careapp/model/VehicleParam;)V

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/CareApplication;Lcom/texa/care/navigation/Navigator;Z)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;)V

    .line 92
    iput-object p2, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mNavigator:Lcom/texa/care/navigation/Navigator;

    .line 93
    iput-boolean p3, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->isSmallScreen:Z

    return-void
.end method

.method private changeChart()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    if-nez v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v0

    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne v0, v1, :cond_2

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v1}, Lcom/texa/carelib/communication/Communication;->getCurrentDevice()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v1}, Lcom/texa/carelib/communication/Communication;->getCurrentDevice()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/DeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v1}, Lcom/texa/carelib/communication/Communication;->getCurrentDevice()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/DeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleByMacAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 131
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v1}, Lcom/texa/carelib/communication/Communication;->getCurrentDevice()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v1}, Lcom/texa/carelib/communication/Communication;->getCurrentDevice()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 132
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v1}, Lcom/texa/carelib/communication/Communication;->getCurrentDevice()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleByHwid(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 134
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 135
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleModel;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 140
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mNavigator:Lcom/texa/care/navigation/Navigator;

    new-instance v1, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;

    iget-object v2, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mVehicleParamMapper:Lcom/texa/careapp/parameters/VehicleParamMapperV2;

    invoke-virtual {v2}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->getAllCardParameter()Landroid/util/LongSparseArray;

    move-result-object v2

    iget-object v3, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v3}, Lcom/texa/careapp/model/DongleModel;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/careapp/model/VehicleModel;->getHwid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;-><init>(Landroid/util/LongSparseArray;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    :cond_3
    return-void
.end method

.method private chartClicked()V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_DASHBOARD_TAPPED_PARAMETERS_DASHBOARD_CARD:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 119
    sput-boolean v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCanMoveCard:Z

    .line 120
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/texa/careapp/app/diagnosis/DiagnosisDataActivity;->buildIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private createChart(Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;Z)V
    .locals 8

    .line 214
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    new-instance v0, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/DongleModel;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v1

    .line 216
    invoke-virtual {p2, p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getNormalColor(Landroid/content/Context;)I

    move-result v2

    const v3, 0x7f0800ba

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, p2, v2, v3}, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;-><init>(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;ILandroid/graphics/drawable/Drawable;)V

    if-nez p3, :cond_0

    .line 217
    invoke-static {p2}, Lcom/texa/careapp/utils/ChartUtils;->getChartData(Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getMockHistory()Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->generateChart(Landroid/content/Context;Ljava/util/List;)V

    .line 219
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mChartValue:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 220
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mChartValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->getChartColor(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 222
    invoke-virtual {p2}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getParameterType()J

    move-result-wide v3

    const-wide/32 v5, 0x499602d2

    const/4 v1, 0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    const v3, 0x7f110a7d

    .line 223
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getReadableValue()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p2}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getUnit()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 224
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 225
    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 226
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getUnit()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v6, 0x21

    .line 225
    invoke-interface {v3, v4, v5, v2, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 229
    iget-object v2, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mChartValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v2, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mChartValue:Landroidx/appcompat/widget/AppCompatTextView;

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    goto :goto_2

    .line 232
    :cond_1
    iget-object v2, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v2}, Lcom/texa/careapp/model/DongleModel;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v2

    invoke-static {v2}, Lcom/texa/careapp/utils/ChartUtils;->readBatteryValue(Lcom/texa/careapp/model/VehicleModel;)Ljava/lang/String;

    move-result-object v2

    .line 233
    sget-object v3, Lcom/texa/careapp/utils/BatteryLevel;->GREEN:Lcom/texa/careapp/utils/BatteryLevel;

    .line 234
    sget-object v4, Lcom/texa/careapp/model/AlarmStatus;->RED:Lcom/texa/careapp/model/AlarmStatus;

    invoke-virtual {v4}, Lcom/texa/careapp/model/AlarmStatus;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 235
    sget-object v3, Lcom/texa/careapp/utils/BatteryLevel;->RED:Lcom/texa/careapp/utils/BatteryLevel;

    goto :goto_1

    .line 236
    :cond_2
    sget-object v4, Lcom/texa/careapp/model/AlarmStatus;->YELLOW:Lcom/texa/careapp/model/AlarmStatus;

    invoke-virtual {v4}, Lcom/texa/careapp/model/AlarmStatus;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 237
    sget-object v3, Lcom/texa/careapp/utils/BatteryLevel;->YELLOW:Lcom/texa/careapp/utils/BatteryLevel;

    .line 240
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mChartValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v3}, Lcom/texa/careapp/utils/BatteryLevel;->getStringRes()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v2, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mChartValue:Landroidx/appcompat/widget/AppCompatTextView;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    :goto_2
    if-nez p3, :cond_4

    .line 244
    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->getChartColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p2, p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getNormalColor(Landroid/content/Context;)I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 245
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mIcon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->positiveColor:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_3

    :cond_4
    if-nez p3, :cond_5

    .line 246
    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->getChartColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p2, p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getProblemColor(Landroid/content/Context;)I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 247
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mIcon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->negativeColor:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_3

    :cond_5
    if-nez p3, :cond_6

    .line 248
    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->getChartColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p2, p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getWarningColor(Landroid/content/Context;)I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 249
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mIcon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->warningColor:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_3

    .line 251
    :cond_6
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mChartValue:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 252
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mIcon:Landroid/widget/ImageView;

    const v2, 0x7f060045

    invoke-static {p1, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 255
    :goto_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 256
    invoke-virtual {v0}, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->getYAxisRealVal()Ljava/util/ArrayList;

    move-result-object v3

    .line 257
    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->getChartColor(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p2}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getParameterType()J

    move-result-wide v5

    move-object v2, p1

    move v7, p3

    .line 256
    invoke-static/range {v2 .. v7}, Lcom/texa/careapp/utils/ChartUtils;->getYAxisRealData(Landroid/content/Context;Ljava/util/ArrayList;IJZ)Lcom/github/mikephil/charting/data/LineDataSet;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-virtual {v0}, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->getYAxisMockVal()Ljava/util/ArrayList;

    move-result-object p2

    .line 259
    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->getChartColor(Landroid/content/Context;)I

    move-result p3

    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/ChartUtils$ChartConfiguration;->getChartFill(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 258
    invoke-static {p1, p2, p3, v0}, Lcom/texa/careapp/utils/ChartUtils;->getYAxisMockData(Landroid/content/Context;Ljava/util/ArrayList;ILandroid/graphics/drawable/Drawable;)Lcom/github/mikephil/charting/data/LineDataSet;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    new-instance p2, Lcom/github/mikephil/charting/data/LineData;

    invoke-direct {p2, v1}, Lcom/github/mikephil/charting/data/LineData;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 262
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    return-void
.end method

.method static synthetic lambda$observeParameters$2(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "mVehicleParametersManagerV2#bindView(observeParameters) onError"

    .line 159
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

    const-string v1, "OnError observeParameters"

    .line 160
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private observeParameters()V
    .locals 3

    .line 157
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->refreshParameters()V

    .line 158
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mVehicleParametersManagerV2:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-virtual {v0}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->observeForegroundParams()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter$$ExternalSyntheticLambda3;->INSTANCE:Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter$$ExternalSyntheticLambda3;

    .line 159
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;)V

    sget-object v2, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter$$ExternalSyntheticLambda4;->INSTANCE:Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter$$ExternalSyntheticLambda4;

    .line 160
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->paramSub:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private refreshParameters()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mVehicleParamMapper:Lcom/texa/careapp/parameters/VehicleParamMapperV2;

    invoke-virtual {v0}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->refreshBaseParameter()V

    .line 146
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getFilterParameters()Ljava/util/List;

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

    .line 150
    invoke-direct {p0, v1}, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->update(Lcom/texa/careapp/model/VehicleParam;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setMockDataChartStyle(Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;Z)V
    .locals 5

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 207
    iget-object p2, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mChartNoDataText:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f110b4e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 209
    :cond_0
    iget-object p2, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mChartNoDataText:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f110b4f

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 210
    :goto_0
    iget-object p2, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2, p1, v0}, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->createChart(Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;Z)V

    return-void
.end method

.method private update(Lcom/texa/careapp/model/VehicleParam;)V
    .locals 2

    .line 169
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getDataId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->isParameterVisibleForUser(J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mVehicleParamMapper:Lcom/texa/careapp/parameters/VehicleParamMapperV2;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->updateCardParam(Lcom/texa/careapp/model/VehicleParam;)Landroid/util/LongSparseArray;

    .line 175
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->updateChart()V

    return-void
.end method

.method private updateChart()V
    .locals 6

    .line 179
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mVehicleParamMapper:Lcom/texa/careapp/parameters/VehicleParamMapperV2;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mPreferences:Landroid/content/SharedPreferences;

    .line 181
    iget-object v2, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v2}, Lcom/texa/careapp/model/DongleModel;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v2}, Lcom/texa/careapp/model/DongleModel;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/model/VehicleModel;->getHwid()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 180
    :goto_0
    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->getParameterCardChartType(Landroid/content/SharedPreferences;Ljava/lang/String;)J

    move-result-wide v1

    .line 179
    invoke-virtual {v0, v1, v2}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;->getCardParameter(J)Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;

    move-result-object v0

    .line 183
    iget-boolean v1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->isSmallScreen:Z

    if-eqz v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mIcon:Landroid/widget/ImageView;

    new-instance v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v3, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mContext:Landroid/content/Context;

    .line 185
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700e6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v5, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mContext:Landroid/content/Context;

    .line 186
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 184
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    if-eqz v1, :cond_4

    .line 189
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->clear()V

    .line 190
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getMaxValue()I

    move-result v2

    invoke-virtual {v0}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getMinValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/texa/careapp/utils/ChartUtils;->getBaseConfiguration(Lcom/github/mikephil/charting/charts/LineChart;II)Lcom/github/mikephil/charting/charts/LineChart;

    move-result-object v1

    iput-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 191
    invoke-virtual {v0}, Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;->getValue()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 192
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mChartNoDataText:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 193
    invoke-direct {p0, v0, v3}, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->setMockDataChartStyle(Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;Z)V

    goto :goto_1

    .line 194
    :cond_2
    invoke-static {v0}, Lcom/texa/careapp/utils/ChartUtils;->getChartData(Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    .line 195
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mChartNoDataText:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    const/4 v1, 0x1

    .line 196
    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->setMockDataChartStyle(Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;Z)V

    goto :goto_1

    .line 198
    :cond_3
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mChartNoDataText:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 199
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0, v3}, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->createChart(Landroid/content/Context;Lcom/texa/careapp/app/diagnosis/tab/chart/ParametersChartLine;Z)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public afterViewInjection(Lcom/texa/careapp/databinding/DashboardCardParametersBinding;)V
    .locals 2

    .line 97
    iget-object v0, p1, Lcom/texa/careapp/databinding/DashboardCardParametersBinding;->dashboardCardParametersIcon:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mIcon:Landroid/widget/ImageView;

    .line 98
    iget-object v0, p1, Lcom/texa/careapp/databinding/DashboardCardParametersBinding;->dashboardCardParametersChart:Lcom/github/mikephil/charting/charts/LineChart;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 99
    iget-object v0, p1, Lcom/texa/careapp/databinding/DashboardCardParametersBinding;->dashboardCardParametersTitle:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 100
    iget-object v0, p1, Lcom/texa/careapp/databinding/DashboardCardParametersBinding;->dashboardCardParametersNoDataChart:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mChartNoDataText:Landroidx/appcompat/widget/AppCompatTextView;

    .line 101
    iget-object v0, p1, Lcom/texa/careapp/databinding/DashboardCardParametersBinding;->dashboardCardParametersValue:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mChartValue:Landroidx/appcompat/widget/AppCompatTextView;

    .line 102
    iget-object v0, p1, Lcom/texa/careapp/databinding/DashboardCardParametersBinding;->dashboardCardParametersCard:Landroidx/cardview/widget/CardView;

    new-instance v1, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;)V

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 104
    iget-object v0, p1, Lcom/texa/careapp/databinding/DashboardCardParametersBinding;->dashboardCardParametersCard:Landroidx/cardview/widget/CardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setPreventCornerOverlap(Z)V

    .line 106
    :cond_0
    iget-object p1, p1, Lcom/texa/careapp/databinding/DashboardCardParametersBinding;->dashboardCardParametersSelector:Landroid/widget/ImageView;

    new-instance v0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->observeParameters()V

    .line 109
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mContext:Landroid/content/Context;

    const v0, 0x7f060046

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->positiveColor:I

    .line 110
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mContext:Landroid/content/Context;

    const v0, 0x7f060044

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->negativeColor:I

    .line 111
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mContext:Landroid/content/Context;

    const v0, 0x7f060037

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->warningColor:I

    .line 113
    invoke-virtual {p0}, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->updateCard()V

    return-void
.end method

.method destroySub()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->paramSub:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-dashboard-card-ParametersCardViewPresenter(Landroid/view/View;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->chartClicked()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$1$com-texa-careapp-app-dashboard-card-ParametersCardViewPresenter(Landroid/view/View;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->changeChart()V

    return-void
.end method

.method public updateCard()V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    if-eqz v0, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->refreshParameters()V

    .line 269
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;->updateChart()V

    :cond_0
    return-void
.end method

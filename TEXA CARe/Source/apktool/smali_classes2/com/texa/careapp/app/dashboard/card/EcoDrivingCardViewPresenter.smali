.class public Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;
.super Ljava/lang/Object;
.source "EcoDrivingCardViewPresenter.java"


# instance fields
.field protected avgCalculator:Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected careObserver:Lcom/texa/careapp/carelib/ICareObserver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private isActive:Z

.field private isFirmwareUpdate:Z

.field private isSmallScreen:Z

.field private mButton:Landroid/widget/TextView;

.field protected mContext:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mDescription:Landroidx/appcompat/widget/AppCompatTextView;

.field protected mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mIcon:Landroid/widget/ImageView;

.field private mScore:Lcom/texa/careapp/views/CircleDisplay;

.field protected mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mTitle:Landroidx/appcompat/widget/AppCompatTextView;

.field private negativeColor:I

.field private positiveColor:I

.field private warningColor:I


# direct methods
.method public constructor <init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;Z)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->isActive:Z

    .line 65
    iput-boolean v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->isFirmwareUpdate:Z

    .line 68
    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;)V

    .line 69
    iput-boolean p2, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->isSmallScreen:Z

    return-void
.end method

.method private cardClicked()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_DASHBOARD_TAPPED_DRIVING_STYLE_CARD:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 93
    sput-boolean v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCanMoveCard:Z

    .line 95
    iget-boolean v1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->isActive:Z

    if-nez v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "ECO_DRIVING_TUTORIAL"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 104
    :goto_0
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private initCircleDisplay(Lcom/texa/careapp/views/CircleDisplay;I)V
    .locals 4

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    int-to-float v1, p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 204
    :goto_0
    sget v2, Lcom/texa/careapp/utils/EcoDrivingUtils;->MAX_VALUE:I

    int-to-float v2, v2

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Lcom/texa/careapp/views/CircleDisplay;->showValue(FFZ)V

    const/16 v1, 0x3e8

    .line 205
    invoke-virtual {p1, v1}, Lcom/texa/careapp/views/CircleDisplay;->setAnimDuration(I)V

    .line 206
    iget-boolean v1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->isSmallScreen:Z

    if-eqz v1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f060043

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/texa/careapp/views/CircleDisplay;->setColor(I)V

    .line 208
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/texa/careapp/views/CircleDisplay;->setWholeCircleColor(I)V

    .line 209
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/texa/careapp/utils/EcoDrivingUtils;->getReferenceColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/texa/careapp/views/CircleDisplay;->setTextColor(I)V

    goto :goto_1

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/texa/careapp/utils/EcoDrivingUtils;->getReferenceColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/texa/careapp/views/CircleDisplay;->setColor(I)V

    .line 212
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f0600b7

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/texa/careapp/views/CircleDisplay;->setWholeCircleColor(I)V

    .line 213
    invoke-virtual {p1, v0}, Lcom/texa/careapp/views/CircleDisplay;->setTextColor(I)V

    .line 215
    :goto_1
    invoke-virtual {p1, v3}, Lcom/texa/careapp/views/CircleDisplay;->setDrawText(Z)V

    const v1, 0x7f090002

    .line 216
    invoke-virtual {p1, v1}, Lcom/texa/careapp/views/CircleDisplay;->setTypeface(I)V

    if-eq p2, v0, :cond_2

    if-eqz p2, :cond_2

    .line 217
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_2

    .line 218
    :cond_2
    iget-object p2, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mContext:Landroid/content/Context;

    const v0, 0x7f1109a6

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 217
    :goto_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/careapp/views/CircleDisplay;->setCustomText(Ljava/lang/String;)V

    return-void
.end method

.method private initData()V
    .locals 10

    .line 151
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 153
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    .line 154
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    .line 155
    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xe

    .line 156
    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v6, 0x5

    const/16 v7, -0x15

    .line 157
    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 158
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const/16 v9, 0x17

    .line 159
    invoke-virtual {v0, v1, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0x3b

    .line 160
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 161
    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 162
    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0x1b

    .line 163
    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->add(II)V

    .line 164
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 166
    iget-boolean v2, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->isActive:Z

    if-nez v2, :cond_0

    .line 167
    iget-object v2, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mButton:Landroid/widget/TextView;

    const v3, 0x7f1108fa

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 168
    :cond_0
    iget-boolean v2, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->isFirmwareUpdate:Z

    if-nez v2, :cond_1

    .line 169
    iget-object v2, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mButton:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object v2, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mButton:Landroid/widget/TextView;

    const v3, 0x7f1108f8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 174
    :goto_0
    iget-object v2, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->avgCalculator:Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;

    const/4 v3, 0x1

    invoke-static {v7, v8, v0, v1, v3}, Lcom/texa/careapp/app/ecodriving/model/EcoDrivingEventsDataManager;->getDailyScoreList(JJZ)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;->getNormalizedAverageByType(Ljava/util/List;)Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;

    move-result-object v2

    .line 175
    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->getValue()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    .line 177
    iget-boolean v4, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->isActive:Z

    if-eqz v4, :cond_8

    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    iget-boolean v4, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->isFirmwareUpdate:Z

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    if-ltz v2, :cond_5

    const/16 v4, 0x64

    if-gt v2, v4, :cond_5

    .line 181
    sget v0, Lcom/texa/careapp/utils/EcoDrivingUtils;->PROBLEM_VALUE:I

    if-gt v2, v0, :cond_3

    .line 182
    invoke-direct {p0, v2}, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->setNegativeCard(I)V

    goto :goto_2

    .line 183
    :cond_3
    sget v0, Lcom/texa/careapp/utils/EcoDrivingUtils;->WARN_VALUE:I

    if-gt v2, v0, :cond_4

    sget v0, Lcom/texa/careapp/utils/EcoDrivingUtils;->PROBLEM_VALUE:I

    if-le v2, v0, :cond_4

    .line 184
    invoke-direct {p0, v2}, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->setWarningCard(I)V

    goto :goto_2

    .line 186
    :cond_4
    invoke-direct {p0, v2}, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->setPositiveCard(I)V

    goto :goto_2

    .line 188
    :cond_5
    iget-object v2, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->avgCalculator:Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;

    invoke-static {v7, v8, v0, v1, v3}, Lcom/texa/careapp/app/ecodriving/model/EcoDrivingEventsDataManager;->getDailyScoreList(JJZ)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;->getAverageByType(Ljava/util/List;)Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->getValue()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 191
    sget v1, Lcom/texa/careapp/utils/EcoDrivingUtils;->PROBLEM_VALUE:I

    if-gt v0, v1, :cond_6

    .line 192
    invoke-direct {p0, v0}, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->setNegativeCard(I)V

    goto :goto_2

    .line 193
    :cond_6
    sget v1, Lcom/texa/careapp/utils/EcoDrivingUtils;->WARN_VALUE:I

    if-gt v0, v1, :cond_7

    sget v1, Lcom/texa/careapp/utils/EcoDrivingUtils;->PROBLEM_VALUE:I

    if-le v0, v1, :cond_7

    .line 194
    invoke-direct {p0, v0}, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->setWarningCard(I)V

    goto :goto_2

    .line 196
    :cond_7
    invoke-direct {p0, v0}, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->setPositiveCard(I)V

    goto :goto_2

    .line 178
    :cond_8
    :goto_1
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->setNoDataCard()V

    :goto_2
    return-void
.end method

.method private setNegativeCard(I)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->negativeColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 133
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f1108ff

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 134
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mScore:Lcom/texa/careapp/views/CircleDisplay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/CircleDisplay;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mScore:Lcom/texa/careapp/views/CircleDisplay;

    invoke-direct {p0, v0, p1}, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->initCircleDisplay(Lcom/texa/careapp/views/CircleDisplay;I)V

    .line 136
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mDescription:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 137
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mButton:Landroid/widget/TextView;

    iget v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->negativeColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private setNoDataCard()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f060045

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 118
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f1108ff

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 119
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mScore:Lcom/texa/careapp/views/CircleDisplay;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/CircleDisplay;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mDescription:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 121
    iget-boolean v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->isActive:Z

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mDescription:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f1108fb

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    goto :goto_0

    .line 123
    :cond_0
    iget-boolean v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->isFirmwareUpdate:Z

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mDescription:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f1109a4

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mDescription:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f1108fc

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mButton:Landroid/widget/TextView;

    iget v1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->negativeColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private setPositiveCard(I)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->positiveColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 109
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f1108ff

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 110
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mScore:Lcom/texa/careapp/views/CircleDisplay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/CircleDisplay;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mScore:Lcom/texa/careapp/views/CircleDisplay;

    invoke-direct {p0, v0, p1}, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->initCircleDisplay(Lcom/texa/careapp/views/CircleDisplay;I)V

    .line 112
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mDescription:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 113
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mButton:Landroid/widget/TextView;

    iget v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->positiveColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private setWarningCard(I)V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f060071

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 142
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f1108ff

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 143
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mScore:Lcom/texa/careapp/views/CircleDisplay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/CircleDisplay;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mScore:Lcom/texa/careapp/views/CircleDisplay;

    invoke-direct {p0, v0, p1}, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->initCircleDisplay(Lcom/texa/careapp/views/CircleDisplay;I)V

    .line 145
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mDescription:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 146
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mButton:Landroid/widget/TextView;

    iget v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->warningColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public afterViewInjection(Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;)V
    .locals 2

    .line 75
    iget-object v0, p1, Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;->dashboardCardEcoDrivingTitle:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 76
    iget-object v0, p1, Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;->dashboardCardEcoDrivingDescription:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mDescription:Landroidx/appcompat/widget/AppCompatTextView;

    .line 77
    iget-object v0, p1, Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;->dashboardCardEcoDrivingButton:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mButton:Landroid/widget/TextView;

    .line 78
    iget-object v0, p1, Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;->dashboardCardEcoDrivingIcon:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mIcon:Landroid/widget/ImageView;

    .line 79
    iget-object v0, p1, Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;->dashboardCardEcoDrivingScore:Lcom/texa/careapp/views/CircleDisplay;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mScore:Lcom/texa/careapp/views/CircleDisplay;

    .line 80
    iget-object v0, p1, Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;->dashboardCardEcoDriving:Landroidx/cardview/widget/CardView;

    new-instance v1, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;)V

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 82
    iget-object p1, p1, Lcom/texa/careapp/databinding/DashboardCardEcoDrivingBinding;->dashboardCardEcoDriving:Landroidx/cardview/widget/CardView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setPreventCornerOverlap(Z)V

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mContext:Landroid/content/Context;

    const v0, 0x7f060046

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->positiveColor:I

    .line 85
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mContext:Landroid/content/Context;

    const v0, 0x7f060044

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->negativeColor:I

    .line 86
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mContext:Landroid/content/Context;

    const v0, 0x7f060048

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->warningColor:I

    .line 88
    invoke-virtual {p0}, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->updateCard()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-dashboard-card-EcoDrivingCardViewPresenter(Landroid/view/View;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->cardClicked()V

    return-void
.end method

.method public updateCard()V
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ECO_DRIVING_ACTIVATION"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->isActive:Z

    .line 224
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->careObserver:Lcom/texa/careapp/carelib/ICareObserver;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    .line 225
    invoke-virtual {v1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v1

    .line 224
    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->checkEcoDrivingMinFirmwareVersion(Lcom/texa/careapp/carelib/ICareObserver;Lcom/texa/careapp/model/DongleModel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->isFirmwareUpdate:Z

    .line 226
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;->initData()V

    return-void
.end method

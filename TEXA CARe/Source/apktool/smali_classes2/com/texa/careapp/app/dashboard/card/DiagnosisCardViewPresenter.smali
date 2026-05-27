.class public Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;
.super Ljava/lang/Object;
.source "DiagnosisCardViewPresenter.java"


# instance fields
.field private isSmallScreen:Z

.field private mButton:Landroid/widget/TextView;

.field protected mCommunication:Lcom/texa/carelib/communication/Communication;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mDescription:Landroidx/appcompat/widget/AppCompatTextView;

.field protected mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mDongleModel:Lcom/texa/careapp/model/DongleModel;

.field private mIcon:Landroid/widget/ImageView;

.field protected mLampsManager:Lcom/texa/careapp/lamps/LampsManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mLastTimeUpdate:Lcom/texa/careapp/views/RelativeTimeTextView;

.field private mTitle:Landroidx/appcompat/widget/AppCompatTextView;

.field private negativeColor:I

.field private positiveColor:I


# direct methods
.method public constructor <init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;Z)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;)V

    .line 66
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    .line 67
    iput-boolean p2, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->isSmallScreen:Z

    return-void
.end method

.method private cardClicked()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_DASHBOARD_TAPPED_DIAGNOSIS_DASHBOARD_CARD:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 90
    sput-boolean v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCanMoveCard:Z

    .line 91
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/texa/careapp/app/diagnosis/DiagnosisActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private getLastActiveLamp(Ljava/util/List;)Ljava/lang/Long;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/errorsDTC/LampStatus;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 153
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    .line 154
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 155
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/errorsDTC/LampStatus;

    .line 156
    invoke-virtual {v0}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-gez v0, :cond_1

    move-wide v1, v3

    goto :goto_0

    .line 160
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private initData()V
    .locals 5

    .line 112
    iget-boolean v0, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->isSmallScreen:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mIcon:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mContext:Landroid/content/Context;

    .line 114
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mContext:Landroid/content/Context;

    .line 115
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 113
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "initData - dongle model is null!"

    .line 119
    invoke-static {v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 123
    :cond_1
    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    if-nez v0, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "initData - vehicle model is null!"

    .line 125
    invoke-static {v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 129
    :cond_2
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getActiveLamps()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->refreshCardForLampsChange(Ljava/util/List;)V

    .line 130
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getActiveLamps()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->updateDiagnosisRelativeTimeView(Ljava/util/List;)V

    return-void
.end method

.method private refreshCardForLampsChange(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/errorsDTC/LampStatus;",
            ">;)V"
        }
    .end annotation

    .line 165
    sget-object v0, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->STANDARD:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    invoke-static {v0, p1}, Lcom/texa/careapp/utils/Utils;->getLampsListFilteredForDiagnosisType(Lcom/texa/careapp/app/diagnosis/DiagnosisType;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->setNegativeCard()V

    goto :goto_0

    .line 167
    :cond_0
    sget-object v0, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->ADVANCED:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    invoke-static {v0, p1}, Lcom/texa/careapp/utils/Utils;->getLampsListFilteredForDiagnosisType(Lcom/texa/careapp/app/diagnosis/DiagnosisType;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 168
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->setNegativeCard()V

    goto :goto_0

    .line 170
    :cond_1
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->setPositiveCard()V

    :goto_0
    return-void
.end method

.method private setNegativeCard()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->negativeColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 106
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f1108f3

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 107
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mDescription:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f1108f2

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 108
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mButton:Landroid/widget/TextView;

    iget v1, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->negativeColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private setPositiveCard()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->positiveColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 97
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f1108f7

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 98
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mDescription:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f1108f5

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 99
    iget-boolean v0, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->isSmallScreen:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mDescription:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setMaxLines(I)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mButton:Landroid/widget/TextView;

    iget v1, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->positiveColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private updateDiagnosisRelativeTimeView(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/errorsDTC/LampStatus;",
            ">;)V"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v0

    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne v0, v1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mLastTimeUpdate:Lcom/texa/careapp/views/RelativeTimeTextView;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/texa/careapp/views/RelativeTimeTextView;->setReferenceTime(J)V

    .line 136
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mLastTimeUpdate:Lcom/texa/careapp/views/RelativeTimeTextView;

    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f1108ef

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/careapp/views/RelativeTimeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 137
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 138
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    .line 139
    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleModel;->getLastParametersUpdate()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 141
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->updateLastTimeUpdateView(Ljava/lang/Long;)V

    goto :goto_0

    .line 143
    :cond_1
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->getLastActiveLamp(Ljava/util/List;)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->updateLastTimeUpdateView(Ljava/lang/Long;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateLastTimeUpdateView(Ljava/lang/Long;)V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mLastTimeUpdate:Lcom/texa/careapp/views/RelativeTimeTextView;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/texa/careapp/views/RelativeTimeTextView;->setReferenceTime(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public afterViewInjection(Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;)V
    .locals 2

    .line 72
    iget-object v0, p1, Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;->dashboardCardDiagnosisTime:Lcom/texa/careapp/views/RelativeTimeTextView;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mLastTimeUpdate:Lcom/texa/careapp/views/RelativeTimeTextView;

    .line 73
    iget-object v0, p1, Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;->dashboardCardDiagnosisTitle:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 74
    iget-object v0, p1, Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;->dashboardCardDiagnosisDescription:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mDescription:Landroidx/appcompat/widget/AppCompatTextView;

    .line 75
    iget-object v0, p1, Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;->dashboardCardDiagnosisButton:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mButton:Landroid/widget/TextView;

    .line 76
    iget-object v0, p1, Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;->dashboardCardDiagnosisIcon:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mIcon:Landroid/widget/ImageView;

    .line 78
    iget-object v0, p1, Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;->dashboardCardDiagnosis:Landroidx/cardview/widget/CardView;

    new-instance v1, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;)V

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 80
    iget-object p1, p1, Lcom/texa/careapp/databinding/DashboardCardDiagnosisBinding;->dashboardCardDiagnosis:Landroidx/cardview/widget/CardView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setPreventCornerOverlap(Z)V

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mContext:Landroid/content/Context;

    const v0, 0x7f060046

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->positiveColor:I

    .line 83
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mContext:Landroid/content/Context;

    const v0, 0x7f060044

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->negativeColor:I

    .line 85
    invoke-virtual {p0}, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->updateCard()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-dashboard-card-DiagnosisCardViewPresenter(Landroid/view/View;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->cardClicked()V

    return-void
.end method

.method public updateCard()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    .line 175
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;->initData()V

    return-void
.end method

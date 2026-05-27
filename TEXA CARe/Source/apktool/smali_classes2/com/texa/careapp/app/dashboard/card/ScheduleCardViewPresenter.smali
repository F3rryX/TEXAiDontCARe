.class public Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;
.super Ljava/lang/Object;
.source "ScheduleCardViewPresenter.java"


# instance fields
.field private countIsExpired:I

.field private countIsExpiring:I

.field private isSmallScreen:Z

.field private mButton:Landroid/widget/TextView;

.field protected mContext:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mDescription:Landroid/widget/TextView;

.field protected final mDisposables:Lio/reactivex/disposables/CompositeDisposable;

.field private mIcon:Landroid/widget/ImageView;

.field private mSchedules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/IScheduleModel;",
            ">;"
        }
    .end annotation
.end field

.field private mShortDescription:Landroidx/appcompat/widget/AppCompatTextView;

.field private mTitle:Landroidx/appcompat/widget/AppCompatTextView;

.field protected mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private negativeColor:I

.field private positiveColor:I


# direct methods
.method public constructor <init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;Z)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mSchedules:Ljava/util/List;

    .line 65
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    .line 70
    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;)V

    .line 71
    iput-boolean p2, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->isSmallScreen:Z

    return-void
.end method

.method private cardClicked()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_DASHBOARD_TAPPED_SCHEDULES_DASHBOARD_CARD:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 94
    sput-boolean v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCanMoveCard:Z

    .line 95
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/texa/careapp/app/schedule/ScheduleActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private getSchedulesObservable(Lcom/texa/careapp/model/VehicleModel;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/model/VehicleModel;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "+",
            "Lcom/texa/careapp/model/IScheduleModel;",
            ">;>;"
        }
    .end annotation

    .line 147
    new-instance v0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;Lcom/texa/careapp/model/VehicleModel;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$updateCard$1(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "updateCard#getSchedulesObservable() onError"

    .line 110
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$updateCard$3(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ERROR SCHEDULE SUBSCRIPTION"

    .line 123
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private setNegativeCard()V
    .locals 6

    .line 136
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->negativeColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 137
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mButton:Landroid/widget/TextView;

    iget v1, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->negativeColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mDescription:Landroid/widget/TextView;

    const v1, 0x7f110907

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 139
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mTitle:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f11090b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->countIsExpired:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mShortDescription:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f110909

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->countIsExpiring:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setPositiveCard()V
    .locals 6

    .line 127
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->positiveColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 128
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mButton:Landroid/widget/TextView;

    iget v1, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->positiveColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mDescription:Landroid/widget/TextView;

    const v1, 0x7f110908

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 130
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mTitle:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f11090b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->countIsExpired:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mShortDescription:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f110909

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->countIsExpiring:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public afterViewInjection(Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;)V
    .locals 2

    .line 76
    iget-object v0, p1, Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;->dashboardCardScheduleShortDescription:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mShortDescription:Landroidx/appcompat/widget/AppCompatTextView;

    .line 77
    iget-object v0, p1, Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;->dashboardCardScheduleTitle:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 78
    iget-object v0, p1, Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;->dashboardCardScheduleDescription:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mDescription:Landroid/widget/TextView;

    .line 79
    iget-object v0, p1, Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;->dashboardCardScheduleButton:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mButton:Landroid/widget/TextView;

    .line 80
    iget-object v0, p1, Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;->dashboardCardScheduleIcon:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mIcon:Landroid/widget/ImageView;

    .line 81
    iget-object v0, p1, Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;->dashboardCardSchedule:Landroidx/cardview/widget/CardView;

    new-instance v1, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;)V

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 83
    iget-object p1, p1, Lcom/texa/careapp/databinding/DashboardCardScheduleBinding;->dashboardCardSchedule:Landroidx/cardview/widget/CardView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setPreventCornerOverlap(Z)V

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mContext:Landroid/content/Context;

    const v0, 0x7f060046

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->positiveColor:I

    .line 86
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mContext:Landroid/content/Context;

    const v0, 0x7f060044

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->negativeColor:I

    .line 88
    invoke-virtual {p0}, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->updateCard()V

    return-void
.end method

.method public getMDisposables()Lio/reactivex/disposables/CompositeDisposable;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    return-object v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-dashboard-card-ScheduleCardViewPresenter(Landroid/view/View;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->cardClicked()V

    return-void
.end method

.method public synthetic lambda$getSchedulesObservable$4$com-texa-careapp-app-dashboard-card-ScheduleCardViewPresenter(Lcom/texa/careapp/model/VehicleModel;Lio/reactivex/ObservableEmitter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/texa/careapp/model/VehicleModel;->getSchedulesForUser(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {p1}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 156
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/model/IScheduleModel;

    .line 157
    invoke-interface {v3}, Lcom/texa/careapp/model/IScheduleModel;->getType()Lcom/texa/careapp/model/ScheduleType;

    move-result-object v3

    sget-object v4, Lcom/texa/careapp/model/ScheduleType;->LICENSE:Lcom/texa/careapp/model/ScheduleType;

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 162
    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->getDriverLicenseExpireDate(Lcom/texa/careapp/model/UserModel;)Lcom/texa/careapp/model/UserScheduleModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 164
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_2
    invoke-interface {p2, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 170
    invoke-interface {p2}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method

.method public synthetic lambda$updateCard$2$com-texa-careapp-app-dashboard-card-ScheduleCardViewPresenter(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mSchedules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 114
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mSchedules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mSchedules:Ljava/util/List;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->getCountOfScheduleIsExpiringNotExpired(Ljava/util/List;)I

    move-result p1

    iput p1, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->countIsExpiring:I

    .line 117
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mSchedules:Ljava/util/List;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->getCountOfScheduleIsExpired(Ljava/util/List;)I

    move-result p1

    iput p1, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->countIsExpired:I

    if-lez p1, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->setNegativeCard()V

    goto :goto_0

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->setPositiveCard()V

    :goto_0
    return-void
.end method

.method public updateCard()V
    .locals 6

    .line 101
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    .line 103
    iget-boolean v1, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->isSmallScreen:Z

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mIcon:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mContext:Landroid/content/Context;

    .line 105
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700e6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v5, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mContext:Landroid/content/Context;

    .line 106
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 104
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 109
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, v0}, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;->getSchedulesObservable(Lcom/texa/careapp/model/VehicleModel;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v2, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter$$ExternalSyntheticLambda3;->INSTANCE:Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter$$ExternalSyntheticLambda3;

    .line 110
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 111
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->applySchedulers()Lio/reactivex/ObservableTransformer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v2, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;)V

    sget-object v3, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter$$ExternalSyntheticLambda4;->INSTANCE:Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter$$ExternalSyntheticLambda4;

    .line 112
    invoke-virtual {v0, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 109
    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    :cond_1
    return-void
.end method

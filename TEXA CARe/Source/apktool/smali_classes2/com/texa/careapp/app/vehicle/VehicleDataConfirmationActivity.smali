.class public Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;
.super Lcom/texa/careapp/base/BaseActivity;
.source "VehicleDataConfirmationActivity.java"


# static fields
.field private static final PARAM_START_MAIN_ACTIVITY:Ljava/lang/String; = "start-main-activity-param"


# instance fields
.field protected mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mDataManagerConfiguration:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mKmEditText:Landroid/widget/EditText;

.field private mModelTextView:Landroid/widget/TextView;

.field protected mPresenter:Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationPresenter;

.field private mShouldStartMainActivity:Z

.field protected mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

.field protected mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/texa/careapp/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->mShouldStartMainActivity:Z

    return-void
.end method

.method public static buildFirstRunIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 2

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "start-main-activity-param"

    const/4 v1, 0x1

    .line 100
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private static formatVehicle(Lcom/texa/careapp/model/VehicleModel;)Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->formatModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getPlate()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initVehicle()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleObserver;->getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationPresenter;

    invoke-direct {v0}, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationPresenter;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->mPresenter:Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationPresenter;

    .line 111
    iget-object v0, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->mModelTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-static {v1}, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->formatVehicle(Lcom/texa/careapp/model/VehicleModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getOdometer()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v1, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->mKmEditText:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "mVehicleModel == NULL"

    .line 118
    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    invoke-virtual {p0}, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method private lastStep()V
    .locals 3

    .line 146
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_OUT_OF_THE_BOX_COMPLETED:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 147
    iget-boolean v0, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->mShouldStartMainActivity:Z

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/app/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 149
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->startActivity(Landroid/content/Intent;)V

    .line 151
    invoke-virtual {p0}, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->finish()V

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->finish()V

    :goto_0
    return-void
.end method

.method private parseExtras(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 86
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "start-main-activity-param"

    .line 91
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->mShouldStartMainActivity:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onConfirmClicked(Landroid/view/View;)V
    .locals 4

    .line 132
    iget-object p1, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->mPresenter:Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationPresenter;

    iget-object v0, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->mKmEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    iget-object v2, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->mDataManagerConfiguration:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    iget-object v3, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationPresenter;->onConfirmClicked(Landroid/widget/EditText;Lcom/texa/careapp/model/VehicleModel;Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;Lcom/texa/careapp/sync/CAReWorkerManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 136
    :try_start_0
    iget-object p1, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-static {p1, p0}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    .line 137
    invoke-direct {p0}, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->lastStep()V
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const v0, 0x7f110a24

    const/4 v1, 0x1

    .line 139
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Could not save vehicle model in database"

    .line 140
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 63
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0041

    .line 64
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ActivityVehicleDataConfirmationBinding;

    .line 65
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityVehicleDataConfirmationBinding;->vehicleDataConfirmKm:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->mKmEditText:Landroid/widget/EditText;

    .line 66
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityVehicleDataConfirmationBinding;->vehicleDataConfirmModel:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->mModelTextView:Landroid/widget/TextView;

    .line 67
    iget-object p1, p1, Lcom/texa/careapp/databinding/ActivityVehicleDataConfirmationBinding;->activityUpdateConfirm:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {p0}, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->getCareApplication()Lcom/texa/careapp/CareApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;)V

    .line 71
    invoke-virtual {p0}, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "local_notification"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_TAPPED_LOCAL_NOTIFICATION:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->parseExtras(Landroid/content/Intent;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 76
    iget-boolean v1, p0, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->mShouldStartMainActivity:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "mShouldStartMainActivity: %s"

    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-direct {p0}, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;->initVehicle()V

    return-void
.end method

.method protected requiresAuthentication()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

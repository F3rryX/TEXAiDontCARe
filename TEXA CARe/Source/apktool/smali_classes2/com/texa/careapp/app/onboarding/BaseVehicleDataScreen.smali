.class public Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;
.super Lcom/texa/care/navigation/Screen;
.source "BaseVehicleDataScreen.java"


# instance fields
.field private callApi:Lio/reactivex/disposables/Disposable;

.field protected mAccessTokenPersistenceManagerClient:Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;
    .annotation runtime Lcom/texa/careapp/dagger/AuthenticationClient;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

.field private mCareApplication:Lcom/texa/careapp/CareApplication;

.field protected mClientId:Ljava/lang/String;
    .annotation runtime Lcom/texa/careapp/dagger/ClientId;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mClientSecret:Ljava/lang/String;
    .annotation runtime Lcom/texa/careapp/dagger/ClientSecret;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mFormValidator:Lcom/texa/careapp/utils/FormValidator;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mLogInHelper:Lcom/texa/careapp/utils/LoginHelperRx;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mModel:Landroid/widget/EditText;

.field private mModelInput:Lcom/google/android/material/textfield/TextInputLayout;

.field private mPlate:Landroid/widget/AutoCompleteTextView;

.field private mPlateInput:Lcom/google/android/material/textfield/TextInputLayout;

.field private mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

.field private mSelectedVehicleBrand:Ljava/lang/String;

.field private mSelectedVehicleModel:Ljava/lang/String;

.field private mSelectedVehiclePlate:Ljava/lang/String;

.field protected mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mTexaCareAuthService:Lcom/texa/careapp/networking/TexaCareAuthService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

.field private plates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selected:Ljava/lang/String;

.field private selections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/SelectionModel;",
            ">;"
        }
    .end annotation
.end field

.field private vehicles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/onboarding/OnBoardingActivity;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->vehicles:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->selections:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->plates:Ljava/util/List;

    .line 104
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mCareApplication:Lcom/texa/careapp/CareApplication;

    .line 105
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;)V

    .line 106
    iput-object p2, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    .line 107
    invoke-virtual {p2}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getPlate()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mSelectedVehiclePlate:Ljava/lang/String;

    .line 108
    invoke-virtual {p2}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getBrand()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mSelectedVehicleBrand:Ljava/lang/String;

    .line 109
    invoke-virtual {p2}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getModel()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mSelectedVehicleModel:Ljava/lang/String;

    return-void
.end method

.method private closeKeyboard(Landroid/view/View;)V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 288
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private createProgressDialogScreen()V
    .locals 4

    .line 334
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Lcom/texa/careapp/utils/ProgressDialogFragment;

    invoke-direct {v0}, Lcom/texa/careapp/utils/ProgressDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/ProgressDialogFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/care/navigation/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f110ad4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/texa/careapp/utils/ProgressDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private dismissProgressDialogScreen()V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mProgressDialogFragment:Lcom/texa/careapp/utils/ProgressDialogFragment;

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v0}, Lcom/texa/careapp/utils/ProgressDialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method private formatVehicleSelected(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "||"

    .line 314
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 318
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->formatVehicleModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private getSelectionObservable()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-interface {v0}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->getUserVehicleList()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    .line 199
    invoke-interface {v1}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->getVehiclesSelection()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;)V

    .line 198
    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->zip(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object v0

    .line 240
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private getVehicleByPlate(Ljava/lang/String;)V
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->vehicles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/VehicleModel;

    .line 281
    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getPlate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    iput-object v1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initPlateAdapter()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    new-instance v1, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen$$ExternalSyntheticLambda10;-><init>(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;)V

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private insertSelection()V
    .locals 2

    .line 146
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 153
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic lambda$onResume$8(Lio/reactivex/Observable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private onNext()V
    .locals 5

    .line 252
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mFormValidator:Lcom/texa/careapp/utils/FormValidator;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mModelInput:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mModel:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Lcom/texa/careapp/utils/FormValidator;->validateRequiredField(Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mFormValidator:Lcom/texa/careapp/utils/FormValidator;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mPlateInput:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mPlate:Landroid/widget/AutoCompleteTextView;

    .line 253
    invoke-virtual {v0, v1, v2}, Lcom/texa/careapp/utils/FormValidator;->validateRequiredField(Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/AutoCompleteTextView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 254
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v3, "||"

    if-nez v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {v0}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {v0}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 257
    iget-object v3, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->setBrand(Ljava/lang/String;)V

    .line 258
    iget-object v3, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->formatVehicleModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->setModel(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->selected:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->getVehicleByPlate(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getBrandName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->setBrand(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->formatVehicleModel(Lcom/texa/careapp/model/VehicleModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->setModel(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v4}, Lcom/texa/careapp/model/VehicleModel;->getBrandName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v3}, Lcom/texa/careapp/model/VehicleModel;->getModelName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/texa/careapp/utils/Utils;->formatVehicleModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->setDescription(Ljava/lang/String;)V

    goto :goto_1

    .line 265
    :cond_1
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getBrandName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getModelName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getBrandName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->setBrand(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getModelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->setModel(Ljava/lang/String;)V

    goto :goto_1

    .line 266
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 267
    iget-object v3, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->setBrand(Ljava/lang/String;)V

    .line 268
    iget-object v3, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->formatVehicleModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->setModel(Ljava/lang/String;)V

    .line 273
    :goto_1
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mPlate:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->setPlate(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mModel:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->closeKeyboard(Landroid/view/View;)V

    .line 275
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;

    iget-object v3, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mCareApplication:Lcom/texa/careapp/CareApplication;

    iget-object v4, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-direct {v1, v3, v4, v2}, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;-><init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/onboarding/OnBoardingActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 2

    .line 114
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenBaseVehicleDataBinding;

    .line 115
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenBaseVehicleDataBinding;->screenBaseVehicleDataPlateInput:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mPlateInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 116
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenBaseVehicleDataBinding;->screenBaseVehicleDataVehicleModelInput:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mModelInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 117
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenBaseVehicleDataBinding;->screenBaseVehicleDataPlateEditText:Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mPlate:Landroid/widget/AutoCompleteTextView;

    .line 118
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenBaseVehicleDataBinding;->screenBaseVehicleDataVehicleModelEditText:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mModel:Landroid/widget/EditText;

    .line 119
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenBaseVehicleDataBinding;->screenBaseVehicleSkipVehicleInsertionLabel:Landroid/widget/TextView;

    new-instance v1, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenBaseVehicleDataBinding;->screenBaseVehicleDataNextLayout:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mPlateInput:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 123
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mModelInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 125
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mModel:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setClickable(Z)V

    .line 126
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mModel:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 127
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mModel:Landroid/widget/EditText;

    new-instance v0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mSelectedVehiclePlate:Ljava/lang/String;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mPlate:Landroid/widget/AutoCompleteTextView;

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mSelectedVehiclePlate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mSelectedVehicleBrand:Ljava/lang/String;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mSelectedVehicleModel:Ljava/lang/String;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 134
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mModel:Landroid/widget/EditText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mSelectedVehicleBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mSelectedVehicleModel:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->formatVehicleSelected(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mPlate:Landroid/widget/AutoCompleteTextView;

    new-instance v0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 142
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->initPlateAdapter()V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 330
    const-class v0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00ad

    return v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-onboarding-BaseVehicleDataScreen(Landroid/view/View;)V
    .locals 2

    .line 119
    new-instance p1, Lcom/texa/careapp/app/auth/OnBoardingSkipVehicleInsertionDialog;

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mCareApplication:Lcom/texa/careapp/CareApplication;

    invoke-direct {p1, v0, v1}, Lcom/texa/careapp/app/auth/OnBoardingSkipVehicleInsertionDialog;-><init>(Lcom/texa/careapp/app/onboarding/OnBoardingActivity;Lcom/texa/careapp/CareApplication;)V

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$1$com-texa-careapp-app-onboarding-BaseVehicleDataScreen(Landroid/view/View;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->onNext()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$2$com-texa-careapp-app-onboarding-BaseVehicleDataScreen(Landroid/view/View;)V
    .locals 3

    .line 127
    new-instance p1, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mCareApplication:Lcom/texa/careapp/CareApplication;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    iget-object v2, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->vehicles:Ljava/util/List;

    invoke-direct {p1, v0, v1, v2}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;-><init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/onboarding/OnBoardingActivity;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$3$com-texa-careapp-app-onboarding-BaseVehicleDataScreen(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->closeKeyboard(Landroid/view/View;)V

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$getSelectionObservable$10$com-texa-careapp-app-onboarding-BaseVehicleDataScreen(Lcom/texa/careapp/networking/response/UserVehicleListResponse;Lcom/texa/careapp/networking/response/VehicleSelectionResponse;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleDataManager;->getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    .line 201
    iget-object p1, p1, Lcom/texa/careapp/networking/response/UserVehicleListResponse;->userVehicleDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;->vehicleId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 204
    :cond_1
    iget-object v2, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->plates:Ljava/util/List;

    iget-object v3, v1, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;->plate:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v2, Lcom/texa/careapp/model/VehicleModel;

    invoke-direct {v2}, Lcom/texa/careapp/model/VehicleModel;-><init>()V

    .line 206
    iget-object v3, v1, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;->plate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/texa/careapp/model/VehicleModel;->setPlate(Ljava/lang/String;)V

    .line 207
    iget-object v3, v1, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/texa/careapp/model/VehicleModel;->setDescription(Ljava/lang/String;)V

    .line 208
    iget-object v3, v1, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;->selectionData:Lcom/texa/careapp/networking/response/UserVehicleListResponse$SelectionData;

    if-eqz v3, :cond_2

    .line 209
    iget-object v3, v1, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;->selectionData:Lcom/texa/careapp/networking/response/UserVehicleListResponse$SelectionData;

    invoke-virtual {v3}, Lcom/texa/careapp/networking/response/UserVehicleListResponse$SelectionData;->getSelectionModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/texa/careapp/model/VehicleModel;->setModelName(Ljava/lang/String;)V

    .line 210
    iget-object v1, v1, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;->selectionData:Lcom/texa/careapp/networking/response/UserVehicleListResponse$SelectionData;

    invoke-virtual {v1}, Lcom/texa/careapp/networking/response/UserVehicleListResponse$SelectionData;->getSelectionBrand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/texa/careapp/model/VehicleModel;->setBrandName(Ljava/lang/String;)V

    .line 212
    :cond_2
    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->vehicles:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    :cond_3
    invoke-virtual {p2}, Lcom/texa/careapp/networking/response/VehicleSelectionResponse;->getList()Ljava/util/List;

    move-result-object p1

    .line 217
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/texa/careapp/networking/response/VehicleSelectionResponse$SelectionObject;

    .line 218
    invoke-virtual {p2}, Lcom/texa/careapp/networking/response/VehicleSelectionResponse$SelectionObject;->getSelections()Ljava/util/List;

    move-result-object p2

    .line 219
    new-instance v0, Lcom/texa/careapp/model/SelectionModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/SelectionModel;-><init>()V

    .line 220
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/networking/response/VehicleSelectionResponse$Selection;

    .line 221
    invoke-virtual {v1}, Lcom/texa/careapp/networking/response/VehicleSelectionResponse$Selection;->getBrandId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/texa/careapp/model/SelectionModel;->setBrandId(J)V

    .line 222
    invoke-virtual {v1}, Lcom/texa/careapp/networking/response/VehicleSelectionResponse$Selection;->getFragmentId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 223
    invoke-virtual {v1}, Lcom/texa/careapp/networking/response/VehicleSelectionResponse$Selection;->getFragmentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/texa/careapp/model/SelectionModel;->setSelectionId(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v1}, Lcom/texa/careapp/networking/response/VehicleSelectionResponse$Selection;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/SelectionModel;->setModel(Ljava/lang/String;)V

    goto :goto_2

    .line 226
    :cond_5
    invoke-virtual {v1}, Lcom/texa/careapp/networking/response/VehicleSelectionResponse$Selection;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/SelectionModel;->setBrand(Ljava/lang/String;)V

    goto :goto_2

    .line 228
    :cond_6
    iget-object p2, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->selections:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 230
    invoke-virtual {v0}, Lcom/texa/careapp/model/SelectionModel;->getBrand()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/texa/careapp/model/SelectionModel;->getModel()Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-static {p2, v1}, Lcom/texa/careapp/utils/Utils;->formatDescription(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/texa/careapp/model/SelectionModel;->setDescription(Ljava/lang/String;)V

    .line 231
    iget-object p2, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->selections:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 235
    :cond_7
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->initPlateAdapter()V

    .line 236
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->dismissProgressDialogScreen()V

    .line 238
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->insertSelection()V

    .line 239
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$initPlateAdapter$5$com-texa-careapp-app-onboarding-BaseVehicleDataScreen(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 161
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->selected:Ljava/lang/String;

    .line 162
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->vehicles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/texa/careapp/model/VehicleModel;

    .line 163
    invoke-virtual {p2}, Lcom/texa/careapp/model/VehicleModel;->getPlate()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->selected:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 164
    iget-object p3, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mModel:Landroid/widget/EditText;

    invoke-virtual {p2}, Lcom/texa/careapp/model/VehicleModel;->getVehicleInfo()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->formatVehicleSelected(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object p2, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mPlate:Landroid/widget/AutoCompleteTextView;

    if-eqz p2, :cond_0

    .line 166
    invoke-direct {p0, p2}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->closeKeyboard(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$initPlateAdapter$6$com-texa-careapp-app-onboarding-BaseVehicleDataScreen()V
    .locals 4

    .line 158
    new-instance v0, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    iget-object v2, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->plates:Ljava/util/List;

    const v3, 0x7f0d0045

    invoke-direct {v0, v1, v3, v2}, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 159
    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mPlate:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mPlate:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public synthetic lambda$insertSelection$4$com-texa-careapp-app-onboarding-BaseVehicleDataScreen()V
    .locals 2

    .line 147
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->beginTransaction()V

    .line 148
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->selections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/SelectionModel;

    .line 149
    invoke-virtual {v1}, Lcom/texa/careapp/model/SelectionModel;->save()Ljava/lang/Long;

    goto :goto_0

    .line 151
    :cond_0
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->setTransactionSuccessful()V

    .line 152
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->endTransaction()V

    return-void
.end method

.method public synthetic lambda$onResume$7$com-texa-careapp-app-onboarding-BaseVehicleDataScreen(Lcom/texa/careapp/utils/authentication/AccessToken;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mAccessTokenPersistenceManagerClient:Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    invoke-interface {v0, p1}, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;->persist(Lcom/texa/careapp/utils/authentication/AccessToken;)V

    .line 184
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->getSelectionObservable()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$onResume$9$com-texa-careapp-app-onboarding-BaseVehicleDataScreen(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 186
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 187
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->dismissProgressDialogScreen()V

    return-void
.end method

.method public onEvent(Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$VehicleSelectedEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 293
    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$VehicleSelectedEvent;->getPlate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "||"

    if-nez v0, :cond_1

    .line 294
    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$VehicleSelectedEvent;->getVehicle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$VehicleSelectedEvent;->getSelectionModel()Lcom/texa/careapp/model/SelectionModel;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 298
    :cond_0
    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$VehicleSelectedEvent;->getUserVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 299
    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$VehicleSelectedEvent;->getUserVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    .line 300
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$VehicleSelectedEvent;->getUserVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/model/VehicleModel;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->setDescription(Ljava/lang/String;)V

    goto :goto_1

    .line 297
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$VehicleSelectedEvent;->getSelectionModel()Lcom/texa/careapp/model/SelectionModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/careapp/model/SelectionModel;->getBrand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$VehicleSelectedEvent;->getSelectionModel()Lcom/texa/careapp/model/SelectionModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/careapp/model/SelectionModel;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/texa/careapp/utils/Utils;->formatVehicleModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->setDescription(Ljava/lang/String;)V

    .line 302
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$VehicleSelectedEvent;->getVehicle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 303
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mModel:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$VehicleSelectedEvent;->getVehicle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->formatVehicleSelected(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mPlate:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$VehicleSelectedEvent;->getPlate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 306
    :cond_3
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mActivity:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v2}, Lcom/texa/careapp/model/VehicleModel;->getBrandName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getModelName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->formatVehicleModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->setDescription(Ljava/lang/String;)V

    .line 307
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mModel:Landroid/widget/EditText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getBrandName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getModelName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->formatVehicleModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mPlate:Landroid/widget/AutoCompleteTextView;

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getPlate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 245
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onPause()V

    .line 246
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 247
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->callApi:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->callApi:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 175
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    .line 176
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->vehicles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->createProgressDialogScreen()V

    .line 179
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mTexaCareAuthService:Lcom/texa/careapp/networking/TexaCareAuthService;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mClientId:Ljava/lang/String;

    iget-object v2, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->mClientSecret:Ljava/lang/String;

    const-string v3, "client_credentials"

    invoke-interface {v0, v3, v1, v2}, Lcom/texa/careapp/networking/TexaCareAuthService;->getClientToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 180
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 181
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen$$ExternalSyntheticLambda9;-><init>(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;)V

    .line 182
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen$$ExternalSyntheticLambda8;->INSTANCE:Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen$$ExternalSyntheticLambda8;

    new-instance v2, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen$$ExternalSyntheticLambda7;-><init>(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;)V

    .line 185
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;->callApi:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

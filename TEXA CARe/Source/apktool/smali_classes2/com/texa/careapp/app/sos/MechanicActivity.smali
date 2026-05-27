.class public Lcom/texa/careapp/app/sos/MechanicActivity;
.super Lcom/texa/careapp/base/BaseActivity;
.source "MechanicActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# instance fields
.field private mAddress:Landroid/widget/TextView;

.field private mAddressCity:Landroid/widget/TextView;

.field private mAvailabilityImage:Landroid/widget/ImageView;

.field private mAvailabilityNumber:Ljava/lang/String;

.field private mAvailabilityText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private final mDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

.field protected mMechanicDataManager:Lcom/texa/careapp/utils/MechanicDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mMechanicDisposable:Lio/reactivex/disposables/Disposable;

.field private mMechanicModel:Lcom/texa/careapp/model/MechanicModel;

.field private mMechanicName:Landroid/widget/TextView;

.field private mMechanicNavigationButton:Landroid/widget/TextView;

.field private mMechanicOpening:Landroid/widget/TextView;

.field private mPermissionRequest:Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

.field private mPhoneMobileImage:Landroid/widget/ImageView;

.field private mPhoneMobileNumber:Ljava/lang/String;

.field private mPhoneMobileText:Landroid/widget/TextView;

.field private mRelativeLayout:Landroid/widget/RelativeLayout;

.field protected mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mWorkshopImage:Landroid/widget/ImageView;

.field private mWorkshopNumber:Ljava/lang/String;

.field private mWorkshopText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/texa/careapp/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mWorkshopNumber:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mPhoneMobileNumber:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mAvailabilityNumber:Ljava/lang/String;

    .line 94
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/sos/MechanicActivity;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/careapp/app/sos/MechanicActivity;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/sos/MechanicActivity;->dialNumber(Ljava/lang/String;)V

    return-void
.end method

.method private dialNumber(Ljava/lang/String;)V
    .locals 3

    .line 501
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 503
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/sos/MechanicActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private getMechanicData()Lio/reactivex/disposables/Disposable;
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mMechanicDataManager:Lcom/texa/careapp/utils/MechanicDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/MechanicDataManager;->observeCustomerResponse()Lio/reactivex/Maybe;

    move-result-object v0

    .line 168
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->applyMaybeSchedulers()Lio/reactivex/MaybeTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->compose(Lio/reactivex/MaybeTransformer;)Lio/reactivex/Maybe;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/sos/MechanicActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/sos/MechanicActivity$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/app/sos/MechanicActivity;)V

    new-instance v2, Lcom/texa/careapp/app/sos/MechanicActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/sos/MechanicActivity$$ExternalSyntheticLambda7;-><init>(Lcom/texa/careapp/app/sos/MechanicActivity;)V

    .line 169
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method

.method private initData()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mMechanicModel:Lcom/texa/careapp/model/MechanicModel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "mMechanicModel == NULL"

    .line 237
    invoke-static {v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 241
    :cond_0
    invoke-virtual {v0}, Lcom/texa/careapp/model/MechanicModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/sos/MechanicActivity;->setMechanicName(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mMechanicModel:Lcom/texa/careapp/model/MechanicModel;

    iget-object v0, v0, Lcom/texa/careapp/model/MechanicModel;->contacts:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/sos/MechanicActivity;->setNumber(Ljava/util/List;)V

    .line 245
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/MechanicActivity;->setVisibilityButtons()V

    .line 247
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/MechanicActivity;->setOpeningText()V

    .line 249
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/MechanicActivity;->setInfoCustomer()V

    .line 251
    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mMechanicModel:Lcom/texa/careapp/model/MechanicModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/MechanicModel;->getLocation()Lcom/texa/careapp/model/MechanicModel$Location;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/careapp/app/sos/MechanicActivity;->setOnClickListenerToButtonNavigation(Lcom/texa/careapp/model/MechanicModel$Location;)V

    return-void
.end method

.method static synthetic lambda$setLocationTextFromGeoCode$4(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "geocodeObservable exception"

    .line 438
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$showAlertDialog$5(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 458
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private requestPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 507
    invoke-static {p0}, Lcom/texa/careapp/utils/permission/CorePermission;->with(Landroidx/appcompat/app/AppCompatActivity;)Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;->request(Ljava/lang/String;)Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/sos/MechanicActivity$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/texa/careapp/app/sos/MechanicActivity$2;-><init>(Lcom/texa/careapp/app/sos/MechanicActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-virtual {v0, v1}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->onAllGranted(Lcom/texa/careapp/utils/permission/Func;)Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    move-result-object p2

    new-instance v0, Lcom/texa/careapp/app/sos/MechanicActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/app/sos/MechanicActivity$1;-><init>(Lcom/texa/careapp/app/sos/MechanicActivity;Ljava/lang/String;)V

    .line 518
    invoke-virtual {p2, v0}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->onAnyDenied(Lcom/texa/careapp/utils/permission/Func;)Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    move-result-object p1

    const/4 p2, 0x4

    .line 523
    invoke-virtual {p1, p2}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->ask(I)Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mPermissionRequest:Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    return-void
.end method

.method private setLocationTextFromGeoCode(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 7

    .line 433
    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/MechanicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/texa/careapp/utils/Utils;->geocodeObservable(Landroid/content/Context;DDI)Lio/reactivex/Observable;

    move-result-object p1

    .line 434
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->applySchedulers()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/texa/careapp/app/sos/MechanicActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/sos/MechanicActivity$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/app/sos/MechanicActivity;)V

    sget-object v2, Lcom/texa/careapp/app/sos/MechanicActivity$$ExternalSyntheticLambda8;->INSTANCE:Lcom/texa/careapp/app/sos/MechanicActivity$$ExternalSyntheticLambda8;

    .line 435
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 433
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private setMechanicLocation(Lcom/texa/careapp/model/MechanicModel;)V
    .locals 5

    .line 416
    invoke-virtual {p1}, Lcom/texa/careapp/model/MechanicModel;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    invoke-virtual {p1}, Lcom/texa/careapp/model/MechanicModel;->getStreet_number()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    invoke-virtual {p1}, Lcom/texa/careapp/model/MechanicModel;->getPost_code()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    invoke-virtual {p1}, Lcom/texa/careapp/model/MechanicModel;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/texa/careapp/model/MechanicModel;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/texa/careapp/model/MechanicModel;->getStreet_number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/sos/MechanicActivity;->setMechanicAddress(Ljava/lang/String;)V

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/texa/careapp/model/MechanicModel;->getPost_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/texa/careapp/model/MechanicModel;->getCity()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/sos/MechanicActivity;->setMechanicCityAddress(Ljava/lang/String;)V

    goto :goto_0

    .line 423
    :cond_0
    invoke-virtual {p1}, Lcom/texa/careapp/model/MechanicModel;->getLocation()Lcom/texa/careapp/model/MechanicModel$Location;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 425
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p1, Lcom/texa/careapp/model/MechanicModel$Location;->latitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget-object p1, p1, Lcom/texa/careapp/model/MechanicModel$Location;->longitude:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 426
    invoke-direct {p0, v0}, Lcom/texa/careapp/app/sos/MechanicActivity;->setLocationTextFromGeoCode(Lcom/google/android/gms/maps/model/LatLng;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setOnClickListenerToButtonNavigation(Lcom/texa/careapp/model/MechanicModel$Location;)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mMechanicNavigationButton:Landroid/widget/TextView;

    new-instance v1, Lcom/texa/careapp/app/sos/MechanicActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/texa/careapp/app/sos/MechanicActivity$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/app/sos/MechanicActivity;Lcom/texa/careapp/model/MechanicModel$Location;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setOpeningText()V
    .locals 3

    .line 221
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mMechanicModel:Lcom/texa/careapp/model/MechanicModel;

    invoke-virtual {p0, v1, v0}, Lcom/texa/careapp/app/sos/MechanicActivity;->isOnHoliday(Lcom/texa/careapp/model/MechanicModel;Ljava/util/Calendar;)Z

    move-result v1

    const v2, 0x7f110b1d

    if-nez v1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mMechanicModel:Lcom/texa/careapp/model/MechanicModel;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/texa/careapp/model/MechanicModel;->business_times:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 224
    iget-object v1, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mMechanicModel:Lcom/texa/careapp/model/MechanicModel;

    iget-object v1, v1, Lcom/texa/careapp/model/MechanicModel;->business_times:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Lcom/texa/careapp/app/sos/MechanicActivity;->isOpen(Ljava/util/List;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mMechanicOpening:Landroid/widget/TextView;

    const v1, 0x7f110b1e

    invoke-virtual {p0, v1}, Lcom/texa/careapp/app/sos/MechanicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mMechanicOpening:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/texa/careapp/app/sos/MechanicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mMechanicOpening:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/texa/careapp/app/sos/MechanicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private showAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 455
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 456
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 457
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 458
    sget-object p1, Lcom/texa/careapp/app/sos/MechanicActivity$$ExternalSyntheticLambda0;->INSTANCE:Lcom/texa/careapp/app/sos/MechanicActivity$$ExternalSyntheticLambda0;

    const p2, 0x104000a

    invoke-virtual {v0, p2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 460
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 461
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public addMechanicMarker(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const p1, 0x7f110ae6

    .line 402
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/sos/MechanicActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-direct {p0, p2, p1}, Lcom/texa/careapp/app/sos/MechanicActivity;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 407
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p2

    const v1, 0x7f080157

    .line 408
    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p2

    .line 407
    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 409
    iget-object p2, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {p1, v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "AddMarker error"

    .line 411
    invoke-static {p1, v0, p2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public clickCallAvailability(Landroid/view/View;)V
    .locals 1

    .line 477
    iget-object p1, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mAvailabilityNumber:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 478
    sget-object p1, Lcom/texa/careapp/utils/permission/CorePermission;->USE_PHONE:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/texa/careapp/utils/Utils;->isPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 479
    iget-object p1, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mAvailabilityNumber:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/sos/MechanicActivity;->dialNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 481
    :cond_0
    sget-object p1, Lcom/texa/careapp/utils/permission/CorePermission;->USE_PHONE:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mAvailabilityNumber:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/texa/careapp/app/sos/MechanicActivity;->requestPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const p1, 0x7f110ae7

    .line 483
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/sos/MechanicActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f110ae8

    .line 484
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/sos/MechanicActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 483
    invoke-direct {p0, p1, v0}, Lcom/texa/careapp/app/sos/MechanicActivity;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public clickCallPhoneMobile(Landroid/view/View;)V
    .locals 1

    .line 489
    iget-object p1, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mPhoneMobileNumber:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 490
    sget-object p1, Lcom/texa/careapp/utils/permission/CorePermission;->USE_PHONE:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/texa/careapp/utils/Utils;->isPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 491
    iget-object p1, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mPhoneMobileNumber:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/sos/MechanicActivity;->dialNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 493
    :cond_0
    sget-object p1, Lcom/texa/careapp/utils/permission/CorePermission;->USE_PHONE:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mPhoneMobileNumber:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/texa/careapp/app/sos/MechanicActivity;->requestPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const p1, 0x7f110ae7

    .line 495
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/sos/MechanicActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f110ae8

    .line 496
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/sos/MechanicActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 495
    invoke-direct {p0, p1, v0}, Lcom/texa/careapp/app/sos/MechanicActivity;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public clickCallWorkshop(Landroid/view/View;)V
    .locals 1

    .line 465
    iget-object p1, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mWorkshopNumber:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 466
    sget-object p1, Lcom/texa/careapp/utils/permission/CorePermission;->USE_PHONE:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/texa/careapp/utils/Utils;->isPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 467
    iget-object p1, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mWorkshopNumber:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/sos/MechanicActivity;->dialNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 469
    :cond_0
    sget-object p1, Lcom/texa/careapp/utils/permission/CorePermission;->USE_PHONE:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mWorkshopNumber:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/texa/careapp/app/sos/MechanicActivity;->requestPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const p1, 0x7f110ae7

    .line 471
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/sos/MechanicActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f110ae8

    .line 472
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/sos/MechanicActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 471
    invoke-direct {p0, p1, v0}, Lcom/texa/careapp/app/sos/MechanicActivity;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getDayOfWeek(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, -0x1

    return p1

    :pswitch_0
    const/4 p1, 0x6

    return p1

    :pswitch_1
    const/4 p1, 0x5

    return p1

    :pswitch_2
    const/4 p1, 0x4

    return p1

    :pswitch_3
    const/4 p1, 0x3

    return p1

    :pswitch_4
    const/4 p1, 0x2

    return p1

    :pswitch_5
    const/4 p1, 0x1

    return p1

    :pswitch_6
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isOnHoliday(Lcom/texa/careapp/model/MechanicModel;Ljava/util/Calendar;)Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Check if is on holiday"

    .line 329
    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    invoke-virtual {p1}, Lcom/texa/careapp/model/MechanicModel;->getClosing_end()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/texa/careapp/model/MechanicModel;->getClosing_start()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 331
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 333
    :try_start_0
    invoke-virtual {p1}, Lcom/texa/careapp/model/MechanicModel;->getClosing_start()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 334
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 335
    invoke-virtual {p1}, Lcom/texa/careapp/model/MechanicModel;->getClosing_end()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x5

    const/4 v1, 0x1

    .line 336
    invoke-virtual {v3, p1, v1}, Ljava/util/Calendar;->add(II)V

    .line 337
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 338
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    .line 339
    invoke-virtual {p2, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p1

    new-array p2, v0, [Ljava/lang/Object;

    const-string v1, "Error on parsing date"

    .line 341
    invoke-static {p1, v1, p2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v0
.end method

.method public isOpen(Ljava/util/List;Ljava/util/Calendar;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/BusinessTime;",
            ">;",
            "Ljava/util/Calendar;",
            ")Z"
        }
    .end annotation

    move-object/from16 v1, p2

    const-string v2, " "

    const-string v3, "/"

    const-string v4, ":"

    const/4 v5, 0x0

    new-array v0, v5, [Ljava/lang/Object;

    const-string v6, "Check if is open"

    .line 299
    invoke-static {v6, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v7, "dd/MM/yyyy HH:mm"

    invoke-direct {v6, v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/16 v0, 0x9

    .line 301
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 306
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v0, 0x0

    move-object v9, v0

    move-object v10, v9

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/BusinessTime;

    .line 307
    invoke-virtual {v0}, Lcom/texa/careapp/model/BusinessTime;->getWeek_day()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x7

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    move-object/from16 v14, p0

    invoke-virtual {v14, v13}, Lcom/texa/careapp/app/sos/MechanicActivity;->getDayOfWeek(I)I

    move-result v13

    if-ne v12, v13, :cond_0

    invoke-virtual {v0}, Lcom/texa/careapp/model/BusinessTime;->getAm_pm()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v12, v7, :cond_0

    .line 309
    :try_start_0
    invoke-virtual {v0}, Lcom/texa/careapp/model/BusinessTime;->getOpen_time()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lcom/texa/careapp/model/BusinessTime;->getOpen_time()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v5, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 310
    invoke-virtual {v0}, Lcom/texa/careapp/model/BusinessTime;->getOpen_time()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lcom/texa/careapp/model/BusinessTime;->getOpen_time()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    add-int/2addr v15, v11

    invoke-virtual {v13, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 311
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x5

    :try_start_1
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x2

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v16

    const/4 v11, 0x1

    add-int/lit8 v5, v16, 0x1

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    .line 313
    invoke-virtual {v0}, Lcom/texa/careapp/model/BusinessTime;->getClose_time()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/texa/careapp/model/BusinessTime;->getClose_time()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v5, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 314
    invoke-virtual {v0}, Lcom/texa/careapp/model/BusinessTime;->getClose_time()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lcom/texa/careapp/model/BusinessTime;->getClose_time()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v12, 0x1

    add-int/2addr v0, v12

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 315
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x5

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x2

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/4 v13, 0x1

    add-int/2addr v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v10, v0

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v5, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    new-array v11, v5, [Ljava/lang/Object;

    const-string v5, "Error on parsing time"

    .line 317
    invoke-static {v0, v5, v11}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_2
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_1
    move-object/from16 v14, p0

    const/4 v13, 0x1

    if-eqz v9, :cond_3

    if-eqz v10, :cond_3

    .line 322
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 323
    invoke-virtual {v0, v9}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v10}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v5, 0x1

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    :goto_3
    return v5

    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public synthetic lambda$getMechanicData$0$com-texa-careapp-app-sos-MechanicActivity(Lcom/texa/careapp/networking/response/CustomerResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 172
    :try_start_0
    invoke-static {p1}, Lcom/texa/careapp/model/MechanicModel;->from(Lcom/texa/careapp/networking/response/CustomerResponse;)Lcom/texa/careapp/model/MechanicModel;

    move-result-object p1

    .line 173
    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mMechanicDataManager:Lcom/texa/careapp/utils/MechanicDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/MechanicDataManager;->deleteMechanicsData()V

    .line 174
    iput-object p1, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mMechanicModel:Lcom/texa/careapp/model/MechanicModel;

    .line 175
    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    .line 176
    iget-object v0, p1, Lcom/texa/careapp/model/MechanicModel;->business_times:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/BusinessTime;

    .line 177
    iget-object v2, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    goto :goto_0

    .line 179
    :cond_0
    iget-object p1, p1, Lcom/texa/careapp/model/MechanicModel;->contacts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/MechanicContact;

    .line 180
    iget-object v1, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 183
    instance-of v0, p1, Lcom/texa/careapp/exceptions/DatabaseIOException;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Could not save mechanic model to database."

    .line 184
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 186
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Could not retrieve mechanic data."

    .line 187
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/MechanicActivity;->initData()V

    return-void
.end method

.method public synthetic lambda$getMechanicData$1$com-texa-careapp-app-sos-MechanicActivity(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "#getMechanicData() on Error"

    .line 193
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    iget-object p1, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mMechanicDataManager:Lcom/texa/careapp/utils/MechanicDataManager;

    invoke-virtual {p1}, Lcom/texa/careapp/utils/MechanicDataManager;->getMechanicModel()Lcom/texa/careapp/model/MechanicModel;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mMechanicModel:Lcom/texa/careapp/model/MechanicModel;

    if-eqz p1, :cond_0

    .line 196
    invoke-virtual {p1}, Lcom/texa/careapp/model/MechanicModel;->loadBusinessTimeFromDB()Ljava/util/List;

    .line 197
    iget-object p1, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mMechanicModel:Lcom/texa/careapp/model/MechanicModel;

    invoke-virtual {p1}, Lcom/texa/careapp/model/MechanicModel;->loadMechanicContactsFromDB()Ljava/util/List;

    .line 199
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/MechanicActivity;->initData()V

    return-void
.end method

.method public synthetic lambda$setLocationTextFromGeoCode$3$com-texa-careapp-app-sos-MechanicActivity(Landroid/location/Address;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/sos/MechanicActivity;->setMechanicAddress(Ljava/lang/String;)V

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/sos/MechanicActivity;->setMechanicCityAddress(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setOnClickListenerToButtonNavigation$2$com-texa-careapp-app-sos-MechanicActivity(Lcom/texa/careapp/model/MechanicModel$Location;Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 206
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "google.navigation:q="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/texa/careapp/model/MechanicModel$Location;->latitude:Ljava/lang/Double;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/texa/careapp/model/MechanicModel$Location;->longitude:Ljava/lang/Double;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 208
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "com.google.android.apps.maps"

    .line 209
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/MechanicActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 211
    invoke-virtual {p0, p2}, Lcom/texa/careapp/app/sos/MechanicActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p2, p1, [Ljava/lang/Object;

    const-string v0, "No mechanic info location to use in googleMaps"

    .line 214
    invoke-static {v0, p2}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    iget-object p2, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f110b0f

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/sos/MechanicActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 98
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/MechanicActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/CareApplication;

    .line 101
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/sos/MechanicActivity;)V

    .line 102
    iput-object p0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mContext:Landroid/content/Context;

    const p1, 0x7f0d002e

    .line 103
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ActivityMechanicBinding;

    .line 104
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->relativeLayoutActivityMechanic:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 105
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->mechanicNameTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mMechanicName:Landroid/widget/TextView;

    .line 106
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->mechanicAddressTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mAddress:Landroid/widget/TextView;

    .line 107
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->mechanicCityAddressTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mAddressCity:Landroid/widget/TextView;

    .line 108
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->mechanicOpeningTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mMechanicOpening:Landroid/widget/TextView;

    .line 109
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->workshopImage:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mWorkshopImage:Landroid/widget/ImageView;

    .line 110
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->availabilityImage:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mAvailabilityImage:Landroid/widget/ImageView;

    .line 111
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->phoneMobileImage:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mPhoneMobileImage:Landroid/widget/ImageView;

    .line 112
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->workshopText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mWorkshopText:Landroid/widget/TextView;

    .line 113
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->availabilityText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mAvailabilityText:Landroid/widget/TextView;

    .line 114
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->phoneMobileText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mPhoneMobileText:Landroid/widget/TextView;

    .line 115
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->mechanicNavigationButton:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mMechanicNavigationButton:Landroid/widget/TextView;

    .line 116
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->workshopButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/texa/careapp/app/sos/MechanicActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/sos/MechanicActivity$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/sos/MechanicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p1, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->availabilityButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/texa/careapp/app/sos/MechanicActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/sos/MechanicActivity$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/sos/MechanicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object p1, p1, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->phoneMobileButton:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/texa/careapp/app/sos/MechanicActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/sos/MechanicActivity$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/sos/MechanicActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/MechanicActivity;->setVisibilityButtons()V

    .line 122
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/MechanicActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 124
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 125
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/MechanicActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f0a0262

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 541
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onDestroy()V

    .line 542
    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 1

    .line 134
    iput-object p1, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 135
    sget-object p1, Lcom/texa/careapp/utils/permission/CorePermission;->USE_ACCESS_LOCATION:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/texa/careapp/utils/Utils;->isPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 136
    iget-object p1, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    goto :goto_0

    .line 138
    :cond_0
    sget-object p1, Lcom/texa/careapp/utils/permission/CorePermission;->USE_ACCESS_LOCATION:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/texa/careapp/app/sos/MechanicActivity;->requestPermission(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 156
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onPause()V

    .line 157
    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mMechanicDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mPermissionRequest:Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {v0, p1, p2, p3}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 446
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/texa/careapp/base/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 144
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onResume()V

    .line 145
    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mMechanicDataManager:Lcom/texa/careapp/utils/MechanicDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/MechanicDataManager;->getMechanicModel()Lcom/texa/careapp/model/MechanicModel;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mMechanicModel:Lcom/texa/careapp/model/MechanicModel;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/texa/careapp/model/MechanicModel;->loadBusinessTimeFromDB()Ljava/util/List;

    .line 148
    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mMechanicModel:Lcom/texa/careapp/model/MechanicModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/MechanicModel;->loadMechanicContactsFromDB()Ljava/util/List;

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/app/sos/MechanicActivity;->getMechanicData()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mMechanicDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 162
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onStop()V

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mPermissionRequest:Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    return-void
.end method

.method protected requiresAuthentication()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setInfoCustomer()V
    .locals 6

    .line 378
    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mMechanicModel:Lcom/texa/careapp/model/MechanicModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 379
    invoke-direct {p0, v0}, Lcom/texa/careapp/app/sos/MechanicActivity;->setMechanicLocation(Lcom/texa/careapp/model/MechanicModel;)V

    .line 380
    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mMechanicModel:Lcom/texa/careapp/model/MechanicModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/MechanicModel;->getLocation()Lcom/texa/careapp/model/MechanicModel$Location;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 382
    iget-object v2, v0, Lcom/texa/careapp/model/MechanicModel$Location;->latitude:Ljava/lang/Double;

    if-nez v2, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "mechanic latitude is null!!"

    .line 383
    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 385
    :cond_0
    iget-object v2, v0, Lcom/texa/careapp/model/MechanicModel$Location;->longitude:Ljava/lang/Double;

    if-nez v2, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "mechanic longitude is null!!"

    .line 386
    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 390
    :cond_1
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, v0, Lcom/texa/careapp/model/MechanicModel$Location;->latitude:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v0, v0, Lcom/texa/careapp/model/MechanicModel$Location;->longitude:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 391
    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mMechanicModel:Lcom/texa/careapp/model/MechanicModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/MechanicModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/texa/careapp/app/sos/MechanicActivity;->addMechanicMarker(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "mechanic location is null!!"

    .line 393
    invoke-static {v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "mechanic is null!!"

    .line 396
    invoke-static {v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setMechanicAddress(Ljava/lang/String;)V
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mAddress:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMechanicCityAddress(Ljava/lang/String;)V
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mAddressCity:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMechanicName(Ljava/lang/String;)V
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mMechanicName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNumber(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/MechanicContact;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Set numbers with List of mechanic contact"

    .line 255
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    .line 256
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 259
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/MechanicContact;

    .line 260
    iget-object v1, v0, Lcom/texa/careapp/model/MechanicContact;->type:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/texa/careapp/model/MechanicContact;->type:Ljava/lang/String;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 261
    iget-object v1, v0, Lcom/texa/careapp/model/MechanicContact;->value:Ljava/lang/String;

    iput-object v1, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mWorkshopNumber:Ljava/lang/String;

    .line 263
    :cond_2
    iget-object v1, v0, Lcom/texa/careapp/model/MechanicContact;->type:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/texa/careapp/model/MechanicContact;->type:Ljava/lang/String;

    const-string v2, "phone_mobile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 264
    iget-object v1, v0, Lcom/texa/careapp/model/MechanicContact;->value:Ljava/lang/String;

    iput-object v1, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mPhoneMobileNumber:Ljava/lang/String;

    .line 266
    :cond_3
    iget-object v1, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/VehicleDataManager;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v1

    .line 267
    iget-object v2, v0, Lcom/texa/careapp/model/MechanicContact;->type:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/texa/careapp/model/MechanicContact;->type:Ljava/lang/String;

    const-string v3, "phone_availability"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->isCustomerAvailability()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    iget-object v0, v0, Lcom/texa/careapp/model/MechanicContact;->value:Ljava/lang/String;

    iput-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mAvailabilityNumber:Ljava/lang/String;

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public setVisibilityButtons()V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Set visibility buttons"

    .line 274
    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    iget-object v1, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mWorkshopNumber:Ljava/lang/String;

    const v2, 0x7f08012e

    const/4 v3, 0x1

    const v4, 0x7f08012d

    if-nez v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mWorkshopImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 277
    iget-object v1, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mWorkshopText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mWorkshopImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 280
    iget-object v1, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mWorkshopText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 282
    :goto_0
    iget-object v1, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mAvailabilityNumber:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 283
    iget-object v1, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mAvailabilityImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 284
    iget-object v1, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mAvailabilityText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 286
    :cond_1
    iget-object v1, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mAvailabilityImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 287
    iget-object v1, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mAvailabilityText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 289
    :goto_1
    iget-object v1, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mPhoneMobileNumber:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 290
    iget-object v1, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mPhoneMobileImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 291
    iget-object v1, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mPhoneMobileText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mPhoneMobileImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 294
    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity;->mPhoneMobileText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_2
    return-void
.end method

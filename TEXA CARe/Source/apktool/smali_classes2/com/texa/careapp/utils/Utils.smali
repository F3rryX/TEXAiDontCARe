.class public abstract Lcom/texa/careapp/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static DATE_FORMAT:Ljava/text/DateFormat; = null

.field private static final SET_ONLY_ALERT_ONCE:Z = true

.field private static final TAG:Ljava/lang/String; = "Utils"


# instance fields
.field resume:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 144
    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/texa/careapp/utils/Utils;->DATE_FORMAT:Ljava/text/DateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1134
    sget-object v0, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda12;->INSTANCE:Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda12;

    iput-object v0, p0, Lcom/texa/careapp/utils/Utils;->resume:Lio/reactivex/functions/Function;

    return-void
.end method

.method public static applyMaybeSchedulers()Lio/reactivex/MaybeTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/MaybeTransformer<",
            "TT;TT;>;"
        }
    .end annotation

    .line 1130
    sget-object v0, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda5;->INSTANCE:Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda5;

    return-object v0
.end method

.method public static applyNotNullFilter()Lio/reactivex/ObservableTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/ObservableTransformer<",
            "TT;TT;>;"
        }
    .end annotation

    .line 1126
    sget-object v0, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda8;->INSTANCE:Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda8;

    return-object v0
.end method

.method public static applySchedulers()Lio/reactivex/ObservableTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/ObservableTransformer<",
            "TT;TT;>;"
        }
    .end annotation

    .line 1121
    sget-object v0, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda9;->INSTANCE:Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda9;

    return-object v0
.end method

.method public static buildAlternatorNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;
    .locals 2

    .line 464
    invoke-static {p0}, Lcom/texa/careapp/utils/Utils;->getDefaultNotificationBuilder(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x7f110b14

    .line 465
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    new-instance v0, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 466
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 467
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 468
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public static buildEmergencyData(Lcom/texa/careapp/model/UserModel;Landroid/location/Location;I)Lcom/texa/careapp/model/EmergencyInfo;
    .locals 5

    .line 1063
    new-instance v0, Lcom/texa/careapp/model/EmergencyInfo;

    invoke-direct {v0}, Lcom/texa/careapp/model/EmergencyInfo;-><init>()V

    .line 1065
    invoke-virtual {p0}, Lcom/texa/careapp/model/UserModel;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/EmergencyInfo;->setUserId(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {p0}, Lcom/texa/careapp/model/UserModel;->getUserCellPhoneContact()Lcom/texa/careapp/model/ContactModel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1070
    invoke-virtual {p0}, Lcom/texa/careapp/model/ContactModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/EmergencyInfo;->setMainContact(Ljava/lang/String;)V

    .line 1073
    :cond_0
    invoke-virtual {v0, p2}, Lcom/texa/careapp/model/EmergencyInfo;->setRequestType(I)V

    const/4 p0, 0x1

    const/4 p2, 0x0

    const/4 v1, 0x2

    if-eqz p1, :cond_1

    new-array v2, v1, [Ljava/lang/Object;

    .line 1077
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, p2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, p0

    const-string v3, "location: %s;%s"

    invoke-static {v3, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1078
    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/EmergencyInfo;->addLocation(Landroid/location/Location;)V

    .line 1081
    :cond_1
    sget-object p1, Lcom/texa/careapp/utils/Utils;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "emergency data: %s"

    aput-object v2, v1, p2

    invoke-virtual {v0}, Lcom/texa/careapp/model/EmergencyInfo;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p0

    invoke-static {p1, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static buildGsonInstance()Lcom/google/gson/Gson;
    .locals 3

    .line 415
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 416
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/google/gson/FieldNamingPolicy;

    .line 417
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->setFieldNamingPolicy(Lcom/google/gson/FieldNamingPolicy;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Ljava/util/Date;

    new-instance v2, Lcom/texa/careapp/utils/DateTypeAdapter;

    invoke-direct {v2}, Lcom/texa/careapp/utils/DateTypeAdapter;-><init>()V

    .line 418
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lcom/texa/careapp/model/VehicleParam;

    new-instance v2, Lcom/texa/careapp/utils/activeandroid/VehicleParamSerializer;

    invoke-direct {v2}, Lcom/texa/careapp/utils/activeandroid/VehicleParamSerializer;-><init>()V

    .line 419
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lcom/texa/careapp/model/ThresholdModel;

    new-instance v2, Lcom/texa/careapp/utils/gson/ThresholdModelSerializer;

    invoke-direct {v2}, Lcom/texa/careapp/utils/gson/ThresholdModelSerializer;-><init>()V

    .line 420
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lcom/texa/careapp/model/ThresholdModelList;

    new-instance v2, Lcom/texa/careapp/utils/gson/ThresholdListSerializer;

    invoke-direct {v2}, Lcom/texa/careapp/utils/gson/ThresholdListSerializer;-><init>()V

    .line 421
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 422
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method

.method public static buildLampsNotification(Landroid/content/Context;Ljava/util/List;)Landroid/app/Notification;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/errorsDTC/LampStatus;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 517
    invoke-static {p0, p1}, Lcom/texa/careapp/app/diagnosis/DiagnosisDataActivity;->buildIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p1

    .line 519
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/high16 v0, 0xa000000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x8000000

    :goto_0
    const/4 v1, 0x1

    .line 522
    invoke-static {p0, v1, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const v0, 0x7f110b18

    .line 524
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 526
    invoke-static {p0}, Lcom/texa/careapp/utils/Utils;->getDefaultNotificationBuilder(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 527
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const v2, 0x7f110b17

    .line 528
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 529
    invoke-virtual {p0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 530
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 531
    invoke-virtual {p0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 532
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public static buildLocationRequestForEmergency()Lcom/google/android/gms/location/LocationRequest;
    .locals 3

    .line 1087
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 1088
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    .line 1089
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const/16 v1, 0x64

    .line 1090
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static canDrawOverlays(Landroid/content/Context;)Z
    .locals 0

    .line 1595
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    if-eqz p0, :cond_3

    .line 605
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 609
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 612
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p0, v4

    .line 614
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 617
    :cond_1
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    .line 618
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 620
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_2
    const-string p0, ""

    return-object p0
.end method

.method public static checkCalibrationMinFirmwareVersion(Lcom/texa/carelib/care/accessory/Accessory;)Z
    .locals 4

    .line 1513
    new-instance v0, Lcom/texa/carelib/core/utils/FirmwareVersion;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1514
    invoke-interface {p0}, Lcom/texa/carelib/care/accessory/Accessory;->getMainAPPVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v1

    .line 1515
    invoke-interface {p0}, Lcom/texa/carelib/care/accessory/Accessory;->getServiceAPPVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p0

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    .line 1516
    invoke-virtual {v1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object v1

    invoke-virtual {v0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/texa/carelib/core/utils/Version;->compareTo(Lcom/texa/carelib/core/utils/Version;)I

    move-result v1

    const/4 v3, -0x1

    if-le v1, v3, :cond_0

    .line 1517
    invoke-virtual {p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object p0

    invoke-virtual {v0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/carelib/core/utils/Version;->compareTo(Lcom/texa/carelib/core/utils/Version;)I

    move-result p0

    if-le p0, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static checkCurrentEcoDrivingMinFirmwareVersion(Lcom/texa/carelib/care/accessory/Accessory;)Z
    .locals 7

    .line 1505
    new-instance v0, Lcom/texa/carelib/core/utils/FirmwareVersion;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v0, v1, v3, v5, v6}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1506
    invoke-interface {p0}, Lcom/texa/carelib/care/accessory/Accessory;->getMainAPPVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v1

    .line 1507
    invoke-interface {p0}, Lcom/texa/carelib/care/accessory/Accessory;->getServiceAPPVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p0

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    .line 1508
    invoke-virtual {v1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object v1

    invoke-virtual {v0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/texa/carelib/core/utils/Version;->compareTo(Lcom/texa/carelib/core/utils/Version;)I

    move-result v1

    const/4 v3, -0x1

    if-le v1, v3, :cond_0

    .line 1509
    invoke-virtual {p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object p0

    invoke-virtual {v0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/carelib/core/utils/Version;->compareTo(Lcom/texa/carelib/core/utils/Version;)I

    move-result p0

    if-le p0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static checkDoubleAddress(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 932
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v1

    .line 933
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 934
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/Address;

    invoke-virtual {p0}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 935
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/Address;

    invoke-virtual {p0}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkEcoDrivingMinFirmwareVersion(Lcom/texa/careapp/carelib/ICareObserver;Lcom/texa/careapp/model/DongleModel;)Z
    .locals 7

    .line 1488
    new-instance v0, Lcom/texa/carelib/core/utils/FirmwareVersion;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v0, v1, v3, v5, v6}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1489
    new-instance v1, Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-direct {v1}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>()V

    if-nez p1, :cond_0

    return v4

    .line 1493
    :cond_0
    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleModel;->getMainAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1495
    invoke-virtual {v3}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object p0

    invoke-virtual {v0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/core/utils/Version;->compareTo(Lcom/texa/carelib/core/utils/Version;)I

    move-result p0

    const/4 p1, -0x1

    if-gt p0, p1, :cond_2

    invoke-virtual {v3}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object p0

    invoke-virtual {v1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/core/utils/Version;->compareTo(Lcom/texa/carelib/core/utils/Version;)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2

    .line 1498
    :cond_3
    invoke-virtual {p1, p0}, Lcom/texa/careapp/model/DongleModel;->observerFirmwareVersion(Lcom/texa/careapp/carelib/ICareObserver;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda10;-><init>(Lcom/texa/careapp/carelib/ICareObserver;)V

    sget-object p0, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda11;->INSTANCE:Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda11;

    invoke-virtual {p1, v0, p0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return v4
.end method

.method private static checkNullValue(Ljava/lang/Integer;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 979
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static cleanVehicleItems(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/onboarding/IVehicleModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/onboarding/IVehicleModel;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/app/onboarding/IVehicleModel;

    .line 198
    invoke-interface {v2}, Lcom/texa/careapp/app/onboarding/IVehicleModel;->getVehicleInfo()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "||"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    .line 199
    invoke-interface {v2}, Lcom/texa/careapp/app/onboarding/IVehicleModel;->getVehicleInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 200
    array-length v4, v3

    const/4 v7, 0x2

    if-ne v4, v7, :cond_2

    .line 201
    aget-object v4, v3, v5

    invoke-static {v4}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v3, v3, v6

    invoke-static {v3}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 204
    :cond_1
    invoke-interface {v2}, Lcom/texa/careapp/app/onboarding/IVehicleModel;->getVehicleInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    const/4 v5, 0x1

    :cond_2
    if-nez v5, :cond_0

    .line 209
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 213
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 214
    invoke-interface {p0, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_4
    return-object p0
.end method

.method public static closeKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 1

    const-string v0, "input_method"

    .line 1557
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p0, :cond_0

    .line 1559
    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public static convertTripDataRaw([B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 898
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createPermissionExplanationAlertDialog(Landroid/app/Activity;)Landroid/app/AlertDialog;
    .locals 4

    .line 486
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110a29

    .line 487
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f110a28

    .line 489
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 490
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f110a89

    .line 491
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda4;-><init>(Landroid/app/Activity;)V

    const/high16 p0, 0x1040000

    .line 493
    invoke-virtual {v1, p0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 495
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static daysToExpire(Ljava/util/Date;)J
    .locals 4

    .line 299
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    .line 300
    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "HmacSHA256"

    .line 1270
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 1271
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 1272
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 1275
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 1293
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static filterProperty(Ljava/lang/String;)Lio/reactivex/ObservableTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/ObservableTransformer<",
            "Ljava/beans/PropertyChangeEvent;",
            "Ljava/beans/PropertyChangeEvent;",
            ">;"
        }
    .end annotation

    .line 1155
    new-instance v0, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static formatDescription(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 236
    invoke-static {p0}, Lcom/texa/careapp/utils/Utils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 238
    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 239
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "\\(.+?\\)|\\[.+?\\]+"

    const-string v1, ""

    .line 240
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 243
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/texa/careapp/utils/Utils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatVehicleModel(Lcom/texa/careapp/model/VehicleModel;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getBrandName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getModelName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/texa/careapp/utils/Utils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 182
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "\\(.+?\\)|\\[.+?\\]+"

    .line 183
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v2, "||"

    .line 185
    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 186
    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 191
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/texa/careapp/utils/Utils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatVehicleModel(Lcom/texa/careapp/networking/response/SelectionDataResponse;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/SelectionDataResponse;->getBrand()Lcom/texa/careapp/utils/ValueOrder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 281
    invoke-virtual {v1}, Lcom/texa/careapp/utils/ValueOrder;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 284
    :goto_0
    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/SelectionDataResponse;->getModel()Lcom/texa/careapp/utils/ValueOrder;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 286
    invoke-virtual {p0}, Lcom/texa/careapp/utils/ValueOrder;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/texa/careapp/utils/Utils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 287
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "\\(.+?\\)|\\[.+?\\]+"

    .line 288
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, p0

    .line 292
    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/texa/careapp/utils/Utils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatVehicleModel(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 221
    invoke-static {p0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 224
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "\\(.+?\\)|\\[.+?\\]+"

    .line 225
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "||"

    .line 227
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 232
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/texa/careapp/utils/Utils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static geocodeObservable(Landroid/content/Context;DDI)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "DDI)",
            "Lio/reactivex/Observable<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .line 1137
    new-instance v7, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda6;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda6;-><init>(Landroid/content/Context;DDI)V

    invoke-static {v7}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static getAcceptedLocales()[Ljava/util/Locale;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Locale;

    .line 448
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 731
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 732
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 736
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get application version name or code."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getBatteryLevel(Lcom/texa/careapp/model/VehicleModel;)Lcom/texa/careapp/utils/BatteryLevel;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string/jumbo v1, "vehicleModel is NULL"

    .line 1363
    invoke-static {v1, p0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 1377
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getAlarms()Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1378
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1379
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/VehicleAlarm;

    .line 1380
    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleAlarm;->getAlarmType()Lcom/texa/careapp/model/AlarmType;

    move-result-object v2

    sget-object v3, Lcom/texa/careapp/model/AlarmType;->BATTERY_STATE:Lcom/texa/careapp/model/AlarmType;

    if-ne v2, v3, :cond_1

    .line 1381
    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleAlarm;->getAlarmStatus()Lcom/texa/careapp/model/AlarmStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/careapp/model/AlarmStatus;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 1385
    sget-object p0, Lcom/texa/careapp/model/AlarmStatus;->RED:Lcom/texa/careapp/model/AlarmStatus;

    invoke-virtual {p0}, Lcom/texa/careapp/model/AlarmStatus;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1386
    sget-object p0, Lcom/texa/careapp/utils/BatteryLevel;->RED:Lcom/texa/careapp/utils/BatteryLevel;

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 1387
    sget-object p0, Lcom/texa/careapp/model/AlarmStatus;->YELLOW:Lcom/texa/careapp/model/AlarmStatus;

    invoke-virtual {p0}, Lcom/texa/careapp/model/AlarmStatus;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 1388
    sget-object p0, Lcom/texa/careapp/utils/BatteryLevel;->YELLOW:Lcom/texa/careapp/utils/BatteryLevel;

    goto :goto_1

    .line 1390
    :cond_4
    sget-object p0, Lcom/texa/careapp/utils/BatteryLevel;->GREEN:Lcom/texa/careapp/utils/BatteryLevel;

    :goto_1
    return-object p0
.end method

.method public static getCareStatus(Landroid/content/Context;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    .line 633
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_STATUS:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_STATUS:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const p1, 0x7f110b12

    .line 635
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getColorResource(Landroid/content/Context;I)I
    .locals 1

    .line 1279
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p0

    return p0
.end method

.method public static getCombinedTripRawData([B[B[B[B)[B
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1165
    array-length v1, p0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 1167
    array-length v2, p1

    add-int/2addr v1, v2

    :cond_1
    if-eqz p2, :cond_2

    .line 1169
    array-length v2, p2

    add-int/2addr v1, v2

    :cond_2
    if-eqz p3, :cond_3

    .line 1171
    array-length v2, p3

    add-int/2addr v1, v2

    .line 1173
    :cond_3
    new-array v1, v1, [B

    if-eqz p0, :cond_4

    .line 1178
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    aget-byte v5, p0, v3

    .line 1179
    aput-byte v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :cond_5
    if-eqz p1, :cond_6

    .line 1185
    array-length p0, p1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p0, :cond_6

    aget-byte v3, p1, v2

    .line 1186
    aput-byte v3, v1, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    if-eqz p2, :cond_7

    .line 1192
    array-length p0, p2

    const/4 p1, 0x0

    :goto_3
    if-ge p1, p0, :cond_7

    aget-byte v2, p2, p1

    .line 1193
    aput-byte v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_7
    if-eqz p3, :cond_8

    .line 1199
    array-length p0, p3

    :goto_4
    if-ge v0, p0, :cond_8

    aget-byte p1, p3, v0

    .line 1200
    aput-byte p1, v1, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    return-object v1
.end method

.method public static getComponent(Lcom/texa/care/navigation/Screen;)Lcom/texa/careapp/CareApplication$ApplicationComponent;
    .locals 2

    .line 640
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/care/navigation/Screen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p0

    .line 641
    invoke-virtual {p0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/CareApplication;

    .line 642
    invoke-virtual {p0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 644
    sget-object v0, Lcom/texa/careapp/utils/Utils;->TAG:Ljava/lang/String;

    const-string v1, "got exception"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCountOfScheduleIsExpired(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/IScheduleModel;",
            ">;)I"
        }
    .end annotation

    .line 957
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/IScheduleModel;

    .line 958
    invoke-interface {v1}, Lcom/texa/careapp/model/IScheduleModel;->getExpiringStatus()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static getCountOfScheduleIsExpiringNotExpired(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/IScheduleModel;",
            ">;)I"
        }
    .end annotation

    .line 943
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/IScheduleModel;

    .line 944
    invoke-interface {v1}, Lcom/texa/careapp/model/IScheduleModel;->getExpiringStatus()I

    move-result v2

    if-eqz v2, :cond_1

    .line 945
    invoke-interface {v1}, Lcom/texa/careapp/model/IScheduleModel;->getExpiringStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static getCurrentLanguage()Ljava/lang/String;
    .locals 2

    .line 1480
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "en"

    :goto_0
    return-object v1
.end method

.method static getDatePercent(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/Integer;
    .locals 6

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 876
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 877
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 878
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sub-long/2addr p0, v0

    const-wide/16 v4, 0x64

    mul-long p0, p0, v4

    sub-long/2addr v2, v0

    .line 880
    div-long/2addr p0, v2

    long-to-int p1, p0

    .line 882
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDateToExpirePercent(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/Integer;
    .locals 1

    .line 868
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/texa/careapp/utils/Utils;->getDateToExpirePercent(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static getDateToExpirePercent(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/Integer;
    .locals 0

    .line 886
    invoke-static {p0, p1, p2}, Lcom/texa/careapp/utils/Utils;->getDatePercent(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 890
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    rsub-int/lit8 p0, p0, 0x64

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultNotificationBuilder(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 2

    .line 472
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    const-string v1, "care_channel"

    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x7f110cc8

    .line 473
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    const v0, 0x7f080125

    .line 474
    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 475
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    const/4 v0, 0x1

    .line 476
    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    const/4 v0, 0x0

    .line 477
    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static getDriverLicenseExpireDate(Lcom/texa/careapp/model/UserModel;)Lcom/texa/careapp/model/UserScheduleModel;
    .locals 2

    .line 560
    invoke-virtual {p0}, Lcom/texa/careapp/model/UserModel;->getLicenseExpireDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 561
    new-instance v0, Lcom/texa/careapp/model/UserScheduleModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/UserScheduleModel;-><init>()V

    .line 562
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/UserScheduleModel;->setUid(Ljava/lang/String;)V

    .line 563
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/UserScheduleModel;->setUser(Lcom/texa/careapp/model/UserModel;)V

    .line 564
    sget-object v1, Lcom/texa/careapp/model/ScheduleType;->LICENSE:Lcom/texa/careapp/model/ScheduleType;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/UserScheduleModel;->setType(Lcom/texa/careapp/model/ScheduleType;)V

    .line 565
    invoke-virtual {p0}, Lcom/texa/careapp/model/UserModel;->getLicenseExpireDate()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/UserScheduleModel;->setExpireDate(Ljava/util/Date;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLampLabel(Landroid/content/Context;Lcom/texa/careapp/app/errorsDTC/LampStatus;)Ljava/lang/CharSequence;
    .locals 5

    .line 536
    invoke-virtual {p1}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->getDataId()Ljava/lang/Long;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "getLampLabel: dataId cannot be null!"

    .line 538
    invoke-static {p1, p0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 542
    :cond_0
    sget-object v2, Lcom/texa/careapp/Constants;->DATAID_LABELS:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_1

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    aput-object p1, p0, v1

    const-string p1, "no resource string found for dataId: %s"

    .line 545
    invoke-static {p1, p0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 549
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLampsListFilteredForDiagnosisType(Lcom/texa/careapp/app/diagnosis/DiagnosisType;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/app/diagnosis/DiagnosisType;",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/errorsDTC/LampStatus;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/errorsDTC/LampStatus;",
            ">;"
        }
    .end annotation

    .line 673
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 674
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/app/errorsDTC/LampStatus;

    .line 675
    invoke-virtual {v1}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->getDiagnosisType()Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 676
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getLang()Ljava/lang/String;
    .locals 3

    .line 1242
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, "-"

    .line 1243
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMurmurhash3x8632toHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UTF-8"

    .line 1227
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1228
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {v1, v0, p0}, Lcom/texa/careapp/utils/MurmurHash3;->murmurhash3x8632([BII)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Exception in Utils#getMurmurhash3x8632toHexString(string) "

    .line 1230
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, ""

    return-object p0
.end method

.method static getOdometerPercent(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 828
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    return-object v0

    :cond_1
    if-nez p0, :cond_2

    return-object v0

    .line 840
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x64

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p2, p1

    div-int/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static getOdometerToExpirePercent(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 859
    invoke-static {p0, p1, p2}, Lcom/texa/careapp/utils/Utils;->getOdometerPercent(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 863
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    rsub-int/lit8 p0, p0, 0x64

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static getParameterCardChartType(Landroid/content/SharedPreferences;Ljava/lang/String;)J
    .locals 3

    if-eqz p1, :cond_1

    .line 1424
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-string v1, "parameter_card_chart_json"

    const-string v2, "[]"

    .line 1425
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-class v1, [Lcom/texa/careapp/app/dashboard/card/ParametersCardPreferenceObject;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/texa/careapp/app/dashboard/card/ParametersCardPreferenceObject;

    .line 1424
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 1426
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1427
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/app/dashboard/card/ParametersCardPreferenceObject;

    invoke-virtual {v1}, Lcom/texa/careapp/app/dashboard/card/ParametersCardPreferenceObject;->getHwId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/app/dashboard/card/ParametersCardPreferenceObject;

    invoke-virtual {v1}, Lcom/texa/careapp/app/dashboard/card/ParametersCardPreferenceObject;->getHwId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1428
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/app/dashboard/card/ParametersCardPreferenceObject;

    invoke-virtual {p0}, Lcom/texa/careapp/app/dashboard/card/ParametersCardPreferenceObject;->getTypeId()J

    move-result-wide p0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/32 p0, 0x499602d2

    :goto_1
    return-wide p0
.end method

.method public static getScheduleTitle(Lcom/texa/careapp/model/IScheduleModel;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 572
    invoke-interface {p0}, Lcom/texa/careapp/model/IScheduleModel;->getType()Lcom/texa/careapp/model/ScheduleType;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 575
    invoke-virtual {p0}, Lcom/texa/careapp/model/ScheduleType;->getStringRes()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static getServiceScheduleInfo(Lcom/texa/careapp/model/VehicleModel;)Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;
    .locals 3

    .line 1399
    sget-object v0, Lcom/texa/careapp/model/ScheduleType;->DIAG_SERVICE_ODO:Lcom/texa/careapp/model/ScheduleType;

    invoke-virtual {p0, v0}, Lcom/texa/careapp/model/VehicleModel;->getSchedule(Lcom/texa/careapp/model/ScheduleType;)Lcom/texa/careapp/model/VehicleScheduleModel;

    move-result-object v0

    .line 1400
    sget-object v1, Lcom/texa/careapp/model/ScheduleType;->DIAG_SERVICE_TIME:Lcom/texa/careapp/model/ScheduleType;

    invoke-virtual {p0, v1}, Lcom/texa/careapp/model/VehicleModel;->getSchedule(Lcom/texa/careapp/model/ScheduleType;)Lcom/texa/careapp/model/VehicleScheduleModel;

    move-result-object v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1406
    :cond_0
    sget-object v0, Lcom/texa/careapp/model/ScheduleType;->SERVICE_ODO:Lcom/texa/careapp/model/ScheduleType;

    invoke-virtual {p0, v0}, Lcom/texa/careapp/model/VehicleModel;->getSchedule(Lcom/texa/careapp/model/ScheduleType;)Lcom/texa/careapp/model/VehicleScheduleModel;

    move-result-object v0

    .line 1407
    sget-object v1, Lcom/texa/careapp/model/ScheduleType;->SERVICE_TIME:Lcom/texa/careapp/model/ScheduleType;

    invoke-virtual {p0, v1}, Lcom/texa/careapp/model/VehicleModel;->getSchedule(Lcom/texa/careapp/model/ScheduleType;)Lcom/texa/careapp/model/VehicleScheduleModel;

    move-result-object v1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "getServiceScheduleInfo - OdometerSchedule and DateSchedule cannot be both null!"

    .line 1411
    invoke-static {v0, p0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    .line 1415
    :cond_2
    new-instance v2, Lcom/texa/careapp/utils/ScheduleHelper;

    .line 1416
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getOdometer()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v2, v0, v1, p0}, Lcom/texa/careapp/utils/ScheduleHelper;-><init>(Lcom/texa/careapp/model/VehicleScheduleModel;Lcom/texa/careapp/model/VehicleScheduleModel;I)V

    .line 1418
    invoke-virtual {v2}, Lcom/texa/careapp/utils/ScheduleHelper;->parse()Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getTempUserPhoneNumber(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "user_phone_number"

    const/4 v1, 0x0

    .line 1563
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static getUniqueDeviceId(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "unique_device_uuid"

    const/4 v1, 0x0

    .line 1544
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1546
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1547
    invoke-static {p0, v0}, Lcom/texa/careapp/utils/Utils;->saveUniqueDeviceId(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static varargs getUrlWithParams(Ljava/lang/String;[Landroidx/core/util/Pair;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    if-eqz p1, :cond_3

    .line 1249
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_2

    .line 1251
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 1252
    :goto_0
    array-length v1, p1

    if-ge p0, v1, :cond_2

    .line 1253
    aget-object v1, p1, p0

    if-nez p0, :cond_1

    const-string v2, "?"

    goto :goto_1

    :cond_1
    const-string v2, "&"

    .line 1255
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1256
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 1259
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    :goto_2
    return-object p0
.end method

.method public static getValue(Landroid/widget/EditText;)Ljava/lang/String;
    .locals 0

    .line 155
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 2

    .line 748
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 749
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 752
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get application version code."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static goToSettings(Landroid/app/Activity;)V
    .locals 4

    .line 503
    new-instance v0, Landroid/content/Intent;

    .line 504
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    .line 505
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 506
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static hide(Landroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 819
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static isActive(Lcom/texa/carelib/care/vehicle/Vehicle;J)Z
    .locals 3

    const/4 v0, 0x0

    .line 652
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/texa/carelib/care/vehicle/Vehicle;->getEnumValue(Ljava/lang/Long;)J

    move-result-wide p0

    .line 653
    sget-object p2, Lcom/texa/carelib/diagresources/EnumValue;->ACTIVE:Lcom/texa/carelib/diagresources/EnumValue;

    invoke-virtual {p2}, Lcom/texa/carelib/diagresources/EnumValue;->getId()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p2, p0, v1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 655
    sget-object p1, Lcom/texa/careapp/utils/Utils;->TAG:Ljava/lang/String;

    const-string p2, "got exception"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static isAlreadyIgnoringBatteryOptimization(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "power"

    .line 1586
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 1588
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isBluetoothEnabled(Lcom/texa/careapp/remotelogger/LoggerManager;)V
    .locals 4

    const/4 v0, 0x0

    .line 789
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 790
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "#isBluetoothEnabled()"

    .line 792
    invoke-static {v1, v3, v2}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    if-eqz v0, :cond_0

    .line 795
    sget-object v0, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->USER_INTERATION:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v1, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->SUCCESSFULL:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$LogNote;->BLUETOOTH_ENABLED:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    goto :goto_1

    .line 798
    :cond_0
    sget-object v0, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->USER_INTERATION:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v1, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->SUCCESSFULL:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$LogNote;->BLUETOOTH_DISABLED:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    :goto_1
    return-void
.end method

.method public static isCAReDevice(Lcom/texa/carelib/communication/DeviceInfo;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 348
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/communication/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/texa/careapp/utils/Utils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 349
    invoke-static {p0}, Lcom/texa/careapp/utils/Utils;->isValidCAReDeviceName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isCareConnected(Lcom/texa/carelib/communication/Communication;)Z
    .locals 1

    .line 992
    invoke-interface {p0}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p0

    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isCareReadyForScan(Lcom/texa/carelib/communication/Communication;)Z
    .locals 1

    .line 996
    invoke-interface {p0}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p0

    .line 997
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->IDLE:Lcom/texa/carelib/communication/CommunicationStatus;

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->SCANNING_FINISHED:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isCellPhoneNumberNotEmpty(Lcom/texa/careapp/model/ContactModel;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1049
    invoke-virtual {p0}, Lcom/texa/careapp/model/ContactModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isEmail(Ljava/lang/String;)Z
    .locals 1

    .line 587
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 588
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEmpty(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 159
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEmpty([Ljava/lang/Long;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 163
    array-length p0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isFirmwareVersionValid(Lcom/texa/carelib/core/utils/FirmwareVersion;)Z
    .locals 0

    .line 969
    invoke-static {p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->isValid(Lcom/texa/carelib/core/utils/FirmwareVersion;)Z

    move-result p0

    return p0
.end method

.method public static isGpsAvailable(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "location"

    .line 443
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    const-string v0, "gps"

    .line 444
    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isLampStatus(Ljava/lang/Long;)Z
    .locals 3

    .line 662
    sget-object v0, Lcom/texa/careapp/Constants;->LAMP_STATUS_IMAGES:Landroid/util/LongSparseArray;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isName(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^([A-z][A-Za-z]*\\s*[A-Za-z]*)$"

    .line 594
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 595
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 596
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public static isOBDConnected(Lcom/texa/carelib/care/accessory/Accessory;)Z
    .locals 2

    .line 1026
    invoke-interface {p0}, Lcom/texa/carelib/care/accessory/Accessory;->getStatus()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/16 v1, 0x84

    if-eq p0, v1, :cond_0

    const/16 v1, 0xff

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static isOdometerEstimated(Lcom/texa/carelib/care/trips/TripEndInfo;)Z
    .locals 2

    .line 250
    sget-object v0, Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;->Estimated:Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripEndInfo;->getOdometerEstimationMethod()Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

    move-result-object p0

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "isOdometerEstimated -> true"

    .line 251
    invoke-static {v0, p0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "isOdometerEstimated -> false"

    .line 254
    invoke-static {v0, p0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public static isOdometerFromDiagnostic(Lcom/texa/carelib/care/trips/TripEndInfo;)Z
    .locals 2

    .line 262
    sget-object v0, Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;->Diagnostic:Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripEndInfo;->getOdometerEstimationMethod()Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

    move-result-object p0

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "isOdometerFromDiagnostic -> true"

    .line 263
    invoke-static {v0, p0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "isOdometerFromDiagnostic -> false"

    .line 266
    invoke-static {v0, p0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public static isParameterVisibleForUser(J)Z
    .locals 1

    .line 706
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_DRIVER_PARAMETERS:Ljava/util/List;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isPermissionEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 324
    invoke-static {p0}, Lcom/texa/careapp/utils/permission/CorePermission;->with(Landroid/content/Context;)Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static varargs isPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 0

    .line 331
    invoke-static {p0}, Lcom/texa/careapp/utils/permission/CorePermission;->with(Landroid/content/Context;)Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;->has([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isPhoneNumber(Ljava/lang/String;)Z
    .locals 1

    .line 582
    sget-object v0, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 583
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isScheduleEditableByUser(Lcom/texa/careapp/model/IScheduleModel;)Z
    .locals 1

    .line 1283
    sget-object v0, Lcom/texa/careapp/model/ScheduleType;->TYPE_SCHEDULE_UNEDITABLE_FORM_USER:Ljava/util/List;

    invoke-interface {p0}, Lcom/texa/careapp/model/IScheduleModel;->getType()Lcom/texa/careapp/model/ScheduleType;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isSetThresholdValuesFromEditText(Lcom/texa/careapp/model/ThresholdModel;Landroid/widget/EditText;)Z
    .locals 2

    .line 363
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    if-eqz p0, :cond_0

    .line 365
    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->isValidIntegerValuesFromEditText(Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/careapp/model/ThresholdModel;->setOdometer(Ljava/lang/Integer;)V

    .line 368
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/careapp/model/ThresholdModel;->saveForSync()V
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Could not save vehicle threshold"

    .line 370
    invoke-static {p0, v0, p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public static isTimeElapsed(JJ)Z
    .locals 2

    .line 1237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    cmp-long p0, v0, p2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isUserLogged(Landroid/accounts/AccountManager;Lcom/texa/careapp/utils/UserDataManager;)Z
    .locals 1

    .line 1579
    sget-object v0, Lcom/texa/careapp/Constants;->ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 1580
    array-length p0, p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isValidCAReDeviceName(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "TOC"

    .line 359
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "D3M"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MDARIOL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isValidIntegerValuesFromEditText(Landroid/widget/EditText;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 380
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[-+.^:,]"

    const-string v1, ""

    .line 382
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 384
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static isValidVehicleAlarm(Lcom/texa/careapp/model/VehicleAlarm;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 625
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleAlarm;->getAlarmStatus()Lcom/texa/careapp/model/AlarmStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleAlarm;->getAlarmType()Lcom/texa/careapp/model/AlarmType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleAlarm;->getTimestamp()Ljava/util/Date;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidatedUserPhoneNumber(Lcom/texa/careapp/model/UserModel;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1045
    invoke-virtual {p0}, Lcom/texa/careapp/model/UserModel;->getUserCellPhoneContact()Lcom/texa/careapp/model/ContactModel;

    move-result-object p0

    invoke-static {p0}, Lcom/texa/careapp/utils/Utils;->isCellPhoneNumberNotEmpty(Lcom/texa/careapp/model/ContactModel;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVehicleParameter(J)Z
    .locals 2

    .line 666
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_DRIVER_PARAMETERS:Ljava/util/List;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/texa/careapp/Constants;->CARE_PARAMETERS_FOR_MECHANIC:Ljava/util/List;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic lambda$applyMaybeSchedulers$6(Lio/reactivex/Maybe;)Lio/reactivex/MaybeSource;
    .locals 1

    .line 1130
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Maybe;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Maybe;

    move-result-object p0

    .line 1131
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Maybe;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$applyNotNullFilter$4(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$applyNotNullFilter$5(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1

    .line 1126
    sget-object v0, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda2;->INSTANCE:Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda2;

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$applySchedulers$3(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1

    .line 1121
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    .line 1122
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$checkEcoDrivingMinFirmwareVersion$11(Lcom/texa/careapp/carelib/ICareObserver;Lcom/texa/careapp/model/DongleModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1498
    invoke-static {p0, p1}, Lcom/texa/careapp/utils/Utils;->checkEcoDrivingMinFirmwareVersion(Lcom/texa/careapp/carelib/ICareObserver;Lcom/texa/careapp/model/DongleModel;)Z

    return-void
.end method

.method static synthetic lambda$checkEcoDrivingMinFirmwareVersion$12(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Could not perform action"

    .line 1499
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$createPermissionExplanationAlertDialog$0(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 492
    invoke-static {p0}, Lcom/texa/careapp/utils/Utils;->goToSettings(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic lambda$createPermissionExplanationAlertDialog$1(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 494
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic lambda$filterProperty$10(Ljava/lang/String;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1

    .line 1155
    new-instance v0, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$filterProperty$9(Ljava/lang/String;Ljava/beans/PropertyChangeEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1155
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$geocodeObservable$8(Landroid/content/Context;DDILio/reactivex/ObservableEmitter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1138
    new-instance v0, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    .line 1140
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p0

    .line 1142
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;

    .line 1143
    invoke-interface {p6, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 1146
    :cond_0
    invoke-interface {p6}, Lio/reactivex/ObservableEmitter;->onComplete()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1148
    invoke-interface {p6, p0}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method static synthetic lambda$new$7(Ljava/lang/Throwable;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo p0, "twoResume"

    const-string v0, "threeResume"

    .line 1134
    invoke-static {p0, v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$scrollToThisView$2(Landroid/widget/ScrollView;Landroid/view/View;)V
    .locals 1

    .line 850
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    add-int/lit8 p1, p1, 0xa

    invoke-virtual {p0, v0, p1}, Landroid/widget/ScrollView;->scrollTo(II)V

    return-void
.end method

.method public static needsConfigurationUpdate(Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 983
    iget v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;->status:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;->status:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;->vehicleConfigurationStatus:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    sget-object v1, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;->FirstConfiguration:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;->vehicleConfigurationStatus:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    sget-object v0, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;->NeedsUpdated:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static nonNegativeSubtraction(II)I
    .locals 0

    sub-int/2addr p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public static nullSafeToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 807
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readTextFromFile(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 426
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    .line 427
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [C

    .line 430
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 432
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 433
    invoke-virtual {p1, v0, v3, v2}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 436
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 439
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 436
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 437
    throw p1
.end method

.method public static readableAccessoryStatus(I)Ljava/lang/String;
    .locals 3

    .line 716
    sget-object v0, Lcom/texa/careapp/Constants;->CARE_ACCESSORY_STATUS:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 717
    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 718
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "N.A.(%d)"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static removeAccount(Landroid/accounts/AccountManager;)V
    .locals 5

    .line 1008
    sget-object v0, Lcom/texa/careapp/Constants;->ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 1010
    array-length v1, v0

    if-nez v1, :cond_0

    return-void

    .line 1014
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const/4 v4, 0x0

    .line 1015
    invoke-virtual {p0, v3, v4, v4}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static resetAllSelectedDongleFlag(Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 2

    .line 1263
    invoke-virtual {p0}, Lcom/texa/careapp/model/DongleDataManager;->getAll()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleModel;

    const/4 v1, 0x0

    .line 1264
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/DongleModel;->setSelectedDongle(Z)V

    .line 1265
    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->save()Ljava/lang/Long;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static safeDispose(Lio/reactivex/disposables/CompositeDisposable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1108
    invoke-virtual {p0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    :cond_0
    return-void
.end method

.method public static safeDispose(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1102
    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1103
    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public static safeDispose(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/reactivex/disposables/Disposable;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1113
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/Disposable;

    if-eqz p0, :cond_0

    .line 1114
    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1115
    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method static safeGetByPosition(Ljava/util/List;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 688
    invoke-static {p0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 692
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    return-object v1

    .line 696
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/careapp/exceptions/DatabaseIOException;
        }
    .end annotation

    const-string v0, "Error saving model. Retry: %d"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 1315
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v3, "CARE_ENVIRONMENT"

    const-string v4, ""

    .line 1316
    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "VIN_MISMATCH_ENVIRONMENT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1317
    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "IDLE_ENVIRONMENT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    instance-of p1, p0, Lcom/texa/careapp/model/DongleModel;

    if-nez p1, :cond_2

    instance-of p1, p0, Lcom/texa/careapp/model/ContactModel;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const-wide/16 v3, -0x1

    if-eqz p1, :cond_5

    .line 1324
    :try_start_0
    invoke-virtual {p0}, Lcom/activeandroid/Model;->save()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-array v5, v2, [Ljava/lang/Object;

    .line 1327
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p1, v0, v5}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide v5, v3

    :goto_2
    const/4 p1, 0x1

    :goto_3
    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    const/4 v8, 0x3

    if-ge p1, v8, :cond_3

    const-wide/16 v7, 0x14

    .line 1333
    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    add-int/lit8 p1, p1, 0x1

    .line 1339
    :try_start_2
    invoke-virtual {p0}, Lcom/activeandroid/Model;->save()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v5
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v7

    new-array v8, v2, [Ljava/lang/Object;

    .line 1342
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v7, v0, v8}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    if-eqz v7, :cond_4

    move-wide v3, v5

    goto :goto_4

    :cond_4
    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "DBError: ActiveAndroid model save method return -1"

    .line 1348
    invoke-static {p1, p0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1349
    new-instance p0, Lcom/texa/careapp/exceptions/DatabaseIOException;

    const-string p1, "DBError: ActiveAndroid model save method return -1."

    invoke-direct {p0, p1}, Lcom/texa/careapp/exceptions/DatabaseIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_4
    return-wide v3
.end method

.method public static saveLogToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1460
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1462
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/eco_driving/log"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1463
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1464
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v3, "CREATE DIR LOG --> %s"

    invoke-static {v3, v0}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1467
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "log_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".json"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1470
    :try_start_0
    new-instance p1, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {p1, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1471
    invoke-virtual {p1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1472
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1474
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static saveTempUserPhoneNumber(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 1568
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "user_phone_number"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static saveUniqueDeviceId(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 1553
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "unique_device_uuid"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static scrollToThisView(Landroid/widget/ScrollView;Landroid/view/View;)V
    .locals 3

    .line 848
    new-instance v0, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda3;-><init>(Landroid/widget/ScrollView;Landroid/view/View;)V

    const/16 p1, 0xfa

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static serviceModelIsConsistent(Lcom/texa/careapp/model/ServiceDataModel;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1357
    invoke-virtual {p0}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/texa/careapp/model/ServiceDataModel;->getStatus()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setOdoTextWatcher(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 1

    .line 391
    new-instance v0, Lcom/texa/careapp/utils/Utils$1;

    invoke-direct {v0, p1, p0}, Lcom/texa/careapp/utils/Utils$1;-><init>(Landroid/widget/EditText;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public static setOutOfTheBoxCompleted(Landroid/content/SharedPreferences;)V
    .locals 2

    .line 783
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "ootb_completed_key"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setParameterCardChartType(Landroid/content/SharedPreferences;Ljava/lang/String;J)V
    .locals 5

    .line 1437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1438
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-string v2, "parameter_card_chart_json"

    const-string v3, "[]"

    .line 1439
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v4, [Lcom/texa/careapp/app/dashboard/card/ParametersCardPreferenceObject;

    invoke-virtual {v1, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/texa/careapp/app/dashboard/card/ParametersCardPreferenceObject;

    .line 1438
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1441
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1442
    new-instance v1, Lcom/texa/careapp/app/dashboard/card/ParametersCardPreferenceObject;

    invoke-direct {v1, p1, p2, p3}, Lcom/texa/careapp/app/dashboard/card/ParametersCardPreferenceObject;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 1444
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1445
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/app/dashboard/card/ParametersCardPreferenceObject;

    invoke-virtual {v3}, Lcom/texa/careapp/app/dashboard/card/ParametersCardPreferenceObject;->getHwId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1446
    new-instance v3, Lcom/texa/careapp/app/dashboard/card/ParametersCardPreferenceObject;

    invoke-direct {v3, p1, p2, p3}, Lcom/texa/careapp/app/dashboard/card/ParametersCardPreferenceObject;-><init>(Ljava/lang/String;J)V

    .line 1447
    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1450
    :cond_1
    new-instance v3, Lcom/texa/careapp/app/dashboard/card/ParametersCardPreferenceObject;

    invoke-direct {v3, p1, p2, p3}, Lcom/texa/careapp/app/dashboard/card/ParametersCardPreferenceObject;-><init>(Ljava/lang/String;J)V

    .line 1451
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1455
    :cond_2
    :goto_1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setText(Landroid/widget/EditText;Ljava/lang/Integer;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 306
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static setText(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0

    .line 311
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static setText(Landroid/widget/EditText;Ljava/util/Date;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 316
    sget-object v0, Lcom/texa/careapp/utils/Utils;->DATE_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static shouldStartOutOfTheBox(Landroid/content/SharedPreferences;Lcom/texa/careapp/model/DongleDataManager;)Z
    .locals 2

    .line 761
    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleDataManager;->count()I

    move-result p1

    const/4 v0, 0x1

    if-gtz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    const-string v1, "ootb_completed_key"

    .line 765
    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static shouldStartService(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "activity"

    .line 771
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const v0, 0x7fffffff

    .line 772
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 773
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static shouldStartWalkthrough(Landroid/content/SharedPreferences;)Z
    .locals 0

    .line 757
    invoke-static {p0}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivity;->hasShot(Landroid/content/SharedPreferences;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static show(Landroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 813
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static startWithPrefix(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1521
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1522
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static startWithPrefix2(Ljava/lang/String;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1529
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1531
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1532
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1533
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1536
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1537
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1538
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v3, v0, -0x1

    .line 1539
    invoke-interface {p1, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/texa/careapp/utils/Utils;->startWithPrefix2(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/2addr v0, v2

    .line 1540
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/texa/careapp/utils/Utils;->startWithPrefix2(Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static toString([Ljava/lang/Long;)Ljava/lang/String;
    .locals 5

    .line 1054
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1055
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1056
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    .line 1057
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1059
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static today()Ljava/util/Date;
    .locals 3

    .line 1209
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 1210
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 1211
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 1212
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 1213
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1214
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static trimToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 171
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

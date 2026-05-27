.class public final Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;
.super Lcom/texa/carelib/care/vehicle/VehicleListener;
.source "LampsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/lamps/LampsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LampsVehicleListener"
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private mVehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

.field private mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

.field final synthetic this$0:Lcom/texa/careapp/lamps/LampsManager;


# direct methods
.method constructor <init>(Lcom/texa/careapp/lamps/LampsManager;Lcom/texa/carelib/care/vehicle/Vehicle;Lcom/texa/careapp/model/VehicleModel;)V
    .locals 1

    .line 480
    iput-object p1, p0, Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;->this$0:Lcom/texa/careapp/lamps/LampsManager;

    invoke-direct {p0}, Lcom/texa/carelib/care/vehicle/VehicleListener;-><init>()V

    .line 476
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;->handler:Landroid/os/Handler;

    .line 481
    iput-object p2, p0, Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;->mVehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

    .line 482
    iput-object p3, p0, Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    return-void
.end method

.method private subscriptionStatusString(Lcom/texa/carelib/care/vehicle/SubscriptionState;)Ljava/lang/String;
    .locals 1

    .line 501
    sget-object v0, Lcom/texa/careapp/lamps/LampsManager$1;->$SwitchMap$com$texa$carelib$care$vehicle$SubscriptionState:[I

    invoke-virtual {p1}, Lcom/texa/carelib/care/vehicle/SubscriptionState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-string p1, "Unknown"

    return-object p1

    :cond_0
    const-string p1, "SubscribePending"

    return-object p1

    :cond_1
    const-string p1, "UnsubscribePending"

    return-object p1

    :cond_2
    const-string p1, "NotSubscribed"

    return-object p1

    :cond_3
    const-string p1, "Subscribed"

    return-object p1
.end method


# virtual methods
.method public getVehicleModel()Lcom/texa/careapp/model/VehicleModel;
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    return-object v0
.end method

.method public synthetic lambda$onParametersUpdated$0$com-texa-careapp-lamps-LampsManager$LampsVehicleListener(Lcom/texa/careapp/utils/Timestamped;)V
    .locals 4

    .line 537
    iget-object v0, p0, Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;->this$0:Lcom/texa/careapp/lamps/LampsManager;

    iget-object v1, p0, Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    iget-object v2, p0, Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;->mVehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, p1, v1, v2}, Lcom/texa/careapp/lamps/LampsManager;->handleLampsUpdate(ZLcom/texa/careapp/utils/Timestamped;Lcom/texa/careapp/model/VehicleModel;Lcom/texa/carelib/care/vehicle/Vehicle;)V

    return-void
.end method

.method public onParametersUpdated(Lcom/texa/carelib/care/vehicle/events/ParametersUpdatedEvent;)V
    .locals 5

    .line 526
    invoke-virtual {p1}, Lcom/texa/carelib/care/vehicle/events/ParametersUpdatedEvent;->getUpdatedParametersIDs()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 530
    :try_start_0
    iget-object v1, p0, Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;->mVehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

    invoke-interface {v1, v0}, Lcom/texa/carelib/care/vehicle/Vehicle;->getValueInfo(Ljava/lang/Long;)Lcom/texa/carelib/care/vehicle/ValueInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 531
    sget-object v2, Lcom/texa/carelib/care/vehicle/ValueDataType;->ENUM:Lcom/texa/carelib/care/vehicle/ValueDataType;

    invoke-interface {v1}, Lcom/texa/carelib/care/vehicle/ValueInfo;->getType()Lcom/texa/carelib/care/vehicle/ValueDataType;

    move-result-object v1

    if-ne v2, v1, :cond_0

    .line 533
    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isLampStatus(Ljava/lang/Long;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    new-instance v1, Lcom/texa/careapp/utils/Timestamped;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0}, Lcom/texa/careapp/utils/Timestamped;-><init>(JLjava/lang/Object;)V

    .line 536
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v0, v2, :cond_1

    .line 537
    iget-object v0, p0, Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;Lcom/texa/careapp/utils/Timestamped;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;->this$0:Lcom/texa/careapp/lamps/LampsManager;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    iget-object v4, p0, Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;->mVehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/texa/careapp/lamps/LampsManager;->handleLampsUpdate(ZLcom/texa/careapp/utils/Timestamped;Lcom/texa/careapp/model/VehicleModel;Lcom/texa/carelib/care/vehicle/Vehicle;)V
    :try_end_0
    .catch Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 544
    invoke-virtual {v0}, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;->printStackTrace()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onSubscriptionStateChanged(Lcom/texa/carelib/care/vehicle/events/SubscriptionStateChangedEvent;)V
    .locals 7

    .line 487
    invoke-super {p0, p1}, Lcom/texa/carelib/care/vehicle/VehicleListener;->onSubscriptionStateChanged(Lcom/texa/carelib/care/vehicle/events/SubscriptionStateChangedEvent;)V

    .line 488
    invoke-virtual {p1}, Lcom/texa/carelib/care/vehicle/events/SubscriptionStateChangedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 490
    iget-object v0, p0, Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;->mVehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

    invoke-interface {v0}, Lcom/texa/carelib/care/vehicle/Vehicle;->getSupportedDataIDs()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, " Supported Parameters = ["

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 491
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v0, "]"

    .line 493
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 495
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/texa/carelib/care/vehicle/events/SubscriptionStateChangedEvent;->getSubscriptionStates()[Lcom/texa/carelib/care/vehicle/SubscriptionState;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;->subscriptionStatusString(Lcom/texa/carelib/care/vehicle/SubscriptionState;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/texa/carelib/care/vehicle/events/SubscriptionStateChangedEvent;->getUpdatedParametersIDs()[Ljava/lang/Long;

    move-result-object v6

    aget-object v5, v6, v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/texa/carelib/care/vehicle/events/SubscriptionStateChangedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x3

    aput-object v0, v3, p1

    const-string p1, "Subscription status: %1$s for parameter: %2$s with error: %3$s   ----  %4$s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

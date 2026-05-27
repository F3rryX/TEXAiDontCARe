.class Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;
.super Ljava/util/Observable;
.source "ConfigurationAllInOneIntegratorInternal.java"

# interfaces
.implements Ljava/beans/PropertyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckDeviceConfigurationObserver"
.end annotation


# instance fields
.field private mInterpreterVersion:Ljava/math/BigInteger;

.field private mSerialNumber:Ljava/lang/String;

.field private mSubscribed:Z

.field private final mTimeoutCallbackHandler:Lcom/texa/carelib/utils/TimeoutCallback;

.field private mVehicleID:Ljava/lang/String;

.field final synthetic this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;


# direct methods
.method constructor <init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)V
    .locals 2

    .line 357
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    const/4 p1, 0x0

    .line 358
    iput-boolean p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->mSubscribed:Z

    .line 359
    new-instance p1, Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, v0}, Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->mTimeoutCallbackHandler:Lcom/texa/carelib/utils/TimeoutCallback;

    return-void
.end method

.method private evaluate()Z
    .locals 5

    .line 398
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->mSerialNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->mVehicleID:Ljava/lang/String;

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->mInterpreterVersion:Ljava/math/BigInteger;

    if-nez v0, :cond_2

    return v1

    .line 408
    :cond_2
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->mTimeoutCallbackHandler:Lcom/texa/carelib/utils/TimeoutCallback;

    invoke-interface {v0}, Lcom/texa/carelib/utils/TimeoutCallback;->cancel()Z

    .line 409
    new-instance v0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserverResult;

    iget-object v1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    iget-object v2, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->mSerialNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->mVehicleID:Ljava/lang/String;

    iget-object v4, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->mInterpreterVersion:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserverResult;-><init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->notifyObservers(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 2

    .line 429
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.texa.carelib.care.accessory.Accessory#PROPERTY_SERIAL_NUMBER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->setSerialNumber(Ljava/lang/String;)Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;

    goto :goto_0

    .line 431
    :cond_0
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.texa.carelib.care.accessory.Accessory#PROPERTY_INTERPRETER_VERSION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->setInterpreterVersion(Ljava/math/BigInteger;)Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;

    goto :goto_0

    .line 433
    :cond_1
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.texa.carelib.care.vehicleinfo.VehicleInfo#PROPERTY_VEHICLE_ID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 434
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->setVehicleID(Ljava/lang/String;)Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;

    :cond_2
    :goto_0
    return-void
.end method

.method public setInterpreterVersion(Ljava/math/BigInteger;)Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->mInterpreterVersion:Ljava/math/BigInteger;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 366
    :cond_0
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->mInterpreterVersion:Ljava/math/BigInteger;

    .line 367
    iget-boolean p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->mSubscribed:Z

    if-eqz p1, :cond_1

    .line 368
    invoke-virtual {p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->setChanged()V

    .line 370
    :cond_1
    invoke-direct {p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->evaluate()Z

    return-object p0
.end method

.method public setSerialNumber(Ljava/lang/String;)Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->mSerialNumber:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/texa/carelib/core/utils/internal/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->mSerialNumber:Ljava/lang/String;

    .line 378
    iget-boolean p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->mSubscribed:Z

    if-eqz p1, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->setChanged()V

    .line 381
    :cond_0
    invoke-direct {p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->evaluate()Z

    return-object p0
.end method

.method public setVehicleID(Ljava/lang/String;)Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->mVehicleID:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/texa/carelib/core/utils/internal/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->mVehicleID:Ljava/lang/String;

    .line 389
    iget-boolean p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->mSubscribed:Z

    if-eqz p1, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->setChanged()V

    .line 393
    :cond_0
    invoke-direct {p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->evaluate()Z

    return-object p0
.end method

.method public subscribe(JLjava/lang/Runnable;)V
    .locals 3

    const/4 v0, 0x1

    .line 414
    iput-boolean v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->mSubscribed:Z

    .line 415
    invoke-virtual {p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->setChanged()V

    .line 416
    invoke-direct {p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->evaluate()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 418
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->mTimeoutCallbackHandler:Lcom/texa/carelib/utils/TimeoutCallback;

    invoke-interface {v0, p3, p1, p2}, Lcom/texa/carelib/utils/TimeoutCallback;->set(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public unsubscribe()V
    .locals 1

    const/4 v0, 0x0

    .line 423
    iput-boolean v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->mSubscribed:Z

    .line 424
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$CheckDeviceConfigurationObserver;->mTimeoutCallbackHandler:Lcom/texa/carelib/utils/TimeoutCallback;

    invoke-interface {v0}, Lcom/texa/carelib/utils/TimeoutCallback;->cancel()Z

    return-void
.end method

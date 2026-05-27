.class public Lcom/texa/careapp/impactdetection/ImpactDetector;
.super Ljava/lang/Object;
.source "ImpactDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/impactdetection/ImpactDetector$AccelerationEventQueue;,
        Lcom/texa/careapp/impactdetection/ImpactDetector$LinearAccelerationSensorEventListener;,
        Lcom/texa/careapp/impactdetection/ImpactDetector$GameRotationVectorSensorEventListener;,
        Lcom/texa/careapp/impactdetection/ImpactDetector$MyHandler;,
        Lcom/texa/careapp/impactdetection/ImpactDetector$ValidationStatus;
    }
.end annotation


# static fields
.field public static final DELAY_STOP_ACCELERATION_LISTENER:J = 0x2710L

.field protected static final INTENSITY_3_8_G:J

.field protected static final INTENSITY_FOUR_G:J

.field protected static final INTENSITY_ONE_G:J

.field private static final INTERVAL_AFTER_DISCONNECTION:I = 0x2710

.field protected static final INTERVAL_CACHE_IMPACT_DATA:J = 0x2710L

.field protected static final INTERVAL_CHECK_COMMUNICATION_STATUS_1:J = 0x4e20L

.field protected static final INTERVAL_CHECK_COMMUNICATION_STATUS_2:J = 0x4e20L

.field protected static final LINEAR_ACCELERATION_THRESHOLD_UG:J

.field protected static final MESSAGE_CACHE_IMPACT_DATA:I = 0x4

.field protected static final MESSAGE_CHECK_COMMUNICATION_STATUS_1:I = 0x2

.field protected static final MESSAGE_CHECK_COMMUNICATION_STATUS_2:I = 0x3

.field private static final MESSAGE_STOP_SENSOR_LISTENERS:I = 0x1

.field private static final NUMBER_OF_CONSECUTIVE_OVER_THRESHOLD_EVENTS:I = 0x2

.field protected static final QUEUE_DURATION_IN_MILLISECONDS:J = 0x3a98L

.field private static final SAMPLE_FREQUENCY:I = 0x32

.field protected static final TIME_AFTER_FIRST_SAMPLE_OVER_THRESHOLD:J = 0x19L

.field public static final VALIDATION_STATUS_ABORTED:I = 0x2

.field public static final VALIDATION_STATUS_DETECTED:I = 0x1

.field public static final VALIDATION_STATUS_UNDEFINED:I


# instance fields
.field private final mAccelerationEventQueue:Lcom/texa/careapp/impactdetection/ImpactDetector$AccelerationEventQueue;

.field private final mAccelerationEventQueueLock:Ljava/lang/Object;

.field private final mCommunication:Lcom/texa/carelib/communication/Communication;

.field private mCommunicationListener:Ljava/beans/PropertyChangeListener;

.field private final mHandler:Lcom/texa/careapp/impactdetection/ImpactDetector$MyHandler;

.field private mImpactAccelerationEvents:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/texa/careapp/impactdetection/AccelerationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mImpactDetectorListener:Lcom/texa/careapp/impactdetection/ImpactDetectorListener;

.field private mImpactDevice:Lcom/texa/carelib/communication/DeviceInfo;

.field private mImpactIntensity:Ljava/lang/Long;

.field private mImpactTime:Ljava/lang/Long;

.field private mLastConnectedDevice:Lcom/texa/carelib/communication/DeviceInfo;

.field private mRotationMatrix:[F

.field private final mRotationMatrixLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final mSensorGameRotationVector:Landroid/hardware/Sensor;

.field private mSensorGameRotationVectorListener:Landroid/hardware/SensorEventListener;

.field private final mSensorLinearAcceleration:Landroid/hardware/Sensor;

.field private mSensorLinearAccelerationListener:Landroid/hardware/SensorEventListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mTimeLastDisconnection:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x412e848000000000L    # 1000000.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 76
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/texa/careapp/impactdetection/ImpactDetector;->INTENSITY_ONE_G:J

    const-wide v0, 0x414e848000000000L    # 4000000.0

    .line 77
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/texa/careapp/impactdetection/ImpactDetector;->INTENSITY_FOUR_G:J

    const-wide v0, 0x414cfde000000000L    # 3800000.0

    .line 78
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/texa/careapp/impactdetection/ImpactDetector;->INTENSITY_3_8_G:J

    .line 81
    sput-wide v0, Lcom/texa/careapp/impactdetection/ImpactDetector;->LINEAR_ACCELERATION_THRESHOLD_UG:J

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/communication/Communication;Landroid/hardware/SensorManager;)V
    .locals 2

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mAccelerationEventQueueLock:Ljava/lang/Object;

    .line 163
    iput-object p1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mCommunication:Lcom/texa/carelib/communication/Communication;

    .line 164
    iput-object p2, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 166
    new-instance p1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mRotationMatrixLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 168
    invoke-virtual {p0, p2}, Lcom/texa/careapp/impactdetection/ImpactDetector;->getSensorGameRotationVector(Landroid/hardware/SensorManager;)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mSensorGameRotationVector:Landroid/hardware/Sensor;

    .line 169
    invoke-virtual {p0, p2}, Lcom/texa/careapp/impactdetection/ImpactDetector;->getSensorLinearAcceleration(Landroid/hardware/SensorManager;)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mSensorLinearAcceleration:Landroid/hardware/Sensor;

    .line 174
    new-instance p1, Lcom/texa/careapp/impactdetection/ImpactDetector$MyHandler;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, p2}, Lcom/texa/careapp/impactdetection/ImpactDetector$MyHandler;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mHandler:Lcom/texa/careapp/impactdetection/ImpactDetector$MyHandler;

    .line 175
    new-instance p1, Lcom/texa/careapp/impactdetection/ImpactDetector$AccelerationEventQueue;

    const-wide/16 v0, 0x3a98

    invoke-direct {p1, v0, v1}, Lcom/texa/careapp/impactdetection/ImpactDetector$AccelerationEventQueue;-><init>(J)V

    iput-object p1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mAccelerationEventQueue:Lcom/texa/careapp/impactdetection/ImpactDetector$AccelerationEventQueue;

    .line 176
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mImpactAccelerationEvents:Ljava/util/LinkedList;

    const/4 p1, 0x0

    .line 178
    iput-object p1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mRotationMatrix:[F

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/impactdetection/ImpactDetector;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->onCacheImpactData()V

    return-void
.end method

.method protected static convertFromAccelerationToUg(F)I
    .locals 1

    const v0, 0x411ce80a

    div-float/2addr p0, v0

    const v0, 0x49742400    # 1000000.0f

    mul-float p0, p0, v0

    .line 286
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method protected static convertFromGToUg(D)I
    .locals 2

    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double p0, p0, v0

    .line 309
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p1, p0

    return p1
.end method

.method protected static convertFromGToUg(F)I
    .locals 1

    const v0, 0x49742400    # 1000000.0f

    mul-float p0, p0, v0

    .line 298
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method protected static convertFromUgToG(F)F
    .locals 1

    const v0, 0x49742400    # 1000000.0f

    div-float/2addr p0, v0

    return p0
.end method

.method private onCacheImpactData()V
    .locals 3

    const-string v0, "onCacheImpactData()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 819
    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 820
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mAccelerationEventQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 821
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mAccelerationEventQueue:Lcom/texa/careapp/impactdetection/ImpactDetector$AccelerationEventQueue;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mImpactAccelerationEvents:Ljava/util/LinkedList;

    .line 822
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected cacheImpactDataDelayed(J)Z
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mHandler:Lcom/texa/careapp/impactdetection/ImpactDetector$MyHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1, p2}, Lcom/texa/careapp/impactdetection/ImpactDetector$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    move-result p1

    return p1
.end method

.method protected checkCommunicationStatusDelayed(IJ)Z
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mHandler:Lcom/texa/careapp/impactdetection/ImpactDetector$MyHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/texa/careapp/impactdetection/ImpactDetector$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    move-result p1

    return p1
.end method

.method protected createSensorEventListener(Landroid/hardware/Sensor;)Landroid/hardware/SensorEventListener;
    .locals 2

    if-eqz p1, :cond_1

    const/16 v0, 0xa

    .line 322
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 323
    new-instance p1, Lcom/texa/careapp/impactdetection/ImpactDetector$LinearAccelerationSensorEventListener;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, v0}, Lcom/texa/careapp/impactdetection/ImpactDetector$LinearAccelerationSensorEventListener;-><init>(Ljava/lang/ref/WeakReference;)V

    return-object p1

    :cond_0
    const/16 v0, 0xf

    .line 324
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result p1

    if-ne v0, p1, :cond_1

    .line 325
    new-instance p1, Lcom/texa/careapp/impactdetection/ImpactDetector$GameRotationVectorSensorEventListener;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, v0}, Lcom/texa/careapp/impactdetection/ImpactDetector$GameRotationVectorSensorEventListener;-><init>(Ljava/lang/ref/WeakReference;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected deleteAllScheduledTasks()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "deleteAllScheduledTasks()"

    .line 345
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mHandler:Lcom/texa/careapp/impactdetection/ImpactDetector$MyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/texa/careapp/impactdetection/ImpactDetector$MyHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected deleteImpactAccelerationEvents()V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mImpactAccelerationEvents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method protected discardLastImpact()V
    .locals 1

    const/4 v0, 0x0

    .line 354
    invoke-virtual {p0, v0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->setImpactTime(Ljava/lang/Long;)V

    .line 355
    invoke-virtual {p0, v0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->setImpactDevice(Lcom/texa/carelib/communication/DeviceInfo;)V

    .line 356
    invoke-virtual {p0, v0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->setImpactIntensity(Ljava/lang/Long;)V

    .line 357
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->deleteImpactAccelerationEvents()V

    return-void
.end method

.method protected fireImpactDetected(IILcom/texa/carelib/communication/DeviceInfo;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lcom/texa/careapp/impactdetection/AccelerationEvent;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 372
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Firing impact event with status: %d"

    invoke-static {v2, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    iget-object v1, v0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mImpactDetectorListener:Lcom/texa/careapp/impactdetection/ImpactDetectorListener;

    if-eqz v1, :cond_1

    if-nez p7, :cond_0

    .line 377
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object/from16 v9, p7

    .line 379
    :goto_0
    iget-object v1, v0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mImpactDetectorListener:Lcom/texa/careapp/impactdetection/ImpactDetectorListener;

    new-instance v10, Lcom/texa/careapp/impactdetection/ImpactEvent;

    move-object v2, v10

    move-object v3, p3

    move v4, p1

    move-object v5, p4

    move v6, p2

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v9}, Lcom/texa/careapp/impactdetection/ImpactEvent;-><init>(Lcom/texa/carelib/communication/DeviceInfo;ILjava/lang/Long;ILjava/lang/Long;Ljava/lang/Long;Ljava/util/List;)V

    invoke-interface {v1, v10}, Lcom/texa/careapp/impactdetection/ImpactDetectorListener;->onImpactDetected(Lcom/texa/careapp/impactdetection/ImpactEvent;)V

    :cond_1
    return-void
.end method

.method protected getAccelerationData()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/impactdetection/AccelerationEvent;",
            ">;"
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mAccelerationEventQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 393
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mAccelerationEventQueue:Lcom/texa/careapp/impactdetection/ImpactDetector$AccelerationEventQueue;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 394
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getImpactAccelerationEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/impactdetection/AccelerationEvent;",
            ">;"
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mImpactAccelerationEvents:Ljava/util/LinkedList;

    return-object v0
.end method

.method protected getImpactDevice()Lcom/texa/carelib/communication/DeviceInfo;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mImpactDevice:Lcom/texa/carelib/communication/DeviceInfo;

    return-object v0
.end method

.method protected getImpactIntensity()Ljava/lang/Long;
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mImpactIntensity:Ljava/lang/Long;

    return-object v0
.end method

.method protected getImpactTime()Ljava/lang/Long;
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mImpactTime:Ljava/lang/Long;

    return-object v0
.end method

.method protected getIntensityXY(Lcom/texa/careapp/impactdetection/AccelerationEvent;)J
    .locals 6

    .line 433
    invoke-virtual {p1}, Lcom/texa/careapp/impactdetection/AccelerationEvent;->getX()F

    move-result v0

    .line 434
    invoke-virtual {p1}, Lcom/texa/careapp/impactdetection/AccelerationEvent;->getY()F

    move-result p1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 441
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double v4, p1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method protected getLastConnectedDevice()Lcom/texa/carelib/communication/DeviceInfo;
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mLastConnectedDevice:Lcom/texa/carelib/communication/DeviceInfo;

    return-object v0
.end method

.method protected getSensorGameRotationVector(Landroid/hardware/SensorManager;)Landroid/hardware/Sensor;
    .locals 2

    .line 486
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v0, 0xf

    .line 490
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    return-object p1
.end method

.method protected getSensorLinearAcceleration(Landroid/hardware/SensorManager;)Landroid/hardware/Sensor;
    .locals 5

    const/16 v0, 0xa

    .line 502
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 505
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    const v1, 0x411ce80a

    div-float/2addr v0, v1

    const v1, 0x49742400    # 1000000.0f

    mul-float v0, v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sget-wide v2, Lcom/texa/careapp/impactdetection/ImpactDetector;->LINEAR_ACCELERATION_THRESHOLD_UG:J

    long-to-double v2, v2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Sensor discarded due to invalid resolution."

    .line 508
    invoke-static {v0, p1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getSensorManager()Landroid/hardware/SensorManager;
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method protected getUsFromFrequency(I)I
    .locals 1

    int-to-float p1, p1

    const v0, 0x49742400    # 1000000.0f

    div-float/2addr v0, p1

    .line 535
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method protected hasSensorGameRotationVector()Z
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mSensorGameRotationVector:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected hasSensorLinearAcceleration()Z
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mSensorLinearAcceleration:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isBluetoothSupported()Z
    .locals 2

    .line 565
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->NOT_SUPPORTED:Lcom/texa/carelib/communication/CommunicationStatus;

    iget-object v1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v1}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isImpactDetected()Z
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mImpactTime:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isListeningOnAccelerationEvents()Z
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mSensorLinearAccelerationListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isListeningOnCommunicationStatusChanges()Z
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mCommunicationListener:Ljava/beans/PropertyChangeListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSupported()Z
    .locals 1

    .line 194
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->hasSensorLinearAcceleration()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->hasSensorGameRotationVector()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->isBluetoothSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isValidImpactEvent()Z
    .locals 10

    .line 744
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mAccelerationEventQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 745
    :try_start_0
    iget-object v1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mAccelerationEventQueue:Lcom/texa/careapp/impactdetection/ImpactDetector$AccelerationEventQueue;

    invoke-virtual {v1}, Lcom/texa/careapp/impactdetection/ImpactDetector$AccelerationEventQueue;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 746
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 747
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/impactdetection/AccelerationEvent;

    .line 748
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 749
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/careapp/impactdetection/AccelerationEvent;

    .line 750
    invoke-virtual {p0, v4}, Lcom/texa/careapp/impactdetection/ImpactDetector;->getIntensityXY(Lcom/texa/careapp/impactdetection/AccelerationEvent;)J

    move-result-wide v5

    sget-wide v7, Lcom/texa/careapp/impactdetection/ImpactDetector;->LINEAR_ACCELERATION_THRESHOLD_UG:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_1

    .line 751
    monitor-exit v0

    return v3

    .line 754
    :cond_1
    invoke-virtual {v2}, Lcom/texa/careapp/impactdetection/AccelerationEvent;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/texa/careapp/impactdetection/AccelerationEvent;->getTimeInMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x19

    cmp-long v4, v5, v7

    if-ltz v4, :cond_0

    const/4 v1, 0x1

    .line 756
    monitor-exit v0

    return v1

    .line 760
    :cond_2
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected listenForGameRotationVectorSensorEvents(Landroid/hardware/SensorManager;I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 624
    invoke-virtual {p0, p1}, Lcom/texa/careapp/impactdetection/ImpactDetector;->unregisterSensorGameRotationVectorEventListener(Landroid/hardware/SensorManager;)V

    .line 625
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mSensorGameRotationVector:Landroid/hardware/Sensor;

    invoke-virtual {p0, v0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->createSensorEventListener(Landroid/hardware/Sensor;)Landroid/hardware/SensorEventListener;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mSensorGameRotationVectorListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 627
    iget-object v1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mSensorGameRotationVector:Landroid/hardware/Sensor;

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/texa/careapp/impactdetection/ImpactDetector;->registerListener(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/hardware/SensorEventListener;I)V

    :cond_0
    return-void
.end method

.method protected listenForLinearAccelerationSensorEvents(Landroid/hardware/SensorManager;I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 607
    invoke-virtual {p0, p1}, Lcom/texa/careapp/impactdetection/ImpactDetector;->unregisterSensorLinearAccelerationEventListener(Landroid/hardware/SensorManager;)V

    .line 608
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mSensorLinearAcceleration:Landroid/hardware/Sensor;

    invoke-virtual {p0, v0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->createSensorEventListener(Landroid/hardware/Sensor;)Landroid/hardware/SensorEventListener;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mSensorLinearAccelerationListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 610
    iget-object v1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mSensorLinearAcceleration:Landroid/hardware/Sensor;

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/texa/careapp/impactdetection/ImpactDetector;->registerListener(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/hardware/SensorEventListener;I)V

    :cond_0
    return-void
.end method

.method protected listenForSensorsEvents(Landroid/hardware/SensorManager;I)V
    .locals 0

    .line 640
    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/impactdetection/ImpactDetector;->listenForGameRotationVectorSensorEvents(Landroid/hardware/SensorManager;I)V

    .line 641
    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/impactdetection/ImpactDetector;->listenForLinearAccelerationSensorEvents(Landroid/hardware/SensorManager;I)V

    return-void
.end method

.method protected listenOnCommunicationStatusChanges(Lcom/texa/carelib/communication/Communication;)V
    .locals 2

    .line 651
    invoke-virtual {p0, p1}, Lcom/texa/careapp/impactdetection/ImpactDetector;->stopListenOnCommunicationStatusChanges(Lcom/texa/carelib/communication/Communication;)V

    .line 653
    new-instance v0, Lcom/texa/careapp/impactdetection/ImpactDetector$1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/impactdetection/ImpactDetector$1;-><init>(Lcom/texa/careapp/impactdetection/ImpactDetector;)V

    iput-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mCommunicationListener:Ljava/beans/PropertyChangeListener;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "listenOnCommunicationStatusChanges()"

    .line 664
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 665
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mCommunicationListener:Ljava/beans/PropertyChangeListener;

    invoke-interface {p1, v0}, Lcom/texa/carelib/communication/Communication;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    .line 666
    invoke-interface {p1}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v0

    invoke-interface {p1}, Lcom/texa/carelib/communication/Communication;->getCurrentDevice()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/texa/careapp/impactdetection/ImpactDetector;->onCommunicationStatusChanged(Lcom/texa/carelib/communication/CommunicationStatus;Lcom/texa/carelib/communication/DeviceInfo;)V

    return-void
.end method

.method protected onAccelerationEvent(Lcom/texa/careapp/impactdetection/AccelerationEvent;)V
    .locals 5

    .line 679
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mRotationMatrixLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 681
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mRotationMatrix:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 683
    iget-object v1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mRotationMatrixLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-nez v0, :cond_0

    return-void

    .line 690
    :cond_0
    invoke-virtual {p1, v0}, Lcom/texa/careapp/impactdetection/AccelerationEvent;->alignZAxis([F)V

    .line 691
    invoke-virtual {p0, p1}, Lcom/texa/careapp/impactdetection/ImpactDetector;->getIntensityXY(Lcom/texa/careapp/impactdetection/AccelerationEvent;)J

    move-result-wide v0

    .line 697
    iget-object v2, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mAccelerationEventQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 698
    :try_start_1
    iget-object v3, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mAccelerationEventQueue:Lcom/texa/careapp/impactdetection/ImpactDetector$AccelerationEventQueue;

    invoke-virtual {v3, p1}, Lcom/texa/careapp/impactdetection/ImpactDetector$AccelerationEventQueue;->add(Lcom/texa/careapp/impactdetection/AccelerationEvent;)Z

    .line 699
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 701
    sget-wide v2, Lcom/texa/careapp/impactdetection/ImpactDetector;->LINEAR_ACCELERATION_THRESHOLD_UG:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 703
    :goto_0
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->isImpactDetected()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v2, :cond_2

    .line 705
    invoke-virtual {p0, p1}, Lcom/texa/careapp/impactdetection/ImpactDetector;->onAccelerationEventOverThresholdDetected(Lcom/texa/careapp/impactdetection/AccelerationEvent;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 707
    invoke-virtual {p0, p1}, Lcom/texa/careapp/impactdetection/ImpactDetector;->setImpactIntensity(Ljava/lang/Long;)V

    goto :goto_1

    .line 711
    :cond_3
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->getImpactIntensity()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->getImpactIntensity()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_5

    .line 712
    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/careapp/impactdetection/ImpactDetector;->setImpactIntensity(Ljava/lang/Long;)V

    :cond_5
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 699
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 683
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mRotationMatrixLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 684
    throw p1
.end method

.method protected onAccelerationEventOverThresholdDetected(Lcom/texa/careapp/impactdetection/AccelerationEvent;)V
    .locals 7

    .line 772
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->isValidImpactEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 774
    invoke-virtual {p1}, Lcom/texa/careapp/impactdetection/AccelerationEvent;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    .line 775
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "Detected valid consecutive accelerations over threshold at %1$s(%2$d)! Start validation procedure..."

    invoke-static {v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 777
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 780
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mCommunication:Lcom/texa/carelib/communication/Communication;

    iget-object v5, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mTimeLastDisconnection:Ljava/lang/Long;

    invoke-virtual {p0, v0, v5, v2, v3}, Lcom/texa/careapp/impactdetection/ImpactDetector;->validateCommunicationStatus(Lcom/texa/carelib/communication/Communication;Ljava/lang/Long;J)V

    .line 781
    invoke-virtual {p0, p1}, Lcom/texa/careapp/impactdetection/ImpactDetector;->getIntensityXY(Lcom/texa/careapp/impactdetection/AccelerationEvent;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->setImpactIntensity(Ljava/lang/Long;)V

    .line 782
    invoke-virtual {p1}, Lcom/texa/careapp/impactdetection/AccelerationEvent;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/careapp/impactdetection/ImpactDetector;->setImpactTime(Ljava/lang/Long;)V

    .line 783
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->getLastConnectedDevice()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/careapp/impactdetection/ImpactDetector;->setImpactDevice(Lcom/texa/carelib/communication/DeviceInfo;)V

    const-wide/16 v2, 0x2710

    .line 785
    invoke-virtual {p0, v2, v3}, Lcom/texa/careapp/impactdetection/ImpactDetector;->cacheImpactDataDelayed(J)Z

    const-wide/16 v2, 0x4e20

    .line 786
    invoke-virtual {p0, v1, v2, v3}, Lcom/texa/careapp/impactdetection/ImpactDetector;->checkCommunicationStatusDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Impact discarded."

    .line 788
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 789
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->discardLastImpact()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onBluetoothDisabled()V
    .locals 10

    .line 803
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->isImpactDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Discarding impact: Bluetooth has turned off by user."

    .line 804
    invoke-static {v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x2

    .line 806
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mSensorLinearAcceleration:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    iget-object v5, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mImpactDevice:Lcom/texa/carelib/communication/DeviceInfo;

    iget-object v6, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mTimeLastDisconnection:Ljava/lang/Long;

    iget-object v7, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mImpactIntensity:Ljava/lang/Long;

    iget-object v8, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mImpactTime:Ljava/lang/Long;

    iget-object v9, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mImpactAccelerationEvents:Ljava/util/LinkedList;

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/texa/careapp/impactdetection/ImpactDetector;->fireImpactDetected(IILcom/texa/carelib/communication/DeviceInfo;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 808
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->discardLastImpact()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->discardLastImpact()V

    .line 809
    throw v0

    .line 812
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->stopListenOnSensorsEvents(Landroid/hardware/SensorManager;)V

    return-void
.end method

.method protected onCAReConnected(Lcom/texa/carelib/communication/DeviceInfo;Lcom/texa/carelib/communication/DeviceInfo;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 834
    invoke-virtual {p1}, Lcom/texa/carelib/communication/DeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/texa/carelib/communication/DeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 837
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->isImpactDetected()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Impact discarded due to reconnection to the same device."

    .line 838
    invoke-static {v0, p2}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 839
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->discardLastImpact()V

    .line 842
    :cond_1
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->deleteAllScheduledTasks()V

    .line 846
    :cond_2
    invoke-virtual {p0, p1}, Lcom/texa/careapp/impactdetection/ImpactDetector;->setLastConnectedDevice(Lcom/texa/carelib/communication/DeviceInfo;)V

    .line 849
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 850
    iget-object p1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 p2, 0x32

    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/impactdetection/ImpactDetector;->listenForSensorsEvents(Landroid/hardware/SensorManager;I)V

    :cond_3
    return-void
.end method

.method protected onCAReDisconnected()V
    .locals 3

    .line 861
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->setTimeLastDisconnection(Ljava/lang/Long;)V

    .line 864
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->isImpactDetected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 865
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/texa/careapp/impactdetection/ImpactDetector;->stopListenOnSensorsEventsDelayed(Landroid/hardware/SensorManager;J)V

    :cond_0
    return-void
.end method

.method public onCareImpactDetected()V
    .locals 1

    .line 203
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->isImpactDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->deleteAllScheduledTasks()V

    .line 205
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->discardLastImpact()V

    :cond_0
    return-void
.end method

.method protected onCheckCommunicationStatus1()V
    .locals 11

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 874
    iget-object v2, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v2}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "onCheckCommunicationStatus1() %s"

    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 876
    sget-object v1, Lcom/texa/careapp/impactdetection/ImpactDetector$2;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    iget-object v2, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v2}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "Impact discarded due to invalid communication state."

    if-eq v1, v0, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    const-wide/16 v1, 0x4e20

    .line 905
    invoke-virtual {p0, v0, v1, v2}, Lcom/texa/careapp/impactdetection/ImpactDetector;->checkCommunicationStatusDelayed(IJ)Z

    goto :goto_0

    .line 893
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->isImpactDetected()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v3, [Ljava/lang/Object;

    .line 894
    invoke-static {v2, v0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x2

    .line 896
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mSensorLinearAcceleration:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    iget-object v6, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mImpactDevice:Lcom/texa/carelib/communication/DeviceInfo;

    iget-object v7, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mTimeLastDisconnection:Ljava/lang/Long;

    iget-object v8, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mImpactIntensity:Ljava/lang/Long;

    iget-object v9, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mImpactTime:Ljava/lang/Long;

    iget-object v10, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mImpactAccelerationEvents:Ljava/util/LinkedList;

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/texa/careapp/impactdetection/ImpactDetector;->fireImpactDetected(IILcom/texa/carelib/communication/DeviceInfo;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->discardLastImpact()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->discardLastImpact()V

    .line 899
    throw v0

    .line 879
    :cond_1
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->stopListenOnSensorsEvents(Landroid/hardware/SensorManager;)V

    .line 881
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->isImpactDetected()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v3, [Ljava/lang/Object;

    .line 882
    invoke-static {v2, v0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x2

    .line 884
    :try_start_1
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mSensorLinearAcceleration:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    iget-object v6, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mImpactDevice:Lcom/texa/carelib/communication/DeviceInfo;

    iget-object v7, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mTimeLastDisconnection:Ljava/lang/Long;

    iget-object v8, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mImpactIntensity:Ljava/lang/Long;

    iget-object v9, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mImpactTime:Ljava/lang/Long;

    iget-object v10, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mImpactAccelerationEvents:Ljava/util/LinkedList;

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/texa/careapp/impactdetection/ImpactDetector;->fireImpactDetected(IILcom/texa/carelib/communication/DeviceInfo;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 886
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->discardLastImpact()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->discardLastImpact()V

    .line 887
    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCheckCommunicationStatus2()V
    .locals 10

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 915
    iget-object v2, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v2}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "onCheckCommunicationStatus2() %s"

    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 917
    sget-object v1, Lcom/texa/careapp/impactdetection/ImpactDetector$2;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    iget-object v2, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v2}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v0, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 931
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->isImpactDetected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 933
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mImpactDevice:Lcom/texa/carelib/communication/DeviceInfo;

    if-eqz v0, :cond_0

    .line 937
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->stopListenOnSensorsEvents(Landroid/hardware/SensorManager;)V

    const/4 v2, 0x1

    .line 939
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mSensorLinearAcceleration:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    iget-object v4, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mImpactDevice:Lcom/texa/carelib/communication/DeviceInfo;

    iget-object v5, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mTimeLastDisconnection:Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->getImpactIntensity()Ljava/lang/Long;

    move-result-object v6

    iget-object v7, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mImpactTime:Ljava/lang/Long;

    iget-object v8, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mImpactAccelerationEvents:Ljava/util/LinkedList;

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/texa/careapp/impactdetection/ImpactDetector;->fireImpactDetected(IILcom/texa/carelib/communication/DeviceInfo;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 941
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->discardLastImpact()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->discardLastImpact()V

    .line 942
    throw v0

    .line 934
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impact device cannot be null at this time!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 920
    :cond_1
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/texa/careapp/impactdetection/ImpactDetector;->stopListenOnSensorsEvents(Landroid/hardware/SensorManager;)V

    new-array v0, v0, [Ljava/lang/Object;

    .line 921
    iget-object v1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v1}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "Discarding impact due to BluetoothState: %s"

    invoke-static {v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x2

    .line 924
    :try_start_1
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mSensorLinearAcceleration:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    iget-object v5, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mImpactDevice:Lcom/texa/carelib/communication/DeviceInfo;

    iget-object v6, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mTimeLastDisconnection:Ljava/lang/Long;

    iget-object v7, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mImpactIntensity:Ljava/lang/Long;

    iget-object v8, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mImpactTime:Ljava/lang/Long;

    iget-object v9, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mImpactAccelerationEvents:Ljava/util/LinkedList;

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/texa/careapp/impactdetection/ImpactDetector;->fireImpactDetected(IILcom/texa/carelib/communication/DeviceInfo;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 926
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->discardLastImpact()V

    :cond_2
    :goto_0
    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->discardLastImpact()V

    .line 927
    throw v0
.end method

.method protected onCommunicationStatusChanged(Lcom/texa/carelib/communication/CommunicationStatus;Lcom/texa/carelib/communication/DeviceInfo;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const-string v3, "Communication status: Status=%1$s Device=%2$s"

    .line 956
    invoke-static {v3, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 958
    sget-object v0, Lcom/texa/careapp/impactdetection/ImpactDetector$2;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    invoke-virtual {p1}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v2, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 969
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->onCAReDisconnected()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 961
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->getLastConnectedDevice()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/texa/careapp/impactdetection/ImpactDetector;->onCAReConnected(Lcom/texa/carelib/communication/DeviceInfo;Lcom/texa/carelib/communication/DeviceInfo;)V

    goto :goto_0

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Could not be connected to a null device!"

    .line 963
    invoke-static {p2, p1}, Ltimber/log/Timber;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 973
    :cond_3
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->onBluetoothDisabled()V

    :goto_0
    return-void
.end method

.method protected onRotationMatrixChanged(Lcom/texa/careapp/impactdetection/RotationMatrixChangedEvent;)V
    .locals 1

    .line 730
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mRotationMatrixLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 732
    :try_start_0
    invoke-virtual {p1}, Lcom/texa/careapp/impactdetection/RotationMatrixChangedEvent;->getRotationMatrix()[F

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mRotationMatrix:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 734
    iget-object p1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mRotationMatrixLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mRotationMatrixLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 735
    throw p1
.end method

.method protected onStopListenOnSensorsEvents()V
    .locals 1

    .line 987
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->isImpactDetected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 988
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->stopListenOnSensorsEvents(Landroid/hardware/SensorManager;)V

    :cond_0
    return-void
.end method

.method protected registerListener(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/hardware/SensorEventListener;I)V
    .locals 2

    .line 1002
    invoke-virtual {p0, p4}, Lcom/texa/careapp/impactdetection/ImpactDetector;->getUsFromFrequency(I)I

    move-result p4

    .line 1004
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1005
    invoke-virtual {p1, p3, p2, p4, p4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;II)Z

    goto :goto_0

    .line 1007
    :cond_0
    invoke-virtual {p1, p3, p2, p4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :goto_0
    return-void
.end method

.method public setImpactDetectorListener(Lcom/texa/careapp/impactdetection/ImpactDetectorListener;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mImpactDetectorListener:Lcom/texa/careapp/impactdetection/ImpactDetectorListener;

    return-void
.end method

.method protected setImpactDevice(Lcom/texa/carelib/communication/DeviceInfo;)V
    .locals 0

    .line 1038
    iput-object p1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mImpactDevice:Lcom/texa/carelib/communication/DeviceInfo;

    return-void
.end method

.method protected setImpactIntensity(Ljava/lang/Long;)V
    .locals 0

    .line 1028
    iput-object p1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mImpactIntensity:Ljava/lang/Long;

    return-void
.end method

.method protected setImpactTime(Ljava/lang/Long;)V
    .locals 0

    .line 1018
    iput-object p1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mImpactTime:Ljava/lang/Long;

    return-void
.end method

.method protected setLastConnectedDevice(Lcom/texa/carelib/communication/DeviceInfo;)V
    .locals 0

    .line 1048
    iput-object p1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mLastConnectedDevice:Lcom/texa/carelib/communication/DeviceInfo;

    return-void
.end method

.method protected setTimeLastDisconnection(Ljava/lang/Long;)V
    .locals 0

    .line 1058
    iput-object p1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mTimeLastDisconnection:Ljava/lang/Long;

    return-void
.end method

.method public startDetection()V
    .locals 2

    .line 232
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->discardLastImpact()V

    .line 237
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-virtual {p0, v0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->listenOnCommunicationStatusChanges(Lcom/texa/carelib/communication/Communication;)V

    return-void

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required sensor not available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopDetection()V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-virtual {p0, v0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->stopListenOnCommunicationStatusChanges(Lcom/texa/carelib/communication/Communication;)V

    return-void
.end method

.method protected stopListenOnCommunicationStatusChanges(Lcom/texa/carelib/communication/Communication;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "stopListenOnCommunicationStatusChanges()"

    .line 1126
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1127
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mCommunicationListener:Ljava/beans/PropertyChangeListener;

    if-eqz v0, :cond_0

    .line 1128
    invoke-interface {p1, v0}, Lcom/texa/carelib/communication/Communication;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    const/4 p1, 0x0

    .line 1129
    iput-object p1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mCommunicationListener:Ljava/beans/PropertyChangeListener;

    :cond_0
    return-void
.end method

.method protected stopListenOnSensorsEvents(Landroid/hardware/SensorManager;)V
    .locals 0

    .line 1102
    invoke-virtual {p0, p1}, Lcom/texa/careapp/impactdetection/ImpactDetector;->unregisterSensorGameRotationVectorEventListener(Landroid/hardware/SensorManager;)V

    .line 1103
    invoke-virtual {p0, p1}, Lcom/texa/careapp/impactdetection/ImpactDetector;->unregisterSensorLinearAccelerationEventListener(Landroid/hardware/SensorManager;)V

    return-void
.end method

.method protected stopListenOnSensorsEventsDelayed(Landroid/hardware/SensorManager;J)V
    .locals 2

    .line 1114
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mHandler:Lcom/texa/careapp/impactdetection/ImpactDetector$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p3}, Lcom/texa/careapp/impactdetection/ImpactDetector$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1115
    invoke-virtual {p0, p1}, Lcom/texa/careapp/impactdetection/ImpactDetector;->stopListenOnSensorsEvents(Landroid/hardware/SensorManager;)V

    :cond_0
    return-void
.end method

.method protected unregisterSensorGameRotationVectorEventListener(Landroid/hardware/SensorManager;)V
    .locals 1

    .line 1080
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mSensorGameRotationVectorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p0, p1, v0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->unregisterSensorListener(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;)V

    const/4 p1, 0x0

    .line 1081
    iput-object p1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mSensorGameRotationVectorListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method protected unregisterSensorLinearAccelerationEventListener(Landroid/hardware/SensorManager;)V
    .locals 1

    .line 1091
    iget-object v0, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mSensorLinearAccelerationListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p0, p1, v0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->unregisterSensorListener(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;)V

    const/4 p1, 0x0

    .line 1092
    iput-object p1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector;->mSensorLinearAccelerationListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method protected unregisterSensorListener(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1069
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method protected validateCommunicationStatus(Lcom/texa/carelib/communication/Communication;Ljava/lang/Long;J)V
    .locals 1

    .line 1142
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-interface {p1}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p1

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 1146
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    sub-long/2addr p3, p1

    const-wide/16 p1, 0x2710

    cmp-long v0, p3, p1

    if-gez v0, :cond_1

    return-void

    .line 1150
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CARe is not connected."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

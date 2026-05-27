.class public Lcom/texa/careapp/utils/Compass;
.super Ljava/lang/Object;
.source "Compass.java"


# static fields
.field private static final DEGREES_360:I = 0x168

.field private static final TAG:Ljava/lang/String; = "Compass"


# instance fields
.field private DELAY_DEGREES:F

.field private accelerometerData:[F

.field private azimuth:F

.field private currentRotation:F

.field private mAccelerometer:Landroid/hardware/Sensor;

.field private mContext:Landroid/content/Context;

.field private mField:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private magneticData:[F

.field private orientationData:[F

.field private rotationMatrix:[F

.field private temporaryRotationMatrix:[F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 25
    iput v0, p0, Lcom/texa/careapp/utils/Compass;->DELAY_DEGREES:F

    const/16 v0, 0x9

    new-array v1, v0, [F

    .line 31
    iput-object v1, p0, Lcom/texa/careapp/utils/Compass;->temporaryRotationMatrix:[F

    new-array v0, v0, [F

    .line 32
    iput-object v0, p0, Lcom/texa/careapp/utils/Compass;->rotationMatrix:[F

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 33
    iput-object v1, p0, Lcom/texa/careapp/utils/Compass;->accelerometerData:[F

    new-array v1, v0, [F

    .line 34
    iput-object v1, p0, Lcom/texa/careapp/utils/Compass;->magneticData:[F

    new-array v0, v0, [F

    .line 35
    iput-object v0, p0, Lcom/texa/careapp/utils/Compass;->orientationData:[F

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/texa/careapp/utils/Compass;->currentRotation:F

    .line 45
    iput-object p1, p0, Lcom/texa/careapp/utils/Compass;->mContext:Landroid/content/Context;

    const-string v0, "sensor"

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/texa/careapp/utils/Compass;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/utils/Compass;->mAccelerometer:Landroid/hardware/Sensor;

    .line 48
    iget-object p1, p0, Lcom/texa/careapp/utils/Compass;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/utils/Compass;->mField:Landroid/hardware/Sensor;

    return-void
.end method

.method private configureDeviceAngle()V
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/texa/careapp/utils/Compass;->temporaryRotationMatrix:[F

    iget-object v1, p0, Lcom/texa/careapp/utils/Compass;->rotationMatrix:[F

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-static {v0, v2, v3, v1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    return-void
.end method

.method private loadSensorData(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 110
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 111
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object p1, p0, Lcom/texa/careapp/utils/Compass;->accelerometerData:[F

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 112
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object p1, p0, Lcom/texa/careapp/utils/Compass;->magneticData:[F

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getAzimuth()F
    .locals 1

    .line 41
    iget v0, p0, Lcom/texa/careapp/utils/Compass;->azimuth:F

    return v0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 116
    invoke-direct {p0, p1}, Lcom/texa/careapp/utils/Compass;->loadSensorData(Landroid/hardware/SensorEvent;)V

    .line 117
    iget-object p1, p0, Lcom/texa/careapp/utils/Compass;->temporaryRotationMatrix:[F

    iget-object v0, p0, Lcom/texa/careapp/utils/Compass;->accelerometerData:[F

    iget-object v1, p0, Lcom/texa/careapp/utils/Compass;->magneticData:[F

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 119
    invoke-direct {p0}, Lcom/texa/careapp/utils/Compass;->configureDeviceAngle()V

    .line 121
    iget-object p1, p0, Lcom/texa/careapp/utils/Compass;->rotationMatrix:[F

    iget-object v0, p0, Lcom/texa/careapp/utils/Compass;->orientationData:[F

    invoke-static {p1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 122
    iget-object p1, p0, Lcom/texa/careapp/utils/Compass;->orientationData:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/texa/careapp/utils/Compass;->azimuth:F

    .line 123
    sget-object p1, Lcom/texa/careapp/utils/Compass;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "azimuth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/utils/Compass;->getAzimuth()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerSensors()V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/texa/careapp/utils/Compass;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/texa/careapp/utils/Compass;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/texa/careapp/utils/Compass;->mAccelerometer:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 53
    iget-object v0, p0, Lcom/texa/careapp/utils/Compass;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/texa/careapp/utils/Compass;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/texa/careapp/utils/Compass;->mField:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method public rotateView(Landroid/view/View;F)V
    .locals 8

    .line 85
    iget v0, p0, Lcom/texa/careapp/utils/Compass;->currentRotation:F

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 86
    iget v1, p0, Lcom/texa/careapp/utils/Compass;->DELAY_DEGREES:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 88
    new-instance v0, Landroid/view/animation/RotateAnimation;

    iget v2, p0, Lcom/texa/careapp/utils/Compass;->currentRotation:F

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v1, v0

    move v3, p2

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 89
    iput p2, p0, Lcom/texa/careapp/utils/Compass;->currentRotation:F

    const/4 p2, 0x1

    .line 91
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public startRotation(Landroid/location/Location;Landroid/location/Location;)F
    .locals 7

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 63
    new-instance v6, Landroid/hardware/GeomagneticField;

    .line 64
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    double-to-float v1, v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    .line 65
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/GeomagneticField;-><init>(FFFJ)V

    .line 67
    invoke-virtual {p0}, Lcom/texa/careapp/utils/Compass;->getAzimuth()F

    move-result v0

    .line 68
    invoke-virtual {v6}, Landroid/hardware/GeomagneticField;->getDeclination()F

    move-result v1

    sub-float/2addr v0, v1

    .line 70
    invoke-virtual {p1, p2}, Landroid/location/Location;->bearingTo(Landroid/location/Location;)F

    move-result p1

    const/high16 p2, 0x43b40000    # 360.0f

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    add-float/2addr p1, p2

    :cond_0
    sub-float/2addr p1, v0

    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    add-float/2addr p1, p2

    .line 76
    :cond_1
    sget-object p2, Lcom/texa/careapp/utils/Compass;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rotation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 79
    :cond_2
    sget-object p1, Lcom/texa/careapp/utils/Compass;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "userLocation or objectLocation cant be null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method public startRotation(Landroid/location/Location;Lcom/google/android/gms/maps/model/LatLng;)F
    .locals 3

    if-eqz p2, :cond_0

    .line 99
    new-instance v0, Landroid/location/Location;

    const-string/jumbo v1, "wrapper Location"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 100
    iget-wide v1, p2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 101
    iget-wide v1, p2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 102
    invoke-virtual {p0, p1, v0}, Lcom/texa/careapp/utils/Compass;->startRotation(Landroid/location/Location;Landroid/location/Location;)F

    move-result p1

    return p1

    .line 104
    :cond_0
    sget-object p1, Lcom/texa/careapp/utils/Compass;->TAG:Ljava/lang/String;

    const-string p2, "LatLng location cant be null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method public unregisterSensors()V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/texa/careapp/utils/Compass;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/texa/careapp/utils/Compass;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/texa/careapp/utils/Compass;->mAccelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 58
    iget-object v0, p0, Lcom/texa/careapp/utils/Compass;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/texa/careapp/utils/Compass;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/texa/careapp/utils/Compass;->mField:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return-void
.end method

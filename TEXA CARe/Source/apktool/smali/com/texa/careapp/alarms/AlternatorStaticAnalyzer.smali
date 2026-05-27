.class public Lcom/texa/careapp/alarms/AlternatorStaticAnalyzer;
.super Ljava/lang/Object;
.source "AlternatorStaticAnalyzer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AlternatorStaticAnalyzer"

.field private static final TRIP_MIN_DURATION:I = 0xea60

.field private static final VOLTAGE_TH1:F = 12.2f

.field private static final VOLTAGE_TH2:F = 12.9f

.field private static final VOLTAGE_TH3:F = 15.0f

.field private static final VOLTAGE_TH4:F = 16.5f


# instance fields
.field private mVehicleAlarmNotifier:Lcom/texa/careapp/alarms/VehicleAlarmNotifier;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/alarms/VehicleAlarmNotifier;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/texa/careapp/alarms/AlternatorStaticAnalyzer;->mVehicleAlarmNotifier:Lcom/texa/careapp/alarms/VehicleAlarmNotifier;

    return-void
.end method

.method private static asList(Lcom/texa/careapp/model/VehicleAlarm$AlarmData;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/model/VehicleAlarm$AlarmData;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/texa/careapp/model/VehicleAlarm$AlarmData;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected static checkRequirements(Lcom/texa/carelib/care/trips/TripBeginInfo;Lcom/texa/carelib/care/trips/TripEndInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/TripBeginInfo;->getTimeStamp()Ljava/util/Date;

    move-result-object p0

    .line 80
    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/TripEndInfo;->getTimeStamp()Ljava/util/Date;

    move-result-object p1

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sub-long/2addr v1, p0

    const-wide/32 p0, 0xea60

    cmp-long v3, v1, p0

    if-ltz v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    :goto_0
    new-array p0, v0, [Ljava/lang/Object;

    const-string/jumbo p1, "trip timestamps null"

    .line 83
    invoke-static {p1, p0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_4
    :goto_1
    new-array p0, v0, [Ljava/lang/Object;

    const-string/jumbo p1, "tripStartInfo or tripStopInfo is null"

    .line 75
    invoke-static {p1, p0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method protected static getLastAlternatorAlarm(Lcom/texa/careapp/model/VehicleModel;)Lcom/texa/careapp/model/VehicleAlarm;
    .locals 4

    .line 50
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getAlarms()Ljava/util/HashSet;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 54
    :cond_0
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/VehicleAlarm;

    .line 55
    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleAlarm;->getAlarmType()Lcom/texa/careapp/model/AlarmType;

    move-result-object v2

    sget-object v3, Lcom/texa/careapp/model/AlarmType;->ALTERNATOR_HIGH:Lcom/texa/careapp/model/AlarmType;

    if-eq v2, v3, :cond_2

    .line 56
    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleAlarm;->getAlarmType()Lcom/texa/careapp/model/AlarmType;

    move-result-object v2

    sget-object v3, Lcom/texa/careapp/model/AlarmType;->ALTERNATOR_LOW:Lcom/texa/careapp/model/AlarmType;

    if-ne v2, v3, :cond_1

    :cond_2
    return-object v1

    :cond_3
    return-object v0
.end method

.method protected static validateVoltageValue(Ljava/lang/Float;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public parse(Lcom/texa/carelib/care/trips/TripBeginInfo;Lcom/texa/carelib/care/trips/TripEndInfo;Lcom/texa/careapp/model/VehicleModel;)V
    .locals 7

    const/4 v0, 0x0

    if-nez p3, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string/jumbo p2, "vehicleModel is null"

    .line 94
    invoke-static {p2, p1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    new-array p1, v0, [Ljava/lang/Object;

    const-string/jumbo p2, "tripStopInfo is null!"

    .line 99
    invoke-static {p2, p1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 103
    :cond_1
    invoke-static {p1, p2}, Lcom/texa/careapp/alarms/AlternatorStaticAnalyzer;->checkRequirements(Lcom/texa/carelib/care/trips/TripBeginInfo;Lcom/texa/carelib/care/trips/TripEndInfo;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 107
    :cond_2
    invoke-virtual {p2}, Lcom/texa/carelib/care/trips/TripEndInfo;->getMaxVoltageEngineOn()Ljava/lang/Float;

    move-result-object p1

    .line 109
    invoke-static {p1}, Lcom/texa/careapp/alarms/AlternatorStaticAnalyzer;->validateVoltageValue(Ljava/lang/Float;)Z

    move-result p2

    const/4 v1, 0x1

    if-nez p2, :cond_3

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "invalid voltage value: %s"

    .line 110
    invoke-static {p1, p2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    const/4 p2, 0x0

    .line 117
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const v3, 0x41433333    # 12.2f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 118
    sget-object p2, Lcom/texa/careapp/model/AlarmStatus;->RED:Lcom/texa/careapp/model/AlarmStatus;

    .line 119
    sget-object v2, Lcom/texa/careapp/model/AlarmType;->ALTERNATOR_LOW:Lcom/texa/careapp/model/AlarmType;

    goto :goto_0

    .line 121
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const v3, 0x414e6666    # 12.9f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 122
    sget-object p2, Lcom/texa/careapp/model/AlarmStatus;->YELLOW:Lcom/texa/careapp/model/AlarmStatus;

    .line 123
    sget-object v2, Lcom/texa/careapp/model/AlarmType;->ALTERNATOR_LOW:Lcom/texa/careapp/model/AlarmType;

    goto :goto_0

    .line 125
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x41700000    # 15.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    .line 126
    sget-object v2, Lcom/texa/careapp/model/AlarmStatus;->GREEN:Lcom/texa/careapp/model/AlarmStatus;

    move-object v6, v2

    move-object v2, p2

    move-object p2, v6

    goto :goto_0

    .line 128
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/high16 v2, 0x41840000    # 16.5f

    cmpg-float p2, p2, v2

    if-gez p2, :cond_7

    .line 129
    sget-object p2, Lcom/texa/careapp/model/AlarmStatus;->YELLOW:Lcom/texa/careapp/model/AlarmStatus;

    .line 130
    sget-object v2, Lcom/texa/careapp/model/AlarmType;->ALTERNATOR_HIGH:Lcom/texa/careapp/model/AlarmType;

    goto :goto_0

    .line 132
    :cond_7
    sget-object p2, Lcom/texa/careapp/model/AlarmStatus;->RED:Lcom/texa/careapp/model/AlarmStatus;

    .line 133
    sget-object v2, Lcom/texa/careapp/model/AlarmType;->ALTERNATOR_HIGH:Lcom/texa/careapp/model/AlarmType;

    .line 136
    :goto_0
    sget-object v3, Lcom/texa/careapp/model/AlarmStatus;->GREEN:Lcom/texa/careapp/model/AlarmStatus;

    const/4 v4, 0x2

    const-string v5, "notifica: tipo= %s , stato= %s"

    if-ne p2, v3, :cond_8

    .line 137
    invoke-static {p3}, Lcom/texa/careapp/alarms/AlternatorStaticAnalyzer;->getLastAlternatorAlarm(Lcom/texa/careapp/model/VehicleModel;)Lcom/texa/careapp/model/VehicleAlarm;

    move-result-object p3

    if-eqz p3, :cond_9

    .line 138
    invoke-virtual {p3}, Lcom/texa/careapp/model/VehicleAlarm;->getAlarmStatus()Lcom/texa/careapp/model/AlarmStatus;

    move-result-object v2

    sget-object v3, Lcom/texa/careapp/model/AlarmStatus;->GREEN:Lcom/texa/careapp/model/AlarmStatus;

    if-eq v2, v3, :cond_9

    .line 139
    invoke-virtual {p3}, Lcom/texa/careapp/model/VehicleAlarm;->getAlarmType()Lcom/texa/careapp/model/AlarmType;

    move-result-object p3

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p3, v2, v0

    aput-object p2, v2, v1

    .line 140
    invoke-static {v5, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/texa/careapp/alarms/AlternatorStaticAnalyzer;->mVehicleAlarmNotifier:Lcom/texa/careapp/alarms/VehicleAlarmNotifier;

    new-instance v1, Lcom/texa/careapp/model/VehicleAlarm$AlarmData;

    .line 143
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {v1, p1}, Lcom/texa/careapp/model/VehicleAlarm$AlarmData;-><init>(F)V

    invoke-static {v1}, Lcom/texa/careapp/alarms/AlternatorStaticAnalyzer;->asList(Lcom/texa/careapp/model/VehicleAlarm$AlarmData;)Ljava/util/ArrayList;

    move-result-object p1

    .line 141
    invoke-virtual {v0, p3, p2, p1}, Lcom/texa/careapp/alarms/VehicleAlarmNotifier;->notifyAlternatorAlarm(Lcom/texa/careapp/model/AlarmType;Lcom/texa/careapp/model/AlarmStatus;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_8
    new-array p3, v4, [Ljava/lang/Object;

    aput-object v2, p3, v0

    aput-object p2, p3, v1

    .line 146
    invoke-static {v5, p3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    iget-object p3, p0, Lcom/texa/careapp/alarms/AlternatorStaticAnalyzer;->mVehicleAlarmNotifier:Lcom/texa/careapp/alarms/VehicleAlarmNotifier;

    new-instance v0, Lcom/texa/careapp/model/VehicleAlarm$AlarmData;

    .line 149
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {v0, p1}, Lcom/texa/careapp/model/VehicleAlarm$AlarmData;-><init>(F)V

    invoke-static {v0}, Lcom/texa/careapp/alarms/AlternatorStaticAnalyzer;->asList(Lcom/texa/careapp/model/VehicleAlarm$AlarmData;)Ljava/util/ArrayList;

    move-result-object p1

    .line 147
    invoke-virtual {p3, v2, p2, p1}, Lcom/texa/careapp/alarms/VehicleAlarmNotifier;->notifyAlternatorAlarm(Lcom/texa/careapp/model/AlarmType;Lcom/texa/careapp/model/AlarmStatus;Ljava/util/ArrayList;)V

    :cond_9
    :goto_1
    return-void
.end method

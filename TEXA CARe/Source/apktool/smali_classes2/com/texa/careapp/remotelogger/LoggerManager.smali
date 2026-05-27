.class public Lcom/texa/careapp/remotelogger/LoggerManager;
.super Ljava/lang/Object;
.source "LoggerManager.java"


# instance fields
.field private mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

.field private mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

.field private mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

.field private mContext:Landroid/content/Context;

.field private mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/utils/UserDataManager;Lcom/texa/careapp/model/DongleDataManager;Landroid/content/Context;Lcom/texa/careapp/carelib/CommunicationObservable;Landroid/content/SharedPreferences;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/careapp/sync/CAReWorkerManager;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/texa/careapp/remotelogger/LoggerManager;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    .line 52
    iput-object p2, p0, Lcom/texa/careapp/remotelogger/LoggerManager;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    .line 53
    iput-object p3, p0, Lcom/texa/careapp/remotelogger/LoggerManager;->mContext:Landroid/content/Context;

    .line 54
    iput-object p4, p0, Lcom/texa/careapp/remotelogger/LoggerManager;->mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

    .line 55
    iput-object p6, p0, Lcom/texa/careapp/remotelogger/LoggerManager;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    .line 56
    iput-object p5, p0, Lcom/texa/careapp/remotelogger/LoggerManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 57
    iput-object p7, p0, Lcom/texa/careapp/remotelogger/LoggerManager;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    return-void
.end method

.method private createAccessoryStatus()I
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/texa/careapp/remotelogger/LoggerManager;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v0}, Lcom/texa/carelib/care/accessory/Accessory;->getStatus()I

    move-result v0

    return v0
.end method

.method private createAppVersion()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/texa/careapp/remotelogger/LoggerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createBatteryPercentage()I
    .locals 7

    .line 209
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, -0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 210
    iget-object v0, p0, Lcom/texa/careapp/remotelogger/LoggerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "batterymanager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    const/4 v1, 0x4

    .line 211
    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v1

    goto :goto_0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/remotelogger/LoggerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "level"

    .line 215
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "scale"

    .line 216
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-double v3, v0

    if-ltz v2, :cond_1

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_1

    int-to-double v0, v2

    div-double/2addr v0, v3

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    double-to-int v1, v0

    :cond_1
    :goto_0
    return v1
.end method

.method private createDeviceID()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/texa/careapp/remotelogger/LoggerManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->getUniqueDeviceId(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createFWVersion()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/texa/careapp/remotelogger/LoggerManager;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "dongle == null"

    return-object v0

    .line 110
    :cond_0
    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getMainAppVersionFormatted()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createHwid()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/texa/careapp/remotelogger/LoggerManager;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "dongle == null"

    return-object v0

    .line 103
    :cond_0
    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createOsVersion()Ljava/lang/String;
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createSnapshot()Lcom/texa/careapp/model/ServerLogModel$Snapshot;
    .locals 2

    .line 129
    new-instance v0, Lcom/texa/careapp/model/ServerLogModel$Snapshot;

    invoke-direct {v0}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;-><init>()V

    .line 130
    invoke-direct {p0}, Lcom/texa/careapp/remotelogger/LoggerManager;->isBluetoothEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->setBt(Z)V

    .line 131
    invoke-direct {p0}, Lcom/texa/careapp/remotelogger/LoggerManager;->isBluetoothConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->setBtConn(Z)V

    .line 132
    invoke-direct {p0}, Lcom/texa/careapp/remotelogger/LoggerManager;->isGPSEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->setGps(Z)V

    .line 133
    invoke-direct {p0}, Lcom/texa/careapp/remotelogger/LoggerManager;->isWanEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->setWan(Z)V

    .line 134
    invoke-direct {p0}, Lcom/texa/careapp/remotelogger/LoggerManager;->isWanReached()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->setWanReach(Z)V

    .line 135
    invoke-direct {p0}, Lcom/texa/careapp/remotelogger/LoggerManager;->isSimEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->setSim(Z)V

    .line 136
    invoke-direct {p0}, Lcom/texa/careapp/remotelogger/LoggerManager;->isSimValid()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->setSimValid(Z)V

    .line 137
    invoke-direct {p0}, Lcom/texa/careapp/remotelogger/LoggerManager;->createBatteryPercentage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ServerLogModel$Snapshot;->setBattPct(I)V

    return-object v0
.end method

.method private createUserId()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/texa/careapp/remotelogger/LoggerManager;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "no userCatched"

    return-object v0

    .line 125
    :cond_0
    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getUid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isBluetoothConnected()Z
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/texa/careapp/remotelogger/LoggerManager;->mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-virtual {v0}, Lcom/texa/careapp/carelib/CommunicationObservable;->getCurrentStatus()Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isBluetoothEnable()Z
    .locals 4

    .line 148
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "#isBluetoothEnable() Exception"

    .line 151
    invoke-static {v0, v3, v2}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method private isGPSEnable()Z
    .locals 4

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/remotelogger/LoggerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "gps"

    .line 159
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "#isGPSEnable() Exception"

    .line 161
    invoke-static {v0, v3, v2}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method private isSimEnable()Z
    .locals 4

    const/4 v0, 0x0

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/texa/careapp/remotelogger/LoggerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 191
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    .line 192
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "#isSimEnable() Exception"

    .line 194
    invoke-static {v1, v3, v2}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method private isSimValid()Z
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/texa/careapp/remotelogger/LoggerManager;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 203
    :cond_0
    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getUserCellPhoneContact()Lcom/texa/careapp/model/ContactModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {v0}, Lcom/texa/careapp/model/ContactModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isWanEnable()Z
    .locals 4

    const/4 v0, 0x0

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/texa/careapp/remotelogger/LoggerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 169
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "#isWanEnable() Exception"

    .line 172
    invoke-static {v1, v3, v2}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method private isWanReached()Z
    .locals 4

    const/4 v0, 0x0

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/texa/careapp/remotelogger/LoggerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 180
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "#isWanReached() Exception"

    .line 183
    invoke-static {v1, v3, v2}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method private scheduleLogSyncTask()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/texa/careapp/remotelogger/LoggerManager;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-virtual {v0}, Lcom/texa/careapp/sync/CAReWorkerManager;->scheduleLogSend()V

    return-void
.end method


# virtual methods
.method public log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;
    .locals 1

    .line 63
    new-instance v0, Lcom/texa/careapp/model/ServerLogModel;

    invoke-direct {v0, p1, p2, p3}, Lcom/texa/careapp/model/ServerLogModel;-><init>(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Lcom/texa/careapp/remotelogger/LoggerManager;->createUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/ServerLogModel;->setUserId(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/texa/careapp/model/ServerLogModel;->setTst(J)V

    .line 66
    invoke-direct {p0}, Lcom/texa/careapp/remotelogger/LoggerManager;->createDeviceID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/ServerLogModel;->setDeviceId(Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lcom/texa/careapp/remotelogger/LoggerManager;->createAppVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/ServerLogModel;->setAppV(Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lcom/texa/careapp/remotelogger/LoggerManager;->createFWVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/ServerLogModel;->setFwV(Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Lcom/texa/careapp/remotelogger/LoggerManager;->createHwid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/ServerLogModel;->setHwid(Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Lcom/texa/careapp/remotelogger/LoggerManager;->createOsVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/ServerLogModel;->setOs(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/texa/careapp/utils/Devices;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/ServerLogModel;->setDeviceM(Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Lcom/texa/careapp/remotelogger/LoggerManager;->createSnapshot()Lcom/texa/careapp/model/ServerLogModel$Snapshot;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/ServerLogModel;->setSnapshot(Lcom/texa/careapp/model/ServerLogModel$Snapshot;)V

    .line 73
    invoke-direct {p0}, Lcom/texa/careapp/remotelogger/LoggerManager;->createAccessoryStatus()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/ServerLogModel;->setStatus(I)V

    const/4 p1, 0x0

    .line 76
    :try_start_0
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    .line 77
    invoke-virtual {v0}, Lcom/texa/careapp/model/ServerLogModel;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, p1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-direct {p0}, Lcom/texa/careapp/remotelogger/LoggerManager;->scheduleLogSyncTask()V
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-array p1, p1, [Ljava/lang/Object;

    const-string p3, "Could not save log entry in database."

    .line 80
    invoke-static {p2, p3, p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

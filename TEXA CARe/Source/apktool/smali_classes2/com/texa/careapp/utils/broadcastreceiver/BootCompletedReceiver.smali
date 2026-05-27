.class public Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCompletedReceiver.java"


# instance fields
.field protected mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mPrefs:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/texa/careapp/CareApplication;

    .line 34
    invoke-virtual {p2}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p2

    invoke-interface {p2, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver;)V

    .line 36
    iget-object p2, p0, Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p2, v0}, Lcom/texa/careapp/utils/Utils;->shouldStartOutOfTheBox(Landroid/content/SharedPreferences;Lcom/texa/careapp/model/DongleDataManager;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "shouldStartOutOfTheBox=FALSE -> service can starts on boot"

    .line 37
    invoke-static {v0, p2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iget-object p2, p0, Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v0, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->UNDEFINED:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v1, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->SUCCESSFULL:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$LogNote;->LAUNCH_SERVICE_ON_BOOT:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, v2}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    .line 42
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x19

    if-le p2, v0, :cond_0

    .line 43
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/texa/careapp/app/service/CareService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 45
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/texa/careapp/app/service/CareService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, " shouldStartOutOfTheBox=TRUE -> service cannot start on boot"

    .line 49
    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

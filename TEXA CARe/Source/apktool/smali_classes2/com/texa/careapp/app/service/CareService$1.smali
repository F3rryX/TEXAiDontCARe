.class Lcom/texa/careapp/app/service/CareService$1;
.super Ljava/lang/Object;
.source "CareService.java"

# interfaces
.implements Ljava/beans/PropertyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/service/CareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/service/CareService;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/service/CareService;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService$1;->this$0:Lcom/texa/careapp/app/service/CareService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$propertyChange$0$com-texa-careapp-app-service-CareService$1(I)V
    .locals 6

    .line 417
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService$1;->this$0:Lcom/texa/careapp/app/service/CareService;

    iget-object v0, v0, Lcom/texa/careapp/app/service/CareService;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v0}, Lcom/texa/carelib/care/accessory/Accessory;->getStatus()I

    move-result v0

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService$1;->this$0:Lcom/texa/careapp/app/service/CareService;

    iget-object v0, v0, Lcom/texa/careapp/app/service/CareService;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v1, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->CARE_STATUS:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->FAILED:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configuration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/texa/careapp/app/service/CareService$1;->this$0:Lcom/texa/careapp/app/service/CareService;

    sget-object v5, Lcom/texa/careapp/Constants;->CARE_STATUS:Landroid/util/SparseIntArray;

    .line 419
    invoke-virtual {v5, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/texa/careapp/app/service/CareService;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 418
    invoke-virtual {v0, v1, v2, p1}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    .line 420
    iget-object p1, p0, Lcom/texa/careapp/app/service/CareService$1;->this$0:Lcom/texa/careapp/app/service/CareService;

    invoke-virtual {p1}, Lcom/texa/careapp/app/service/CareService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/app/update/FirmwareUpdateService;->buildDefaultIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/careapp/app/service/CareService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 5

    .line 376
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.texa.carelib.care.accessory.Accessory#PROPERTY_STATUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 377
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService$1;->this$0:Lcom/texa/careapp/app/service/CareService;

    sget-object v1, Lcom/texa/careapp/Constants;->CARE_STATUS:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/texa/careapp/app/service/CareService$1;->this$0:Lcom/texa/careapp/app/service/CareService;

    iget-object v2, v2, Lcom/texa/careapp/app/service/CareService;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v2}, Lcom/texa/carelib/care/accessory/Accessory;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/service/CareService;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "STATUS --> %s"

    invoke-static {v0, p1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    iget-object p1, p0, Lcom/texa/careapp/app/service/CareService$1;->this$0:Lcom/texa/careapp/app/service/CareService;

    iget-object p1, p1, Lcom/texa/careapp/app/service/CareService;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {p1}, Lcom/texa/carelib/care/accessory/Accessory;->getStatus()I

    move-result p1

    if-eqz p1, :cond_0

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configuration: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/service/CareService$1;->this$0:Lcom/texa/careapp/app/service/CareService;

    sget-object v3, Lcom/texa/careapp/Constants;->CARE_STATUS:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/texa/careapp/app/service/CareService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    iget-object v2, p0, Lcom/texa/careapp/app/service/CareService$1;->this$0:Lcom/texa/careapp/app/service/CareService;

    iget-object v2, v2, Lcom/texa/careapp/app/service/CareService;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v3, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->CARE_STATUS:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v4, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->UNDEFINED:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    invoke-virtual {v2, v3, v4, v0}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 394
    iget-object p1, p0, Lcom/texa/careapp/app/service/CareService$1;->this$0:Lcom/texa/careapp/app/service/CareService;

    iget-object p1, p1, Lcom/texa/careapp/app/service/CareService;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/texa/careapp/app/service/CareService$1;->this$0:Lcom/texa/careapp/app/service/CareService;

    iget-object v2, v2, Lcom/texa/careapp/app/service/CareService;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v2}, Lcom/texa/carelib/care/accessory/Accessory;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "FIRMWARE_UPDATE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    const/high16 p1, 0x8000000

    .line 396
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v0, v3, :cond_1

    const/high16 p1, 0xa000000

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService$1;->this$0:Lcom/texa/careapp/app/service/CareService;

    invoke-virtual {v0}, Lcom/texa/careapp/app/service/CareService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/texa/careapp/app/service/CareService$1;->this$0:Lcom/texa/careapp/app/service/CareService;

    .line 400
    invoke-virtual {v3}, Lcom/texa/careapp/app/service/CareService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/texa/careapp/app/MainActivity;->buildIntentForDashboardScreen(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    .line 399
    invoke-static {v0, v1, v3, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 402
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService$1;->this$0:Lcom/texa/careapp/app/service/CareService;

    invoke-virtual {v0}, Lcom/texa/careapp/app/service/CareService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->getDefaultNotificationBuilder(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/texa/careapp/app/service/CareService$1;->this$0:Lcom/texa/careapp/app/service/CareService;

    const v4, 0x7f110b19

    .line 403
    invoke-virtual {v3, v4}, Lcom/texa/careapp/app/service/CareService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 405
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 406
    iget-object p1, p0, Lcom/texa/careapp/app/service/CareService$1;->this$0:Lcom/texa/careapp/app/service/CareService;

    iget-object p1, p1, Lcom/texa/careapp/app/service/CareService;->notificationManager:Landroid/app/NotificationManager;

    const/16 v3, 0xe

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 408
    iget-object p1, p0, Lcom/texa/careapp/app/service/CareService$1;->this$0:Lcom/texa/careapp/app/service/CareService;

    iget-object p1, p1, Lcom/texa/careapp/app/service/CareService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/texa/careapp/app/service/CareService$1;->this$0:Lcom/texa/careapp/app/service/CareService;

    iget-object v3, v3, Lcom/texa/careapp/app/service/CareService;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v3}, Lcom/texa/carelib/care/accessory/Accessory;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 410
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    if-nez p1, :cond_3

    .line 416
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService$1;->this$0:Lcom/texa/careapp/app/service/CareService;

    iget-object v0, v0, Lcom/texa/careapp/app/service/CareService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/texa/careapp/app/service/CareService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/texa/careapp/app/service/CareService$1$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/service/CareService$1;I)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

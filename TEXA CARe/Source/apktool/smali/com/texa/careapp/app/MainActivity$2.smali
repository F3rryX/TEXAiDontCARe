.class Lcom/texa/careapp/app/MainActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/MainActivity;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/MainActivity;)V
    .locals 0

    .line 702
    iput-object p1, p0, Lcom/texa/careapp/app/MainActivity$2;->this$0:Lcom/texa/careapp/app/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 706
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ACTION_CHECK_BLUETOOTH_STATE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 707
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "EXTRA_BLUETOOTH_STATE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, -0x80000000

    .line 708
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 716
    :pswitch_0
    iget-object p1, p0, Lcom/texa/careapp/app/MainActivity$2;->this$0:Lcom/texa/careapp/app/MainActivity;

    iget-object p1, p1, Lcom/texa/careapp/app/MainActivity;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v1, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->USER_INTERATION:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->SUCCESSFULL:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    sget-object v3, Lcom/texa/careapp/model/ServerLogModel$LogNote;->BLUETOOTH_ENABLED:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v3}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    goto :goto_0

    :pswitch_1
    const/4 p2, 0x1

    goto :goto_0

    .line 712
    :pswitch_2
    iget-object p1, p0, Lcom/texa/careapp/app/MainActivity$2;->this$0:Lcom/texa/careapp/app/MainActivity;

    iget-object p1, p1, Lcom/texa/careapp/app/MainActivity;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v1, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->USER_INTERATION:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->SUCCESSFULL:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    sget-object v3, Lcom/texa/careapp/model/ServerLogModel$LogNote;->BLUETOOTH_DISABLED:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v3}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    .line 725
    :goto_0
    iget-object p1, p0, Lcom/texa/careapp/app/MainActivity$2;->this$0:Lcom/texa/careapp/app/MainActivity;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/texa/careapp/app/MainActivity;->access$000(Lcom/texa/careapp/app/MainActivity;Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

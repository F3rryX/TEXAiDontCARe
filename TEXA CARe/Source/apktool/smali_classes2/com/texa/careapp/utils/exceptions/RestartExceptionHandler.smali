.class public Lcom/texa/careapp/utils/exceptions/RestartExceptionHandler;
.super Ljava/lang/Object;
.source "RestartExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "RestartExceptionHandler"


# instance fields
.field private final PREFS_KEY_RESTART_EXCEPTION_HANDLER:Ljava/lang/String;

.field private final PREFS_KEY_RESTART_EXCEPTION_HANDLER_TIMESTAMP:Ljava/lang/String;

.field private final RESTART_TIMER:J

.field private context:Landroid/content/Context;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private timestamp:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xea60

    .line 19
    iput-wide v0, p0, Lcom/texa/careapp/utils/exceptions/RestartExceptionHandler;->RESTART_TIMER:J

    .line 20
    sget-object v0, Lcom/texa/careapp/utils/exceptions/RestartExceptionHandler;->TAG:Ljava/lang/String;

    iput-object v0, p0, Lcom/texa/careapp/utils/exceptions/RestartExceptionHandler;->PREFS_KEY_RESTART_EXCEPTION_HANDLER:Ljava/lang/String;

    const-string v1, "restart_exception_handler_timestamp"

    .line 21
    iput-object v1, p0, Lcom/texa/careapp/utils/exceptions/RestartExceptionHandler;->PREFS_KEY_RESTART_EXCEPTION_HANDLER_TIMESTAMP:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/texa/careapp/utils/exceptions/RestartExceptionHandler;->context:Landroid/content/Context;

    const/4 v1, 0x0

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/utils/exceptions/RestartExceptionHandler;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 31
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/utils/exceptions/RestartExceptionHandler;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private restartApp()V
    .locals 3

    .line 62
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/texa/careapp/utils/exceptions/RestartExceptionHandler;->context:Landroid/content/Context;

    const-class v2, Lcom/texa/careapp/app/SplashActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v1, 0x8000

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 68
    iget-object v1, p0, Lcom/texa/careapp/utils/exceptions/RestartExceptionHandler;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 69
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v0, 0x2

    .line 70
    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .line 41
    iget-object p1, p0, Lcom/texa/careapp/utils/exceptions/RestartExceptionHandler;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string p2, "restart_exception_handler_timestamp"

    const-wide/16 v0, -0x1

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/utils/exceptions/RestartExceptionHandler;->timestamp:Ljava/lang/Long;

    .line 43
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-nez p1, :cond_0

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/utils/exceptions/RestartExceptionHandler;->timestamp:Ljava/lang/Long;

    .line 45
    iget-object v0, p0, Lcom/texa/careapp/utils/exceptions/RestartExceptionHandler;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 46
    iget-object p1, p0, Lcom/texa/careapp/utils/exceptions/RestartExceptionHandler;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 47
    invoke-direct {p0}, Lcom/texa/careapp/utils/exceptions/RestartExceptionHandler;->restartApp()V

    goto :goto_0

    .line 49
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/texa/careapp/utils/exceptions/RestartExceptionHandler;->timestamp:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 50
    iget-object p1, p0, Lcom/texa/careapp/utils/exceptions/RestartExceptionHandler;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 51
    iget-object p1, p0, Lcom/texa/careapp/utils/exceptions/RestartExceptionHandler;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 52
    invoke-direct {p0}, Lcom/texa/careapp/utils/exceptions/RestartExceptionHandler;->restartApp()V

    goto :goto_0

    .line 54
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    const/4 p1, 0x2

    .line 55
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-void
.end method

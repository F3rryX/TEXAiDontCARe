.class Lcom/texa/carelib/communication/internal/DeviceConfigurationService;
.super Ljava/lang/Object;
.source "DeviceConfigurationService.java"


# static fields
.field private static final SHARED_PREFERENCE_NAME:Ljava/lang/String; = "DeviceConfigurationService"

.field private static _Instance:Lcom/texa/carelib/communication/internal/DeviceConfigurationService;

.field private static final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/texa/carelib/communication/internal/DeviceConfigurationService;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/texa/carelib/communication/internal/DeviceConfigurationService;
    .locals 2

    const-class v0, Lcom/texa/carelib/communication/internal/DeviceConfigurationService;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/texa/carelib/communication/internal/DeviceConfigurationService;->_Instance:Lcom/texa/carelib/communication/internal/DeviceConfigurationService;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lcom/texa/carelib/communication/internal/DeviceConfigurationService;

    invoke-direct {v1}, Lcom/texa/carelib/communication/internal/DeviceConfigurationService;-><init>()V

    sput-object v1, Lcom/texa/carelib/communication/internal/DeviceConfigurationService;->_Instance:Lcom/texa/carelib/communication/internal/DeviceConfigurationService;

    .line 24
    :cond_0
    sget-object v1, Lcom/texa/carelib/communication/internal/DeviceConfigurationService;->_Instance:Lcom/texa/carelib/communication/internal/DeviceConfigurationService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "DeviceConfigurationService"

    const/4 v1, 0x0

    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public get(Landroid/content/Context;Ljava/lang/String;)Lcom/texa/carelib/communication/internal/DeviceConfiguration;
    .locals 2

    .line 28
    sget-object v0, Lcom/texa/carelib/communication/internal/DeviceConfigurationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 29
    :try_start_0
    invoke-direct {p0, p1}, Lcom/texa/carelib/communication/internal/DeviceConfigurationService;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, ""

    .line 30
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/carelib/communication/internal/DeviceConfiguration;->fromJson(Ljava/lang/String;)Lcom/texa/carelib/communication/internal/DeviceConfiguration;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;Lcom/texa/carelib/communication/internal/DeviceConfiguration;)V
    .locals 1

    .line 35
    sget-object v0, Lcom/texa/carelib/communication/internal/DeviceConfigurationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 36
    :try_start_0
    invoke-direct {p0, p1}, Lcom/texa/carelib/communication/internal/DeviceConfigurationService;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 37
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 39
    invoke-static {p3}, Lcom/texa/carelib/communication/internal/DeviceConfiguration;->toJson(Lcom/texa/carelib/communication/internal/DeviceConfiguration;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 41
    :cond_0
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 43
    :goto_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 44
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

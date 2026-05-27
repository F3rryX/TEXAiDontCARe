.class public Lcom/texa/careapp/utils/CareCache;
.super Ljava/lang/Object;
.source "CareCache.java"


# static fields
.field private static final APP_VERSION:I = 0x1

.field private static final BATTERY_CHARGE_LEVEL_KEY:Ljava/lang/String; = "battery-charge-level"

.field public static final BATTERY_LEVEL_KEY:Ljava/lang/String; = "BATTERY_LEVEL"

.field private static final DISK_MAX_SIZE:I = 0x40000000

.field private static final RAM_MAX_SIZE:I = 0x3200000

.field private static final TAG:Ljava/lang/String; = "CareCache"


# instance fields
.field private mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

.field private mGson:Lcom/google/gson/Gson;

.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/utils/CareCache;->mGson:Lcom/google/gson/Gson;

    .line 31
    iput-object p1, p0, Lcom/texa/careapp/utils/CareCache;->mPreferences:Landroid/content/SharedPreferences;

    .line 32
    iput-object p2, p0, Lcom/texa/careapp/utils/CareCache;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method


# virtual methods
.method public getBatteryLevel()Lcom/texa/careapp/utils/BatteryLevel;
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/texa/careapp/utils/CareCache;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "BATTERY_LEVEL"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {v0}, Lcom/texa/careapp/utils/BatteryLevel;->valueOf(Ljava/lang/String;)Lcom/texa/careapp/utils/BatteryLevel;

    move-result-object v0

    return-object v0

    .line 44
    :cond_0
    sget-object v0, Lcom/texa/careapp/utils/BatteryLevel;->GREEN:Lcom/texa/careapp/utils/BatteryLevel;

    return-object v0
.end method

.method public getDongleModel()Lcom/texa/careapp/model/DongleModel;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/texa/careapp/utils/CareCache;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    return-object v0
.end method

.method public putBatteryLevel(Lcom/texa/careapp/utils/BatteryLevel;)V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/texa/careapp/utils/CareCache;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/texa/careapp/utils/BatteryLevel;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BATTERY_LEVEL"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

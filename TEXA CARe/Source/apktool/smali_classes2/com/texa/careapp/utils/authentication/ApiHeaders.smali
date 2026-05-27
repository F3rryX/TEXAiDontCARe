.class public Lcom/texa/careapp/utils/authentication/ApiHeaders;
.super Ljava/lang/Object;
.source "ApiHeaders.java"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field private static final DEVICE_FAMILY_ANDROID:Ljava/lang/String; = "Android"

.field private static final HEADER_ACCEPT_LANGUAGE:Ljava/lang/String; = "Accept-Language"

.field static final HEADER_AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field static final HEADER_CARE_HWID:Ljava/lang/String; = "CARe-HWID"

.field private static final HEADER_DEVICE_FAMILY:Ljava/lang/String; = "Device-Family"

.field private static final HEADER_DEVICE_ID:Ljava/lang/String; = "Device-UId"

.field private static final HEADER_DEVICE_TIME_ZONE:Ljava/lang/String; = "Device-TimeZone"

.field private static final HEADER_DEVICE_TOKEN:Ljava/lang/String; = "Device-Token"

.field private static final HEADER_USER_AGENT:Ljava/lang/String; = "User-Agent"


# instance fields
.field fcmManager:Lcom/texa/careapp/fcm/FcmManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mAccessTokenPersistenceManager:Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

.field protected mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/utils/authentication/ApiHeaders;)V

    .line 59
    iput-object p2, p0, Lcom/texa/careapp/utils/authentication/ApiHeaders;->mAccessTokenPersistenceManager:Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    .line 60
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/careapp/utils/authentication/ApiHeaders;->buildUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/utils/authentication/ApiHeaders;->mUserAgent:Ljava/lang/String;

    return-void
.end method

.method private addAuthorizationHeader(Lokhttp3/Request$Builder;)V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/texa/careapp/utils/authentication/ApiHeaders;->mAccessTokenPersistenceManager:Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    invoke-interface {v0}, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;->getAccessToken()Lcom/texa/careapp/utils/authentication/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/texa/careapp/utils/authentication/AccessToken;->tokenType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/texa/careapp/utils/authentication/AccessToken;->accessToken:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "Authorization"

    .line 144
    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_1
    return-void
.end method

.method private addDeviceFamilyHeader(Lokhttp3/Request$Builder;)V
    .locals 2

    const-string v0, "Device-Family"

    const-string v1, "Android"

    .line 114
    invoke-virtual {p1, v0, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    return-void
.end method

.method private addDeviceTimeZoneHeader(Lokhttp3/Request$Builder;)V
    .locals 3

    .line 152
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Device-TimeZone"

    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    return-void
.end method

.method private addDeviceTokenHeader(Lokhttp3/Request$Builder;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/texa/careapp/utils/authentication/ApiHeaders;->fcmManager:Lcom/texa/careapp/fcm/FcmManager;

    invoke-virtual {v0}, Lcom/texa/careapp/fcm/FcmManager;->getNotificationToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Device-Token"

    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    return-void
.end method

.method private addDeviceUUID(Lokhttp3/Request$Builder;)V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/texa/careapp/utils/authentication/ApiHeaders;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->getUniqueDeviceId(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Device-UId"

    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    return-void
.end method

.method private addLanguageHeader(Lokhttp3/Request$Builder;)V
    .locals 2

    .line 101
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accept-Language"

    .line 102
    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    return-void
.end method

.method private addUserAgentHeader(Lokhttp3/Request$Builder;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/texa/careapp/utils/authentication/ApiHeaders;->mUserAgent:Ljava/lang/String;

    const-string v1, "User-Agent"

    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    return-void
.end method

.method private buildUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 90
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 91
    invoke-static {p1, v0}, Lcom/texa/careapp/utils/authentication/ApiHeaders;->buildUserAgent(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 94
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get package name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static buildUserAgent(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 3

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f1108a5

    .line 79
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Android/"

    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 81
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method addHardwareIdHeader(Lokhttp3/Request$Builder;)V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/texa/careapp/utils/authentication/ApiHeaders;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CARe-HWID"

    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_0
    return-void
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 166
    invoke-direct {p0, v0}, Lcom/texa/careapp/utils/authentication/ApiHeaders;->addAuthorizationHeader(Lokhttp3/Request$Builder;)V

    .line 167
    invoke-virtual {p0, v0}, Lcom/texa/careapp/utils/authentication/ApiHeaders;->addHardwareIdHeader(Lokhttp3/Request$Builder;)V

    .line 168
    invoke-direct {p0, v0}, Lcom/texa/careapp/utils/authentication/ApiHeaders;->addDeviceFamilyHeader(Lokhttp3/Request$Builder;)V

    .line 169
    invoke-direct {p0, v0}, Lcom/texa/careapp/utils/authentication/ApiHeaders;->addLanguageHeader(Lokhttp3/Request$Builder;)V

    .line 170
    invoke-direct {p0, v0}, Lcom/texa/careapp/utils/authentication/ApiHeaders;->addDeviceTimeZoneHeader(Lokhttp3/Request$Builder;)V

    .line 171
    invoke-direct {p0, v0}, Lcom/texa/careapp/utils/authentication/ApiHeaders;->addUserAgentHeader(Lokhttp3/Request$Builder;)V

    .line 172
    invoke-direct {p0, v0}, Lcom/texa/careapp/utils/authentication/ApiHeaders;->addDeviceUUID(Lokhttp3/Request$Builder;)V

    .line 173
    invoke-direct {p0, v0}, Lcom/texa/careapp/utils/authentication/ApiHeaders;->addDeviceTokenHeader(Lokhttp3/Request$Builder;)V

    .line 175
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

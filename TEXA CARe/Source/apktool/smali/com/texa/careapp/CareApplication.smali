.class public Lcom/texa/careapp/CareApplication;
.super Landroidx/multidex/MultiDexApplication;
.source "CareApplication.java"

# interfaces
.implements Landroidx/work/Configuration$Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/CareApplication$ApplicationComponent;
    }
.end annotation


# instance fields
.field private component:Lcom/texa/careapp/CareApplication$ApplicationComponent;

.field protected mLogConfigurator:Lcom/texa/careapp/utils/LogConfigurator;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mNotificationManager:Landroid/app/NotificationManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mProfile:Lcom/texa/carelib/profile/Profile;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mTexaService:Lcom/texa/carelib/webservices/TexaService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 215
    invoke-direct {p0}, Landroidx/multidex/MultiDexApplication;-><init>()V

    return-void
.end method

.method private errataCorrige()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/texa/careapp/utils/erratacorrige/ErrataCorrige;

    .line 280
    new-instance v1, Lcom/texa/careapp/utils/erratacorrige/impl/ContactErrataCorrige;

    invoke-direct {v1}, Lcom/texa/careapp/utils/erratacorrige/impl/ContactErrataCorrige;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 282
    invoke-virtual {p0}, Lcom/texa/careapp/CareApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->getVersionCode(Landroid/content/Context;)I

    move-result v1

    .line 284
    new-instance v2, Lcom/texa/careapp/utils/erratacorrige/ErrataCorrigeExecutor;

    invoke-direct {v2, v1, v0}, Lcom/texa/careapp/utils/erratacorrige/ErrataCorrigeExecutor;-><init>(ILjava/util/List;)V

    invoke-virtual {v2}, Lcom/texa/careapp/utils/erratacorrige/ErrataCorrigeExecutor;->execute()V

    return-void
.end method

.method private initLoggers()V
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/texa/careapp/CareApplication;->mLogConfigurator:Lcom/texa/careapp/utils/LogConfigurator;

    invoke-virtual {v0, p0}, Lcom/texa/careapp/utils/LogConfigurator;->logToFile(Landroid/content/Context;)V

    .line 270
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCrashlyticsCollectionEnabled(Z)V

    .line 271
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    const v1, 0x7f1100bb

    invoke-virtual {p0, v1}, Lcom/texa/careapp/CareApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "library_version"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    new-instance v0, Lcom/texa/careapp/utils/logger/CrashlyticsTree;

    invoke-direct {v0}, Lcom/texa/careapp/utils/logger/CrashlyticsTree;-><init>()V

    invoke-static {v0}, Ltimber/log/Timber;->plant(Ltimber/log/Timber$Tree;)V

    .line 274
    invoke-static {}, Lcom/texa/careapp/utils/CrashlyticsHelper;->initSmartphoneInfos()V

    return-void
.end method

.method private initNotificationChannel()V
    .locals 4

    .line 254
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 255
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x3

    const-string v2, "care_channel"

    const-string v3, "CARe high priority notification"

    invoke-direct {v0, v2, v3, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 256
    iget-object v1, p0, Lcom/texa/careapp/CareApplication;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 258
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x1

    const-string v2, "care_min_channel"

    const-string v3, "CARe low priority notification"

    invoke-direct {v0, v2, v3, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x0

    .line 259
    invoke-virtual {v0, v1, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 260
    iget-object v1, p0, Lcom/texa/careapp/CareApplication;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method private setupActiveAndroid()V
    .locals 0

    .line 296
    invoke-static {p0}, Lcom/activeandroid/ActiveAndroid;->initialize(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public component()Lcom/texa/careapp/CareApplication$ApplicationComponent;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/texa/careapp/CareApplication;->component:Lcom/texa/careapp/CareApplication$ApplicationComponent;

    return-object v0
.end method

.method public getWorkManagerConfiguration()Landroidx/work/Configuration;
    .locals 2

    .line 302
    new-instance v0, Landroidx/work/Configuration$Builder;

    invoke-direct {v0}, Landroidx/work/Configuration$Builder;-><init>()V

    const/4 v1, 0x3

    .line 303
    invoke-virtual {v0, v1}, Landroidx/work/Configuration$Builder;->setMinimumLoggingLevel(I)Landroidx/work/Configuration$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 304
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/work/Configuration$Builder;->setExecutor(Ljava/util/concurrent/Executor;)Landroidx/work/Configuration$Builder;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Landroidx/work/Configuration$Builder;->build()Landroidx/work/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 230
    invoke-super {p0}, Landroidx/multidex/MultiDexApplication;->onCreate()V

    .line 231
    new-instance v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    .line 232
    invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    .line 234
    new-instance v0, Lcom/texa/careapp/utils/exceptions/RestartExceptionHandler;

    invoke-virtual {p0}, Lcom/texa/careapp/CareApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/texa/careapp/utils/exceptions/RestartExceptionHandler;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 236
    invoke-static {}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->builder()Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent$Builder;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/dagger/CareModule;

    invoke-direct {v1, p0}, Lcom/texa/careapp/dagger/CareModule;-><init>(Lcom/texa/careapp/CareApplication;)V

    .line 237
    invoke-virtual {v0, v1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent$Builder;->careModule(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent$Builder;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/dagger/ApiModule;

    invoke-direct {v1, p0}, Lcom/texa/careapp/dagger/ApiModule;-><init>(Lcom/texa/careapp/CareApplication;)V

    .line 238
    invoke-virtual {v0, v1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent$Builder;->apiModule(Lcom/texa/careapp/dagger/ApiModule;)Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent$Builder;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent$Builder;->build()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/CareApplication;->component:Lcom/texa/careapp/CareApplication$ApplicationComponent;

    .line 240
    invoke-virtual {p0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/CareApplication;)V

    .line 242
    invoke-direct {p0}, Lcom/texa/careapp/CareApplication;->initLoggers()V

    .line 244
    invoke-direct {p0}, Lcom/texa/careapp/CareApplication;->setupActiveAndroid()V

    .line 246
    invoke-direct {p0}, Lcom/texa/careapp/CareApplication;->errataCorrige()V

    .line 248
    iget-object v0, p0, Lcom/texa/careapp/CareApplication;->mProfile:Lcom/texa/carelib/profile/Profile;

    iget-object v1, p0, Lcom/texa/careapp/CareApplication;->mTexaService:Lcom/texa/carelib/webservices/TexaService;

    invoke-interface {v0, v1}, Lcom/texa/carelib/profile/Profile;->setServiceProxy(Lcom/texa/carelib/webservices/ServiceProxy;)V

    .line 249
    iget-object v0, p0, Lcom/texa/careapp/CareApplication;->mTexaService:Lcom/texa/carelib/webservices/TexaService;

    iget-object v1, p0, Lcom/texa/careapp/CareApplication;->mProfile:Lcom/texa/carelib/profile/Profile;

    invoke-interface {v0, v1}, Lcom/texa/carelib/webservices/TexaService;->setCareProxy(Lcom/texa/carelib/care/profile/CareProxy;)V

    .line 250
    invoke-direct {p0}, Lcom/texa/careapp/CareApplication;->initNotificationChannel()V

    return-void
.end method

.method public setComponent(Lcom/texa/careapp/CareApplication$ApplicationComponent;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/texa/careapp/CareApplication;->component:Lcom/texa/careapp/CareApplication$ApplicationComponent;

    return-void
.end method

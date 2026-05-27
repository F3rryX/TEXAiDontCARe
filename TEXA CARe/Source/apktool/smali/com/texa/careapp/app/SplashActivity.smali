.class public Lcom/texa/careapp/app/SplashActivity;
.super Lcom/texa/careapp/base/BaseActivity;
.source "SplashActivity.java"


# static fields
.field static SPLASH_TIME_OUT:I = 0x3e8


# instance fields
.field protected mAccessory:Lcom/texa/carelib/care/accessory/Accessory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field protected mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field protected mLoginHelperRx:Lcom/texa/careapp/utils/LoginHelperRx;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mRunnable:Ljava/lang/Runnable;

.field private mShouldStartOutOfTheBox:Z

.field private mShouldStartWalkthrough:Z

.field protected mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$WgYsH926S-AEoC5_jigs677I844(Lcom/texa/careapp/app/SplashActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/texa/careapp/app/SplashActivity;->proceed()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/texa/careapp/base/BaseActivity;-><init>()V

    .line 75
    new-instance v0, Lcom/texa/careapp/app/SplashActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/SplashActivity$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/app/SplashActivity;)V

    iput-object v0, p0, Lcom/texa/careapp/app/SplashActivity;->mRunnable:Ljava/lang/Runnable;

    .line 77
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/SplashActivity;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method public static buildIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/app/SplashActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const p0, 0x10008000

    .line 81
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private checkMissingColumnInDB()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 137
    :try_start_0
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "SELECT * FROM Terms LIMIT 0"

    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v4, "User"

    .line 138
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    if-eqz v3, :cond_0

    .line 155
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    return v1

    :catch_0
    move-exception v4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v4

    move-object v3, v2

    .line 144
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 146
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "select DISTINCT tbl_name from sqlite_master where tbl_name = \'Terms\'"

    invoke-virtual {v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_4

    .line 149
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lez v3, :cond_4

    if-eqz v2, :cond_3

    .line 155
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    return v1

    :cond_4
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    return v0

    :catchall_1
    move-exception v0

    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 156
    :cond_6
    throw v0
.end method

.method private checkUserTerms()V
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/texa/careapp/app/SplashActivity;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "privacy"

    .line 164
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/UserModel;->getTermAcepted(Ljava/lang/String;)Lcom/texa/careapp/model/TermsModel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 165
    iget v1, v1, Lcom/texa/careapp/model/TermsModel;->version:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/texa/careapp/app/SplashActivity;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v2, p0, Lcom/texa/careapp/app/SplashActivity;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-interface {v2}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->getUserObservable()Lio/reactivex/Observable;

    move-result-object v2

    .line 167
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    .line 168
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcom/texa/careapp/app/SplashActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0}, Lcom/texa/careapp/app/SplashActivity$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/SplashActivity;Lcom/texa/careapp/model/UserModel;)V

    .line 169
    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v2, Lcom/texa/careapp/app/SplashActivity$$ExternalSyntheticLambda2;->INSTANCE:Lcom/texa/careapp/app/SplashActivity$$ExternalSyntheticLambda2;

    sget-object v3, Lcom/texa/careapp/app/SplashActivity$$ExternalSyntheticLambda3;->INSTANCE:Lcom/texa/careapp/app/SplashActivity$$ExternalSyntheticLambda3;

    .line 170
    invoke-virtual {v0, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 166
    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    :cond_2
    return-void
.end method

.method static synthetic lambda$checkUserTerms$2(Lcom/texa/careapp/networking/response/UserResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "User Synced"

    .line 170
    invoke-static {v0, p0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$checkUserTerms$3(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "User not Synced"

    .line 170
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onCreate$0(Lcom/texa/carelib/care/accessory/events/FactoryResetCompletedEvent;)V
    .locals 2

    .line 111
    invoke-virtual {p0}, Lcom/texa/carelib/care/accessory/events/FactoryResetCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/texa/carelib/core/CareError;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "CareError %s"

    invoke-static {p0, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private proceed()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/texa/careapp/app/SplashActivity;->mLoginHelperRx:Lcom/texa/careapp/utils/LoginHelperRx;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/LoginHelperRx;->isUserLogged()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/texa/careapp/app/SplashActivity;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getAll()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/texa/careapp/app/SplashActivity;->mShouldStartOutOfTheBox:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/texa/careapp/app/SplashActivity;->mShouldStartWalkthrough:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/texa/careapp/app/SplashActivity;->mLoginHelperRx:Lcom/texa/careapp/utils/LoginHelperRx;

    .line 227
    invoke-virtual {v0}, Lcom/texa/careapp/utils/LoginHelperRx;->isUserLogged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    invoke-static {p0}, Lcom/texa/careapp/utils/permission/CorePermission;->shouldRequestPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    const-class v0, Lcom/texa/careapp/app/permission/PermissionActivity;

    goto :goto_1

    .line 231
    :cond_0
    const-class v0, Lcom/texa/careapp/app/MainActivity;

    goto :goto_1

    .line 233
    :cond_1
    iget-boolean v0, p0, Lcom/texa/careapp/app/SplashActivity;->mShouldStartWalkthrough:Z

    if-eqz v0, :cond_2

    .line 234
    const-class v0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivity;

    goto :goto_1

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/texa/careapp/app/SplashActivity;->mLoginHelperRx:Lcom/texa/careapp/utils/LoginHelperRx;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/LoginHelperRx;->isUserLogged()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/texa/careapp/app/SplashActivity;->mShouldStartOutOfTheBox:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 238
    :cond_3
    const-class v0, Lcom/texa/careapp/app/MainActivity;

    goto :goto_1

    .line 236
    :cond_4
    :goto_0
    const-class v0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;

    .line 240
    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 241
    invoke-virtual {p0, v1}, Lcom/texa/careapp/app/SplashActivity;->startActivity(Landroid/content/Intent;)V

    const v0, 0x7f01001d

    const v1, 0x7f01001e

    .line 242
    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/app/SplashActivity;->overridePendingTransition(II)V

    .line 243
    invoke-virtual {p0}, Lcom/texa/careapp/app/SplashActivity;->finish()V

    return-void
.end method

.method private removeCallbacks()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/texa/careapp/app/SplashActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 219
    iget-object v1, p0, Lcom/texa/careapp/app/SplashActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private updateTermsInDb(Lcom/texa/careapp/model/UserModel;Lcom/texa/careapp/networking/response/UserResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/careapp/exceptions/DatabaseIOException;
        }
    .end annotation

    .line 185
    iget-object p2, p2, Lcom/texa/careapp/networking/response/UserResponse;->userData:Lcom/texa/careapp/networking/response/UserResponse$UserData;

    iget-object p2, p2, Lcom/texa/careapp/networking/response/UserResponse$UserData;->termsModelList:Ljava/util/List;

    .line 186
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/TermsModel;

    .line 187
    iget-object v1, v0, Lcom/texa/careapp/model/TermsModel;->termsType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/texa/careapp/model/UserModel;->getTermAcepted(Ljava/lang/String;)Lcom/texa/careapp/model/TermsModel;

    move-result-object v1

    if-nez v1, :cond_1

    .line 189
    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/TermsModel;->setUser(Lcom/texa/careapp/model/UserModel;)V

    .line 190
    invoke-static {v0, p0}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    goto :goto_0

    .line 192
    :cond_1
    iget v2, v0, Lcom/texa/careapp/model/TermsModel;->version:I

    iget v3, v1, Lcom/texa/careapp/model/TermsModel;->version:I

    if-le v2, v3, :cond_0

    .line 193
    invoke-virtual {v1, v0}, Lcom/texa/careapp/model/TermsModel;->update(Lcom/texa/careapp/model/TermsModel;)V

    .line 194
    invoke-static {v1, p0}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateUserModelAndTerms(Lcom/texa/careapp/model/UserModel;Lcom/texa/careapp/networking/response/UserResponse;)V
    .locals 1

    .line 175
    iget-object v0, p2, Lcom/texa/careapp/networking/response/UserResponse;->userData:Lcom/texa/careapp/networking/response/UserResponse$UserData;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/model/UserModel;->updateFrom(Lcom/texa/careapp/networking/response/UserResponse$UserData;)V

    .line 177
    :try_start_0
    invoke-static {p1, p0}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/SplashActivity;->updateTermsInDb(Lcom/texa/careapp/model/UserModel;Lcom/texa/careapp/networking/response/UserResponse;)V
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 180
    invoke-virtual {p1}, Lcom/texa/careapp/exceptions/DatabaseIOException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public exportDatabase(Ljava/lang/String;)V
    .locals 10

    .line 249
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 250
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 252
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "//data//"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/SplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "//databases//"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "backupCARe.db"

    .line 255
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 256
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 258
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 260
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    const-wide/16 v6, 0x0

    .line 261
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    move-object v4, p1

    move-object v5, v0

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 262
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 263
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ERROR EXPORT DB"

    .line 267
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$checkUserTerms$1$com-texa-careapp-app-SplashActivity(Lcom/texa/careapp/model/UserModel;Lcom/texa/careapp/networking/response/UserResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 169
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/SplashActivity;->updateUserModelAndTerms(Lcom/texa/careapp/model/UserModel;Lcom/texa/careapp/networking/response/UserResponse;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 207
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onBackPressed()V

    .line 208
    invoke-direct {p0}, Lcom/texa/careapp/app/SplashActivity;->removeCallbacks()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 87
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/texa/careapp/app/SplashActivity;->getCareApplication()Lcom/texa/careapp/CareApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/SplashActivity;)V

    .line 94
    invoke-virtual {p0}, Lcom/texa/careapp/app/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/texa/careapp/app/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "local_notification"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 95
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_TAPPED_LOCAL_NOTIFICATION:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 100
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/SplashActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/texa/careapp/app/SplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "AA_DB_VERSION"

    .line 101
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 103
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    const/16 p1, 0x24

    if-ne v0, p1, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/texa/careapp/app/SplashActivity;->checkMissingColumnInDB()Z

    move-result p1

    if-nez p1, :cond_1

    .line 107
    const-class p1, Lcom/texa/carelib/care/accessory/FactoryResetFlag;

    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    .line 108
    sget-object v0, Lcom/texa/carelib/care/accessory/FactoryResetFlag;->UserData:Lcom/texa/carelib/care/accessory/FactoryResetFlag;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 110
    :try_start_1
    iget-object v1, p0, Lcom/texa/careapp/app/SplashActivity;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    sget-object v2, Lcom/texa/careapp/app/SplashActivity$$ExternalSyntheticLambda0;->INSTANCE:Lcom/texa/careapp/app/SplashActivity$$ExternalSyntheticLambda0;

    invoke-interface {v1, p1, v2}, Lcom/texa/carelib/care/accessory/Accessory;->resetToFactory(Ljava/util/EnumSet;Lcom/texa/carelib/core/Callback;)V
    :try_end_1
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    iget-object p1, p0, Lcom/texa/careapp/app/SplashActivity;->mLoginHelperRx:Lcom/texa/careapp/utils/LoginHelperRx;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx;->doLogOut(Z)V

    .line 118
    iget-object p1, p0, Lcom/texa/careapp/app/SplashActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/texa/careapp/app/events/CancelProgressEvent;

    invoke-direct {v0}, Lcom/texa/careapp/app/events/CancelProgressEvent;-><init>()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 117
    iget-object v1, p0, Lcom/texa/careapp/app/SplashActivity;->mLoginHelperRx:Lcom/texa/careapp/utils/LoginHelperRx;

    invoke-virtual {v1, v0}, Lcom/texa/careapp/utils/LoginHelperRx;->doLogOut(Z)V

    .line 118
    iget-object v0, p0, Lcom/texa/careapp/app/SplashActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/events/CancelProgressEvent;

    invoke-direct {v1}, Lcom/texa/careapp/app/events/CancelProgressEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 119
    invoke-static {p0}, Lcom/texa/careapp/app/SplashActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 120
    throw p1

    .line 117
    :catch_1
    iget-object p1, p0, Lcom/texa/careapp/app/SplashActivity;->mLoginHelperRx:Lcom/texa/careapp/utils/LoginHelperRx;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx;->doLogOut(Z)V

    .line 118
    iget-object p1, p0, Lcom/texa/careapp/app/SplashActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/texa/careapp/app/events/CancelProgressEvent;

    invoke-direct {v0}, Lcom/texa/careapp/app/events/CancelProgressEvent;-><init>()V

    :goto_1
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 119
    invoke-static {p0}, Lcom/texa/careapp/app/SplashActivity;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/SplashActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 123
    :cond_1
    invoke-direct {p0}, Lcom/texa/careapp/app/SplashActivity;->checkUserTerms()V

    .line 125
    iget-object p1, p0, Lcom/texa/careapp/app/SplashActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->shouldStartWalkthrough(Landroid/content/SharedPreferences;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/texa/careapp/app/SplashActivity;->mShouldStartWalkthrough:Z

    .line 126
    iget-object p1, p0, Lcom/texa/careapp/app/SplashActivity;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/texa/careapp/app/SplashActivity;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->shouldStartOutOfTheBox(Landroid/content/SharedPreferences;Lcom/texa/careapp/model/DongleDataManager;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/texa/careapp/app/SplashActivity;->mShouldStartOutOfTheBox:Z

    .line 128
    invoke-direct {p0}, Lcom/texa/careapp/app/SplashActivity;->proceed()V

    :goto_2
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 274
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onDestroy()V

    .line 275
    iget-object v0, p0, Lcom/texa/careapp/app/SplashActivity;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 213
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onStop()V

    .line 214
    invoke-direct {p0}, Lcom/texa/careapp/app/SplashActivity;->removeCallbacks()V

    return-void
.end method

.method protected requiresAuthentication()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

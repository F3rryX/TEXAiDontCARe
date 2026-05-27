.class public Lcom/texa/careapp/utils/MechanicDataManager;
.super Ljava/lang/Object;
.source "MechanicDataManager.java"


# static fields
.field private static final MAX_AGE:J = 0x927c0L


# instance fields
.field private mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

.field private mGson:Lcom/google/gson/Gson;

.field private mMemoryCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/texa/careapp/networking/response/CustomerResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;


# direct methods
.method public static synthetic $r8$lambda$Q9NuyefTIeeRu4hBJKza0pWhdNI(Lcom/texa/careapp/utils/MechanicDataManager;Lcom/texa/careapp/networking/response/CustomerResponse;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/careapp/utils/MechanicDataManager;->isValid(Lcom/texa/careapp/networking/response/CustomerResponse;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/texa/careapp/networking/TexaCareApiServiceUser;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/utils/MechanicDataManager;->mMemoryCache:Ljava/util/HashMap;

    .line 37
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->buildGsonInstance()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/utils/MechanicDataManager;->mGson:Lcom/google/gson/Gson;

    .line 42
    iput-object p1, p0, Lcom/texa/careapp/utils/MechanicDataManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 43
    iput-object p2, p0, Lcom/texa/careapp/utils/MechanicDataManager;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    .line 44
    iput-object p3, p0, Lcom/texa/careapp/utils/MechanicDataManager;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method private getPrefKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "customer-response-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static isExpired(J)Z
    .locals 3

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/32 p0, 0x927c0

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isValid(Lcom/texa/careapp/networking/response/CustomerResponse;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p1}, Lcom/texa/careapp/networking/response/CustomerResponse;->getUpdatedAt()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/MechanicDataManager;->isExpired(J)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic lambda$fromNetwork$1(Lcom/texa/careapp/networking/response/CustomerResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    invoke-static {}, Lcom/texa/careapp/utils/MechanicDataManager;->now()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/networking/response/CustomerResponse;->setUpdatedAt(J)V

    return-void
.end method

.method static synthetic lambda$observeCustomerResponse$0(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "#onErrorResumeNext()"

    .line 72
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private logSource(Ljava/lang/String;)Lio/reactivex/ObservableTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/ObservableTransformer<",
            "Lcom/texa/careapp/networking/response/CustomerResponse;",
            "Lcom/texa/careapp/networking/response/CustomerResponse;",
            ">;"
        }
    .end annotation

    .line 161
    new-instance v0, Lcom/texa/careapp/utils/MechanicDataManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/utils/MechanicDataManager$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/utils/MechanicDataManager;Ljava/lang/String;)V

    return-object v0
.end method

.method private static now()J
    .locals 2

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private readFromPreferences(Ljava/lang/String;)Lcom/texa/careapp/networking/response/CustomerResponse;
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/texa/careapp/utils/MechanicDataManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lcom/texa/careapp/utils/MechanicDataManager;->getPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/utils/MechanicDataManager;->mGson:Lcom/google/gson/Gson;

    const-class v2, Lcom/texa/careapp/networking/response/CustomerResponse;

    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/networking/response/CustomerResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "ignored"

    .line 116
    invoke-static {p1, v2, v0}, Ltimber/log/Timber;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method protected cacheInMemory(Ljava/lang/String;Lcom/texa/careapp/networking/response/CustomerResponse;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/texa/careapp/utils/MechanicDataManager;->mMemoryCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected cacheOnDisk(Ljava/lang/String;Lcom/texa/careapp/networking/response/CustomerResponse;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/texa/careapp/utils/MechanicDataManager;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 91
    iget-object v0, p0, Lcom/texa/careapp/utils/MechanicDataManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/texa/careapp/utils/MechanicDataManager;->getPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected clearCache(Ljava/lang/String;)V
    .locals 2

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/utils/MechanicDataManager;->mMemoryCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/texa/careapp/utils/MechanicDataManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/texa/careapp/utils/MechanicDataManager;->getPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "#clearCache() problem"

    .line 152
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public deleteMechanicsData()V
    .locals 2

    .line 173
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/texa/careapp/model/MechanicModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    return-void
.end method

.method protected fromDisk(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/networking/response/CustomerResponse;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/texa/careapp/utils/MechanicDataManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/utils/MechanicDataManager$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/utils/MechanicDataManager;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 107
    new-instance v1, Lcom/texa/careapp/utils/MechanicDataManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/texa/careapp/utils/MechanicDataManager$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/utils/MechanicDataManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "DISK"

    .line 108
    invoke-direct {p0, v0}, Lcom/texa/careapp/utils/MechanicDataManager;->logSource(Ljava/lang/String;)Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected fromMemory(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/networking/response/CustomerResponse;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Lcom/texa/careapp/utils/MechanicDataManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/utils/MechanicDataManager$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/utils/MechanicDataManager;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "MEMORY"

    .line 137
    invoke-direct {p0, v0}, Lcom/texa/careapp/utils/MechanicDataManager;->logSource(Ljava/lang/String;)Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected fromNetwork()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/networking/response/CustomerResponse;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/texa/careapp/utils/MechanicDataManager;->mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-interface {v0}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->getCustomers()Lio/reactivex/Observable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "#fromNetwork mTexaCareApiServiceUser.getCustomers() return NULL"

    .line 78
    invoke-static {v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_0
    sget-object v1, Lcom/texa/careapp/utils/MechanicDataManager$$ExternalSyntheticLambda5;->INSTANCE:Lcom/texa/careapp/utils/MechanicDataManager$$ExternalSyntheticLambda5;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "NETWORK"

    .line 83
    invoke-direct {p0, v1}, Lcom/texa/careapp/utils/MechanicDataManager;->logSource(Ljava/lang/String;)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getMechanicModel()Lcom/texa/careapp/model/MechanicModel;
    .locals 2

    .line 50
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/MechanicModel;

    .line 51
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "LastUpdate DESC"

    .line 52
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/MechanicModel;

    return-object v0
.end method

.method public synthetic lambda$fromDisk$2$com-texa-careapp-utils-MechanicDataManager(Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1}, Lcom/texa/careapp/utils/MechanicDataManager;->readFromPreferences(Ljava/lang/String;)Lcom/texa/careapp/networking/response/CustomerResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 101
    invoke-interface {p2, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 103
    :cond_0
    invoke-interface {p2}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method

.method public synthetic lambda$fromDisk$3$com-texa-careapp-utils-MechanicDataManager(Ljava/lang/String;Lcom/texa/careapp/networking/response/CustomerResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/utils/MechanicDataManager;->cacheInMemory(Ljava/lang/String;Lcom/texa/careapp/networking/response/CustomerResponse;)V

    return-void
.end method

.method public synthetic lambda$fromMemory$4$com-texa-careapp-utils-MechanicDataManager(Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/texa/careapp/utils/MechanicDataManager;->mMemoryCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/networking/response/CustomerResponse;

    invoke-interface {p2, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 134
    invoke-interface {p2}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method

.method public synthetic lambda$logSource$5$com-texa-careapp-utils-MechanicDataManager(Ljava/lang/String;Lcom/texa/careapp/networking/response/CustomerResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 163
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not have any data."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 164
    :cond_0
    invoke-direct {p0, p2}, Lcom/texa/careapp/utils/MechanicDataManager;->isValid(Lcom/texa/careapp/networking/response/CustomerResponse;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 165
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has stale data."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 167
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has the data you are looking for!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$logSource$6$com-texa-careapp-utils-MechanicDataManager(Ljava/lang/String;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1

    .line 161
    new-instance v0, Lcom/texa/careapp/utils/MechanicDataManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/utils/MechanicDataManager$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/utils/MechanicDataManager;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public observeCustomerResponse()Lio/reactivex/Maybe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Maybe<",
            "Lcom/texa/careapp/networking/response/CustomerResponse;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/texa/careapp/utils/MechanicDataManager;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/texa/careapp/utils/MechanicDataManager;->fromNetwork()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/utils/MechanicDataManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/texa/careapp/utils/MechanicDataManager$$ExternalSyntheticLambda7;-><init>(Lcom/texa/careapp/utils/MechanicDataManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Observable;->firstElement()Lio/reactivex/Maybe;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/MechanicDataManager$$ExternalSyntheticLambda6;->INSTANCE:Lcom/texa/careapp/utils/MechanicDataManager$$ExternalSyntheticLambda6;

    .line 72
    invoke-virtual {v0, v1}, Lio/reactivex/Maybe;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Maybe;

    move-result-object v0

    return-object v0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dongleModel cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

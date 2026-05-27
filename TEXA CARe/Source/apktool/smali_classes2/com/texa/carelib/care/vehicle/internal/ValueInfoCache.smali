.class public Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;
.super Ljava/lang/Object;
.source "ValueInfoCache.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ValueInfoCache"


# instance fields
.field private mAvailableDataIDs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedDataIDs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mValuesLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    sget-object v1, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->TAG:Ljava/lang/String;

    const-string v2, "mValuesLock"

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mValuesLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mValues:Ljava/util/Map;

    return-void
.end method

.method private setAllParametersAsNotAvailable(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;",
            ">;)V"
        }
    .end annotation

    .line 81
    sget-object v0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "setAllParametersAsNotAvailable()"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 84
    iget-object v2, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->setAvailable(Z)Lcom/texa/carelib/care/vehicle/ValueInfo;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 179
    sget-object v0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "clear()"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mValuesLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v1, "clear"

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mValuesLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mValuesLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v2, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw v0
.end method

.method public contains(Ljava/lang/Long;)Z
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mValuesLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v1, "clear"

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mValuesLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mValuesLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw p1
.end method

.method public getAvailableDataIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mAvailableDataIDs:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 36
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSupportedDataIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mSupportedDataIDs:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getValue(Ljava/lang/Long;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mValuesLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v1, "getValueInfo"

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mValuesLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mValuesLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw p1
.end method

.method public getValues()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mValuesLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v2, "getValues"

    invoke-virtual {v1, v2}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :goto_0
    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mValuesLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v1, v2}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 57
    :try_start_1
    sget-object v3, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->TAG:Ljava/lang/String;

    const-string v4, "Exception on getValues()."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v1, v4, v5}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 63
    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 60
    :goto_2
    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mValuesLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v1, v2}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw v0
.end method

.method public putValue(Ljava/lang/Long;Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;)V
    .locals 3

    .line 163
    invoke-virtual {p0}, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->getAvailableDataIDs()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->setAvailable(Z)Lcom/texa/carelib/care/vehicle/ValueInfo;

    .line 164
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/texa/carelib/care/vehicle/internal/DataIDFormatter;->toString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "putValue(0x%s,%s)"

    invoke-static {v0, p1, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setAvailableParameters(Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 90
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mAvailableDataIDs:Ljava/util/Set;

    goto :goto_0

    .line 92
    :cond_0
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mAvailableDataIDs:Ljava/util/Set;

    .line 95
    :goto_0
    sget-object p1, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mAvailableDataIDs:Ljava/util/Set;

    const-string v3, ","

    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "setAvailableParameters(%s)"

    invoke-static {p1, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mValuesLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v1, "setAvailableParameters"

    invoke-virtual {p1, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 99
    :try_start_0
    iget-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mValues:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->setAllParametersAsNotAvailable(Ljava/util/Map;)V

    .line 101
    iget-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mAvailableDataIDs:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 102
    iget-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mAvailableDataIDs:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 103
    sget-object v4, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->TAG:Ljava/lang/String;

    const-string v5, "Available parameter: %s"

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/texa/carelib/care/vehicle/internal/DataIDFormatter;->toString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v4, v5, v6}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    iget-object v4, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mValues:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 105
    new-instance v4, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    invoke-direct {v4}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;-><init>()V

    .line 106
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->setID(J)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->setAvailable(Z)Lcom/texa/carelib/care/vehicle/ValueInfo;

    .line 108
    iget-object v5, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mValues:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 110
    :cond_1
    iget-object v4, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mValues:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    invoke-virtual {v2, v0}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->setAvailable(Z)Lcom/texa/carelib/care/vehicle/ValueInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 116
    :cond_2
    iget-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mValuesLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {p1, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mValuesLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw p1
.end method

.method public setSupportedParameters(Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 122
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mSupportedDataIDs:Ljava/util/Set;

    goto :goto_0

    .line 124
    :cond_0
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mSupportedDataIDs:Ljava/util/Set;

    .line 127
    :goto_0
    sget-object v0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mSupportedDataIDs:Ljava/util/Set;

    const-string v4, ","

    invoke-static {v3, v4}, Lcom/texa/carelib/core/utils/internal/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "setSupportedParameters(%s)"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mValuesLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v2, "onSupportedParametersChanged"

    invoke-virtual {v0, v2}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 132
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 133
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 135
    iget-object v5, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mSupportedDataIDs:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 136
    sget-object v5, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->TAG:Ljava/lang/String;

    const-string v6, "Removing supported parameter: %s"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/texa/carelib/care/vehicle/internal/DataIDFormatter;->toString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v4

    invoke-static {v5, v6, v7}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 141
    :cond_2
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 142
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 143
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 145
    iget-object v3, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mValues:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 146
    sget-object v3, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->TAG:Ljava/lang/String;

    const-string v5, "Adding supported parameter: %s"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/texa/carelib/care/vehicle/internal/DataIDFormatter;->toString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v3, v5, v6}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    new-instance v3, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    invoke-direct {v3}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;-><init>()V

    .line 148
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->setID(J)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    .line 149
    invoke-virtual {v3, v4}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->setAvailable(Z)Lcom/texa/carelib/care/vehicle/ValueInfo;

    .line 151
    invoke-virtual {p0, v0, v3}, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->putValue(Ljava/lang/Long;Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;)V

    goto :goto_2

    .line 155
    :cond_4
    sget-object p1, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->TAG:Ljava/lang/String;

    const-string v0, "Supported parameter: %d"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mValues:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {p1, v0, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    iget-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mValuesLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {p1, v2}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/ValueInfoCache;->mValuesLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v0, v2}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw p1
.end method

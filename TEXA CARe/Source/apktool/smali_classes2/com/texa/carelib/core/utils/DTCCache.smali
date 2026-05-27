.class public Lcom/texa/carelib/core/utils/DTCCache;
.super Ljava/lang/Object;
.source "DTCCache.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DTCCache"


# instance fields
.field private final mCachedDTCs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/care/vehicletroubles/DTC;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachedDTCsLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

.field private mLangs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance v0, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    sget-object v1, Lcom/texa/carelib/core/utils/DTCCache;->TAG:Ljava/lang/String;

    const-string v2, "mCachedDTCsLock"

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/texa/carelib/core/utils/DTCCache;->mCachedDTCsLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/core/utils/DTCCache;->mCachedDTCs:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/core/utils/DTCCache;->mLangs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 41
    sget-object v0, Lcom/texa/carelib/core/utils/DTCCache;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Deleting all DTCs from cache."

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/texa/carelib/core/utils/DTCCache;->mCachedDTCsLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v1, "clear"

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/core/utils/DTCCache;->mCachedDTCs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    iget-object v0, p0, Lcom/texa/carelib/core/utils/DTCCache;->mCachedDTCsLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/texa/carelib/core/utils/DTCCache;->mCachedDTCsLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v2, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw v0
.end method

.method public getCachedDTCs(Ljava/util/Map;[Ljava/util/Locale;Ljava/util/Date;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/care/vehicletroubles/DTCDetail;",
            ">;[",
            "Ljava/util/Locale;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/vehicletroubles/DTC;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/texa/carelib/core/utils/DTCCache;->mCachedDTCsLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v1, "getCachedDTCs"

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/core/utils/DTCCache;->mCachedDTCs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 117
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 121
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 122
    iget-object v3, p0, Lcom/texa/carelib/core/utils/DTCCache;->mCachedDTCs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    iget-object v3, p0, Lcom/texa/carelib/core/utils/DTCCache;->mCachedDTCs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/carelib/care/vehicletroubles/DTC;

    .line 126
    invoke-virtual {v3}, Lcom/texa/carelib/care/vehicletroubles/DTC;->edit()Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;

    move-result-object v4

    .line 127
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;

    invoke-virtual {v5}, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;->getStatus()Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->setStatus(Lcom/texa/carelib/care/vehicletroubles/DTCStatus;)Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;

    move-result-object v4

    .line 128
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;

    invoke-virtual {v5}, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;->getSourceNode()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->setSourceNode(Ljava/lang/Long;)Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;

    move-result-object v4

    .line 129
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;

    invoke-virtual {v2}, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;->getOccurrences()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->setOccurrences(Ljava/lang/Long;)Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;

    move-result-object v2

    .line 130
    invoke-virtual {v2, p3}, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->setAcquisitionDate(Ljava/util/Date;)Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;

    .line 132
    iget-object v2, p0, Lcom/texa/carelib/core/utils/DTCCache;->mLangs:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    new-instance v2, Lcom/texa/carelib/care/vehicletroubles/DTC;

    invoke-direct {v2, v3}, Lcom/texa/carelib/care/vehicletroubles/DTC;-><init>(Lcom/texa/carelib/care/vehicletroubles/DTC;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_3
    iget-object p1, p0, Lcom/texa/carelib/core/utils/DTCCache;->mCachedDTCsLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {p1, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    .line 143
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 144
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 146
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 140
    iget-object p2, p0, Lcom/texa/carelib/core/utils/DTCCache;->mCachedDTCsLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {p2, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw p1
.end method

.method public getNotCachedDTC(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/care/vehicletroubles/DTCDetail;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/care/vehicletroubles/DTCDetail;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/texa/carelib/core/utils/DTCCache;->mCachedDTCsLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v1, "getNotCachedDTC"

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 163
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    goto :goto_1

    .line 167
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 168
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 170
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 171
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 173
    iget-object v3, p0, Lcom/texa/carelib/core/utils/DTCCache;->mCachedDTCs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 179
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :goto_1
    iget-object v0, p0, Lcom/texa/carelib/core/utils/DTCCache;->mCachedDTCsLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/texa/carelib/core/utils/DTCCache;->mCachedDTCsLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw p1
.end method

.method public size()I
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/texa/carelib/core/utils/DTCCache;->mCachedDTCsLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v1, "size"

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/core/utils/DTCCache;->mCachedDTCs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    iget-object v2, p0, Lcom/texa/carelib/core/utils/DTCCache;->mCachedDTCsLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v2, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    return v0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/texa/carelib/core/utils/DTCCache;->mCachedDTCsLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v2, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw v0
.end method

.method public update(Ljava/util/List;[Ljava/util/Locale;Lcom/texa/carelib/core/utils/GenericAdapter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/vehicletroubles/DTC;",
            ">;[",
            "Ljava/util/Locale;",
            "Lcom/texa/carelib/core/utils/GenericAdapter<",
            "Lcom/texa/carelib/care/vehicletroubles/DTC;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 77
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 78
    iget-object v0, p0, Lcom/texa/carelib/core/utils/DTCCache;->mLangs:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/texa/carelib/core/utils/internal/Utils;->equalsArrayList(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/texa/carelib/core/utils/DTCCache;->clear()V

    .line 82
    iput-object p2, p0, Lcom/texa/carelib/core/utils/DTCCache;->mLangs:Ljava/util/List;

    .line 85
    :cond_0
    iget-object p2, p0, Lcom/texa/carelib/core/utils/DTCCache;->mCachedDTCsLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string/jumbo v0, "update"

    invoke-virtual {p2, v0}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 87
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/texa/carelib/care/vehicletroubles/DTC;

    if-eqz p2, :cond_1

    .line 89
    iget-object v1, p0, Lcom/texa/carelib/core/utils/DTCCache;->mCachedDTCs:Ljava/util/Map;

    invoke-interface {p3, p2}, Lcom/texa/carelib/core/utils/GenericAdapter;->adaptee(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/texa/carelib/care/vehicletroubles/DTC;

    invoke-direct {v3, p2}, Lcom/texa/carelib/care/vehicletroubles/DTC;-><init>(Lcom/texa/carelib/care/vehicletroubles/DTC;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 93
    :cond_2
    iget-object p1, p0, Lcom/texa/carelib/core/utils/DTCCache;->mCachedDTCsLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {p1, v0}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/texa/carelib/core/utils/DTCCache;->mCachedDTCsLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {p2, v0}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

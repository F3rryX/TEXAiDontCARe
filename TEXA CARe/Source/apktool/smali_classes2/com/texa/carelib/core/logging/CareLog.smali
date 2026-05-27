.class public Lcom/texa/carelib/core/logging/CareLog;
.super Ljava/lang/Object;
.source "CareLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/core/logging/CareLog$LoggerTree;
    }
.end annotation


# static fields
.field private static final _LOGGER_TREE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/logging/CareLog$LoggerTree;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile _LoggerTreeArray:[Lcom/texa/carelib/core/logging/CareLog$LoggerTree;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/texa/carelib/core/logging/CareLog;->_LOGGER_TREE_LIST:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/texa/carelib/core/logging/CareLog$LoggerTree;

    .line 30
    sput-object v0, Lcom/texa/carelib/core/logging/CareLog;->_LoggerTreeArray:[Lcom/texa/carelib/core/logging/CareLog$LoggerTree;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createTreeArray()V
    .locals 2

    .line 62
    sget-object v0, Lcom/texa/carelib/core/logging/CareLog;->_LOGGER_TREE_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/texa/carelib/core/logging/CareLog$LoggerTree;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/core/logging/CareLog$LoggerTree;

    sput-object v0, Lcom/texa/carelib/core/logging/CareLog;->_LoggerTreeArray:[Lcom/texa/carelib/core/logging/CareLog$LoggerTree;

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .line 92
    sget-object v0, Lcom/texa/carelib/core/logging/CareLog;->_LoggerTreeArray:[Lcom/texa/carelib/core/logging/CareLog$LoggerTree;

    .line 94
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 95
    aget-object v3, v0, v2

    invoke-virtual {v3, p0, p1, p2}, Lcom/texa/carelib/core/logging/CareLog$LoggerTree;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .line 100
    sget-object v0, Lcom/texa/carelib/core/logging/CareLog;->_LoggerTreeArray:[Lcom/texa/carelib/core/logging/CareLog$LoggerTree;

    .line 102
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 103
    aget-object v3, v0, v2

    invoke-virtual {v3, p0, p1, p2, p3}, Lcom/texa/carelib/core/logging/CareLog$LoggerTree;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .line 140
    sget-object v0, Lcom/texa/carelib/core/logging/CareLog;->_LoggerTreeArray:[Lcom/texa/carelib/core/logging/CareLog$LoggerTree;

    .line 142
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 143
    aget-object v3, v0, v2

    invoke-virtual {v3, p0, p1, p2}, Lcom/texa/carelib/core/logging/CareLog$LoggerTree;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .line 148
    sget-object v0, Lcom/texa/carelib/core/logging/CareLog;->_LoggerTreeArray:[Lcom/texa/carelib/core/logging/CareLog$LoggerTree;

    .line 150
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 151
    aget-object v3, v0, v2

    invoke-virtual {v3, p0, p1, p2, p3}, Lcom/texa/carelib/core/logging/CareLog$LoggerTree;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getLoggers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/logging/CareLog$LoggerTree;",
            ">;"
        }
    .end annotation

    .line 194
    sget-object v0, Lcom/texa/carelib/core/logging/CareLog;->_LOGGER_TREE_LIST:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .line 108
    sget-object v0, Lcom/texa/carelib/core/logging/CareLog;->_LoggerTreeArray:[Lcom/texa/carelib/core/logging/CareLog$LoggerTree;

    .line 110
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 111
    aget-object v3, v0, v2

    invoke-virtual {v3, p0, p1, p2}, Lcom/texa/carelib/core/logging/CareLog$LoggerTree;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .line 116
    sget-object v0, Lcom/texa/carelib/core/logging/CareLog;->_LoggerTreeArray:[Lcom/texa/carelib/core/logging/CareLog$LoggerTree;

    .line 118
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 119
    aget-object v3, v0, v2

    invoke-virtual {v3, p0, p1, p2, p3}, Lcom/texa/carelib/core/logging/CareLog$LoggerTree;->i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static varargs log(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .line 172
    sget-object v0, Lcom/texa/carelib/core/logging/CareLog;->_LoggerTreeArray:[Lcom/texa/carelib/core/logging/CareLog$LoggerTree;

    .line 174
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 175
    aget-object v3, v0, v2

    invoke-virtual {v3, p0, p1, p2, p3}, Lcom/texa/carelib/core/logging/CareLog$LoggerTree;->log(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static varargs log(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 9

    .line 180
    sget-object v0, Lcom/texa/carelib/core/logging/CareLog;->_LoggerTreeArray:[Lcom/texa/carelib/core/logging/CareLog$LoggerTree;

    .line 182
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 183
    aget-object v3, v0, v2

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/texa/carelib/core/logging/CareLog$LoggerTree;->log(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static plant(Lcom/texa/carelib/core/logging/CareLog$LoggerTree;)V
    .locals 1

    .line 38
    sget-object v0, Lcom/texa/carelib/core/logging/CareLog;->_LOGGER_TREE_LIST:Ljava/util/List;

    monitor-enter v0

    .line 39
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-static {}, Lcom/texa/carelib/core/logging/CareLog;->createTreeArray()V

    .line 41
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static uproot(Lcom/texa/carelib/core/logging/CareLog$LoggerTree;)V
    .locals 4

    .line 52
    sget-object v0, Lcom/texa/carelib/core/logging/CareLog;->_LOGGER_TREE_LIST:Ljava/util/List;

    monitor-enter v0

    .line 53
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-static {}, Lcom/texa/carelib/core/logging/CareLog;->createTreeArray()V

    .line 58
    monitor-exit v0

    return-void

    .line 54
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot uproot tree which is not planted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p0

    .line 58
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static uprootAll()V
    .locals 2

    .line 69
    sget-object v0, Lcom/texa/carelib/core/logging/CareLog;->_LOGGER_TREE_LIST:Ljava/util/List;

    monitor-enter v0

    .line 70
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 71
    invoke-static {}, Lcom/texa/carelib/core/logging/CareLog;->createTreeArray()V

    .line 72
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .line 76
    sget-object v0, Lcom/texa/carelib/core/logging/CareLog;->_LoggerTreeArray:[Lcom/texa/carelib/core/logging/CareLog$LoggerTree;

    .line 78
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 79
    aget-object v3, v0, v2

    invoke-virtual {v3, p0, p1, p2}, Lcom/texa/carelib/core/logging/CareLog$LoggerTree;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .line 84
    sget-object v0, Lcom/texa/carelib/core/logging/CareLog;->_LoggerTreeArray:[Lcom/texa/carelib/core/logging/CareLog$LoggerTree;

    .line 86
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 87
    aget-object v3, v0, v2

    invoke-virtual {v3, p0, p1, p2, p3}, Lcom/texa/carelib/core/logging/CareLog$LoggerTree;->v(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .line 124
    sget-object v0, Lcom/texa/carelib/core/logging/CareLog;->_LoggerTreeArray:[Lcom/texa/carelib/core/logging/CareLog$LoggerTree;

    .line 126
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 127
    aget-object v3, v0, v2

    invoke-virtual {v3, p0, p1, p2}, Lcom/texa/carelib/core/logging/CareLog$LoggerTree;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .line 132
    sget-object v0, Lcom/texa/carelib/core/logging/CareLog;->_LoggerTreeArray:[Lcom/texa/carelib/core/logging/CareLog$LoggerTree;

    .line 134
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 135
    aget-object v3, v0, v2

    invoke-virtual {v3, p0, p1, p2, p3}, Lcom/texa/carelib/core/logging/CareLog$LoggerTree;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static varargs wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .line 156
    sget-object v0, Lcom/texa/carelib/core/logging/CareLog;->_LoggerTreeArray:[Lcom/texa/carelib/core/logging/CareLog$LoggerTree;

    .line 158
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 159
    aget-object v3, v0, v2

    invoke-virtual {v3, p0, p1, p2}, Lcom/texa/carelib/core/logging/CareLog$LoggerTree;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static varargs wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .line 164
    sget-object v0, Lcom/texa/carelib/core/logging/CareLog;->_LoggerTreeArray:[Lcom/texa/carelib/core/logging/CareLog$LoggerTree;

    .line 166
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 167
    aget-object v3, v0, v2

    invoke-virtual {v3, p0, p1, p2, p3}, Lcom/texa/carelib/core/logging/CareLog$LoggerTree;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.class public Lcom/texa/carelib/core/logging/LogcatLoggerTree;
.super Lcom/texa/carelib/core/logging/CareLog$LoggerTree;
.source "LogcatLoggerTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/core/logging/LogcatLoggerTree$DoLog;
    }
.end annotation


# static fields
.field private static final MAX_MESSAGE_LENGTH:I = 0xfa0

.field private static _Loggers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/texa/carelib/core/logging/LogcatLoggerTree$DoLog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLogcatLock:Ljava/lang/Object;

.field private mMinLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/texa/carelib/core/logging/LogcatLoggerTree;->_Loggers:Landroid/util/SparseArray;

    .line 21
    sget-object v1, Lcom/texa/carelib/core/logging/LogcatLoggerTree$$ExternalSyntheticLambda5;->INSTANCE:Lcom/texa/carelib/core/logging/LogcatLoggerTree$$ExternalSyntheticLambda5;

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    sget-object v0, Lcom/texa/carelib/core/logging/LogcatLoggerTree;->_Loggers:Landroid/util/SparseArray;

    sget-object v1, Lcom/texa/carelib/core/logging/LogcatLoggerTree$$ExternalSyntheticLambda0;->INSTANCE:Lcom/texa/carelib/core/logging/LogcatLoggerTree$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    sget-object v0, Lcom/texa/carelib/core/logging/LogcatLoggerTree;->_Loggers:Landroid/util/SparseArray;

    sget-object v1, Lcom/texa/carelib/core/logging/LogcatLoggerTree$$ExternalSyntheticLambda1;->INSTANCE:Lcom/texa/carelib/core/logging/LogcatLoggerTree$$ExternalSyntheticLambda1;

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    sget-object v0, Lcom/texa/carelib/core/logging/LogcatLoggerTree;->_Loggers:Landroid/util/SparseArray;

    sget-object v1, Lcom/texa/carelib/core/logging/LogcatLoggerTree$$ExternalSyntheticLambda2;->INSTANCE:Lcom/texa/carelib/core/logging/LogcatLoggerTree$$ExternalSyntheticLambda2;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    sget-object v0, Lcom/texa/carelib/core/logging/LogcatLoggerTree;->_Loggers:Landroid/util/SparseArray;

    sget-object v1, Lcom/texa/carelib/core/logging/LogcatLoggerTree$$ExternalSyntheticLambda3;->INSTANCE:Lcom/texa/carelib/core/logging/LogcatLoggerTree$$ExternalSyntheticLambda3;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    sget-object v0, Lcom/texa/carelib/core/logging/LogcatLoggerTree;->_Loggers:Landroid/util/SparseArray;

    sget-object v1, Lcom/texa/carelib/core/logging/LogcatLoggerTree$$ExternalSyntheticLambda4;->INSTANCE:Lcom/texa/carelib/core/logging/LogcatLoggerTree$$ExternalSyntheticLambda4;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 33
    invoke-direct {p0, v0}, Lcom/texa/carelib/core/logging/LogcatLoggerTree;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/texa/carelib/core/logging/CareLog$LoggerTree;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/core/logging/LogcatLoggerTree;->mLogcatLock:Ljava/lang/Object;

    .line 41
    iput p1, p0, Lcom/texa/carelib/core/logging/LogcatLoggerTree;->mMinLevel:I

    return-void
.end method


# virtual methods
.method protected isLoggable(I)Z
    .locals 1

    .line 46
    iget v0, p0, Lcom/texa/carelib/core/logging/LogcatLoggerTree;->mMinLevel:I

    if-gt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .line 59
    sget-object v0, Lcom/texa/carelib/core/logging/LogcatLoggerTree;->_Loggers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/core/logging/LogcatLoggerTree$DoLog;

    if-eqz p1, :cond_2

    .line 62
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xfa0

    if-le v0, v1, :cond_1

    .line 63
    iget-object v0, p0, Lcom/texa/carelib/core/logging/LogcatLoggerTree;->mLogcatLock:Ljava/lang/Object;

    monitor-enter v0

    const/high16 v1, 0x3f000000    # 0.5f

    .line 64
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x457a0000    # 4000.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    mul-int/lit16 v3, v2, 0xfa0

    add-int/lit16 v4, v3, 0xfa0

    .line 67
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Chunk "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p2, v3, p4}, Lcom/texa/carelib/core/logging/LogcatLoggerTree$DoLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 70
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 72
    :cond_1
    invoke-interface {p1, p2, p3, p4}, Lcom/texa/carelib/core/logging/LogcatLoggerTree$DoLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

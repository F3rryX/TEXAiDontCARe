.class public Lcom/texa/careapp/utils/erratacorrige/ErrataCorrigeExecutor;
.super Ljava/lang/Object;
.source "ErrataCorrigeExecutor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ErrataCorrigeExecutor"


# instance fields
.field private final mCurrentVersionCode:I

.field private mErrataCorrigeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/utils/erratacorrige/ErrataCorrige;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/texa/careapp/utils/erratacorrige/ErrataCorrige;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/texa/careapp/utils/erratacorrige/ErrataCorrigeExecutor;->mCurrentVersionCode:I

    .line 21
    iput-object p2, p0, Lcom/texa/careapp/utils/erratacorrige/ErrataCorrigeExecutor;->mErrataCorrigeList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    .line 25
    iget-object v0, p0, Lcom/texa/careapp/utils/erratacorrige/ErrataCorrigeExecutor;->mErrataCorrigeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/utils/erratacorrige/ErrataCorrige;

    .line 26
    iget v2, p0, Lcom/texa/careapp/utils/erratacorrige/ErrataCorrigeExecutor;->mCurrentVersionCode:I

    invoke-interface {v1}, Lcom/texa/careapp/utils/erratacorrige/ErrataCorrige;->minVersionCode()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 27
    sget-object v2, Lcom/texa/careapp/utils/erratacorrige/ErrataCorrigeExecutor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrentVersionCode < errataCorrige.minVersionCode, skipping: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 28
    :cond_0
    iget v2, p0, Lcom/texa/careapp/utils/erratacorrige/ErrataCorrigeExecutor;->mCurrentVersionCode:I

    invoke-interface {v1}, Lcom/texa/careapp/utils/erratacorrige/ErrataCorrige;->maxVersionCode()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 29
    sget-object v2, Lcom/texa/careapp/utils/erratacorrige/ErrataCorrigeExecutor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrentVersionCode > errataCorrige.maxVersionCode, skipping: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 32
    :cond_1
    :try_start_0
    invoke-interface {v1}, Lcom/texa/careapp/utils/erratacorrige/ErrataCorrige;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 34
    sget-object v3, Lcom/texa/careapp/utils/erratacorrige/ErrataCorrigeExecutor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got exception while executing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    return-void
.end method

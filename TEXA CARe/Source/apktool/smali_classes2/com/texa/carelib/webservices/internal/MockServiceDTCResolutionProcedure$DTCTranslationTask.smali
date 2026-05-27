.class Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$DTCTranslationTask;
.super Landroid/os/AsyncTask;
.source "MockServiceDTCResolutionProcedure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DTCTranslationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/texa/carelib/care/vehicletroubles/DTC;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/texa/carelib/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/DTCTranslationCompletedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mDTCIDs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/care/vehicletroubles/DTCDetail;",
            ">;"
        }
    .end annotation
.end field

.field private mDate:Ljava/util/Date;

.field private mError:Lcom/texa/carelib/core/CareError;

.field private mLanguages:[Ljava/util/Locale;

.field private mSerialNumber:Ljava/lang/String;

.field private final mTranslations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/care/vehicletroubles/DTC;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;[Ljava/util/Locale;Ljava/lang/String;Ljava/util/Date;Lcom/texa/carelib/core/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/care/vehicletroubles/DTC;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/care/vehicletroubles/DTCDetail;",
            ">;[",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/DTCTranslationCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .line 407
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 476
    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$DTCTranslationTask;->mError:Lcom/texa/carelib/core/CareError;

    .line 408
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$DTCTranslationTask;->mTranslations:Ljava/util/Map;

    .line 409
    iput-object p2, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$DTCTranslationTask;->mDTCIDs:Ljava/util/Map;

    .line 410
    iput-object p3, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$DTCTranslationTask;->mLanguages:[Ljava/util/Locale;

    .line 411
    iput-object p5, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$DTCTranslationTask;->mDate:Ljava/util/Date;

    .line 412
    iput-object p4, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$DTCTranslationTask;->mSerialNumber:Ljava/lang/String;

    .line 413
    iput-object p6, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$DTCTranslationTask;->mCallback:Lcom/texa/carelib/core/Callback;

    return-void
.end method

.method private resolveDTC(Ljava/lang/String;Lcom/texa/carelib/care/vehicletroubles/DTCStatus;Ljava/util/Date;)Lcom/texa/carelib/care/vehicletroubles/DTC;
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$DTCTranslationTask;->mTranslations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 467
    new-instance v0, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$DTCTranslationTask;->mTranslations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/care/vehicletroubles/DTC;

    invoke-direct {v0, p1}, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;-><init>(Lcom/texa/carelib/care/vehicletroubles/DTC;)V

    .line 468
    invoke-virtual {v0, p2}, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->setStatus(Lcom/texa/carelib/care/vehicletroubles/DTCStatus;)Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;

    .line 469
    invoke-virtual {v0, p3}, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->setAcquisitionDate(Ljava/util/Date;)Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;

    .line 470
    invoke-virtual {v0}, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->build()Lcom/texa/carelib/care/vehicletroubles/DTC;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 406
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$DTCTranslationTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/vehicletroubles/DTC;",
            ">;"
        }
    .end annotation

    .line 418
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 420
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$DTCTranslationTask;->mDTCIDs:Ljava/util/Map;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x7d0

    .line 424
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 426
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$DTCTranslationTask;->mDTCIDs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 427
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;

    invoke-virtual {v1}, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;->getStatus()Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    move-result-object v1

    iget-object v3, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$DTCTranslationTask;->mDate:Ljava/util/Date;

    invoke-direct {p0, v2, v1, v3}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$DTCTranslationTask;->resolveDTC(Ljava/lang/String;Lcom/texa/carelib/care/vehicletroubles/DTCStatus;Ljava/util/Date;)Lcom/texa/carelib/care/vehicletroubles/DTC;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 430
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p1

    :catch_0
    move-exception v0

    .line 448
    sget-object v1, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Generic error."

    invoke-static {v1, v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    new-instance v1, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v2, 0x2

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-virtual {v1, v0}, Lcom/texa/carelib/core/CareError$Builder;->setException(Ljava/lang/Throwable;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$DTCTranslationTask;->mError:Lcom/texa/carelib/core/CareError;

    :cond_3
    :goto_1
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 406
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$DTCTranslationTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/vehicletroubles/DTC;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 458
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$DTCTranslationTask;->mCallback:Lcom/texa/carelib/core/Callback;

    new-instance v1, Lcom/texa/carelib/webservices/DTCTranslationCompletedEvent;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$DTCTranslationTask;->mError:Lcom/texa/carelib/core/CareError;

    invoke-direct {v1, p0, v2, p1}, Lcom/texa/carelib/webservices/DTCTranslationCompletedEvent;-><init>(Ljava/lang/Object;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    goto :goto_0

    .line 461
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$DTCTranslationTask;->mCallback:Lcom/texa/carelib/core/Callback;

    new-instance v0, Lcom/texa/carelib/webservices/DTCTranslationCompletedEvent;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$DTCTranslationTask;->mError:Lcom/texa/carelib/core/CareError;

    invoke-direct {v0, p0, v1, v2}, Lcom/texa/carelib/webservices/DTCTranslationCompletedEvent;-><init>(Ljava/lang/Object;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p1, v0}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.class public Lcom/texa/carelib/webservices/internal/MockServiceImpactDetection;
.super Ljava/lang/Object;
.source "MockServiceImpactDetection.java"

# interfaces
.implements Lcom/texa/carelib/webservices/ServiceImpactDetection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$uploadCrashData$0$com-texa-carelib-webservices-internal-MockServiceImpactDetection(Lcom/texa/carelib/core/Callback;)V
    .locals 2

    const-wide/16 v0, 0x7d0

    .line 20
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz p1, :cond_0

    .line 25
    new-instance v0, Lcom/texa/carelib/webservices/CrashDataUploadedEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/texa/carelib/webservices/CrashDataUploadedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p1, v0}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public uploadCrashData(Ljava/lang/String;Lcom/texa/carelib/core/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/CrashDataUploadedEvent;",
            ">;)V"
        }
    .end annotation

    .line 18
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/texa/carelib/webservices/internal/MockServiceImpactDetection$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/texa/carelib/webservices/internal/MockServiceImpactDetection$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/webservices/internal/MockServiceImpactDetection;Lcom/texa/carelib/core/Callback;)V

    const-string p2, "Thread_uploadCrashData"

    invoke-direct {p1, v0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setPriority(I)V

    .line 31
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

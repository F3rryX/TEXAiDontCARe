.class Lcom/texa/carelib/webservices/internal/HttpServiceImpactDetection$1;
.super Ljava/lang/Object;
.source "HttpServiceImpactDetection.java"

# interfaces
.implements Lcom/texa/carelib/webservices/internal/HttpAPIRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/carelib/webservices/internal/HttpServiceImpactDetection;->uploadCrashData(Ljava/lang/String;Lcom/texa/carelib/core/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/carelib/webservices/internal/HttpServiceImpactDetection;

.field final synthetic val$callback:Lcom/texa/carelib/core/Callback;


# direct methods
.method constructor <init>(Lcom/texa/carelib/webservices/internal/HttpServiceImpactDetection;Lcom/texa/carelib/core/Callback;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceImpactDetection$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceImpactDetection;

    iput-object p2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceImpactDetection$1;->val$callback:Lcom/texa/carelib/core/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/String;)V
    .locals 2

    .line 55
    sget-object p1, Lcom/texa/carelib/webservices/internal/HttpServiceImpactDetection;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Crash data uploaded successfully."

    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceImpactDetection$1;->val$callback:Lcom/texa/carelib/core/Callback;

    if-eqz p1, :cond_0

    .line 59
    new-instance v0, Lcom/texa/carelib/webservices/CrashDataUploadedEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/texa/carelib/webservices/CrashDataUploadedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p1, v0}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onError(Lcom/texa/carelib/core/CareError;)V
    .locals 3

    .line 46
    sget-object v0, Lcom/texa/carelib/webservices/internal/HttpServiceImpactDetection;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Could not upload crash data. Error=%s"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceImpactDetection$1;->val$callback:Lcom/texa/carelib/core/Callback;

    if-eqz v0, :cond_0

    .line 49
    new-instance v1, Lcom/texa/carelib/webservices/CrashDataUploadedEvent;

    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceImpactDetection$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceImpactDetection;

    invoke-static {v2, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceImpactDetection;->access$000(Lcom/texa/carelib/webservices/internal/HttpServiceImpactDetection;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/webservices/CrashDataUploadedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.class Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo$1;
.super Ljava/lang/Object;
.source "HttpServiceVehicleInfo.java"

# interfaces
.implements Lcom/texa/carelib/webservices/internal/HttpAPIRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo;->loadVehicleInfo([Ljava/lang/String;[Ljava/util/Locale;Lcom/texa/carelib/core/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo;

.field final synthetic val$callback:Lcom/texa/carelib/core/Callback;


# direct methods
.method constructor <init>(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo;Lcom/texa/carelib/core/Callback;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo;

    iput-object p2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo$1;->val$callback:Lcom/texa/carelib/core/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/String;)V
    .locals 3

    .line 89
    invoke-static {p1}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo$APIVehicleInfoResponse;->fromJson(Ljava/lang/String;)Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo$APIVehicleInfoResponse;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo$APIVehicleInfoResponse;->getVehicles()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/carelib/webservices/VehicleInfo;

    .line 96
    invoke-virtual {v1}, Lcom/texa/carelib/webservices/VehicleInfo;->getHardwareID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo;

    invoke-virtual {p1, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo;->setVehicles(Ljava/util/Map;)V

    .line 102
    :cond_1
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo;

    sget-object v0, Lcom/texa/carelib/webservices/ServiceVehicleInfoStatus;->Loaded:Lcom/texa/carelib/webservices/ServiceVehicleInfoStatus;

    invoke-virtual {p1, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo;->setStatus(Lcom/texa/carelib/webservices/ServiceVehicleInfoStatus;)V

    .line 104
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo$1;->val$callback:Lcom/texa/carelib/core/Callback;

    new-instance v0, Lcom/texa/carelib/webservices/VehicleInfoLoadedEvent;

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo;

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo;->getVehicles()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/texa/carelib/webservices/VehicleInfoLoadedEvent;-><init>(Ljava/lang/Object;Ljava/util/Map;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p1, v0}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Lcom/texa/carelib/core/CareError;)V
    .locals 4

    .line 82
    sget-object v0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "error getting vehicle details from WebAPI."

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo;

    sget-object v1, Lcom/texa/carelib/webservices/ServiceVehicleInfoStatus;->Error:Lcom/texa/carelib/webservices/ServiceVehicleInfoStatus;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo;->setStatus(Lcom/texa/carelib/webservices/ServiceVehicleInfoStatus;)V

    .line 84
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo$1;->val$callback:Lcom/texa/carelib/core/Callback;

    new-instance v1, Lcom/texa/carelib/webservices/VehicleInfoLoadedEvent;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo;

    invoke-static {v3, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo;->access$000(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-direct {v1, p0, v2, p1}, Lcom/texa/carelib/webservices/VehicleInfoLoadedEvent;-><init>(Ljava/lang/Object;Ljava/util/Map;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    return-void
.end method

.class Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo$1;
.super Ljava/lang/Object;
.source "HttpServiceVehicleConfigurationInfo.java"

# interfaces
.implements Lcom/texa/carelib/webservices/internal/HttpAPIRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo;->loadVehicleConfigurationInfo(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Lcom/texa/carelib/core/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo;

.field final synthetic val$callback:Lcom/texa/carelib/core/Callback;


# direct methods
.method constructor <init>(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo;Lcom/texa/carelib/core/Callback;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo;

    iput-object p2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo$1;->val$callback:Lcom/texa/carelib/core/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/String;)V
    .locals 3

    .line 88
    invoke-static {p1}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo$APIConfigurationInfoResponse;->fromJson(Ljava/lang/String;)Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo$APIConfigurationInfoResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo;

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo$APIConfigurationInfoResponse;->getConfigurationInfoStatus()Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo;->setVehicleConfigurationStatus(Lcom/texa/carelib/webservices/VehicleConfigurationStatus;)V

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo;

    sget-object v0, Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfoStatus;->Loaded:Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfoStatus;

    invoke-virtual {p1, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo;->setStatus(Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfoStatus;)V

    .line 96
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo$1;->val$callback:Lcom/texa/carelib/core/Callback;

    new-instance v0, Lcom/texa/carelib/webservices/VehicleConfigurationInfoLoadedEvent;

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo;

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo;->getVehicleConfigurationStatus()Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/texa/carelib/webservices/VehicleConfigurationInfoLoadedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/webservices/VehicleConfigurationStatus;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p1, v0}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Lcom/texa/carelib/core/CareError;)V
    .locals 4

    .line 80
    sget-object v0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "error getting configuration remote version"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo;

    sget-object v1, Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfoStatus;->Error:Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfoStatus;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo;->setStatus(Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfoStatus;)V

    .line 83
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo$1;->val$callback:Lcom/texa/carelib/core/Callback;

    new-instance v1, Lcom/texa/carelib/webservices/VehicleConfigurationInfoLoadedEvent;

    sget-object v2, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;->Undefined:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    iget-object v3, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo;

    invoke-static {v3, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo;->access$000(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-direct {v1, p0, v2, p1}, Lcom/texa/carelib/webservices/VehicleConfigurationInfoLoadedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/webservices/VehicleConfigurationStatus;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    return-void
.end method

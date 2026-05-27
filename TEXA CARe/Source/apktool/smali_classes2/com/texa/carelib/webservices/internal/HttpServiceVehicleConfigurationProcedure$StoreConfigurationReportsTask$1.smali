.class Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$StoreConfigurationReportsTask$1;
.super Ljava/lang/Object;
.source "HttpServiceVehicleConfigurationProcedure.java"

# interfaces
.implements Lcom/texa/carelib/webservices/internal/HttpAPIRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$StoreConfigurationReportsTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$StoreConfigurationReportsTask;


# direct methods
.method constructor <init>(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$StoreConfigurationReportsTask;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$StoreConfigurationReportsTask$1;->this$1:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$StoreConfigurationReportsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/String;)V
    .locals 1

    .line 199
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$StoreConfigurationReportsTask$1;->this$1:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$StoreConfigurationReportsTask;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$StoreConfigurationReportsTask;->access$300(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$StoreConfigurationReportsTask;Lcom/texa/carelib/core/CareError;)V

    return-void
.end method

.method public onError(Lcom/texa/carelib/core/CareError;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$StoreConfigurationReportsTask$1;->this$1:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$StoreConfigurationReportsTask;

    invoke-static {v0, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$StoreConfigurationReportsTask;->access$200(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$StoreConfigurationReportsTask;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$StoreConfigurationReportsTask;->access$300(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$StoreConfigurationReportsTask;Lcom/texa/carelib/core/CareError;)V

    return-void
.end method

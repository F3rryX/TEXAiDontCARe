.class Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$HttpServiceVehicleConfigurationProcedureStatusReportStoring;
.super Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$HttpServiceVehicleConfigurationProcedureStatusBase;
.source "HttpServiceVehicleConfigurationProcedure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpServiceVehicleConfigurationProcedureStatusReportStoring"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;


# direct methods
.method private constructor <init>(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;)V
    .locals 1

    .line 155
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$HttpServiceVehicleConfigurationProcedureStatusReportStoring;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$HttpServiceVehicleConfigurationProcedureStatusBase;-><init>(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$1;)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$HttpServiceVehicleConfigurationProcedureStatusReportStoring;-><init>(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;)V

    return-void
.end method


# virtual methods
.method public isReportStoringAllowed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.class abstract Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$HttpServiceVehicleConfigurationProcedureStatusBase;
.super Ljava/lang/Object;
.source "HttpServiceVehicleConfigurationProcedure.java"

# interfaces
.implements Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$HttpServiceVehicleConfigurationProcedureStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HttpServiceVehicleConfigurationProcedureStatusBase"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;


# direct methods
.method private constructor <init>(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$HttpServiceVehicleConfigurationProcedureStatusBase;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$1;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure$HttpServiceVehicleConfigurationProcedureStatusBase;-><init>(Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationProcedure;)V

    return-void
.end method


# virtual methods
.method public isConfigurationDownloadAllowed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReportStoringAllowed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

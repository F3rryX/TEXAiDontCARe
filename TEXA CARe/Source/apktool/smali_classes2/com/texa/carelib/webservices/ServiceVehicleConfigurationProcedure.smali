.class public interface abstract Lcom/texa/carelib/webservices/ServiceVehicleConfigurationProcedure;
.super Ljava/lang/Object;
.source "ServiceVehicleConfigurationProcedure.java"


# virtual methods
.method public abstract downloadConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Lcom/texa/carelib/core/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/math/BigInteger;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/ServiceVehicleConfigurationDownloadedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract storeConfigurationReports(Ljava/lang/String;Ljava/util/List;Lcom/texa/carelib/core/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/texa/carelib/webservices/ConfigurationReport;",
            ">;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/ConfigurationReportStoredEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.class public Lcom/texa/carelib/webservices/ServiceVehicleConfigurationDownloadedEvent;
.super Lcom/texa/carelib/core/events/ErrorEventBase;
.source "ServiceVehicleConfigurationDownloadedEvent.java"


# instance fields
.field private final mConfigurationFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Lcom/texa/carelib/core/CareError;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p3}, Lcom/texa/carelib/core/events/ErrorEventBase;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    .line 31
    iput-object p2, p0, Lcom/texa/carelib/webservices/ServiceVehicleConfigurationDownloadedEvent;->mConfigurationFiles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getConfigurationFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/texa/carelib/webservices/ServiceVehicleConfigurationDownloadedEvent;->mConfigurationFiles:Ljava/util/List;

    return-object v0
.end method

.class public final synthetic Lcom/texa/carelib/webservices/internal/MockServiceVehicleInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/webservices/internal/MockServiceVehicleInfo;

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$2:Lcom/texa/carelib/core/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/webservices/internal/MockServiceVehicleInfo;[Ljava/lang/String;Lcom/texa/carelib/core/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/MockServiceVehicleInfo$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/webservices/internal/MockServiceVehicleInfo;

    iput-object p2, p0, Lcom/texa/carelib/webservices/internal/MockServiceVehicleInfo$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    iput-object p3, p0, Lcom/texa/carelib/webservices/internal/MockServiceVehicleInfo$$ExternalSyntheticLambda0;->f$2:Lcom/texa/carelib/core/Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/MockServiceVehicleInfo$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/webservices/internal/MockServiceVehicleInfo;

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/MockServiceVehicleInfo$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/MockServiceVehicleInfo$$ExternalSyntheticLambda0;->f$2:Lcom/texa/carelib/core/Callback;

    invoke-virtual {v0, v1, v2}, Lcom/texa/carelib/webservices/internal/MockServiceVehicleInfo;->lambda$loadVehicleInfo$0$com-texa-carelib-webservices-internal-MockServiceVehicleInfo([Ljava/lang/String;Lcom/texa/carelib/core/Callback;)V

    return-void
.end method

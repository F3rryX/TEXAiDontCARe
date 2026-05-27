.class public final synthetic Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;

.field public final synthetic f$1:[B

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/texa/carelib/core/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;[BLjava/lang/String;Lcom/texa/carelib/core/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;

    iput-object p2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$$ExternalSyntheticLambda0;->f$1:[B

    iput-object p3, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$$ExternalSyntheticLambda0;->f$3:Lcom/texa/carelib/core/Callback;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$$ExternalSyntheticLambda0;->f$1:[B

    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$$ExternalSyntheticLambda0;->f$3:Lcom/texa/carelib/core/Callback;

    check-cast p1, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->lambda$beginProtectionSessionWithHWToken$0$com-texa-carelib-webservices-internal-HttpServiceProtectionProcedure([BLjava/lang/String;Lcom/texa/carelib/core/Callback;Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;)V

    return-void
.end method

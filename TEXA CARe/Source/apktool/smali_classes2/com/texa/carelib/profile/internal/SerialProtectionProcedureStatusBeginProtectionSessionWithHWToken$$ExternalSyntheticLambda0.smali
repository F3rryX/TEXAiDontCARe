.class public final synthetic Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken;

    check-cast p1, Lcom/texa/carelib/webservices/events/BeginProtectionSessionCompletedEvent;

    invoke-virtual {v0, p1}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken;->lambda$init$0$com-texa-carelib-profile-internal-SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken(Lcom/texa/carelib/webservices/events/BeginProtectionSessionCompletedEvent;)V

    return-void
.end method

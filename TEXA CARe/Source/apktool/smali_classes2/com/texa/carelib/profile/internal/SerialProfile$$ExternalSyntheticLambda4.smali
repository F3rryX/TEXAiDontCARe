.class public final synthetic Lcom/texa/carelib/profile/internal/SerialProfile$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/profile/internal/SerialProfile;

.field public final synthetic f$1:Lcom/texa/carelib/core/Callback;

.field public final synthetic f$2:Lcom/texa/carelib/profile/events/AuthenticationCompletedEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/profile/internal/SerialProfile;Lcom/texa/carelib/core/Callback;Lcom/texa/carelib/profile/events/AuthenticationCompletedEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$$ExternalSyntheticLambda4;->f$0:Lcom/texa/carelib/profile/internal/SerialProfile;

    iput-object p2, p0, Lcom/texa/carelib/profile/internal/SerialProfile$$ExternalSyntheticLambda4;->f$1:Lcom/texa/carelib/core/Callback;

    iput-object p3, p0, Lcom/texa/carelib/profile/internal/SerialProfile$$ExternalSyntheticLambda4;->f$2:Lcom/texa/carelib/profile/events/AuthenticationCompletedEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile$$ExternalSyntheticLambda4;->f$0:Lcom/texa/carelib/profile/internal/SerialProfile;

    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$$ExternalSyntheticLambda4;->f$1:Lcom/texa/carelib/core/Callback;

    iget-object v2, p0, Lcom/texa/carelib/profile/internal/SerialProfile$$ExternalSyntheticLambda4;->f$2:Lcom/texa/carelib/profile/events/AuthenticationCompletedEvent;

    invoke-virtual {v0, v1, v2}, Lcom/texa/carelib/profile/internal/SerialProfile;->lambda$null$3$com-texa-carelib-profile-internal-SerialProfile(Lcom/texa/carelib/core/Callback;Lcom/texa/carelib/profile/events/AuthenticationCompletedEvent;)V

    return-void
.end method

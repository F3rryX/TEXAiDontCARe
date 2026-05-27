.class public final synthetic Lcom/texa/carelib/profile/internal/SerialProfile$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/profile/internal/SerialProfile;

.field public final synthetic f$1:Lcom/texa/carelib/communication/Message;

.field public final synthetic f$2:Lcom/texa/carelib/communication/DeviceInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/profile/internal/SerialProfile;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/communication/DeviceInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$$ExternalSyntheticLambda1;->f$0:Lcom/texa/carelib/profile/internal/SerialProfile;

    iput-object p2, p0, Lcom/texa/carelib/profile/internal/SerialProfile$$ExternalSyntheticLambda1;->f$1:Lcom/texa/carelib/communication/Message;

    iput-object p3, p0, Lcom/texa/carelib/profile/internal/SerialProfile$$ExternalSyntheticLambda1;->f$2:Lcom/texa/carelib/communication/DeviceInfo;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile$$ExternalSyntheticLambda1;->f$0:Lcom/texa/carelib/profile/internal/SerialProfile;

    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$$ExternalSyntheticLambda1;->f$1:Lcom/texa/carelib/communication/Message;

    iget-object v2, p0, Lcom/texa/carelib/profile/internal/SerialProfile$$ExternalSyntheticLambda1;->f$2:Lcom/texa/carelib/communication/DeviceInfo;

    check-cast p1, Lcom/texa/carelib/profile/events/AuthenticationCompletedEvent;

    invoke-virtual {v0, v1, v2, p1}, Lcom/texa/carelib/profile/internal/SerialProfile;->lambda$onErrorMessageReceived$1$com-texa-carelib-profile-internal-SerialProfile(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/communication/DeviceInfo;Lcom/texa/carelib/profile/events/AuthenticationCompletedEvent;)V

    return-void
.end method

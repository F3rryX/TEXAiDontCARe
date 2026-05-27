.class Lcom/texa/careapp/impactdetection/ImpactDetector$1;
.super Ljava/lang/Object;
.source "ImpactDetector.java"

# interfaces
.implements Ljava/beans/PropertyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/impactdetection/ImpactDetector;->listenOnCommunicationStatusChanges(Lcom/texa/carelib/communication/Communication;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/impactdetection/ImpactDetector;


# direct methods
.method constructor <init>(Lcom/texa/careapp/impactdetection/ImpactDetector;)V
    .locals 0

    .line 653
    iput-object p1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector$1;->this$0:Lcom/texa/careapp/impactdetection/ImpactDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 2

    .line 656
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    .line 658
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.texa.carelib.communication.Communication#PROPERTY_STATUS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 659
    iget-object p1, p0, Lcom/texa/careapp/impactdetection/ImpactDetector$1;->this$0:Lcom/texa/careapp/impactdetection/ImpactDetector;

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v1

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getCurrentDevice()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->onCommunicationStatusChanged(Lcom/texa/carelib/communication/CommunicationStatus;Lcom/texa/carelib/communication/DeviceInfo;)V

    :cond_0
    return-void
.end method

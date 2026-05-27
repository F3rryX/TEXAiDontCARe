.class Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$1;
.super Lcom/texa/carelib/care/impacts/ImpactDetectionListener;
.source "SosFeatureDefaultManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$1;->this$0:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;

    invoke-direct {p0}, Lcom/texa/carelib/care/impacts/ImpactDetectionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onImpactDetected(Lcom/texa/carelib/care/impacts/events/ImpactDetectedEvent;)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Lcom/texa/carelib/care/impacts/ImpactDetectionListener;->onImpactDetected(Lcom/texa/carelib/care/impacts/events/ImpactDetectedEvent;)V

    .line 88
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$1;->this$0:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->onCAReImpactDetected(Lcom/texa/carelib/care/impacts/events/ImpactDetectedEvent;)V

    return-void
.end method

.class public final synthetic Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/careapp/impactdetection/ImpactDetectorListener;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;

    return-void
.end method


# virtual methods
.method public final onImpactDetected(Lcom/texa/careapp/impactdetection/ImpactEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->onSmartPhoneImpactDetected(Lcom/texa/careapp/impactdetection/ImpactEvent;)V

    return-void
.end method

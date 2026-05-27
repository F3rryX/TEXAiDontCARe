.class Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled$2;
.super Ljava/lang/Object;
.source "SosFeatureEnabled.java"

# interfaces
.implements Lcom/texa/careapp/impactdetection/ImpactDetectorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled$2;->this$0:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImpactDetected(Lcom/texa/careapp/impactdetection/ImpactEvent;)V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Smart-phone CRASH DETECTED"

    .line 67
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p1}, Lcom/texa/careapp/impactdetection/ImpactEvent;->getImpactTime()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/texa/careapp/impactdetection/ImpactEvent;->getImpactTime()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 75
    :goto_0
    iget-object p1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled$2;->this$0:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;

    invoke-static {p1}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;->access$100(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled$2;->this$0:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;

    invoke-static {v1}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;->access$100(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    sget-object v3, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    invoke-virtual {v3}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->ordinal()I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->buildIntent(Landroid/content/Context;ILjava/util/Date;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

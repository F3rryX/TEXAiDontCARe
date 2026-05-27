.class Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled$1;
.super Lcom/texa/carelib/care/impacts/ImpactDetectionListener;
.source "SosFeatureEnabled.java"


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

    .line 45
    iput-object p1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled$1;->this$0:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;

    invoke-direct {p0}, Lcom/texa/carelib/care/impacts/ImpactDetectionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onImpactDetected(Lcom/texa/carelib/care/impacts/events/ImpactDetectedEvent;)V
    .locals 4

    .line 49
    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/events/ImpactDetectedEvent;->getImpact()Lcom/texa/carelib/care/impacts/Impact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/care/impacts/Impact;->getCrashReport()Lcom/texa/carelib/care/impacts/CrashReport;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/texa/carelib/care/impacts/CrashReportStatus;->Valid:Lcom/texa/carelib/care/impacts/CrashReportStatus;

    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/events/ImpactDetectedEvent;->getImpact()Lcom/texa/carelib/care/impacts/Impact;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/carelib/care/impacts/Impact;->getCrashReport()Lcom/texa/carelib/care/impacts/CrashReport;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/carelib/care/impacts/CrashReport;->getStatus()Lcom/texa/carelib/care/impacts/CrashReportStatus;

    move-result-object v3

    if-eq v0, v3, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    .line 52
    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/events/ImpactDetectedEvent;->getImpact()Lcom/texa/carelib/care/impacts/Impact;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/Impact;->getCrashReport()Lcom/texa/carelib/care/impacts/CrashReport;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/CrashReport;->getStatus()Lcom/texa/carelib/care/impacts/CrashReportStatus;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "Detected impact with status: %s"

    invoke-static {p1, v0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled$1;->this$0:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;

    invoke-static {v0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;->access$000(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;)Lcom/texa/careapp/impactdetection/ImpactDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->onCareImpactDetected()V

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "CARe CRASH DETECTED"

    .line 59
    invoke-static {v2, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled$1;->this$0:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;

    invoke-static {v0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;->access$100(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled$1;->this$0:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;

    invoke-static {v2}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;->access$100(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/events/ImpactDetectedEvent;->getImpact()Lcom/texa/carelib/care/impacts/Impact;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/Impact;->getDate()Ljava/util/Date;

    move-result-object p1

    sget-object v3, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    invoke-virtual {v3}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->ordinal()I

    move-result v3

    invoke-static {v2, v1, p1, v3}, Lcom/texa/careapp/app/sos/AutomaticSosActivity;->buildIntent(Landroid/content/Context;ILjava/util/Date;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

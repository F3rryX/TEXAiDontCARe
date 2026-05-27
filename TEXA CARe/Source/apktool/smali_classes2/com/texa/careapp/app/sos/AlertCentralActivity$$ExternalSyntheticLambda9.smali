.class public final synthetic Lcom/texa/careapp/app/sos/AlertCentralActivity$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/sos/AlertCentralActivity;

.field public final synthetic f$1:Lcom/texa/careapp/model/EmergencyInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/sos/AlertCentralActivity;Lcom/texa/careapp/model/EmergencyInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity$$ExternalSyntheticLambda9;->f$0:Lcom/texa/careapp/app/sos/AlertCentralActivity;

    iput-object p2, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity$$ExternalSyntheticLambda9;->f$1:Lcom/texa/careapp/model/EmergencyInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity$$ExternalSyntheticLambda9;->f$0:Lcom/texa/careapp/app/sos/AlertCentralActivity;

    iget-object v1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity$$ExternalSyntheticLambda9;->f$1:Lcom/texa/careapp/model/EmergencyInfo;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p1}, Lcom/texa/careapp/app/sos/AlertCentralActivity;->lambda$invokeServerApi$5$com-texa-careapp-app-sos-AlertCentralActivity(Lcom/texa/careapp/model/EmergencyInfo;Ljava/lang/Throwable;)V

    return-void
.end method

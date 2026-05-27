.class public final synthetic Lcom/texa/careapp/app/sos/AlertCentralActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/sos/AlertCentralActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/sos/AlertCentralActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity$$ExternalSyntheticLambda5;->f$0:Lcom/texa/careapp/app/sos/AlertCentralActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/sos/AlertCentralActivity$$ExternalSyntheticLambda5;->f$0:Lcom/texa/careapp/app/sos/AlertCentralActivity;

    check-cast p1, Lcom/texa/careapp/networking/response/ServerResponse;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/sos/AlertCentralActivity;->lambda$cancelAlert$2$com-texa-careapp-app-sos-AlertCentralActivity(Lcom/texa/careapp/networking/response/ServerResponse;)V

    return-void
.end method

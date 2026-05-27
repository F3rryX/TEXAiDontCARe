.class public final synthetic Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function3;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$$ExternalSyntheticLambda4;->f$0:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$$ExternalSyntheticLambda4;->f$0:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;

    check-cast p1, Lcom/texa/careapp/checks/Check$Result;

    check-cast p2, Ljava/util/List;

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {v0, p1, p2, p3}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->lambda$createObsWithServerResponse$3$com-texa-careapp-app-sos-featuremanager-SosFeatureDefaultManager(Lcom/texa/careapp/checks/Check$Result;Ljava/util/List;Ljava/lang/Long;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

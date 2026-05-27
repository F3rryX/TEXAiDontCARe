.class public final synthetic Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$$ExternalSyntheticLambda5;->f$0:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager$$ExternalSyntheticLambda5;->f$0:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;

    check-cast p1, Lcom/texa/careapp/networking/response/ServiceListResponse;

    invoke-static {v0, p1}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;->$r8$lambda$kNDqBtpoA17RwFCuS_PhqZInS5U(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;Lcom/texa/careapp/networking/response/ServiceListResponse;)Lio/reactivex/Observable;

    move-result-object p1

    check-cast p1, Lio/reactivex/ObservableSource;

    return-object p1
.end method

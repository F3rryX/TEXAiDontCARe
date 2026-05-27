.class public final synthetic Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/service/CareService;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/service/CareService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda32;->f$0:Lcom/texa/careapp/app/service/CareService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda32;->f$0:Lcom/texa/careapp/app/service/CareService;

    check-cast p1, Lcom/texa/carelib/profile/events/AuthenticationErrorEvent;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/service/CareService;->lambda$setupCareLib$17$com-texa-careapp-app-service-CareService(Lcom/texa/carelib/profile/events/AuthenticationErrorEvent;)V

    return-void
.end method

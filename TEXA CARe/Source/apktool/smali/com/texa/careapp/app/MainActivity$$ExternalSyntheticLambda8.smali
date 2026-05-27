.class public final synthetic Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda8;->f$0:Lcom/texa/careapp/app/MainActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda8;->f$0:Lcom/texa/careapp/app/MainActivity;

    check-cast p1, Lcom/texa/careapp/networking/response/UserVehicleListResponse;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/MainActivity;->lambda$getVehiclesFromServer$2$com-texa-careapp-app-MainActivity(Lcom/texa/careapp/networking/response/UserVehicleListResponse;)V

    return-void
.end method

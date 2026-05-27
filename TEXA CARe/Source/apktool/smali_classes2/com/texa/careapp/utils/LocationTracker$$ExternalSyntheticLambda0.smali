.class public final synthetic Lcom/texa/careapp/utils/LocationTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/utils/LocationTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/utils/LocationTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/utils/LocationTracker$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/utils/LocationTracker;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/utils/LocationTracker$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/utils/LocationTracker;

    check-cast p1, Lcom/texa/careapp/model/VehicleParam;

    check-cast p2, Lcom/texa/careapp/model/VehicleParam;

    invoke-static {v0, p1, p2}, Lcom/texa/careapp/utils/LocationTracker;->$r8$lambda$peuSKgUvh4EG1MZz8ogaol-_lcE(Lcom/texa/careapp/utils/LocationTracker;Lcom/texa/careapp/model/VehicleParam;Lcom/texa/careapp/model/VehicleParam;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

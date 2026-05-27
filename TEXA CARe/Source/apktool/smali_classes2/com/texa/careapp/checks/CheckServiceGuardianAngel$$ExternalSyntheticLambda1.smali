.class public final synthetic Lcom/texa/careapp/checks/CheckServiceGuardianAngel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/checks/CheckServiceGuardianAngel;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/checks/CheckServiceGuardianAngel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/checks/CheckServiceGuardianAngel$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/checks/CheckServiceGuardianAngel;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/checks/CheckServiceGuardianAngel$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/checks/CheckServiceGuardianAngel;

    check-cast p1, Lcom/texa/careapp/model/ServiceDataModel;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v0, p1, p2}, Lcom/texa/careapp/checks/CheckServiceGuardianAngel;->$r8$lambda$WMtjXVKem9rLJZc6_tAp-0-ys2U(Lcom/texa/careapp/checks/CheckServiceGuardianAngel;Lcom/texa/careapp/model/ServiceDataModel;Ljava/lang/Integer;)Lcom/texa/careapp/checks/Check$Result;

    move-result-object p1

    return-object p1
.end method

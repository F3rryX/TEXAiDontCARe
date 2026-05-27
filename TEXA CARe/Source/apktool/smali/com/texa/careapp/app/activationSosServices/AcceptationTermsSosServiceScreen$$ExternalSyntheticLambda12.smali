.class public final synthetic Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda12;->f$0:Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda12;->f$0:Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;

    check-cast p1, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;

    invoke-static {v0, p1}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->$r8$lambda$gQvw30P8e5SSpvKqAnhqmT0Vpvk(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;)Lio/reactivex/Observable;

    move-result-object p1

    check-cast p1, Lio/reactivex/ObservableSource;

    return-object p1
.end method

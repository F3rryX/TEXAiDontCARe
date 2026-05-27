.class public final synthetic Lcom/texa/careapp/utils/MechanicDataManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/ObservableTransformer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/utils/MechanicDataManager;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/utils/MechanicDataManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/utils/MechanicDataManager$$ExternalSyntheticLambda2;->f$0:Lcom/texa/careapp/utils/MechanicDataManager;

    iput-object p2, p0, Lcom/texa/careapp/utils/MechanicDataManager$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/utils/MechanicDataManager$$ExternalSyntheticLambda2;->f$0:Lcom/texa/careapp/utils/MechanicDataManager;

    iget-object v1, p0, Lcom/texa/careapp/utils/MechanicDataManager$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/texa/careapp/utils/MechanicDataManager;->lambda$logSource$6$com-texa-careapp-utils-MechanicDataManager(Ljava/lang/String;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method

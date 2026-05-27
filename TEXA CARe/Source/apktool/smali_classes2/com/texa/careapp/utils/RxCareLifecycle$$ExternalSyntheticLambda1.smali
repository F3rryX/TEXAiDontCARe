.class public final synthetic Lcom/texa/careapp/utils/RxCareLifecycle$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/ObservableTransformer;


# instance fields
.field public final synthetic f$0:Lio/reactivex/Observable;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/Observable;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/utils/RxCareLifecycle$$ExternalSyntheticLambda1;->f$0:Lio/reactivex/Observable;

    iput-object p2, p0, Lcom/texa/careapp/utils/RxCareLifecycle$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/utils/RxCareLifecycle$$ExternalSyntheticLambda1;->f$0:Lio/reactivex/Observable;

    iget-object v1, p0, Lcom/texa/careapp/utils/RxCareLifecycle$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lcom/texa/careapp/utils/RxCareLifecycle;->lambda$bindUntilEvent$7(Lio/reactivex/Observable;Ljava/lang/Object;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method

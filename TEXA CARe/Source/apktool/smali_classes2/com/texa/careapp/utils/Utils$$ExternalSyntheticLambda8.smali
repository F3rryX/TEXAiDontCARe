.class public final synthetic Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/ObservableTransformer;


# static fields
.field public static final synthetic INSTANCE:Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda8;-><init>()V

    sput-object v0, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda8;->INSTANCE:Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->lambda$applyNotNullFilter$5(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/MaybeTransformer;


# static fields
.field public static final synthetic INSTANCE:Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda5;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda5;->INSTANCE:Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda5;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lio/reactivex/Maybe;)Lio/reactivex/MaybeSource;
    .locals 0

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->lambda$applyMaybeSchedulers$6(Lio/reactivex/Maybe;)Lio/reactivex/MaybeSource;

    move-result-object p1

    return-object p1
.end method

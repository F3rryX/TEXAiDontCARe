.class public final synthetic Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda2;->INSTANCE:Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->lambda$applyNotNullFilter$4(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

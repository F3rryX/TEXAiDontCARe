.class public final synthetic Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda12;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda12;-><init>()V

    sput-object v0, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda12;->INSTANCE:Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda12;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->lambda$new$7(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

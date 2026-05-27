.class public final synthetic Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda19;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda19;-><init>()V

    sput-object v0, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda19;->INSTANCE:Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen$$ExternalSyntheticLambda19;

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

    check-cast p1, Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;

    invoke-static {p1}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;->lambda$checkLockResourceAvailable$15(Lcom/texa/careapp/app/activationSosServices/entity/PurchaseLockResponseEntity;)Z

    move-result p1

    return p1
.end method

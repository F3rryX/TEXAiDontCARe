.class public final synthetic Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda14;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda14;-><init>()V

    sput-object v0, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda14;->INSTANCE:Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda14;

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

    check-cast p1, Lcom/texa/careapp/networking/response/UserVehicleListResponse;

    invoke-static {p1}, Lcom/texa/careapp/utils/LoginHelperRx;->lambda$getUserVehicles$10(Lcom/texa/careapp/networking/response/UserVehicleListResponse;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method

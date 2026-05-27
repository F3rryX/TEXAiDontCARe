.class public final synthetic Lcom/texa/careapp/app/SplashActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/texa/careapp/app/SplashActivity$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/texa/careapp/app/SplashActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/texa/careapp/app/SplashActivity$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/texa/careapp/app/SplashActivity$$ExternalSyntheticLambda2;->INSTANCE:Lcom/texa/careapp/app/SplashActivity$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/texa/careapp/networking/response/UserResponse;

    invoke-static {p1}, Lcom/texa/careapp/app/SplashActivity;->lambda$checkUserTerms$2(Lcom/texa/careapp/networking/response/UserResponse;)V

    return-void
.end method

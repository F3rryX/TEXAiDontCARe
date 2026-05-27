.class public final synthetic Lat/favre/lib/armadillo/BrokenBcryptKeyStretcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;


# static fields
.field public static final synthetic INSTANCE:Lat/favre/lib/armadillo/BrokenBcryptKeyStretcher$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lat/favre/lib/armadillo/BrokenBcryptKeyStretcher$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lat/favre/lib/armadillo/BrokenBcryptKeyStretcher$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lat/favre/lib/armadillo/BrokenBcryptKeyStretcher$$ExternalSyntheticLambda0;->INSTANCE:Lat/favre/lib/armadillo/BrokenBcryptKeyStretcher$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final derive([B)[B
    .locals 0

    invoke-static {p1}, Lat/favre/lib/armadillo/BrokenBcryptKeyStretcher;->lambda$bcrypt$0([B)[B

    move-result-object p1

    return-object p1
.end method

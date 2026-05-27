.class public final synthetic Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function4;


# static fields
.field public static final synthetic INSTANCE:Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda1;->INSTANCE:Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/math/BigInteger;

    check-cast p4, Ljava/lang/Integer;

    invoke-static {p1, p2, p3, p4}, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->lambda$observeCareInfos$11(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/Integer;)Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;

    move-result-object p1

    return-object p1
.end method

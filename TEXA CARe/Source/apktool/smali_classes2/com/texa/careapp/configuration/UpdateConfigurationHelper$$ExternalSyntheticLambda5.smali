.class public final synthetic Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda5;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda5;->INSTANCE:Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda5;

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

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->lambda$observeCareInfos$10(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

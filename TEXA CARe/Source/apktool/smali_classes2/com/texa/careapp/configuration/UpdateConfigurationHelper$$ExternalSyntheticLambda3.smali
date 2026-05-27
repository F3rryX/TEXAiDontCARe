.class public final synthetic Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda3;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda3;->INSTANCE:Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda3;

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

    check-cast p1, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    check-cast p1, Lio/reactivex/ObservableSource;

    return-object p1
.end method

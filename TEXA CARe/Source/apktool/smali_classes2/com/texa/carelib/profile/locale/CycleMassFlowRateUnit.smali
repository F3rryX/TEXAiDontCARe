.class public enum Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;
.super Ljava/lang/Enum;
.source "CycleMassFlowRateUnit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;

.field public static final enum GRAIN_PER_CYCLE:Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;

.field public static final enum MILLIGRAM_PER_CYCLE:Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 11
    new-instance v0, Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit$1;

    const-string v1, "MILLIGRAM_PER_CYCLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;->MILLIGRAM_PER_CYCLE:Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;

    .line 23
    new-instance v1, Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit$2;

    const-string v3, "GRAIN_PER_CYCLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;->GRAIN_PER_CYCLE:Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 10
    sput-object v3, Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;->$VALUES:[Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/texa/carelib/profile/locale/CycleMassFlowRateUnit$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;
    .locals 1

    .line 10
    const-class v0, Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;
    .locals 1

    .line 10
    sget-object v0, Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;->$VALUES:[Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;

    invoke-virtual {v0}, [Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;

    return-object v0
.end method


# virtual methods
.method public convert(DLcom/texa/carelib/profile/locale/CycleMassFlowRateUnit;)J
    .locals 0

    .line 54
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toGrainPerCycle(D)D
    .locals 0

    .line 76
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

.method public toMilligramPerCycle(D)D
    .locals 0

    .line 65
    new-instance p1, Ljava/lang/AbstractMethodError;

    invoke-direct {p1}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p1
.end method

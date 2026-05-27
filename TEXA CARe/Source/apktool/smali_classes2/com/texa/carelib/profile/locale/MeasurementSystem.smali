.class public final enum Lcom/texa/carelib/profile/locale/MeasurementSystem;
.super Ljava/lang/Enum;
.source "MeasurementSystem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/profile/locale/MeasurementSystem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/profile/locale/MeasurementSystem;

.field private static final CONFIG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/texa/carelib/profile/locale/MeasurementSystem;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final enum ImperialUK:Lcom/texa/carelib/profile/locale/MeasurementSystem;

.field public static final enum International:Lcom/texa/carelib/profile/locale/MeasurementSystem;

.field public static final enum UnitedStates:Lcom/texa/carelib/profile/locale/MeasurementSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 19
    new-instance v0, Lcom/texa/carelib/profile/locale/MeasurementSystem;

    const-string v1, "International"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/profile/locale/MeasurementSystem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/profile/locale/MeasurementSystem;->International:Lcom/texa/carelib/profile/locale/MeasurementSystem;

    .line 23
    new-instance v1, Lcom/texa/carelib/profile/locale/MeasurementSystem;

    const-string v3, "ImperialUK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/profile/locale/MeasurementSystem;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/profile/locale/MeasurementSystem;->ImperialUK:Lcom/texa/carelib/profile/locale/MeasurementSystem;

    .line 27
    new-instance v3, Lcom/texa/carelib/profile/locale/MeasurementSystem;

    const-string v5, "UnitedStates"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/profile/locale/MeasurementSystem;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/profile/locale/MeasurementSystem;->UnitedStates:Lcom/texa/carelib/profile/locale/MeasurementSystem;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/texa/carelib/profile/locale/MeasurementSystem;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 15
    sput-object v5, Lcom/texa/carelib/profile/locale/MeasurementSystem;->$VALUES:[Lcom/texa/carelib/profile/locale/MeasurementSystem;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/texa/carelib/profile/locale/MeasurementSystem;->CONFIG:Ljava/util/Map;

    const-string v1, "US"

    const-string v2, "USA"

    .line 61
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forCountry(Ljava/lang/String;)Lcom/texa/carelib/profile/locale/MeasurementSystem;
    .locals 3

    .line 49
    sget-object v0, Lcom/texa/carelib/profile/locale/MeasurementSystem;->CONFIG:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 50
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/profile/locale/MeasurementSystem;

    return-object p0

    .line 55
    :cond_1
    sget-object p0, Lcom/texa/carelib/profile/locale/MeasurementSystem;->International:Lcom/texa/carelib/profile/locale/MeasurementSystem;

    return-object p0
.end method

.method public static getDefault()Lcom/texa/carelib/profile/locale/MeasurementSystem;
    .locals 1

    .line 38
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/carelib/profile/locale/MeasurementSystem;->forCountry(Ljava/lang/String;)Lcom/texa/carelib/profile/locale/MeasurementSystem;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/profile/locale/MeasurementSystem;
    .locals 1

    .line 15
    const-class v0, Lcom/texa/carelib/profile/locale/MeasurementSystem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/profile/locale/MeasurementSystem;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/profile/locale/MeasurementSystem;
    .locals 1

    .line 15
    sget-object v0, Lcom/texa/carelib/profile/locale/MeasurementSystem;->$VALUES:[Lcom/texa/carelib/profile/locale/MeasurementSystem;

    invoke-virtual {v0}, [Lcom/texa/carelib/profile/locale/MeasurementSystem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/profile/locale/MeasurementSystem;

    return-object v0
.end method

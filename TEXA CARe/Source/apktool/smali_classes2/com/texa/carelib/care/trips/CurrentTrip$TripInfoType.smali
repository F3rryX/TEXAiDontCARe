.class public final enum Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;
.super Ljava/lang/Enum;
.source "CurrentTrip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/trips/CurrentTrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TripInfoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;

.field public static final enum Begin:Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;

.field public static final enum End:Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;

.field public static final enum Statistics:Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 66
    new-instance v0, Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;

    const-string v1, "Begin"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;->Begin:Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;

    .line 70
    new-instance v1, Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;

    const-string v3, "End"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;->End:Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;

    .line 74
    new-instance v3, Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;

    const-string v5, "Statistics"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;->Statistics:Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 62
    sput-object v5, Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;->$VALUES:[Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;
    .locals 1

    .line 62
    const-class v0, Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;
    .locals 1

    .line 62
    sget-object v0, Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;->$VALUES:[Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;

    invoke-virtual {v0}, [Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;

    return-object v0
.end method

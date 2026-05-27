.class public final enum Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;
.super Ljava/lang/Enum;
.source "TripEndInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/trips/TripEndInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TripEndCause"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

.field public static final enum CommunicationLost:Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

.field public static final enum ExternalCommand:Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

.field public static final enum LowBatteryVoltage:Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

.field public static final enum LowRPM:Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

.field public static final enum Undef:Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 59
    new-instance v0, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    const-string v1, "Undef"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;->Undef:Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    .line 63
    new-instance v1, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    const-string v3, "ExternalCommand"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;->ExternalCommand:Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    .line 67
    new-instance v3, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    const-string v5, "LowRPM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;->LowRPM:Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    .line 71
    new-instance v5, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    const-string v7, "CommunicationLost"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;->CommunicationLost:Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    .line 75
    new-instance v7, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    const-string v9, "LowBatteryVoltage"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;->LowBatteryVoltage:Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 55
    sput-object v9, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;->$VALUES:[Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;
    .locals 1

    .line 55
    const-class v0, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;
    .locals 1

    .line 55
    sget-object v0, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;->$VALUES:[Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    invoke-virtual {v0}, [Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    return-object v0
.end method

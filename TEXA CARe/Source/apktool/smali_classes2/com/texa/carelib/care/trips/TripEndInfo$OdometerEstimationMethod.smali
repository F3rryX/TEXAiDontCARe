.class public final enum Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;
.super Ljava/lang/Enum;
.source "TripEndInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/trips/TripEndInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OdometerEstimationMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

.field public static final enum Diagnostic:Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

.field public static final enum Estimated:Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

.field public static final enum Undef:Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 41
    new-instance v0, Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

    const-string v1, "Undef"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;->Undef:Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

    .line 45
    new-instance v1, Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

    const-string v3, "Diagnostic"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;->Diagnostic:Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

    .line 49
    new-instance v3, Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

    const-string v5, "Estimated"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;->Estimated:Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 37
    sput-object v5, Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;->$VALUES:[Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;
    .locals 1

    .line 37
    const-class v0, Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;
    .locals 1

    .line 37
    sget-object v0, Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;->$VALUES:[Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

    invoke-virtual {v0}, [Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

    return-object v0
.end method

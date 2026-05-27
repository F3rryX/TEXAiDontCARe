.class public abstract Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;
.super Ljava/lang/Object;
.source "ScoreUpdateEvent.java"


# static fields
.field private static final TIMESTAMP_PATTERN:Ljava/lang/String; = "dd-MM-yyyy HH:mm:ss"


# instance fields
.field private final baseScore:Lcom/texa/care/eco_driving/score/BaseScore;

.field protected final extra:Ljava/util/HashMap;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final hardwareId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final odometer:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final prevScore:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final readableType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final rideId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final score:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final timestamp:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final tripNumber:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final uuid:Ljava/util/UUID;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLcom/texa/care/eco_driving/score/BaseScore;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->extra:Ljava/util/HashMap;

    .line 63
    invoke-virtual {p3}, Lcom/texa/care/eco_driving/score/BaseScore;->getScore()I

    move-result v0

    iput v0, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->score:I

    .line 64
    iput-wide p1, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->timestamp:J

    .line 65
    invoke-virtual {p3}, Lcom/texa/care/eco_driving/score/BaseScore;->getLastNotifiedScore()I

    move-result p1

    iput p1, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->prevScore:I

    .line 66
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->uuid:Ljava/util/UUID;

    .line 67
    invoke-virtual {p3}, Lcom/texa/care/eco_driving/score/BaseScore;->getTripNumber()Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->tripNumber:Ljava/lang/Long;

    .line 68
    invoke-virtual {p3}, Lcom/texa/care/eco_driving/score/BaseScore;->getOdometer()F

    move-result p1

    iput p1, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->odometer:F

    .line 69
    invoke-virtual {p3}, Lcom/texa/care/eco_driving/score/BaseScore;->getTripId()Lcom/texa/care/eco_driving/TripID;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/texa/care/eco_driving/score/BaseScore;->getTripId()Lcom/texa/care/eco_driving/TripID;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/eco_driving/TripID;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->rideId:Ljava/lang/String;

    .line 70
    invoke-virtual {p3}, Lcom/texa/care/eco_driving/score/BaseScore;->getTripId()Lcom/texa/care/eco_driving/TripID;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lcom/texa/care/eco_driving/score/BaseScore;->getTripId()Lcom/texa/care/eco_driving/TripID;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/eco_driving/TripID;->getSerialNumber()Ljava/lang/String;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->hardwareId:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->baseScore:Lcom/texa/care/eco_driving/score/BaseScore;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->getJson()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "ECO-DRIVING-LIB current tripId ScoreUpdateEvent %s"

    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->getType()Lcom/texa/care/eco_driving/score/ScoreType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/eco_driving/score/ScoreType;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->readableType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/texa/care/eco_driving/score/BaseScore;)V
    .locals 2

    .line 78
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/score/BaseScore;->getContextDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;-><init>(JLcom/texa/care/eco_driving/score/BaseScore;)V

    return-void
.end method


# virtual methods
.method public getBaseScore()Lcom/texa/care/eco_driving/score/BaseScore;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->baseScore:Lcom/texa/care/eco_driving/score/BaseScore;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 4

    .line 111
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "dd-MM-yyyy HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Type: "

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " score: "

    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->score:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " timestamp: "

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " prevScore: "

    .line 116
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->prevScore:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    iget-object v0, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->tripNumber:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const-string v0, " tripNumber: "

    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->tripNumber:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHardwareId()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->hardwareId:Ljava/lang/String;

    return-object v0
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    .line 106
    invoke-static {}, Lcom/texa/care/eco_driving/Utils;->buildGSONInstance()Lcom/google/gson/Gson;

    move-result-object v0

    .line 107
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOdometer()F
    .locals 1

    .line 98
    iget v0, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->odometer:F

    return v0
.end method

.method public getPrevScore()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->prevScore:I

    return v0
.end method

.method public getReadableType()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->readableType:Ljava/lang/String;

    return-object v0
.end method

.method public getRideId()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->rideId:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->score:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 94
    iget-wide v0, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->timestamp:J

    return-wide v0
.end method

.method public getTripNumber()Ljava/lang/Long;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->tripNumber:Ljava/lang/Long;

    return-object v0
.end method

.method public abstract getType()Lcom/texa/care/eco_driving/score/ScoreType;
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->uuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScoreUpdateEvent{uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", odometer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->odometer:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", tripNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->tripNumber:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hardwareId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->hardwareId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", rideId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->rideId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", score="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->score:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", prevScore="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->prevScore:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", readableType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->readableType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->extra:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

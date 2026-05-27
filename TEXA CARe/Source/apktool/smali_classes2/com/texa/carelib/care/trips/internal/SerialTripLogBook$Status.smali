.class abstract enum Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;
.super Ljava/lang/Enum;
.source "SerialTripLogBook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;

.field public static final enum DownloadTrips:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;

.field public static final enum EraseTrips:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;

.field public static final enum Idle:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 224
    new-instance v0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$1;

    const-string v1, "Idle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;->Idle:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;

    .line 234
    new-instance v1, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$2;

    const-string v3, "EraseTrips"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;->EraseTrips:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;

    .line 277
    new-instance v3, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3;

    const-string v5, "DownloadTrips"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;->DownloadTrips:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 223
    sput-object v5, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;->$VALUES:[Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 223
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/texa/carelib/care/trips/internal/SerialTripLogBook$1;)V
    .locals 0

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;
    .locals 1

    .line 223
    const-class v0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;
    .locals 1

    .line 223
    sget-object v0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;->$VALUES:[Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;

    invoke-virtual {v0}, [Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;

    return-object v0
.end method


# virtual methods
.method abstract canEraseTrips()Z
.end method

.method abstract canReadTrips()Z
.end method

.method abstract isErasingTripInfo()Z
.end method

.method abstract isReadingTripInfo()Z
.end method

.method abstract onMessageReceived(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
.end method

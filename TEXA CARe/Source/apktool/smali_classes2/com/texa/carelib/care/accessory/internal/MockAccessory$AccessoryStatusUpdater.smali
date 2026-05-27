.class Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;
.super Ljava/lang/Object;
.source "MockAccessory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/accessory/internal/MockAccessory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessoryStatusUpdater"
.end annotation


# instance fields
.field private mAccessory:Lcom/texa/carelib/care/accessory/internal/MockAccessory;

.field private final mStates:[I

.field private mStatusIdx:I

.field private mTimer:Ljava/util/Timer;

.field final synthetic this$0:Lcom/texa/carelib/care/accessory/internal/MockAccessory;


# direct methods
.method constructor <init>(Lcom/texa/carelib/care/accessory/internal/MockAccessory;Lcom/texa/carelib/care/accessory/internal/MockAccessory;)V
    .locals 0

    .line 807
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;->this$0:Lcom/texa/carelib/care/accessory/internal/MockAccessory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 808
    iput-object p2, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;->mAccessory:Lcom/texa/carelib/care/accessory/internal/MockAccessory;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 810
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;->mStates:[I

    const/4 p1, 0x0

    .line 816
    iput p1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;->mStatusIdx:I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
    .end array-data
.end method

.method static synthetic access$000(Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;)I
    .locals 0

    .line 800
    iget p0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;->mStatusIdx:I

    return p0
.end method

.method static synthetic access$002(Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;I)I
    .locals 0

    .line 800
    iput p1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;->mStatusIdx:I

    return p1
.end method

.method static synthetic access$100(Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;)[I
    .locals 0

    .line 800
    iget-object p0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;->mStates:[I

    return-object p0
.end method

.method private beginUpdateAccessoryStatus()V
    .locals 7

    .line 830
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 831
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 832
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    .line 833
    iput-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;->mTimer:Ljava/util/Timer;

    .line 836
    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;->mTimer:Ljava/util/Timer;

    .line 837
    new-instance v2, Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater$1;

    invoke-direct {v2, p0}, Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater$1;-><init>(Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;)V

    const-wide/16 v3, 0x9c4

    const-wide/16 v5, 0x9c4

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private cancel()V
    .locals 1

    .line 820
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 822
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    .line 823
    iput-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;->mTimer:Ljava/util/Timer;

    :cond_0
    const/4 v0, 0x0

    .line 826
    iput v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;->mStatusIdx:I

    return-void
.end method


# virtual methods
.method public onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 1

    .line 853
    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p1

    .line 855
    sget-object v0, Lcom/texa/carelib/care/accessory/internal/MockAccessory$1;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    invoke-virtual {p1}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 864
    :cond_0
    invoke-direct {p0}, Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;->cancel()V

    goto :goto_0

    .line 857
    :cond_1
    invoke-direct {p0}, Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;->beginUpdateAccessoryStatus()V

    :goto_0
    return-void
.end method

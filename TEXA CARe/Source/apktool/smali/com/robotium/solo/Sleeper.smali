.class Lcom/robotium/solo/Sleeper;
.super Ljava/lang/Object;
.source "Sleeper.java"


# instance fields
.field private miniPauseDuration:I

.field private pauseDuration:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/robotium/solo/Sleeper;->pauseDuration:I

    .line 21
    iput p2, p0, Lcom/robotium/solo/Sleeper;->miniPauseDuration:I

    return-void
.end method


# virtual methods
.method public sleep()V
    .locals 1

    .line 29
    iget v0, p0, Lcom/robotium/solo/Sleeper;->pauseDuration:I

    invoke-virtual {p0, v0}, Lcom/robotium/solo/Sleeper;->sleep(I)V

    return-void
.end method

.method public sleep(I)V
    .locals 2

    int-to-long v0, p1

    .line 50
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public sleepMini()V
    .locals 1

    .line 38
    iget v0, p0, Lcom/robotium/solo/Sleeper;->miniPauseDuration:I

    invoke-virtual {p0, v0}, Lcom/robotium/solo/Sleeper;->sleep(I)V

    return-void
.end method

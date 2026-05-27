.class public Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;
.super Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;
.source "MockImpactDetection.java"


# static fields
.field private static final DEFAULT_CRASH_ONE_SHOT:Z = true

.field private static final DEFAULT_CRASH_PERIOD:I = 0xea60

.field private static final ENCODING_ISO_8859_1:Ljava/lang/String; = "ISO-8859-1"

.field public static final TAG:Ljava/lang/String; = "MockImpactDetection"


# instance fields
.field private mEraseImpactsCallback:Lcom/texa/carelib/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/care/impacts/events/ImpactDataErasedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mTempImpacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/impacts/Impact;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadLoadImpacts:Ljava/lang/Thread;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;-><init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->mTempImpacts:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;Ljava/util/Date;)Lcom/texa/carelib/care/impacts/CrashReport;
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->createFakeCrashReport(Ljava/util/Date;)Lcom/texa/carelib/care/impacts/CrashReport;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$101(Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;Ljava/lang/Float;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->setAccelerationThreshold(Ljava/lang/Float;)V

    return-void
.end method

.method static synthetic access$201(Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;Ljava/lang/Float;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->setSpeedTimeout(Ljava/lang/Float;)V

    return-void
.end method

.method static synthetic access$301(Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;Ljava/lang/Float;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->setTimeOverThreshold(Ljava/lang/Float;)V

    return-void
.end method

.method private createFakeCrashReport(Ljava/util/Date;)Lcom/texa/carelib/care/impacts/CrashReport;
    .locals 7

    const-string v0, "AekYAAIHAAHmyhtWAQDEEgEAAAAAAAAQ"

    const/4 v1, 0x0

    .line 86
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    .line 87
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    .line 91
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-char v1, v2

    const/16 v2, 0x8

    aput-char v1, v0, v2

    .line 92
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/32 v5, 0xff00

    and-long/2addr v3, v5

    shr-long v1, v3, v2

    long-to-int v2, v1

    int-to-char v1, v2

    const/16 v2, 0x9

    aput-char v1, v0, v2

    .line 93
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/32 v3, 0xff0000

    and-long/2addr v1, v3

    const/16 v3, 0x10

    shr-long/2addr v1, v3

    long-to-int v2, v1

    int-to-char v1, v2

    const/16 v2, 0xa

    aput-char v1, v0, v2

    .line 94
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/32 v3, -0x1000000

    and-long/2addr v1, v3

    const/16 p1, 0x18

    shr-long/2addr v1, p1

    long-to-int p1, v1

    int-to-char p1, p1

    const/16 v1, 0xb

    aput-char p1, v0, v1

    .line 96
    new-instance p1, Lcom/texa/carelib/care/impacts/internal/CrashReportFactory;

    invoke-direct {p1}, Lcom/texa/carelib/care/impacts/internal/CrashReportFactory;-><init>()V

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/ConversionUtils;->toByteArray([C)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/carelib/care/impacts/internal/CrashReportFactory;->create([B)Lcom/texa/carelib/care/impacts/CrashReport;

    move-result-object p1

    return-object p1
.end method

.method private startTimer()V
    .locals 9

    .line 101
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.texa.carelib.care.impacts.ImpactDetection#EXTRA_CRASH_ONE_SHOT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 103
    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const v3, 0xea60

    const-string v4, "com.texa.carelib.care.impacts.ImpactDetection#EXTRA_CRASH_PERIOD"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 105
    new-instance v4, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection$1;

    invoke-direct {v4, p0}, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection$1;-><init>(Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;)V

    if-lez v1, :cond_1

    .line 118
    new-instance v3, Ljava/util/Timer;

    const-string v5, "Timer_MockCrash"

    invoke-direct {v3, v5, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v3, p0, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    int-to-long v0, v1

    .line 120
    invoke-virtual {v3, v4, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    :cond_0
    int-to-long v7, v1

    move-wide v5, v7

    .line 122
    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private stopTimer()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 131
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->mTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method


# virtual methods
.method public eraseImpacts(Lcom/texa/carelib/core/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/care/impacts/events/ImpactDataErasedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->mEraseImpactsCallback:Lcom/texa/carelib/core/Callback;

    if-nez v0, :cond_0

    .line 148
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->mEraseImpactsCallback:Lcom/texa/carelib/core/Callback;

    .line 150
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection$$ExternalSyntheticLambda2;-><init>(Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;Lcom/texa/carelib/core/Callback;)V

    const-string p1, "Thread_eraseImpacts"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 166
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 167
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 145
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/OperationAlreadyRunningException;

    invoke-direct {p1}, Lcom/texa/carelib/core/OperationAlreadyRunningException;-><init>()V

    throw p1

    .line 141
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->stopTimer()V

    .line 59
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public isReadingImpactData()Z
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->mThreadLoadImpacts:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$eraseImpacts$0$com-texa-carelib-care-impacts-internal-MockImpactDetection(Lcom/texa/carelib/core/Callback;)V
    .locals 2

    const-wide/16 v0, 0x1f4

    .line 152
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 156
    :goto_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->clearImpacts()V

    .line 157
    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->clearAccelerationEvents()V

    .line 158
    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->clearAccelerationEventsLPM()V

    .line 159
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->mTempImpacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->mEraseImpactsCallback:Lcom/texa/carelib/core/Callback;

    .line 163
    new-instance v1, Lcom/texa/carelib/care/impacts/events/ImpactDataErasedEvent;

    invoke-direct {v1, p0, v0}, Lcom/texa/carelib/care/impacts/events/ImpactDataErasedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p1, v1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$loadCrashConfigurationValues$2$com-texa-carelib-care-impacts-internal-MockImpactDetection()V
    .locals 3

    const-wide/16 v0, 0x1f4

    .line 204
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    :catch_0
    sget-object v0, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Could not wait.."

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/high16 v0, 0x3fa00000    # 1.25f

    .line 209
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->access$101(Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;Ljava/lang/Float;)V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 210
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->access$201(Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;Ljava/lang/Float;)V

    const/high16 v0, 0x41c80000    # 25.0f

    .line 211
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->access$301(Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;Ljava/lang/Float;)V

    return-void
.end method

.method public synthetic lambda$loadImpacts$1$com-texa-carelib-care-impacts-internal-MockImpactDetection(Lcom/texa/carelib/care/impacts/ImpactDataDownloadListener;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 183
    :try_start_0
    new-instance v1, Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadProgressChangedEvent;

    int-to-float v2, v0

    invoke-direct {v1, p0, v2}, Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadProgressChangedEvent;-><init>(Ljava/lang/Object;F)V

    invoke-interface {p1, v1}, Lcom/texa/carelib/care/impacts/ImpactDataDownloadListener;->onImpactDataDownloadProgressChanged(Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadProgressChangedEvent;)V

    const-wide/16 v1, 0x32

    .line 184
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->mTempImpacts:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->addImpacts(Ljava/util/List;)V

    .line 191
    new-instance v0, Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadCompletedEvent;

    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->getImpacts()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->getAccelerationEvents()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadCompletedEvent;-><init>(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p1, v0}, Lcom/texa/carelib/care/impacts/ImpactDataDownloadListener;->onImpactDataDownloadCompleted(Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadCompletedEvent;)V

    return-void
.end method

.method public loadCrashConfigurationValues()Z
    .locals 4

    .line 200
    sget-object v0, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "loadCrashConfigurationValues"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_loadConfigurationValues"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 215
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 216
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return v0
.end method

.method public loadImpacts(Lcom/texa/carelib/care/impacts/ImpactDataDownloadListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 172
    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->mThreadLoadImpacts:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/OperationAlreadyRunningException;

    invoke-direct {p1}, Lcom/texa/carelib/core/OperationAlreadyRunningException;-><init>()V

    throw p1

    .line 180
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection$$ExternalSyntheticLambda1;-><init>(Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;Lcom/texa/carelib/care/impacts/ImpactDataDownloadListener;)V

    const-string p1, "Thread_loadCrashReport"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->mThreadLoadImpacts:Ljava/lang/Thread;

    const/4 p1, 0x1

    .line 194
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 195
    iget-object p1, p0, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->mThreadLoadImpacts:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    .line 173
    :cond_2
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method public onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 5

    .line 64
    sget-object v0, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "onCommunicationStatusChanged(%s)"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    sget-object v0, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection$2;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    invoke-direct {p0}, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->stopTimer()V

    goto :goto_0

    .line 68
    :cond_1
    invoke-direct {p0}, Lcom/texa/carelib/care/impacts/internal/MockImpactDetection;->startTimer()V

    .line 80
    :goto_0
    invoke-super {p0, p1}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V

    return-void
.end method

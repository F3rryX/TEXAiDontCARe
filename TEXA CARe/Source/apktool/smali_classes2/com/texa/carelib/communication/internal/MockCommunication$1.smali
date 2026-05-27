.class Lcom/texa/carelib/communication/internal/MockCommunication$1;
.super Landroid/os/AsyncTask;
.source "MockCommunication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/carelib/communication/internal/MockCommunication;->startScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Lcom/texa/carelib/communication/DeviceInfo;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/carelib/communication/internal/MockCommunication;


# direct methods
.method constructor <init>(Lcom/texa/carelib/communication/internal/MockCommunication;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/MockCommunication$1;->this$0:Lcom/texa/carelib/communication/internal/MockCommunication;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private shuffleArray([Lcom/texa/carelib/communication/DeviceInfo;)V
    .locals 5

    .line 207
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 208
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 209
    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 211
    aget-object v3, p1, v2

    .line 212
    aget-object v4, p1, v1

    aput-object v4, p1, v2

    .line 213
    aput-object v3, p1, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/16 p1, 0xa

    new-array v0, p1, [Lcom/texa/carelib/communication/DeviceInfo;

    .line 220
    new-instance v1, Lcom/texa/carelib/communication/DeviceInfo$Builder;

    const-string v2, "00-08-74-4C-7F-00"

    invoke-direct {v1, v2}, Lcom/texa/carelib/communication/DeviceInfo$Builder;-><init>(Ljava/lang/String;)V

    const-string v2, "VCI 00000000"

    .line 221
    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setName(Ljava/lang/String;)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v1

    const/16 v2, -0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setRSSI(Ljava/lang/Integer;)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setType(I)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->build()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lcom/texa/carelib/communication/DeviceInfo$Builder;

    const-string v4, "00-08-74-4C-7F-01"

    invoke-direct {v1, v4}, Lcom/texa/carelib/communication/DeviceInfo$Builder;-><init>(Ljava/lang/String;)V

    const-string v4, "VCI 11111111"

    .line 222
    invoke-virtual {v1, v4}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setName(Ljava/lang/String;)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v1

    const/16 v4, -0x5a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setRSSI(Ljava/lang/Integer;)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setType(I)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->build()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v1

    aput-object v1, v0, v2

    new-instance v1, Lcom/texa/carelib/communication/DeviceInfo$Builder;

    const-string v4, "00-08-74-4C-7F-02"

    invoke-direct {v1, v4}, Lcom/texa/carelib/communication/DeviceInfo$Builder;-><init>(Ljava/lang/String;)V

    const-string v4, "VCI 22222222"

    .line 223
    invoke-virtual {v1, v4}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setName(Ljava/lang/String;)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v1

    const/16 v4, -0x50

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setRSSI(Ljava/lang/Integer;)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setType(I)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->build()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lcom/texa/carelib/communication/DeviceInfo$Builder;

    const-string v4, "00-08-74-4C-7F-03"

    invoke-direct {v1, v4}, Lcom/texa/carelib/communication/DeviceInfo$Builder;-><init>(Ljava/lang/String;)V

    const-string v4, "VCI 33333333"

    .line 224
    invoke-virtual {v1, v4}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setName(Ljava/lang/String;)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v1

    const/16 v4, -0x46

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setRSSI(Ljava/lang/Integer;)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setType(I)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->build()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v1

    aput-object v1, v0, v4

    new-instance v1, Lcom/texa/carelib/communication/DeviceInfo$Builder;

    const-string v5, "00-08-74-4C-7F-04"

    invoke-direct {v1, v5}, Lcom/texa/carelib/communication/DeviceInfo$Builder;-><init>(Ljava/lang/String;)V

    const-string v5, "VCI 44444444"

    .line 225
    invoke-virtual {v1, v5}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setName(Ljava/lang/String;)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v1

    const/16 v5, -0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setRSSI(Ljava/lang/Integer;)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setType(I)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->build()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v1

    const/4 v5, 0x4

    aput-object v1, v0, v5

    new-instance v1, Lcom/texa/carelib/communication/DeviceInfo$Builder;

    const-string v5, "00-08-74-4C-7F-05"

    invoke-direct {v1, v5}, Lcom/texa/carelib/communication/DeviceInfo$Builder;-><init>(Ljava/lang/String;)V

    const-string v5, "VCI 55555555"

    .line 226
    invoke-virtual {v1, v5}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setName(Ljava/lang/String;)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v1

    const/16 v5, -0x32

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setRSSI(Ljava/lang/Integer;)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setType(I)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->build()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v1

    const/4 v5, 0x5

    aput-object v1, v0, v5

    new-instance v1, Lcom/texa/carelib/communication/DeviceInfo$Builder;

    const-string v5, "00-08-74-4C-7F-06"

    invoke-direct {v1, v5}, Lcom/texa/carelib/communication/DeviceInfo$Builder;-><init>(Ljava/lang/String;)V

    const-string v5, "VCI 66666666"

    .line 227
    invoke-virtual {v1, v5}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setName(Ljava/lang/String;)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v1

    const/16 v5, -0x28

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setRSSI(Ljava/lang/Integer;)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setType(I)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->build()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v1

    const/4 v5, 0x6

    aput-object v1, v0, v5

    new-instance v1, Lcom/texa/carelib/communication/DeviceInfo$Builder;

    const-string v5, "00-08-74-4C-7F-07"

    invoke-direct {v1, v5}, Lcom/texa/carelib/communication/DeviceInfo$Builder;-><init>(Ljava/lang/String;)V

    const-string v5, "VCI 77777777"

    .line 228
    invoke-virtual {v1, v5}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setName(Ljava/lang/String;)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v1

    const/16 v5, -0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setRSSI(Ljava/lang/Integer;)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setType(I)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->build()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v1

    const/4 v4, 0x7

    aput-object v1, v0, v4

    new-instance v1, Lcom/texa/carelib/communication/DeviceInfo$Builder;

    const-string v4, "00-08-74-4C-7F-08"

    invoke-direct {v1, v4}, Lcom/texa/carelib/communication/DeviceInfo$Builder;-><init>(Ljava/lang/String;)V

    const-string v4, "VCI 88888888"

    .line 229
    invoke-virtual {v1, v4}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setName(Ljava/lang/String;)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v1

    const/16 v4, -0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setRSSI(Ljava/lang/Integer;)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setType(I)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->build()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v1

    const/16 v4, 0x8

    aput-object v1, v0, v4

    new-instance v1, Lcom/texa/carelib/communication/DeviceInfo$Builder;

    const-string v4, "00-08-74-4C-7F-09"

    invoke-direct {v1, v4}, Lcom/texa/carelib/communication/DeviceInfo$Builder;-><init>(Ljava/lang/String;)V

    const-string v4, "VCI 99999999"

    .line 230
    invoke-virtual {v1, v4}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setName(Ljava/lang/String;)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v1

    const/16 v4, -0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setRSSI(Ljava/lang/Integer;)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setType(I)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->build()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v1

    const/16 v4, 0x9

    aput-object v1, v0, v4

    .line 233
    invoke-direct {p0, v0}, Lcom/texa/carelib/communication/internal/MockCommunication$1;->shuffleArray([Lcom/texa/carelib/communication/DeviceInfo;)V

    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v1, p1, :cond_1

    .line 235
    aget-object v5, v0, v1

    .line 236
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/MockCommunication$1;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_0

    return-object v4

    :cond_0
    const-wide/16 v6, 0x3e8

    .line 241
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 243
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    new-array v4, v2, [Lcom/texa/carelib/communication/DeviceInfo;

    aput-object v5, v4, v3

    .line 246
    invoke-virtual {p0, v4}, Lcom/texa/carelib/communication/internal/MockCommunication$1;->publishProgress([Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method protected onCancelled()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/MockCommunication$1;->this$0:Lcom/texa/carelib/communication/internal/MockCommunication;

    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->SCANNING_FINISHED:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/communication/internal/MockCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    .line 195
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 266
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/MockCommunication$1;->this$0:Lcom/texa/carelib/communication/internal/MockCommunication;

    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->SCANNING_FINISHED:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p1, v0}, Lcom/texa/carelib/communication/internal/MockCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 200
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 201
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/MockCommunication$1;->this$0:Lcom/texa/carelib/communication/internal/MockCommunication;

    invoke-static {v0}, Lcom/texa/carelib/communication/internal/MockCommunication;->access$000(Lcom/texa/carelib/communication/internal/MockCommunication;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 202
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/MockCommunication$1;->this$0:Lcom/texa/carelib/communication/internal/MockCommunication;

    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->SCANNING:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/communication/internal/MockCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/texa/carelib/communication/DeviceInfo;)V
    .locals 3

    .line 254
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/texa/carelib/communication/internal/MockCommunication$1;->this$0:Lcom/texa/carelib/communication/internal/MockCommunication;

    invoke-virtual {v1}, Lcom/texa/carelib/communication/internal/MockCommunication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v1

    sget-object v2, Lcom/texa/carelib/communication/CommunicationStatus;->SCANNING:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne v1, v2, :cond_0

    .line 257
    iget-object v1, p0, Lcom/texa/carelib/communication/internal/MockCommunication$1;->this$0:Lcom/texa/carelib/communication/internal/MockCommunication;

    invoke-static {v1}, Lcom/texa/carelib/communication/internal/MockCommunication;->access$000(Lcom/texa/carelib/communication/internal/MockCommunication;)Ljava/util/List;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v1, p0, Lcom/texa/carelib/communication/internal/MockCommunication$1;->this$0:Lcom/texa/carelib/communication/internal/MockCommunication;

    aget-object p1, p1, v0

    invoke-virtual {v1, p1}, Lcom/texa/carelib/communication/internal/MockCommunication;->fireDeviceFound(Lcom/texa/carelib/communication/DeviceInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 261
    sget-object v1, Lcom/texa/carelib/communication/internal/MockCommunication;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Generic error."

    invoke-static {v1, p1, v2, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 191
    check-cast p1, [Lcom/texa/carelib/communication/DeviceInfo;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/MockCommunication$1;->onProgressUpdate([Lcom/texa/carelib/communication/DeviceInfo;)V

    return-void
.end method

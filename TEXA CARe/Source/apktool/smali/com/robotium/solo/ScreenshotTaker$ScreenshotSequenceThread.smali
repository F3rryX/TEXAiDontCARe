.class Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;
.super Ljava/lang/Thread;
.source "ScreenshotTaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/robotium/solo/ScreenshotTaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenshotSequenceThread"
.end annotation


# instance fields
.field private frameDelay:I

.field private keepRunning:Z

.field private maxFrames:I

.field private name:Ljava/lang/String;

.field private quality:I

.field private seqno:I

.field final synthetic this$0:Lcom/robotium/solo/ScreenshotTaker;


# direct methods
.method public constructor <init>(Lcom/robotium/solo/ScreenshotTaker;Ljava/lang/String;III)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->this$0:Lcom/robotium/solo/ScreenshotTaker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 298
    iput p1, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->seqno:I

    const/4 p1, 0x1

    .line 305
    iput-boolean p1, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->keepRunning:Z

    .line 308
    iput-object p2, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->name:Ljava/lang/String;

    .line 309
    iput p3, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->quality:I

    .line 310
    iput p4, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->frameDelay:I

    .line 311
    iput p5, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->maxFrames:I

    return-void
.end method


# virtual methods
.method public doScreenshot()V
    .locals 6

    .line 328
    iget-object v0, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->this$0:Lcom/robotium/solo/ScreenshotTaker;

    invoke-static {v0}, Lcom/robotium/solo/ScreenshotTaker;->access$100(Lcom/robotium/solo/ScreenshotTaker;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 329
    iput-boolean v1, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->keepRunning:Z

    .line 330
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->seqno:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 331
    new-instance v3, Lcom/robotium/solo/ScreenshotTaker$ScreenshotRunnable;

    iget-object v4, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->this$0:Lcom/robotium/solo/ScreenshotTaker;

    iget v5, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->quality:I

    invoke-direct {v3, v4, v0, v2, v5}, Lcom/robotium/solo/ScreenshotTaker$ScreenshotRunnable;-><init>(Lcom/robotium/solo/ScreenshotTaker;Landroid/view/View;Ljava/lang/String;I)V

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "taking screenshot "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Robotium"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v0, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->this$0:Lcom/robotium/solo/ScreenshotTaker;

    invoke-static {v0}, Lcom/robotium/solo/ScreenshotTaker;->access$200(Lcom/robotium/solo/ScreenshotTaker;)Lcom/robotium/solo/ActivityUtils;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/robotium/solo/ActivityUtils;->getCurrentActivity(Z)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 335
    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->this$0:Lcom/robotium/solo/ScreenshotTaker;

    invoke-static {v0}, Lcom/robotium/solo/ScreenshotTaker;->access$300(Lcom/robotium/solo/ScreenshotTaker;)Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public interrupt()V
    .locals 1

    const/4 v0, 0x0

    .line 343
    iput-boolean v0, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->keepRunning:Z

    .line 344
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 2

    .line 315
    :goto_0
    iget v0, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->seqno:I

    iget v1, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->maxFrames:I

    if-ge v0, v1, :cond_1

    .line 316
    iget-boolean v0, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->keepRunning:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->doScreenshot()V

    .line 318
    iget v0, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->seqno:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->seqno:I

    .line 320
    :try_start_0
    iget v0, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->frameDelay:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 324
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->this$0:Lcom/robotium/solo/ScreenshotTaker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/robotium/solo/ScreenshotTaker;->access$002(Lcom/robotium/solo/ScreenshotTaker;Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;)Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;

    return-void
.end method

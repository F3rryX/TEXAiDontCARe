.class Lcom/robotium/solo/ScreenshotTaker$ScreenShotSaver;
.super Landroid/os/Handler;
.source "ScreenshotTaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/robotium/solo/ScreenshotTaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenShotSaver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/robotium/solo/ScreenshotTaker;


# direct methods
.method public constructor <init>(Lcom/robotium/solo/ScreenshotTaker;Landroid/os/HandlerThread;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenShotSaver;->this$0:Lcom/robotium/solo/ScreenshotTaker;

    .line 407
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private saveFile(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 4

    const-string v0, "Robotium"

    .line 457
    iget-object v1, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenShotSaver;->this$0:Lcom/robotium/solo/ScreenshotTaker;

    invoke-static {v1, p1}, Lcom/robotium/solo/ScreenshotTaker;->access$800(Lcom/robotium/solo/ScreenshotTaker;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 459
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenShotSaver;->this$0:Lcom/robotium/solo/ScreenshotTaker;

    invoke-static {v2}, Lcom/robotium/solo/ScreenshotTaker;->access$900(Lcom/robotium/solo/ScreenshotTaker;)Lcom/robotium/solo/Solo$Config;

    move-result-object v2

    iget-object v2, v2, Lcom/robotium/solo/Solo$Config;->screenshotSavePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 462
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 464
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 465
    iget-object v1, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenShotSaver;->this$0:Lcom/robotium/solo/ScreenshotTaker;

    invoke-static {v1}, Lcom/robotium/solo/ScreenshotTaker;->access$900(Lcom/robotium/solo/ScreenshotTaker;)Lcom/robotium/solo/Solo$Config;

    move-result-object v1

    iget-object v1, v1, Lcom/robotium/solo/Solo$Config;->screenshotFileType:Lcom/robotium/solo/Solo$Config$ScreenshotFileType;

    sget-object v2, Lcom/robotium/solo/Solo$Config$ScreenshotFileType;->JPEG:Lcom/robotium/solo/Solo$Config$ScreenshotFileType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "Compress/Write failed"

    if-ne v1, v2, :cond_0

    .line 466
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, v1, p3, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 467
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 471
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, v1, p3, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 472
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 476
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "Can\'t save the screenshot! Requires write permission (android.permission.WRITE_EXTERNAL_STORAGE) in AndroidManifest.xml of the application under test."

    .line 478
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 431
    iget-object v0, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenShotSaver;->this$0:Lcom/robotium/solo/ScreenshotTaker;

    invoke-static {v0}, Lcom/robotium/solo/ScreenshotTaker;->access$700(Lcom/robotium/solo/ScreenshotTaker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 432
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 433
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 434
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 436
    invoke-direct {p0, v1, p1, v2}, Lcom/robotium/solo/ScreenshotTaker$ScreenShotSaver;->saveFile(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 437
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_0
    const-string p1, "Robotium"

    const-string v1, "NULL BITMAP!!"

    .line 440
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :goto_0
    iget-object p1, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenShotSaver;->this$0:Lcom/robotium/solo/ScreenshotTaker;

    invoke-static {p1}, Lcom/robotium/solo/ScreenshotTaker;->access$700(Lcom/robotium/solo/ScreenshotTaker;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 444
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .locals 1

    .line 418
    invoke-virtual {p0}, Lcom/robotium/solo/ScreenshotTaker$ScreenShotSaver;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 419
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 420
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 421
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string p3, "name"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0, v0}, Lcom/robotium/solo/ScreenshotTaker$ScreenShotSaver;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

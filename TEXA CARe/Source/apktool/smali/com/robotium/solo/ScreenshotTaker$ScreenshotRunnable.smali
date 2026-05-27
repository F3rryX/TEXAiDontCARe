.class Lcom/robotium/solo/ScreenshotTaker$ScreenshotRunnable;
.super Ljava/lang/Object;
.source "ScreenshotTaker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/robotium/solo/ScreenshotTaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenshotRunnable"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private quality:I

.field final synthetic this$0:Lcom/robotium/solo/ScreenshotTaker;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/robotium/solo/ScreenshotTaker;Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotRunnable;->this$0:Lcom/robotium/solo/ScreenshotTaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-object p2, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotRunnable;->view:Landroid/view/View;

    .line 362
    iput-object p3, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotRunnable;->name:Ljava/lang/String;

    .line 363
    iput p4, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotRunnable;->quality:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 367
    iget-object v0, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotRunnable;->view:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 370
    instance-of v1, v0, Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotRunnable;->this$0:Lcom/robotium/solo/ScreenshotTaker;

    check-cast v0, Landroid/webkit/WebView;

    invoke-static {v1, v0}, Lcom/robotium/solo/ScreenshotTaker;->access$400(Lcom/robotium/solo/ScreenshotTaker;Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotRunnable;->this$0:Lcom/robotium/solo/ScreenshotTaker;

    invoke-static {v1, v0}, Lcom/robotium/solo/ScreenshotTaker;->access$500(Lcom/robotium/solo/ScreenshotTaker;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 377
    iget-object v1, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotRunnable;->this$0:Lcom/robotium/solo/ScreenshotTaker;

    invoke-static {v1}, Lcom/robotium/solo/ScreenshotTaker;->access$600(Lcom/robotium/solo/ScreenshotTaker;)Lcom/robotium/solo/ScreenshotTaker$ScreenShotSaver;

    move-result-object v1

    iget-object v2, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotRunnable;->name:Ljava/lang/String;

    iget v3, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotRunnable;->quality:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/robotium/solo/ScreenshotTaker$ScreenShotSaver;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    return-void

    :cond_1
    const-string v0, "Robotium"

    const-string v1, "NULL BITMAP!!"

    .line 384
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_2
    iget-object v0, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotRunnable;->this$0:Lcom/robotium/solo/ScreenshotTaker;

    invoke-static {v0}, Lcom/robotium/solo/ScreenshotTaker;->access$700(Lcom/robotium/solo/ScreenshotTaker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 389
    :try_start_0
    iget-object v1, p0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotRunnable;->this$0:Lcom/robotium/solo/ScreenshotTaker;

    invoke-static {v1}, Lcom/robotium/solo/ScreenshotTaker;->access$700(Lcom/robotium/solo/ScreenshotTaker;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 390
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

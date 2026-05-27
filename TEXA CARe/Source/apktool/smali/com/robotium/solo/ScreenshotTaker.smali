.class Lcom/robotium/solo/ScreenshotTaker;
.super Ljava/lang/Object;
.source "ScreenshotTaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/robotium/solo/ScreenshotTaker$ScreenShotSaver;,
        Lcom/robotium/solo/ScreenshotTaker$ScreenshotRunnable;,
        Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;
    }
.end annotation


# static fields
.field private static final TIMEOUT_SCREENSHOT_MUTEX:J


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final activityUtils:Lcom/robotium/solo/ActivityUtils;

.field private final config:Lcom/robotium/solo/Solo$Config;

.field private final instrumentation:Landroid/app/Instrumentation;

.field private screenShotSaver:Lcom/robotium/solo/ScreenshotTaker$ScreenShotSaver;

.field private screenShotSaverThread:Landroid/os/HandlerThread;

.field private final screenshotMutex:Ljava/lang/Object;

.field private screenshotSequenceThread:Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;

.field private final sleeper:Lcom/robotium/solo/Sleeper;

.field private final viewFetcher:Lcom/robotium/solo/ViewFetcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/robotium/solo/ScreenshotTaker;->TIMEOUT_SCREENSHOT_MUTEX:J

    return-void
.end method

.method constructor <init>(Lcom/robotium/solo/Solo$Config;Landroid/app/Instrumentation;Lcom/robotium/solo/ActivityUtils;Lcom/robotium/solo/ViewFetcher;Lcom/robotium/solo/Sleeper;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/robotium/solo/ScreenshotTaker;->screenshotMutex:Ljava/lang/Object;

    const-string v0, "Robotium"

    .line 43
    iput-object v0, p0, Lcom/robotium/solo/ScreenshotTaker;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/robotium/solo/ScreenshotTaker;->screenshotSequenceThread:Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;

    .line 45
    iput-object v0, p0, Lcom/robotium/solo/ScreenshotTaker;->screenShotSaverThread:Landroid/os/HandlerThread;

    .line 46
    iput-object v0, p0, Lcom/robotium/solo/ScreenshotTaker;->screenShotSaver:Lcom/robotium/solo/ScreenshotTaker$ScreenShotSaver;

    .line 62
    iput-object p1, p0, Lcom/robotium/solo/ScreenshotTaker;->config:Lcom/robotium/solo/Solo$Config;

    .line 63
    iput-object p2, p0, Lcom/robotium/solo/ScreenshotTaker;->instrumentation:Landroid/app/Instrumentation;

    .line 64
    iput-object p3, p0, Lcom/robotium/solo/ScreenshotTaker;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    .line 65
    iput-object p4, p0, Lcom/robotium/solo/ScreenshotTaker;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    .line 66
    iput-object p5, p0, Lcom/robotium/solo/ScreenshotTaker;->sleeper:Lcom/robotium/solo/Sleeper;

    return-void
.end method

.method static synthetic access$002(Lcom/robotium/solo/ScreenshotTaker;Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;)Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/robotium/solo/ScreenshotTaker;->screenshotSequenceThread:Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;

    return-object p1
.end method

.method static synthetic access$100(Lcom/robotium/solo/ScreenshotTaker;)Landroid/view/View;
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/robotium/solo/ScreenshotTaker;->getScreenshotView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/robotium/solo/ScreenshotTaker;)Lcom/robotium/solo/ActivityUtils;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/robotium/solo/ScreenshotTaker;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    return-object p0
.end method

.method static synthetic access$300(Lcom/robotium/solo/ScreenshotTaker;)Landroid/app/Instrumentation;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/robotium/solo/ScreenshotTaker;->instrumentation:Landroid/app/Instrumentation;

    return-object p0
.end method

.method static synthetic access$400(Lcom/robotium/solo/ScreenshotTaker;Landroid/webkit/WebView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/robotium/solo/ScreenshotTaker;->getBitmapOfWebView(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/robotium/solo/ScreenshotTaker;Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/robotium/solo/ScreenshotTaker;->getBitmapOfView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/robotium/solo/ScreenshotTaker;)Lcom/robotium/solo/ScreenshotTaker$ScreenShotSaver;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/robotium/solo/ScreenshotTaker;->screenShotSaver:Lcom/robotium/solo/ScreenshotTaker$ScreenShotSaver;

    return-object p0
.end method

.method static synthetic access$700(Lcom/robotium/solo/ScreenshotTaker;)Ljava/lang/Object;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/robotium/solo/ScreenshotTaker;->screenshotMutex:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$800(Lcom/robotium/solo/ScreenshotTaker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/robotium/solo/ScreenshotTaker;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/robotium/solo/ScreenshotTaker;)Lcom/robotium/solo/Solo$Config;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/robotium/solo/ScreenshotTaker;->config:Lcom/robotium/solo/Solo$Config;

    return-object p0
.end method

.method private getBitmapOfView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    .line 232
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    const/4 v0, 0x0

    .line 233
    invoke-virtual {p1, v0}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 241
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    if-nez v2, :cond_1

    .line 244
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 246
    :cond_1
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 247
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    return-object v0
.end method

.method private getBitmapOfWebView(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;
    .locals 3

    .line 216
    invoke-virtual {p1}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object p1

    .line 217
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 218
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 219
    invoke-virtual {p1, v1}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 261
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "ddMMyy-hhmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, ".jpg"

    const-string v2, ".png"

    if-nez p1, :cond_1

    .line 264
    iget-object p1, p0, Lcom/robotium/solo/ScreenshotTaker;->config:Lcom/robotium/solo/Solo$Config;

    iget-object p1, p1, Lcom/robotium/solo/Solo$Config;->screenshotFileType:Lcom/robotium/solo/Solo$Config$ScreenshotFileType;

    sget-object v3, Lcom/robotium/solo/Solo$Config$ScreenshotFileType;->JPEG:Lcom/robotium/solo/Solo$Config$ScreenshotFileType;

    if-ne p1, v3, :cond_0

    .line 265
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 268
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/robotium/solo/ScreenshotTaker;->config:Lcom/robotium/solo/Solo$Config;

    iget-object v0, v0, Lcom/robotium/solo/Solo$Config;->screenshotFileType:Lcom/robotium/solo/Solo$Config$ScreenshotFileType;

    sget-object v3, Lcom/robotium/solo/Solo$Config$ScreenshotFileType;->JPEG:Lcom/robotium/solo/Solo$Config$ScreenshotFileType;

    if-ne v0, v3, :cond_2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 276
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getScreenshotView()Landroid/view/View;
    .locals 5

    .line 150
    iget-object v0, p0, Lcom/robotium/solo/ScreenshotTaker;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    invoke-virtual {v0}, Lcom/robotium/solo/ViewFetcher;->getWindowDecorViews()[Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/robotium/solo/ViewFetcher;->getRecentDecorView([Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 151
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    :goto_0
    if-nez v0, :cond_2

    .line 155
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/robotium/solo/ScreenshotTaker;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v0}, Lcom/robotium/solo/Sleeper;->sleepMini()V

    .line 161
    iget-object v0, p0, Lcom/robotium/solo/ScreenshotTaker;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    invoke-virtual {v0}, Lcom/robotium/solo/ViewFetcher;->getWindowDecorViews()[Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/robotium/solo/ViewFetcher;->getRecentDecorView([Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_2
    invoke-direct {p0, v0}, Lcom/robotium/solo/ScreenshotTaker;->wrapAllGLViews(Landroid/view/View;)V

    return-object v0
.end method

.method private initScreenShotSaver()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/robotium/solo/ScreenshotTaker;->screenShotSaverThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/robotium/solo/ScreenshotTaker;->screenShotSaver:Lcom/robotium/solo/ScreenshotTaker$ScreenShotSaver;

    if-nez v0, :cond_1

    .line 287
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ScreenShotSaver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/robotium/solo/ScreenshotTaker;->screenShotSaverThread:Landroid/os/HandlerThread;

    .line 288
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 289
    new-instance v0, Lcom/robotium/solo/ScreenshotTaker$ScreenShotSaver;

    iget-object v1, p0, Lcom/robotium/solo/ScreenshotTaker;->screenShotSaverThread:Landroid/os/HandlerThread;

    invoke-direct {v0, p0, v1}, Lcom/robotium/solo/ScreenshotTaker$ScreenShotSaver;-><init>(Lcom/robotium/solo/ScreenshotTaker;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/robotium/solo/ScreenshotTaker;->screenShotSaver:Lcom/robotium/solo/ScreenshotTaker$ScreenShotSaver;

    :cond_1
    return-void
.end method

.method private wrapAllGLViews(Landroid/view/View;)V
    .locals 6

    .line 172
    iget-object v0, p0, Lcom/robotium/solo/ScreenshotTaker;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    const-class v1, Landroid/opengl/GLSurfaceView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Lcom/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;ZLandroid/view/View;)Ljava/util/ArrayList;

    move-result-object p1

    .line 173
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 175
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/opengl/GLSurfaceView;

    .line 176
    new-instance v2, Lcom/robotium/solo/Reflect;

    invoke-direct {v2, v1}, Lcom/robotium/solo/Reflect;-><init>(Ljava/lang/Object;)V

    const-string v3, "mGLThread"

    invoke-virtual {v2, v3}, Lcom/robotium/solo/Reflect;->field(Ljava/lang/String;)Lcom/robotium/solo/Reflect$FieldRf;

    move-result-object v2

    const-class v3, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v2, v3}, Lcom/robotium/solo/Reflect$FieldRf;->type(Ljava/lang/Class;)Lcom/robotium/solo/Reflect$FieldRf;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/robotium/solo/Reflect$FieldRf;->out(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 179
    new-instance v3, Lcom/robotium/solo/Reflect;

    invoke-direct {v3, v2}, Lcom/robotium/solo/Reflect;-><init>(Ljava/lang/Object;)V

    const-string v4, "mRenderer"

    invoke-virtual {v3, v4}, Lcom/robotium/solo/Reflect;->field(Ljava/lang/String;)Lcom/robotium/solo/Reflect$FieldRf;

    move-result-object v3

    const-class v5, Landroid/opengl/GLSurfaceView$Renderer;

    invoke-virtual {v3, v5}, Lcom/robotium/solo/Reflect$FieldRf;->out(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/opengl/GLSurfaceView$Renderer;

    if-nez v3, :cond_0

    .line 182
    new-instance v2, Lcom/robotium/solo/Reflect;

    invoke-direct {v2, v1}, Lcom/robotium/solo/Reflect;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Lcom/robotium/solo/Reflect;->field(Ljava/lang/String;)Lcom/robotium/solo/Reflect$FieldRf;

    move-result-object v2

    const-class v3, Landroid/opengl/GLSurfaceView$Renderer;

    invoke-virtual {v2, v3}, Lcom/robotium/solo/Reflect$FieldRf;->out(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/opengl/GLSurfaceView$Renderer;

    move-object v2, v1

    :cond_0
    if-nez v3, :cond_1

    .line 186
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 189
    :cond_1
    instance-of v5, v3, Lcom/robotium/solo/GLRenderWrapper;

    if-eqz v5, :cond_2

    .line 190
    check-cast v3, Lcom/robotium/solo/GLRenderWrapper;

    .line 191
    invoke-virtual {v3}, Lcom/robotium/solo/GLRenderWrapper;->setTakeScreenshot()V

    .line 192
    invoke-virtual {v3, v0}, Lcom/robotium/solo/GLRenderWrapper;->setLatch(Ljava/util/concurrent/CountDownLatch;)V

    goto :goto_0

    .line 194
    :cond_2
    new-instance v5, Lcom/robotium/solo/GLRenderWrapper;

    invoke-direct {v5, v1, v3, v0}, Lcom/robotium/solo/GLRenderWrapper;-><init>(Landroid/opengl/GLSurfaceView;Landroid/opengl/GLSurfaceView$Renderer;Ljava/util/concurrent/CountDownLatch;)V

    .line 195
    new-instance v1, Lcom/robotium/solo/Reflect;

    invoke-direct {v1, v2}, Lcom/robotium/solo/Reflect;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Lcom/robotium/solo/Reflect;->field(Ljava/lang/String;)Lcom/robotium/solo/Reflect$FieldRf;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/robotium/solo/Reflect$FieldRf;->in(Ljava/lang/Object;)V

    goto :goto_0

    .line 200
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 202
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public startScreenshotSequence(Ljava/lang/String;III)V
    .locals 7

    .line 122
    invoke-direct {p0}, Lcom/robotium/solo/ScreenshotTaker;->initScreenShotSaver()V

    .line 124
    iget-object v0, p0, Lcom/robotium/solo/ScreenshotTaker;->screenshotSequenceThread:Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;-><init>(Lcom/robotium/solo/ScreenshotTaker;Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/robotium/solo/ScreenshotTaker;->screenshotSequenceThread:Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;

    .line 130
    invoke-virtual {v0}, Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->start()V

    return-void

    .line 125
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "only one screenshot sequence is supported at a time"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stopScreenshotSequence()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/robotium/solo/ScreenshotTaker;->screenshotSequenceThread:Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->interrupt()V

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/robotium/solo/ScreenshotTaker;->screenshotSequenceThread:Lcom/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;

    :cond_0
    return-void
.end method

.method public takeScreenshot(Ljava/lang/String;I)V
    .locals 2

    .line 77
    invoke-direct {p0}, Lcom/robotium/solo/ScreenshotTaker;->getScreenshotView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/robotium/solo/ScreenshotTaker;->initScreenShotSaver()V

    .line 82
    new-instance v1, Lcom/robotium/solo/ScreenshotTaker$ScreenshotRunnable;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/robotium/solo/ScreenshotTaker$ScreenshotRunnable;-><init>(Lcom/robotium/solo/ScreenshotTaker;Landroid/view/View;Ljava/lang/String;I)V

    .line 84
    iget-object p1, p0, Lcom/robotium/solo/ScreenshotTaker;->screenshotMutex:Ljava/lang/Object;

    monitor-enter p1

    .line 85
    :try_start_0
    iget-object p2, p0, Lcom/robotium/solo/ScreenshotTaker;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/robotium/solo/ActivityUtils;->getCurrentActivity(Z)Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 87
    invoke-virtual {p2, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 89
    :cond_1
    iget-object p2, p0, Lcom/robotium/solo/ScreenshotTaker;->instrumentation:Landroid/app/Instrumentation;

    invoke-virtual {p2, v1}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :goto_0
    :try_start_1
    iget-object p2, p0, Lcom/robotium/solo/ScreenshotTaker;->screenshotMutex:Ljava/lang/Object;

    sget-wide v0, Lcom/robotium/solo/ScreenshotTaker;->TIMEOUT_SCREENSHOT_MUTEX:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :catch_0
    :try_start_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

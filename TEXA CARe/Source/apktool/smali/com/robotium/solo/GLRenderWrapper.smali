.class Lcom/robotium/solo/GLRenderWrapper;
.super Ljava/lang/Object;
.source "GLRenderWrapper.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private glVersion:I

.field private height:I

.field private latch:Ljava/util/concurrent/CountDownLatch;

.field private renderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private takeScreenshot:Z

.field private final view:Landroid/opengl/GLSurfaceView;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/opengl/GLSurfaceView;Landroid/opengl/GLSurfaceView$Renderer;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/robotium/solo/GLRenderWrapper;->takeScreenshot:Z

    .line 40
    iput-object p1, p0, Lcom/robotium/solo/GLRenderWrapper;->view:Landroid/opengl/GLSurfaceView;

    .line 41
    iput-object p2, p0, Lcom/robotium/solo/GLRenderWrapper;->renderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 42
    iput-object p3, p0, Lcom/robotium/solo/GLRenderWrapper;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 44
    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getWidth()I

    move-result p2

    iput p2, p0, Lcom/robotium/solo/GLRenderWrapper;->width:I

    .line 45
    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result p2

    iput p2, p0, Lcom/robotium/solo/GLRenderWrapper;->height:I

    .line 47
    new-instance p2, Lcom/robotium/solo/Reflect;

    invoke-direct {p2, p1}, Lcom/robotium/solo/Reflect;-><init>(Ljava/lang/Object;)V

    const-string p1, "mEGLContextClientVersion"

    invoke-virtual {p2, p1}, Lcom/robotium/solo/Reflect;->field(Ljava/lang/String;)Lcom/robotium/solo/Reflect$FieldRf;

    move-result-object p1

    const-class p2, Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Lcom/robotium/solo/Reflect$FieldRf;->out(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/robotium/solo/GLRenderWrapper;->glVersion:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 52
    iput p1, p0, Lcom/robotium/solo/GLRenderWrapper;->glVersion:I

    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Lcom/robotium/solo/GLRenderWrapper;->takeScreenshot:Z

    :goto_0
    return-void
.end method

.method private savePixels(IIII)Landroid/graphics/Bitmap;
    .locals 9

    add-int v3, p2, p4

    mul-int p2, p3, v3

    .line 129
    new-array p2, p2, [I

    mul-int v0, p3, p4

    .line 130
    new-array v7, v0, [I

    .line 131
    invoke-static {p2}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v6

    const/4 v8, 0x0

    .line 132
    invoke-virtual {v6, v8}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x0

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v0, p1

    move v2, p3

    .line 133
    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge p1, p4, :cond_1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p3, :cond_0

    mul-int v2, p1, p3

    add-int/2addr v2, v1

    .line 140
    aget v2, p2, v2

    shr-int/lit8 v3, v2, 0x10

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v4, v2, 0x10

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    const v5, -0xff0100

    and-int/2addr v2, v5

    or-int/2addr v2, v4

    or-int/2addr v2, v3

    sub-int v3, p4, v0

    add-int/lit8 v3, v3, -0x1

    mul-int v3, v3, p3

    add-int/2addr v3, v1

    .line 144
    aput v2, v7, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_1
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, p3, p4, p1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private static savePixels(IIIILjavax/microedition/khronos/opengles/GL10;)Landroid/graphics/Bitmap;
    .locals 10

    add-int v4, p1, p3

    mul-int p1, p2, v4

    .line 163
    new-array p1, p1, [I

    mul-int v0, p2, p3

    .line 164
    new-array v8, v0, [I

    .line 165
    invoke-static {p1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v7

    const/4 v9, 0x0

    .line 166
    invoke-virtual {v7, v9}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x0

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move-object v0, p4

    move v1, p0

    move v3, p2

    .line 167
    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    const/4 p0, 0x0

    const/4 p4, 0x0

    :goto_0
    if-ge p0, p3, :cond_1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_0

    mul-int v1, p0, p2

    add-int/2addr v1, v0

    .line 173
    aget v1, p1, v1

    shr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v3, v1, 0x10

    const/high16 v4, 0xff0000

    and-int/2addr v3, v4

    const v4, -0xff0100

    and-int/2addr v1, v4

    or-int/2addr v1, v3

    or-int/2addr v1, v2

    sub-int v2, p3, p4

    add-int/lit8 v2, v2, -0x1

    mul-int v2, v2, p2

    add-int/2addr v2, v0

    .line 177
    aput v1, v8, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 181
    :cond_1
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, p2, p3, p0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/robotium/solo/GLRenderWrapper;->renderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-interface {v0, p1}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 87
    iget-boolean v0, p0, Lcom/robotium/solo/GLRenderWrapper;->takeScreenshot:Z

    if-eqz v0, :cond_1

    .line 90
    iget v0, p0, Lcom/robotium/solo/GLRenderWrapper;->glVersion:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 91
    iget p1, p0, Lcom/robotium/solo/GLRenderWrapper;->width:I

    iget v0, p0, Lcom/robotium/solo/GLRenderWrapper;->height:I

    invoke-direct {p0, v2, v2, p1, v0}, Lcom/robotium/solo/GLRenderWrapper;->savePixels(IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 93
    :cond_0
    iget v0, p0, Lcom/robotium/solo/GLRenderWrapper;->width:I

    iget v1, p0, Lcom/robotium/solo/GLRenderWrapper;->height:I

    invoke-static {v2, v2, v0, v1, p1}, Lcom/robotium/solo/GLRenderWrapper;->savePixels(IIIILjavax/microedition/khronos/opengles/GL10;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 96
    :goto_0
    new-instance v0, Lcom/robotium/solo/Reflect;

    iget-object v1, p0, Lcom/robotium/solo/GLRenderWrapper;->view:Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, v1}, Lcom/robotium/solo/Reflect;-><init>(Ljava/lang/Object;)V

    const-string v1, "mDrawingCache"

    invoke-virtual {v0, v1}, Lcom/robotium/solo/Reflect;->field(Ljava/lang/String;)Lcom/robotium/solo/Reflect$FieldRf;

    move-result-object v0

    const-class v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/robotium/solo/Reflect$FieldRf;->type(Ljava/lang/Class;)Lcom/robotium/solo/Reflect$FieldRf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/robotium/solo/Reflect$FieldRf;->in(Ljava/lang/Object;)V

    .line 98
    iget-object p1, p0, Lcom/robotium/solo/GLRenderWrapper;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 99
    iput-boolean v2, p0, Lcom/robotium/solo/GLRenderWrapper;->takeScreenshot:Z

    :cond_1
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    .line 74
    iput p2, p0, Lcom/robotium/solo/GLRenderWrapper;->width:I

    .line 75
    iput p3, p0, Lcom/robotium/solo/GLRenderWrapper;->height:I

    .line 76
    iget-object v0, p0, Lcom/robotium/solo/GLRenderWrapper;->renderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-interface {v0, p1, p2, p3}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/robotium/solo/GLRenderWrapper;->renderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-interface {v0, p1, p2}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    return-void
.end method

.method public setLatch(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/robotium/solo/GLRenderWrapper;->latch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public setTakeScreenshot()V
    .locals 1

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/robotium/solo/GLRenderWrapper;->takeScreenshot:Z

    return-void
.end method

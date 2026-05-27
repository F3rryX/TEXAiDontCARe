.class public Lcom/eftimoff/androipathview/PathView;
.super Landroid/view/View;
.source "PathView.java"

# interfaces
.implements Lcom/eftimoff/androipathview/SvgUtils$AnimationStepListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;,
        Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "PathView"


# instance fields
.field private animatorBuilder:Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;

.field private animatorSetBuilder:Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;

.field private fillAfter:Z

.field private height:I

.field private mLoader:Ljava/lang/Thread;

.field private final mSvgLock:Ljava/lang/Object;

.field private naturalColors:Z

.field private paint:Landroid/graphics/Paint;

.field private paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eftimoff/androipathview/SvgUtils$SvgPath;",
            ">;"
        }
    .end annotation
.end field

.field private progress:F

.field private svgResourceId:I

.field private final svgUtils:Lcom/eftimoff/androipathview/SvgUtils;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, v0}, Lcom/eftimoff/androipathview/PathView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, p2, v0}, Lcom/eftimoff/androipathview/PathView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 113
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/eftimoff/androipathview/PathView;->paint:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Lcom/eftimoff/androipathview/SvgUtils;

    invoke-direct {v0, p3}, Lcom/eftimoff/androipathview/SvgUtils;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/eftimoff/androipathview/PathView;->svgUtils:Lcom/eftimoff/androipathview/SvgUtils;

    .line 41
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/eftimoff/androipathview/PathView;->paths:Ljava/util/List;

    .line 46
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/eftimoff/androipathview/PathView;->mSvgLock:Ljava/lang/Object;

    const/4 p3, 0x0

    .line 67
    iput p3, p0, Lcom/eftimoff/androipathview/PathView;->progress:F

    .line 114
    iget-object p3, p0, Lcom/eftimoff/androipathview/PathView;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/eftimoff/androipathview/PathView;->getFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/eftimoff/androipathview/PathView;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/eftimoff/androipathview/PathView;->svgResourceId:I

    return p0
.end method

.method static synthetic access$100(Lcom/eftimoff/androipathview/PathView;)Lcom/eftimoff/androipathview/SvgUtils;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/eftimoff/androipathview/PathView;->svgUtils:Lcom/eftimoff/androipathview/SvgUtils;

    return-object p0
.end method

.method static synthetic access$200(Lcom/eftimoff/androipathview/PathView;)Ljava/lang/Object;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/eftimoff/androipathview/PathView;->mSvgLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/eftimoff/androipathview/PathView;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/eftimoff/androipathview/PathView;->width:I

    return p0
.end method

.method static synthetic access$302(Lcom/eftimoff/androipathview/PathView;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcom/eftimoff/androipathview/PathView;->width:I

    return p1
.end method

.method static synthetic access$400(Lcom/eftimoff/androipathview/PathView;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/eftimoff/androipathview/PathView;->height:I

    return p0
.end method

.method static synthetic access$402(Lcom/eftimoff/androipathview/PathView;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcom/eftimoff/androipathview/PathView;->height:I

    return p1
.end method

.method static synthetic access$500(Lcom/eftimoff/androipathview/PathView;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/eftimoff/androipathview/PathView;->paths:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(Lcom/eftimoff/androipathview/PathView;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/eftimoff/androipathview/PathView;->paths:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/eftimoff/androipathview/PathView;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/eftimoff/androipathview/PathView;->updatePathsPhaseLocked()V

    return-void
.end method

.method private fillAfter(Landroid/graphics/Canvas;)V
    .locals 3

    .line 221
    iget v0, p0, Lcom/eftimoff/androipathview/PathView;->svgResourceId:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/eftimoff/androipathview/PathView;->fillAfter:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/eftimoff/androipathview/PathView;->progress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView;->svgUtils:Lcom/eftimoff/androipathview/SvgUtils;

    iget v1, p0, Lcom/eftimoff/androipathview/PathView;->width:I

    iget v2, p0, Lcom/eftimoff/androipathview/PathView;->height:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/eftimoff/androipathview/SvgUtils;->drawSvgAfter(Landroid/graphics/Canvas;II)V

    :cond_0
    return-void
.end method

.method private getFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 125
    sget-object v0, Lcom/eftimoff/mylibrary/R$styleable;->PathView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 128
    :try_start_0
    iget-object p2, p0, Lcom/eftimoff/androipathview/PathView;->paint:Landroid/graphics/Paint;

    sget v0, Lcom/eftimoff/mylibrary/R$styleable;->PathView_pathColor:I

    const v1, -0xff0100

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget-object p2, p0, Lcom/eftimoff/androipathview/PathView;->paint:Landroid/graphics/Paint;

    sget v0, Lcom/eftimoff/mylibrary/R$styleable;->PathView_pathWidth:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 130
    sget p2, Lcom/eftimoff/mylibrary/R$styleable;->PathView_svg:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/eftimoff/androipathview/PathView;->svgResourceId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_0

    .line 134
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    throw p2

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    return-void
.end method

.method private updatePathsPhaseLocked()V
    .locals 8

    .line 186
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView;->paths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 188
    iget-object v2, p0, Lcom/eftimoff/androipathview/PathView;->paths:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;

    .line 189
    iget-object v3, v2, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 190
    iget-object v3, v2, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->measure:Landroid/graphics/PathMeasure;

    iget v4, v2, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->length:F

    iget v5, p0, Lcom/eftimoff/androipathview/PathView;->progress:F

    mul-float v4, v4, v5

    iget-object v5, v2, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->path:Landroid/graphics/Path;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v4, v5, v7}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 192
    iget-object v2, v2, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v6, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getPathAnimator()Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView;->animatorBuilder:Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;

    if-nez v0, :cond_0

    .line 318
    new-instance v0, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;

    invoke-direct {v0, p0}, Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;-><init>(Lcom/eftimoff/androipathview/PathView;)V

    iput-object v0, p0, Lcom/eftimoff/androipathview/PathView;->animatorBuilder:Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView;->animatorBuilder:Lcom/eftimoff/androipathview/PathView$AnimatorBuilder;

    return-object v0
.end method

.method public getPathColor()I
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getPathWidth()F
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public getSequentialPathAnimator()Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView;->animatorSetBuilder:Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;

    if-nez v0, :cond_0

    .line 330
    new-instance v0, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;

    invoke-direct {v0, p0}, Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;-><init>(Lcom/eftimoff/androipathview/PathView;)V

    iput-object v0, p0, Lcom/eftimoff/androipathview/PathView;->animatorSetBuilder:Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView;->animatorSetBuilder:Lcom/eftimoff/androipathview/PathView$AnimatorSetBuilder;

    return-object v0
.end method

.method public getSvgResource()I
    .locals 1

    .line 377
    iget v0, p0, Lcom/eftimoff/androipathview/PathView;->svgResourceId:I

    return v0
.end method

.method public onAnimationStep()V
    .locals 0

    .line 553
    invoke-virtual {p0}, Lcom/eftimoff/androipathview/PathView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 198
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 200
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView;->mSvgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 202
    invoke-virtual {p0}, Lcom/eftimoff/androipathview/PathView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/eftimoff/androipathview/PathView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 203
    iget-object v1, p0, Lcom/eftimoff/androipathview/PathView;->paths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 205
    iget-object v3, p0, Lcom/eftimoff/androipathview/PathView;->paths:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;

    .line 206
    iget-object v4, v3, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->path:Landroid/graphics/Path;

    .line 207
    iget-boolean v5, p0, Lcom/eftimoff/androipathview/PathView;->naturalColors:Z

    if-eqz v5, :cond_0

    iget-object v3, v3, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->paint:Landroid/graphics/Paint;

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/eftimoff/androipathview/PathView;->paint:Landroid/graphics/Paint;

    .line 208
    :goto_1
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    :cond_1
    invoke-direct {p0, p1}, Lcom/eftimoff/androipathview/PathView;->fillAfter(Landroid/graphics/Canvas;)V

    .line 211
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 212
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 258
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 259
    iget v0, p0, Lcom/eftimoff/androipathview/PathView;->svgResourceId:I

    if-eqz v0, :cond_0

    .line 260
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 261
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 262
    invoke-virtual {p0, p1, p2}, Lcom/eftimoff/androipathview/PathView;->setMeasuredDimension(II)V

    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 269
    iget-object v1, p0, Lcom/eftimoff/androipathview/PathView;->paths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;

    int-to-float v2, v2

    .line 270
    iget-object v5, v4, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->bounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, v4, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v5, v0

    add-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v3, v3

    .line 271
    iget-object v5, v4, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->bounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v4, v4, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v5, v4

    int-to-float v4, v5

    add-float/2addr v4, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    goto :goto_0

    .line 273
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 274
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 275
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 276
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v4, -0x80000000

    if-ne v1, v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    if-ne p1, v4, :cond_3

    goto :goto_2

    :cond_3
    move v3, p2

    .line 292
    :goto_2
    invoke-virtual {p0, v2, v3}, Lcom/eftimoff/androipathview/PathView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 228
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 230
    iget-object p3, p0, Lcom/eftimoff/androipathview/PathView;->mLoader:Ljava/lang/Thread;

    if-eqz p3, :cond_0

    .line 232
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    const-string p4, "PathView"

    const-string v0, "Unexpected error"

    .line 234
    invoke-static {p4, v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    :cond_0
    :goto_0
    iget p3, p0, Lcom/eftimoff/androipathview/PathView;->svgResourceId:I

    if-eqz p3, :cond_1

    .line 238
    new-instance p3, Ljava/lang/Thread;

    new-instance p4, Lcom/eftimoff/androipathview/PathView$1;

    invoke-direct {p4, p0, p1, p2}, Lcom/eftimoff/androipathview/PathView$1;-><init>(Lcom/eftimoff/androipathview/PathView;II)V

    const-string p1, "SVG Loader"

    invoke-direct {p3, p4, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/eftimoff/androipathview/PathView;->mLoader:Ljava/lang/Thread;

    .line 252
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method public setFillAfter(Z)V
    .locals 0

    .line 301
    iput-boolean p1, p0, Lcom/eftimoff/androipathview/PathView;->fillAfter:Z

    return-void
.end method

.method public setPath(Landroid/graphics/Path;)V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView;->paths:Ljava/util/List;

    new-instance v1, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;

    iget-object v2, p0, Lcom/eftimoff/androipathview/PathView;->paint:Landroid/graphics/Paint;

    invoke-direct {v1, p1, v2}, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;-><init>(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object p1, p0, Lcom/eftimoff/androipathview/PathView;->mSvgLock:Ljava/lang/Object;

    monitor-enter p1

    .line 161
    :try_start_0
    invoke-direct {p0}, Lcom/eftimoff/androipathview/PathView;->updatePathsPhaseLocked()V

    .line 162
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPathColor(I)V
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setPathWidth(F)V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setPaths(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;)V"
        }
    .end annotation

    .line 145
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    .line 146
    iget-object v1, p0, Lcom/eftimoff/androipathview/PathView;->paths:Ljava/util/List;

    new-instance v2, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;

    iget-object v3, p0, Lcom/eftimoff/androipathview/PathView;->paint:Landroid/graphics/Paint;

    invoke-direct {v2, v0, v3}, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;-><init>(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/eftimoff/androipathview/PathView;->mSvgLock:Ljava/lang/Object;

    monitor-enter p1

    .line 149
    :try_start_0
    invoke-direct {p0}, Lcom/eftimoff/androipathview/PathView;->updatePathsPhaseLocked()V

    .line 150
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPercentage(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 175
    iput p1, p0, Lcom/eftimoff/androipathview/PathView;->progress:F

    .line 176
    iget-object p1, p0, Lcom/eftimoff/androipathview/PathView;->mSvgLock:Ljava/lang/Object;

    monitor-enter p1

    .line 177
    :try_start_0
    invoke-direct {p0}, Lcom/eftimoff/androipathview/PathView;->updatePathsPhaseLocked()V

    .line 178
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-virtual {p0}, Lcom/eftimoff/androipathview/PathView;->invalidate()V

    return-void

    :catchall_0
    move-exception v0

    .line 178
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 173
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "setPercentage not between 0.0f and 1.0f"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSvgResource(I)V
    .locals 0

    .line 386
    iput p1, p0, Lcom/eftimoff/androipathview/PathView;->svgResourceId:I

    return-void
.end method

.method public useNaturalColors()V
    .locals 1

    const/4 v0, 0x1

    .line 308
    iput-boolean v0, p0, Lcom/eftimoff/androipathview/PathView;->naturalColors:Z

    return-void
.end method

.class public Lcom/eftimoff/androipathview/SvgUtils;
.super Ljava/lang/Object;
.source "SvgUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eftimoff/androipathview/SvgUtils$AnimationStepListener;,
        Lcom/eftimoff/androipathview/SvgUtils$SvgPath;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SVGUtils"


# instance fields
.field private final mPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eftimoff/androipathview/SvgUtils$SvgPath;",
            ">;"
        }
    .end annotation
.end field

.field private final mSourcePaint:Landroid/graphics/Paint;

.field private mSvg:Lcom/caverock/androidsvg/SVG;


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eftimoff/androipathview/SvgUtils;->mPaths:Ljava/util/List;

    .line 48
    iput-object p1, p0, Lcom/eftimoff/androipathview/SvgUtils;->mSourcePaint:Landroid/graphics/Paint;

    return-void
.end method

.method static synthetic access$000(Lcom/eftimoff/androipathview/SvgUtils;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/eftimoff/androipathview/SvgUtils;->mPaths:Ljava/util/List;

    return-object p0
.end method

.method private rescaleCanvas(IIFLandroid/graphics/Canvas;)V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/eftimoff/androipathview/SvgUtils;->mSvg:Lcom/caverock/androidsvg/SVG;

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG;->getDocumentViewBox()Landroid/graphics/RectF;

    move-result-object v0

    int-to-float p1, p1

    .line 132
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    add-float/2addr v1, p3

    div-float v1, p1, v1

    int-to-float p2, p2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    add-float/2addr v2, p3

    div-float p3, p2, v2

    invoke-static {v1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 136
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float v1, v1, p3

    sub-float/2addr p1, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v0, v0, p3

    sub-float/2addr p2, v0

    div-float/2addr p2, v1

    invoke-virtual {p4, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 138
    invoke-virtual {p4, p3, p3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 140
    iget-object p1, p0, Lcom/eftimoff/androipathview/SvgUtils;->mSvg:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {p1, p4}, Lcom/caverock/androidsvg/SVG;->renderToCanvas(Landroid/graphics/Canvas;)V

    return-void
.end method


# virtual methods
.method public drawSvgAfter(Landroid/graphics/Canvas;II)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/eftimoff/androipathview/SvgUtils;->mSourcePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    .line 76
    invoke-direct {p0, p2, p3, v0, p1}, Lcom/eftimoff/androipathview/SvgUtils;->rescaleCanvas(IIFLandroid/graphics/Canvas;)V

    return-void
.end method

.method public getPathsForViewport(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/eftimoff/androipathview/SvgUtils$SvgPath;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/eftimoff/androipathview/SvgUtils;->mSourcePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    .line 88
    new-instance v1, Lcom/eftimoff/androipathview/SvgUtils$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/eftimoff/androipathview/SvgUtils$1;-><init>(Lcom/eftimoff/androipathview/SvgUtils;IIF)V

    .line 115
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/eftimoff/androipathview/SvgUtils;->rescaleCanvas(IIFLandroid/graphics/Canvas;)V

    .line 117
    iget-object p1, p0, Lcom/eftimoff/androipathview/SvgUtils;->mPaths:Ljava/util/List;

    return-object p1
.end method

.method public load(Landroid/content/Context;I)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/eftimoff/androipathview/SvgUtils;->mSvg:Lcom/caverock/androidsvg/SVG;

    if-eqz v0, :cond_0

    return-void

    .line 60
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/caverock/androidsvg/SVG;->getFromResource(Landroid/content/Context;I)Lcom/caverock/androidsvg/SVG;

    move-result-object p1

    iput-object p1, p0, Lcom/eftimoff/androipathview/SvgUtils;->mSvg:Lcom/caverock/androidsvg/SVG;

    .line 61
    sget-object p2, Lcom/caverock/androidsvg/PreserveAspectRatio;->UNSCALED:Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-virtual {p1, p2}, Lcom/caverock/androidsvg/SVG;->setDocumentPreserveAspectRatio(Lcom/caverock/androidsvg/PreserveAspectRatio;)V
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "SVGUtils"

    const-string v0, "Could not load specified SVG resource"

    .line 63
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

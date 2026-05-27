.class public Lcom/eftimoff/androipathview/SvgUtils$SvgPath;
.super Ljava/lang/Object;
.source "SvgUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eftimoff/androipathview/SvgUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SvgPath"
.end annotation


# static fields
.field private static final MAX_CLIP:Landroid/graphics/Region;

.field private static final REGION:Landroid/graphics/Region;


# instance fields
.field animationStepListener:Lcom/eftimoff/androipathview/SvgUtils$AnimationStepListener;

.field final bounds:Landroid/graphics/Rect;

.field length:F

.field final measure:Landroid/graphics/PathMeasure;

.field final paint:Landroid/graphics/Paint;

.field final path:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 151
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    sput-object v0, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->REGION:Landroid/graphics/Region;

    .line 155
    new-instance v0, Landroid/graphics/Region;

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Region;-><init>(IIII)V

    sput-object v0, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->MAX_CLIP:Landroid/graphics/Region;

    return-void
.end method

.method constructor <init>(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 1

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->path:Landroid/graphics/Path;

    .line 191
    iput-object p2, p0, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->paint:Landroid/graphics/Paint;

    .line 193
    new-instance p2, Landroid/graphics/PathMeasure;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object p2, p0, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->measure:Landroid/graphics/PathMeasure;

    .line 194
    invoke-virtual {p2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p2

    iput p2, p0, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->length:F

    .line 196
    sget-object p2, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->REGION:Landroid/graphics/Region;

    sget-object v0, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->MAX_CLIP:Landroid/graphics/Region;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 197
    invoke-virtual {p2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->bounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getLength()F
    .locals 1

    .line 228
    iget v0, p0, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->length:F

    return v0
.end method

.method public setAnimationStepListener(Lcom/eftimoff/androipathview/SvgUtils$AnimationStepListener;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->animationStepListener:Lcom/eftimoff/androipathview/SvgUtils$AnimationStepListener;

    return-void
.end method

.method public setLength(F)V
    .locals 4

    .line 215
    iget-object v0, p0, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 216
    iget-object v0, p0, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->measure:Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->path:Landroid/graphics/Path;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p1, v1, v3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 217
    iget-object p1, p0, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v2, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 219
    iget-object p1, p0, Lcom/eftimoff/androipathview/SvgUtils$SvgPath;->animationStepListener:Lcom/eftimoff/androipathview/SvgUtils$AnimationStepListener;

    if-eqz p1, :cond_0

    .line 220
    invoke-interface {p1}, Lcom/eftimoff/androipathview/SvgUtils$AnimationStepListener;->onAnimationStep()V

    :cond_0
    return-void
.end method

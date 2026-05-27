.class public Lcom/texa/careapp/utils/ShapeHolder;
.super Ljava/lang/Object;
.source "ShapeHolder.java"


# instance fields
.field private alpha:F

.field private color:I

.field private paint:Landroid/graphics/Paint;

.field private shape:Landroid/graphics/drawable/ShapeDrawable;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/ShapeDrawable;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/texa/careapp/utils/ShapeHolder;->x:F

    iput v0, p0, Lcom/texa/careapp/utils/ShapeHolder;->y:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    iput v0, p0, Lcom/texa/careapp/utils/ShapeHolder;->alpha:F

    .line 87
    iput-object p1, p0, Lcom/texa/careapp/utils/ShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/texa/careapp/utils/ShapeHolder;->color:I

    return v0
.end method

.method public getHeight()F
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/texa/careapp/utils/ShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/shapes/Shape;->getHeight()F

    move-result v0

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/texa/careapp/utils/ShapeHolder;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getShape()Landroid/graphics/drawable/ShapeDrawable;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/texa/careapp/utils/ShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/texa/careapp/utils/ShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/shapes/Shape;->getWidth()F

    move-result v0

    return v0
.end method

.method public getX()F
    .locals 1

    .line 32
    iget v0, p0, Lcom/texa/careapp/utils/ShapeHolder;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 40
    iget v0, p0, Lcom/texa/careapp/utils/ShapeHolder;->y:F

    return v0
.end method

.method public resizeShape(FF)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/texa/careapp/utils/ShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    .line 62
    iput p1, p0, Lcom/texa/careapp/utils/ShapeHolder;->alpha:F

    .line 63
    iget-object v0, p0, Lcom/texa/careapp/utils/ShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float p1, p1, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/texa/careapp/utils/ShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iput p1, p0, Lcom/texa/careapp/utils/ShapeHolder;->color:I

    return-void
.end method

.method public setHeight(F)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/texa/careapp/utils/ShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/graphics/drawable/shapes/Shape;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/texa/careapp/utils/ShapeHolder;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public setShape(Landroid/graphics/drawable/ShapeDrawable;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/texa/careapp/utils/ShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    return-void
.end method

.method public setWidth(F)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/texa/careapp/utils/ShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/graphics/drawable/shapes/Shape;->getHeight()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    return-void
.end method

.method public setX(F)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/texa/careapp/utils/ShapeHolder;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/texa/careapp/utils/ShapeHolder;->y:F

    return-void
.end method

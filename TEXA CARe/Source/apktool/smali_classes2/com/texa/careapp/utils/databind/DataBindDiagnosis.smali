.class public Lcom/texa/careapp/utils/databind/DataBindDiagnosis;
.super Ljava/lang/Object;
.source "DataBindDiagnosis.java"


# instance fields
.field public height:F

.field public width:F


# direct methods
.method public constructor <init>(IILandroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    div-int/lit8 p1, p1, 0x7

    div-int/lit8 p2, p2, 0x4

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40c00000    # 6.0f

    mul-float p2, p2, p1

    .line 30
    iput p2, p0, Lcom/texa/careapp/utils/databind/DataBindDiagnosis;->height:F

    const/high16 p2, 0x40800000    # 4.0f

    mul-float p1, p1, p2

    .line 31
    iput p1, p0, Lcom/texa/careapp/utils/databind/DataBindDiagnosis;->width:F

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-float p1, p1

    const/high16 p2, 0x40e00000    # 7.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x40c00000    # 6.0f

    mul-float p2, p2, p1

    .line 24
    iput p2, p0, Lcom/texa/careapp/utils/databind/DataBindDiagnosis;->height:F

    const/high16 p2, 0x40800000    # 4.0f

    mul-float p1, p1, p2

    .line 25
    iput p1, p0, Lcom/texa/careapp/utils/databind/DataBindDiagnosis;->width:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x44034000    # 525.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/texa/careapp/utils/databind/DataBindDiagnosis;->height:F

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v0, 0x43af0000    # 350.0f

    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/texa/careapp/utils/databind/DataBindDiagnosis;->width:F

    return-void
.end method


# virtual methods
.method public getHeight()F
    .locals 1

    .line 35
    iget v0, p0, Lcom/texa/careapp/utils/databind/DataBindDiagnosis;->height:F

    return v0
.end method

.method public getMeasureUnit(F)F
    .locals 4

    .line 49
    invoke-virtual {p0}, Lcom/texa/careapp/utils/databind/DataBindDiagnosis;->getSquareMeasure()F

    move-result v0

    mul-float v0, v0, p1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 50
    invoke-virtual {p0}, Lcom/texa/careapp/utils/databind/DataBindDiagnosis;->getSquareMeasure()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string p1, "measure: %s * %s = %s"

    invoke-static {p1, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public getSquareMeasure()F
    .locals 4

    .line 43
    invoke-virtual {p0}, Lcom/texa/careapp/utils/databind/DataBindDiagnosis;->getWidth()F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 44
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "square Base Measure %s"

    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public getWidth()F
    .locals 1

    .line 39
    iget v0, p0, Lcom/texa/careapp/utils/databind/DataBindDiagnosis;->width:F

    return v0
.end method

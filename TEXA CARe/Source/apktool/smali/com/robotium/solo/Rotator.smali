.class Lcom/robotium/solo/Rotator;
.super Ljava/lang/Object;
.source "Rotator.java"


# static fields
.field private static final EVENT_TIME_INTERVAL_MS:I = 0xa

.field public static final LARGE:I = 0x0

.field public static final SMALL:I = 0x1


# instance fields
.field private final _instrument:Landroid/app/Instrumentation;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/robotium/solo/Rotator;->_instrument:Landroid/app/Instrumentation;

    return-void
.end method


# virtual methods
.method public generateRotateGesture(ILandroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 32

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 26
    iget v4, v2, Landroid/graphics/PointF;->x:F

    .line 27
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 28
    iget v5, v3, Landroid/graphics/PointF;->x:F

    .line 29
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    const/4 v6, 0x2

    new-array v15, v6, [Landroid/view/MotionEvent$PointerCoords;

    .line 43
    new-instance v7, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v7}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 44
    new-instance v8, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v8}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 45
    iput v4, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 46
    iput v2, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 47
    iput v2, v7, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 48
    iput v2, v7, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 49
    iput v5, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 50
    iput v3, v8, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 51
    iput v2, v8, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 52
    iput v2, v8, Landroid/view/MotionEvent$PointerCoords;->size:F

    const/4 v2, 0x0

    aput-object v7, v15, v2

    const/4 v3, 0x1

    aput-object v8, v15, v3

    new-array v4, v6, [Landroid/view/MotionEvent$PointerProperties;

    .line 57
    new-instance v5, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 58
    new-instance v14, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v14}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 59
    iput v2, v5, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 60
    iput v3, v5, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 61
    iput v3, v14, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 62
    iput v3, v14, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    aput-object v5, v4, v2

    aput-object v14, v4, v3

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v5, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1002

    const/16 v26, 0x0

    move-wide/from16 v6, v22

    move-wide/from16 v8, v24

    move-object v12, v4

    move-object v13, v15

    move-object v2, v14

    move v14, v5

    move-object v5, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v26

    .line 68
    invoke-static/range {v6 .. v21}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v6

    .line 75
    iget-object v7, v0, Lcom/robotium/solo/Rotator;->_instrument:Landroid/app/Instrumentation;

    invoke-virtual {v7, v6}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 77
    iget v6, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v10, v6, 0x5

    const/4 v11, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1002

    const/16 v21, 0x0

    move-wide/from16 v6, v22

    move-object v13, v5

    invoke-static/range {v6 .. v21}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v6

    .line 82
    iget-object v7, v0, Lcom/robotium/solo/Rotator;->_instrument:Landroid/app/Instrumentation;

    invoke-virtual {v7, v6}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    const-wide/16 v6, 0x0

    if-eqz v1, :cond_1

    if-eq v1, v3, :cond_0

    move-wide/from16 v26, v6

    goto :goto_1

    :cond_0
    const-wide v8, 0x3fb999999999999aL    # 0.1

    goto :goto_0

    :cond_1
    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    :goto_0
    move-wide/from16 v26, v8

    :goto_1
    move-wide/from16 v30, v6

    move-wide/from16 v6, v24

    move-wide/from16 v24, v30

    :goto_2
    const-wide v8, 0x400921fb54442d18L    # Math.PI

    const-wide/16 v28, 0xa

    cmpg-double v1, v24, v8

    if-gez v1, :cond_2

    add-long v28, v6, v28

    const/4 v1, 0x0

    .line 100
    aget-object v6, v5, v1

    iget v7, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    float-to-double v10, v7

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    add-double/2addr v10, v12

    double-to-float v7, v10

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 101
    aget-object v6, v5, v1

    iget v7, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    float-to-double v10, v7

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    add-double/2addr v10, v12

    double-to-float v7, v10

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 102
    aget-object v6, v5, v3

    iget v7, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    float-to-double v10, v7

    add-double v8, v24, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    add-double/2addr v10, v12

    double-to-float v7, v10

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 103
    aget-object v6, v5, v3

    iget v7, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    float-to-double v10, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    add-double/2addr v10, v7

    double-to-float v7, v10

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v10, 0x2

    const/4 v11, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1002

    const/16 v21, 0x0

    move-wide/from16 v6, v22

    move-wide/from16 v8, v28

    move-object v12, v4

    move-object v13, v5

    .line 105
    invoke-static/range {v6 .. v21}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v6

    .line 109
    iget-object v7, v0, Lcom/robotium/solo/Rotator;->_instrument:Landroid/app/Instrumentation;

    invoke-virtual {v7, v6}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    add-double v24, v24, v26

    move-wide/from16 v6, v28

    goto :goto_2

    :cond_2
    add-long v24, v6, v28

    .line 114
    iget v1, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v10, v1, 0x6

    const/4 v11, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1002

    const/16 v21, 0x0

    move-wide/from16 v6, v22

    move-wide/from16 v8, v24

    move-object v12, v4

    move-object v13, v5

    invoke-static/range {v6 .. v21}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 119
    iget-object v2, v0, Lcom/robotium/solo/Rotator;->_instrument:Landroid/app/Instrumentation;

    invoke-virtual {v2, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    add-long v8, v24, v28

    const/4 v10, 0x1

    const/4 v11, 0x1

    .line 122
    invoke-static/range {v6 .. v21}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 125
    iget-object v2, v0, Lcom/robotium/solo/Rotator;->_instrument:Landroid/app/Instrumentation;

    invoke-virtual {v2, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    return-void
.end method

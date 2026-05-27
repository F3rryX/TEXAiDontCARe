.class Lcom/robotium/solo/Zoomer;
.super Ljava/lang/Object;
.source "Zoomer.java"


# static fields
.field public static final EVENT_TIME_INTERVAL_MS:I = 0xa

.field public static final GESTURE_DURATION_MS:I = 0x3e8


# instance fields
.field private final _instrument:Landroid/app/Instrumentation;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/robotium/solo/Zoomer;->_instrument:Landroid/app/Instrumentation;

    return-void
.end method


# virtual methods
.method public generateZoomGesture(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 26
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    .line 28
    iget v15, v1, Landroid/graphics/PointF;->x:F

    .line 29
    iget v14, v1, Landroid/graphics/PointF;->y:F

    .line 30
    iget v13, v2, Landroid/graphics/PointF;->x:F

    .line 31
    iget v12, v2, Landroid/graphics/PointF;->y:F

    .line 33
    iget v11, v3, Landroid/graphics/PointF;->x:F

    .line 34
    iget v10, v3, Landroid/graphics/PointF;->y:F

    .line 35
    iget v9, v4, Landroid/graphics/PointF;->x:F

    .line 36
    iget v8, v4, Landroid/graphics/PointF;->y:F

    const/4 v1, 0x2

    new-array v7, v1, [Landroid/view/MotionEvent$PointerCoords;

    .line 47
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 48
    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 49
    iput v15, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 50
    iput v14, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/high16 v4, 0x3f800000    # 1.0f

    .line 51
    iput v4, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 52
    iput v4, v2, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 53
    iput v13, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 54
    iput v12, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 55
    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 56
    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->size:F

    const/4 v6, 0x0

    aput-object v2, v7, v6

    const/4 v5, 0x1

    aput-object v3, v7, v5

    new-array v3, v1, [Landroid/view/MotionEvent$PointerProperties;

    .line 61
    new-instance v1, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 62
    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 63
    iput v6, v1, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 64
    iput v5, v1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 65
    iput v5, v4, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 66
    iput v5, v4, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    aput-object v1, v3, v6

    aput-object v4, v3, v5

    const/16 v16, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    const/high16 v25, 0x3f800000    # 1.0f

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-wide/from16 v1, v17

    move-object/from16 v30, v3

    move-object/from16 v31, v4

    move-wide/from16 v3, v19

    const/16 v32, 0x1

    move/from16 v5, v16

    const/16 v33, 0x0

    move/from16 v6, v21

    move-object/from16 v21, v7

    move-object/from16 v7, v30

    move/from16 v34, v8

    move-object/from16 v8, v21

    move/from16 v35, v9

    move/from16 v9, v22

    move/from16 v22, v10

    move/from16 v10, v23

    move/from16 v23, v11

    move/from16 v11, v24

    move/from16 v24, v12

    move/from16 v12, v25

    move/from16 v25, v13

    move/from16 v13, v26

    move/from16 v26, v14

    move/from16 v14, v27

    move/from16 v27, v15

    move/from16 v15, v28

    move/from16 v16, v29

    .line 72
    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 82
    iget-object v2, v0, Lcom/robotium/solo/Zoomer;->_instrument:Landroid/app/Instrumentation;

    invoke-virtual {v2, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    move-object/from16 v1, v31

    .line 84
    iget v1, v1, Landroid/view/MotionEvent$PointerProperties;->id:I

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v5, v1, 0x5

    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide/from16 v1, v17

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 94
    iget-object v2, v0, Lcom/robotium/solo/Zoomer;->_instrument:Landroid/app/Instrumentation;

    invoke-virtual {v2, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    sub-float v11, v23, v27

    const/16 v15, 0x64

    int-to-float v1, v15

    div-float v23, v11, v1

    sub-float v10, v22, v26

    div-float v22, v10, v1

    sub-float v9, v35, v25

    div-float v25, v9, v1

    sub-float v8, v34, v24

    div-float v24, v8, v1

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v15, :cond_0

    const-wide/16 v1, 0xa

    add-long v19, v19, v1

    .line 107
    aget-object v1, v21, v33

    iget v2, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float v2, v2, v23

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 108
    aget-object v1, v21, v33

    iget v2, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float v2, v2, v22

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 109
    aget-object v1, v21, v32

    iget v2, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float v2, v2, v25

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 110
    aget-object v1, v21, v32

    iget v2, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float v2, v2, v24

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-wide/from16 v1, v17

    move-wide/from16 v3, v19

    move-object/from16 v7, v30

    move-object/from16 v8, v21

    move/from16 v28, v14

    move/from16 v14, v16

    const/16 v29, 0x64

    move/from16 v15, v26

    move/from16 v16, v27

    .line 112
    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 122
    iget-object v2, v0, Lcom/robotium/solo/Zoomer;->_instrument:Landroid/app/Instrumentation;

    invoke-virtual {v2, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    add-int/lit8 v14, v28, 0x1

    const/16 v15, 0x64

    goto :goto_0

    :cond_0
    return-void
.end method

.class Lcom/robotium/solo/Tapper;
.super Ljava/lang/Object;
.source "Tapper.java"


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
    iput-object p1, p0, Lcom/robotium/solo/Tapper;->_instrument:Landroid/app/Instrumentation;

    return-void
.end method


# virtual methods
.method public varargs generateTapGesture(I[Landroid/graphics/PointF;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 26
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 30
    aget-object v5, v1, v4

    iget v5, v5, Landroid/graphics/PointF;->x:F

    .line 31
    aget-object v6, v1, v4

    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 35
    array-length v7, v1

    const/4 v8, 0x0

    const/4 v15, 0x2

    const/4 v9, 0x1

    if-ne v7, v15, :cond_0

    .line 38
    aget-object v7, v1, v9

    iget v8, v7, Landroid/graphics/PointF;->x:F

    .line 39
    aget-object v7, v1, v9

    iget v7, v7, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 42
    :goto_0
    array-length v10, v1

    new-array v14, v10, [Landroid/view/MotionEvent$PointerCoords;

    .line 43
    new-instance v10, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v10}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 44
    iput v5, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 45
    iput v6, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/high16 v5, 0x3f800000    # 1.0f

    .line 46
    iput v5, v10, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 47
    iput v5, v10, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 48
    aput-object v10, v14, v4

    .line 49
    new-instance v6, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v6}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 50
    array-length v10, v1

    if-ne v10, v15, :cond_1

    .line 52
    iput v8, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 53
    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 54
    iput v5, v6, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 55
    iput v5, v6, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 56
    aput-object v6, v14, v9

    .line 59
    :cond_1
    array-length v5, v1

    new-array v13, v5, [Landroid/view/MotionEvent$PointerProperties;

    .line 60
    new-instance v5, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 61
    iput v4, v5, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 62
    iput v9, v5, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 63
    aput-object v5, v13, v4

    .line 64
    new-instance v12, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v12}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 65
    array-length v5, v1

    if-ne v5, v15, :cond_2

    .line 67
    iput v9, v12, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 68
    iput v9, v12, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 69
    aput-object v12, v13, v9

    :cond_2
    move/from16 v10, p1

    move-wide/from16 v20, v2

    const/4 v11, 0x0

    :goto_1
    if-eq v11, v10, :cond_4

    const/4 v6, 0x0

    .line 75
    array-length v7, v1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1002

    const/16 v27, 0x0

    move-wide/from16 v2, v18

    move-wide/from16 v4, v20

    move-object v8, v13

    move-object v9, v14

    move/from16 v10, v16

    move/from16 v28, v11

    move/from16 v11, v17

    move-object/from16 v29, v12

    move/from16 v12, v22

    move-object/from16 v22, v13

    move/from16 v13, v23

    move-object/from16 v23, v14

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v16, v26

    move/from16 v17, v27

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    .line 79
    iget-object v3, v0, Lcom/robotium/solo/Tapper;->_instrument:Landroid/app/Instrumentation;

    invoke-virtual {v3, v2}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 81
    array-length v2, v1

    const-wide/16 v24, 0xa

    const/4 v15, 0x2

    if-ne v2, v15, :cond_3

    move-object/from16 v14, v29

    .line 83
    iget v2, v14, Landroid/view/MotionEvent$PointerProperties;->id:I

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v6, v2, 0x5

    array-length v7, v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v26, 0x1002

    const/16 v27, 0x0

    move-wide/from16 v2, v18

    move-wide/from16 v4, v20

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    move-object/from16 v30, v14

    move/from16 v14, v16

    const/16 v29, 0x2

    move/from16 v15, v17

    move/from16 v16, v26

    move/from16 v17, v27

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    .line 91
    iget-object v3, v0, Lcom/robotium/solo/Tapper;->_instrument:Landroid/app/Instrumentation;

    invoke-virtual {v3, v2}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    add-long v20, v20, v24

    move-object/from16 v15, v30

    .line 94
    iget v2, v15, Landroid/view/MotionEvent$PointerProperties;->id:I

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v6, v2, 0x6

    array-length v7, v1

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1002

    const/16 v26, 0x0

    move-wide/from16 v2, v18

    move-wide/from16 v4, v20

    move-object/from16 v27, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v26

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    .line 102
    iget-object v3, v0, Lcom/robotium/solo/Tapper;->_instrument:Landroid/app/Instrumentation;

    invoke-virtual {v3, v2}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    goto :goto_2

    :cond_3
    move-object/from16 v27, v29

    const/16 v29, 0x2

    :goto_2
    add-long v20, v20, v24

    const/4 v6, 0x1

    .line 106
    array-length v7, v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1002

    const/16 v17, 0x0

    move-wide/from16 v2, v18

    move-wide/from16 v4, v20

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    .line 110
    iget-object v3, v0, Lcom/robotium/solo/Tapper;->_instrument:Landroid/app/Instrumentation;

    invoke-virtual {v3, v2}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    add-int/lit8 v11, v28, 0x1

    move/from16 v10, p1

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    move-object/from16 v12, v27

    const/4 v15, 0x2

    goto/16 :goto_1

    :cond_4
    return-void
.end method

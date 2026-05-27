.class Lcom/robotium/solo/Illustrator;
.super Ljava/lang/Object;
.source "Illustrator.java"


# instance fields
.field private inst:Landroid/app/Instrumentation;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/robotium/solo/Illustrator;->inst:Landroid/app/Instrumentation;

    return-void
.end method


# virtual methods
.method public illustrate(Lcom/robotium/solo/Illustration;)V
    .locals 28

    move-object/from16 v0, p0

    if-eqz p1, :cond_2

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/robotium/solo/Illustration;->getPoints()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 30
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    const/4 v1, 0x1

    new-array v15, v1, [Landroid/view/MotionEvent$PointerCoords;

    .line 33
    new-instance v14, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v14}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    new-array v13, v1, [Landroid/view/MotionEvent$PointerProperties;

    .line 35
    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v12, 0x0

    .line 36
    iput v12, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/robotium/solo/Illustration;->getToolType()I

    move-result v3

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    aput-object v2, v13, v12

    aput-object v14, v15, v12

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/robotium/solo/Illustration;->getPoints()Ljava/util/ArrayList;

    move-result-object v11

    const/4 v10, 0x0

    .line 41
    :goto_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-ge v10, v2, :cond_1

    .line 42
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/robotium/solo/PressurePoint;

    .line 43
    iget v4, v2, Lcom/robotium/solo/PressurePoint;->x:F

    iput v4, v14, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 44
    iget v4, v2, Lcom/robotium/solo/PressurePoint;->y:F

    iput v4, v14, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 45
    iget v2, v2, Lcom/robotium/solo/PressurePoint;->pressure:F

    iput v2, v14, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 46
    iput v3, v14, Landroid/view/MotionEvent$PointerCoords;->size:F

    if-nez v10, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    const/4 v6, 0x2

    .line 53
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v7, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1002

    const/16 v25, 0x0

    move-wide/from16 v2, v18

    move-object v8, v13

    move-object v9, v15

    move/from16 v26, v10

    move/from16 v10, v16

    move-object/from16 p1, v11

    move/from16 v11, v17

    const/16 v27, 0x0

    move/from16 v12, v20

    move-object/from16 v20, v13

    move/from16 v13, v21

    move-object v1, v14

    move/from16 v14, v22

    move-object/from16 v22, v15

    move/from16 v15, v23

    move/from16 v16, v24

    move/from16 v17, v25

    .line 54
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    .line 64
    :try_start_0
    iget-object v3, v0, Lcom/robotium/solo/Illustrator;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v3, v2}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v10, v26, 0x1

    move-object/from16 v11, p1

    move-object v14, v1

    move-object/from16 v13, v20

    move-object/from16 v15, v22

    const/4 v1, 0x1

    const/4 v12, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 p1, v11

    move-object/from16 v20, v13

    move-object v1, v14

    move-object/from16 v22, v15

    const/16 v27, 0x0

    const/4 v6, 0x1

    aput-object v1, v22, v27

    .line 70
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    move-object/from16 v4, p1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/robotium/solo/PressurePoint;

    .line 71
    iget v4, v2, Lcom/robotium/solo/PressurePoint;->x:F

    iput v4, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 72
    iget v4, v2, Lcom/robotium/solo/PressurePoint;->y:F

    iput v4, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 73
    iget v2, v2, Lcom/robotium/solo/PressurePoint;->pressure:F

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 74
    iput v3, v1, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 75
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1002

    const/16 v17, 0x0

    move-wide/from16 v2, v18

    move-object/from16 v8, v20

    move-object/from16 v9, v22

    .line 76
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 86
    :try_start_1
    iget-object v2, v0, Lcom/robotium/solo/Illustrator;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v2, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void

    .line 26
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illustration must not be null and requires at least one point."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

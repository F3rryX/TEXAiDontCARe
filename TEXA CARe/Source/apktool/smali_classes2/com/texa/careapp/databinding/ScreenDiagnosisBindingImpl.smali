.class public Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;
.super Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;
.source "ScreenDiagnosisBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private mOldDiagnosisGetMeasureUnitFloat10f:F

.field private mOldDiagnosisGetMeasureUnitFloat15f:F

.field private mOldDiagnosisGetMeasureUnitFloat20f:F

.field private mOldDiagnosisGetMeasureUnitFloat225f:F

.field private mOldDiagnosisGetMeasureUnitFloat25f:F

.field private mOldDiagnosisGetMeasureUnitFloat35f:F

.field private mOldDiagnosisGetMeasureUnitFloat40f:F

.field private mOldDiagnosisGetMeasureUnitFloat60f:F

.field private mOldDiagnosisGetWidth:F

.field private final mboundView1:Landroid/widget/TextView;

.field private final mboundView2:Landroid/widget/RelativeLayout;

.field private final mboundView25:Landroid/widget/LinearLayout;

.field private final mboundView26:Landroid/widget/LinearLayout;

.field private final mboundView27:Landroid/widget/LinearLayout;

.field private final mboundView28:Landroid/widget/LinearLayout;

.field private final mboundView3:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0128

    const/16 v2, 0x1d

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a012a

    const/16 v2, 0x1e

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0152

    const/16 v2, 0x1f

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0153

    const/16 v2, 0x20

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0121

    const/16 v2, 0x21

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a012c

    const/16 v2, 0x22

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0157

    const/16 v2, 0x23

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0158

    const/16 v2, 0x24

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0160

    const/16 v2, 0x25

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0161

    const/16 v2, 0x26

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0125

    const/16 v2, 0x27

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0126

    const/16 v2, 0x28

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 60
    sget-object v0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x29

    invoke-static {p1, p2, v2, v0, v1}, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 39

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v4, 0xb

    .line 63
    aget-object v4, p3, v4

    check-cast v4, Landroid/widget/ImageView;

    const/16 v5, 0xa

    aget-object v5, p3, v5

    check-cast v5, Landroid/widget/ImageView;

    const/16 v6, 0xc

    aget-object v6, p3, v6

    check-cast v6, Landroid/widget/ImageView;

    const/16 v7, 0x21

    aget-object v7, p3, v7

    check-cast v7, Landroid/widget/TextView;

    const/16 v8, 0x17

    aget-object v8, p3, v8

    check-cast v8, Landroid/widget/ImageView;

    const/16 v9, 0x16

    aget-object v9, p3, v9

    check-cast v9, Landroid/widget/ImageView;

    const/16 v10, 0x18

    aget-object v10, p3, v10

    check-cast v10, Landroid/widget/ImageView;

    const/16 v11, 0x27

    aget-object v11, p3, v11

    check-cast v11, Landroid/widget/TextView;

    const/16 v12, 0x28

    aget-object v12, p3, v12

    check-cast v12, Landroid/widget/TextView;

    const/4 v13, 0x6

    aget-object v13, p3, v13

    check-cast v13, Landroid/view/View;

    const/16 v14, 0x1d

    aget-object v14, p3, v14

    check-cast v14, Landroid/widget/LinearLayout;

    const/4 v15, 0x4

    aget-object v15, p3, v15

    check-cast v15, Landroid/widget/RelativeLayout;

    const/16 v16, 0x1e

    aget-object v16, p3, v16

    check-cast v16, Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v17, 0x5

    aget-object v17, p3, v17

    check-cast v17, Lcom/eftimoff/androipathview/PathView;

    const/16 v18, 0x22

    aget-object v18, p3, v18

    check-cast v18, Landroid/widget/LinearLayout;

    const/16 v19, 0x1f

    aget-object v19, p3, v19

    check-cast v19, Lcom/texa/careapp/views/RelativeTimeTextView;

    const/16 v20, 0x20

    aget-object v20, p3, v20

    check-cast v20, Landroid/widget/TextView;

    const/16 v21, 0x11

    aget-object v21, p3, v21

    check-cast v21, Landroid/widget/ImageView;

    const/16 v22, 0x10

    aget-object v22, p3, v22

    check-cast v22, Landroid/widget/ImageView;

    const/16 v23, 0x12

    aget-object v23, p3, v23

    check-cast v23, Landroid/widget/ImageView;

    const/16 v24, 0x23

    aget-object v24, p3, v24

    check-cast v24, Landroid/widget/TextView;

    const/16 v25, 0x24

    aget-object v25, p3, v25

    check-cast v25, Landroid/widget/TextView;

    const/16 v26, 0x0

    aget-object v26, p3, v26

    check-cast v26, Landroid/widget/LinearLayout;

    const/16 v27, 0x14

    aget-object v27, p3, v27

    check-cast v27, Landroid/widget/ImageView;

    const/16 v28, 0x13

    aget-object v28, p3, v28

    check-cast v28, Landroid/widget/ImageView;

    const/16 v29, 0x15

    aget-object v29, p3, v29

    check-cast v29, Landroid/widget/ImageView;

    const/16 v30, 0xe

    aget-object v30, p3, v30

    check-cast v30, Landroid/widget/ImageView;

    const/16 v31, 0xd

    aget-object v31, p3, v31

    check-cast v31, Landroid/widget/ImageView;

    const/16 v32, 0xf

    aget-object v32, p3, v32

    check-cast v32, Landroid/widget/ImageView;

    const/16 v33, 0x25

    aget-object v33, p3, v33

    check-cast v33, Landroid/widget/TextView;

    const/16 v34, 0x26

    aget-object v34, p3, v34

    check-cast v34, Landroid/widget/TextView;

    const/16 v35, 0x8

    aget-object v35, p3, v35

    check-cast v35, Landroid/widget/ImageView;

    const/16 v36, 0x7

    aget-object v36, p3, v36

    check-cast v36, Landroid/widget/ImageView;

    const/16 v37, 0x9

    aget-object v37, p3, v37

    check-cast v37, Landroid/widget/ImageView;

    const/16 v38, 0x0

    move/from16 v3, v38

    invoke-direct/range {v0 .. v37}, Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroidx/appcompat/widget/AppCompatTextView;Lcom/eftimoff/androipathview/PathView;Landroid/widget/LinearLayout;Lcom/texa/careapp/views/RelativeTimeTextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 301
    iput-wide v0, v2, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mDirtyFlags:J

    .line 99
    iget-object v0, v2, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisAdvancedCircle:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 100
    iget-object v0, v2, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisAdvancedElement:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 101
    iget-object v0, v2, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisAdvancedImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 102
    iget-object v0, v2, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisBatteryStateCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 103
    iget-object v0, v2, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisBatteryStateElement:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 104
    iget-object v0, v2, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisBatteryStateImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 105
    iget-object v0, v2, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisCarBotPlaceholder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 106
    iget-object v0, v2, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisCarLayoutContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 107
    iget-object v0, v2, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisCarPathview:Lcom/eftimoff/androipathview/PathView;

    invoke-virtual {v0, v1}, Lcom/eftimoff/androipathview/PathView;->setTag(Ljava/lang/Object;)V

    .line 108
    iget-object v0, v2, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisEngineTemperatureCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 109
    iget-object v0, v2, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisEngineTemperatureElement:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 110
    iget-object v0, v2, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisEngineTemperatureImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 111
    iget-object v0, v2, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisLayoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 112
    iget-object v0, v2, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisMaintenanceScheduledCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 113
    iget-object v0, v2, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisMaintenanceScheduledElement:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 114
    iget-object v0, v2, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisMaintenanceScheduledImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 115
    iget-object v0, v2, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisParametersCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 116
    iget-object v0, v2, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisParametersElement:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 117
    iget-object v0, v2, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisParametersImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 118
    iget-object v0, v2, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisStandardCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 119
    iget-object v0, v2, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisStandardElement:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 120
    iget-object v0, v2, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisStandardImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 121
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mboundView1:Landroid/widget/TextView;

    .line 122
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 123
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v2, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mboundView2:Landroid/widget/RelativeLayout;

    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x19

    .line 125
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mboundView25:Landroid/widget/LinearLayout;

    .line 126
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x1a

    .line 127
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mboundView26:Landroid/widget/LinearLayout;

    .line 128
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x1b

    .line 129
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mboundView27:Landroid/widget/LinearLayout;

    .line 130
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x1c

    .line 131
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mboundView28:Landroid/widget/LinearLayout;

    .line 132
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 133
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mboundView3:Landroid/widget/TextView;

    .line 134
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 135
    invoke-virtual {v2, v0}, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 13

    .line 189
    monitor-enter p0

    .line 190
    :try_start_0
    iget-wide v0, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 191
    iput-wide v2, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mDirtyFlags:J

    .line 192
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    iget-object v4, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mDiagnosis:Lcom/texa/careapp/utils/databind/DataBindDiagnosis;

    const-wide/16 v5, 0x3

    and-long/2addr v0, v5

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    const/high16 v0, 0x40c00000    # 6.0f

    .line 210
    invoke-virtual {v4, v0}, Lcom/texa/careapp/utils/databind/DataBindDiagnosis;->getMeasureUnit(F)F

    move-result v5

    const/high16 v0, 0x40800000    # 4.0f

    .line 212
    invoke-virtual {v4, v0}, Lcom/texa/careapp/utils/databind/DataBindDiagnosis;->getMeasureUnit(F)F

    move-result v0

    .line 214
    invoke-virtual {v4}, Lcom/texa/careapp/utils/databind/DataBindDiagnosis;->getWidth()F

    move-result v1

    const/high16 v2, 0x3fc00000    # 1.5f

    .line 216
    invoke-virtual {v4, v2}, Lcom/texa/careapp/utils/databind/DataBindDiagnosis;->getMeasureUnit(F)F

    move-result v2

    const/high16 v3, 0x40600000    # 3.5f

    .line 218
    invoke-virtual {v4, v3}, Lcom/texa/careapp/utils/databind/DataBindDiagnosis;->getMeasureUnit(F)F

    move-result v3

    const/high16 v7, 0x40000000    # 2.0f

    .line 220
    invoke-virtual {v4, v7}, Lcom/texa/careapp/utils/databind/DataBindDiagnosis;->getMeasureUnit(F)F

    move-result v7

    const/high16 v8, 0x40100000    # 2.25f

    .line 222
    invoke-virtual {v4, v8}, Lcom/texa/careapp/utils/databind/DataBindDiagnosis;->getMeasureUnit(F)F

    move-result v8

    const/high16 v9, 0x40200000    # 2.5f

    .line 224
    invoke-virtual {v4, v9}, Lcom/texa/careapp/utils/databind/DataBindDiagnosis;->getMeasureUnit(F)F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    .line 226
    invoke-virtual {v4, v10}, Lcom/texa/careapp/utils/databind/DataBindDiagnosis;->getMeasureUnit(F)F

    move-result v4

    move v12, v2

    move v2, v0

    move v0, v5

    move v5, v4

    move v4, v12

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-eqz v6, :cond_1

    .line 233
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisAdvancedCircle:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat10f:F

    invoke-static {v10, v11, v5}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutWidth(Landroid/view/View;FF)V

    .line 234
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisAdvancedCircle:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat10f:F

    invoke-static {v10, v11, v5}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutHeight(Landroid/view/View;FF)V

    .line 235
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisAdvancedElement:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat10f:F

    invoke-static {v10, v11, v5}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutWidth(Landroid/view/View;FF)V

    .line 236
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisAdvancedElement:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat25f:F

    invoke-static {v10, v11, v9}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutHeight(Landroid/view/View;FF)V

    .line 237
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisAdvancedImage:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat10f:F

    invoke-static {v10, v11, v5}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutWidth(Landroid/view/View;FF)V

    .line 238
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisAdvancedImage:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat10f:F

    invoke-static {v10, v11, v5}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutHeight(Landroid/view/View;FF)V

    .line 239
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisBatteryStateCircle:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat10f:F

    invoke-static {v10, v11, v5}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutWidth(Landroid/view/View;FF)V

    .line 240
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisBatteryStateCircle:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat10f:F

    invoke-static {v10, v11, v5}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutHeight(Landroid/view/View;FF)V

    .line 241
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisBatteryStateElement:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat10f:F

    invoke-static {v10, v11, v5}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutWidth(Landroid/view/View;FF)V

    .line 242
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisBatteryStateElement:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat35f:F

    invoke-static {v10, v11, v3}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutHeight(Landroid/view/View;FF)V

    .line 243
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisBatteryStateImage:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat10f:F

    invoke-static {v10, v11, v5}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutWidth(Landroid/view/View;FF)V

    .line 244
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisBatteryStateImage:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat10f:F

    invoke-static {v10, v11, v5}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutHeight(Landroid/view/View;FF)V

    .line 245
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisCarBotPlaceholder:Landroid/view/View;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetWidth:F

    invoke-static {v10, v11, v1}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutWidth(Landroid/view/View;FF)V

    .line 246
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisCarBotPlaceholder:Landroid/view/View;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat20f:F

    invoke-static {v10, v11, v7}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutHeight(Landroid/view/View;FF)V

    .line 247
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisCarLayoutContainer:Landroid/widget/RelativeLayout;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetWidth:F

    invoke-static {v10, v11, v1}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutWidth(Landroid/view/View;FF)V

    .line 248
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisCarLayoutContainer:Landroid/widget/RelativeLayout;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat60f:F

    invoke-static {v10, v11, v0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutHeight(Landroid/view/View;FF)V

    .line 249
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisCarPathview:Lcom/eftimoff/androipathview/PathView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetWidth:F

    invoke-static {v10, v11, v1}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutWidth(Landroid/view/View;FF)V

    .line 250
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisCarPathview:Lcom/eftimoff/androipathview/PathView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat225f:F

    invoke-static {v10, v11, v8}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutHeight(Landroid/view/View;FF)V

    .line 251
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisEngineTemperatureCircle:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat10f:F

    invoke-static {v10, v11, v5}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutWidth(Landroid/view/View;FF)V

    .line 252
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisEngineTemperatureCircle:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat10f:F

    invoke-static {v10, v11, v5}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutHeight(Landroid/view/View;FF)V

    .line 253
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisEngineTemperatureElement:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat20f:F

    invoke-static {v10, v11, v7}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutWidth(Landroid/view/View;FF)V

    .line 254
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisEngineTemperatureElement:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat25f:F

    invoke-static {v10, v11, v9}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutHeight(Landroid/view/View;FF)V

    .line 255
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisEngineTemperatureImage:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat10f:F

    invoke-static {v10, v11, v5}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutWidth(Landroid/view/View;FF)V

    .line 256
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisEngineTemperatureImage:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat10f:F

    invoke-static {v10, v11, v5}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutHeight(Landroid/view/View;FF)V

    .line 257
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisMaintenanceScheduledCircle:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat10f:F

    invoke-static {v10, v11, v5}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutWidth(Landroid/view/View;FF)V

    .line 258
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisMaintenanceScheduledCircle:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat10f:F

    invoke-static {v10, v11, v5}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutHeight(Landroid/view/View;FF)V

    .line 259
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisMaintenanceScheduledElement:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat10f:F

    invoke-static {v10, v11, v5}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutWidth(Landroid/view/View;FF)V

    .line 260
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisMaintenanceScheduledElement:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat35f:F

    invoke-static {v10, v11, v3}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutHeight(Landroid/view/View;FF)V

    .line 261
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisMaintenanceScheduledImage:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat10f:F

    invoke-static {v10, v11, v5}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutWidth(Landroid/view/View;FF)V

    .line 262
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisMaintenanceScheduledImage:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat10f:F

    invoke-static {v10, v11, v5}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutHeight(Landroid/view/View;FF)V

    .line 263
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisParametersCircle:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat10f:F

    invoke-static {v10, v11, v5}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutWidth(Landroid/view/View;FF)V

    .line 264
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisParametersCircle:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat10f:F

    invoke-static {v10, v11, v5}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutHeight(Landroid/view/View;FF)V

    .line 265
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisParametersElement:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat10f:F

    invoke-static {v10, v11, v5}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutWidth(Landroid/view/View;FF)V

    .line 266
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisParametersElement:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat20f:F

    invoke-static {v10, v11, v7}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutHeight(Landroid/view/View;FF)V

    .line 267
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisParametersImage:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat10f:F

    invoke-static {v10, v11, v5}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutWidth(Landroid/view/View;FF)V

    .line 268
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisParametersImage:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat10f:F

    invoke-static {v10, v11, v5}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutHeight(Landroid/view/View;FF)V

    .line 269
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisStandardCircle:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat10f:F

    invoke-static {v10, v11, v5}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutWidth(Landroid/view/View;FF)V

    .line 270
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisStandardCircle:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat10f:F

    invoke-static {v10, v11, v5}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutHeight(Landroid/view/View;FF)V

    .line 271
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisStandardElement:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat20f:F

    invoke-static {v10, v11, v7}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutWidth(Landroid/view/View;FF)V

    .line 272
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisStandardElement:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat40f:F

    invoke-static {v10, v11, v2}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutHeight(Landroid/view/View;FF)V

    .line 273
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisStandardImage:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat10f:F

    invoke-static {v10, v11, v5}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutWidth(Landroid/view/View;FF)V

    .line 274
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->diagnosisStandardImage:Landroid/widget/ImageView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat10f:F

    invoke-static {v10, v11, v5}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutHeight(Landroid/view/View;FF)V

    .line 275
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mboundView1:Landroid/widget/TextView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat15f:F

    invoke-static {v10, v11, v4}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutWidth(Landroid/view/View;FF)V

    .line 276
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mboundView2:Landroid/widget/RelativeLayout;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat15f:F

    invoke-static {v10, v11, v4}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutWidth(Landroid/view/View;FF)V

    .line 277
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mboundView25:Landroid/widget/LinearLayout;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat10f:F

    invoke-static {v10, v11, v5}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutHeight(Landroid/view/View;FF)V

    .line 278
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mboundView26:Landroid/widget/LinearLayout;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat15f:F

    invoke-static {v10, v11, v4}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutWidth(Landroid/view/View;FF)V

    .line 279
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mboundView26:Landroid/widget/LinearLayout;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat10f:F

    invoke-static {v10, v11, v5}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutHeight(Landroid/view/View;FF)V

    .line 280
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mboundView27:Landroid/widget/LinearLayout;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat15f:F

    invoke-static {v10, v11, v4}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutWidth(Landroid/view/View;FF)V

    .line 281
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mboundView27:Landroid/widget/LinearLayout;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat10f:F

    invoke-static {v10, v11, v5}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutHeight(Landroid/view/View;FF)V

    .line 282
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mboundView28:Landroid/widget/LinearLayout;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat15f:F

    invoke-static {v10, v11, v4}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutWidth(Landroid/view/View;FF)V

    .line 283
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mboundView28:Landroid/widget/LinearLayout;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat10f:F

    invoke-static {v10, v11, v5}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutHeight(Landroid/view/View;FF)V

    .line 284
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mboundView3:Landroid/widget/TextView;

    iget v11, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat15f:F

    invoke-static {v10, v11, v4}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutWidth(Landroid/view/View;FF)V

    :cond_1
    if-eqz v6, :cond_2

    .line 287
    iput v5, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat10f:F

    .line 288
    iput v9, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat25f:F

    .line 289
    iput v3, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat35f:F

    .line 290
    iput v1, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetWidth:F

    .line 291
    iput v7, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat20f:F

    .line 292
    iput v0, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat60f:F

    .line 293
    iput v8, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat225f:F

    .line 294
    iput v2, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat40f:F

    .line 295
    iput v4, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mOldDiagnosisGetMeasureUnitFloat15f:F

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 192
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 150
    monitor-enter p0

    .line 151
    :try_start_0
    iget-wide v0, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 152
    monitor-exit p0

    return v0

    .line 154
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 142
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 143
    :try_start_0
    iput-wide v0, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mDirtyFlags:J

    .line 144
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-virtual {p0}, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 144
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setDiagnosis(Lcom/texa/careapp/utils/databind/DataBindDiagnosis;)V
    .locals 4

    .line 171
    iput-object p1, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mDiagnosis:Lcom/texa/careapp/utils/databind/DataBindDiagnosis;

    .line 172
    monitor-enter p0

    .line 173
    :try_start_0
    iget-wide v0, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->mDirtyFlags:J

    .line 174
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    .line 175
    invoke-virtual {p0, p1}, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->notifyPropertyChanged(I)V

    .line 176
    invoke-super {p0}, Lcom/texa/careapp/databinding/ScreenDiagnosisBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 174
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 162
    check-cast p2, Lcom/texa/careapp/utils/databind/DataBindDiagnosis;

    invoke-virtual {p0, p2}, Lcom/texa/careapp/databinding/ScreenDiagnosisBindingImpl;->setDiagnosis(Lcom/texa/careapp/utils/databind/DataBindDiagnosis;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

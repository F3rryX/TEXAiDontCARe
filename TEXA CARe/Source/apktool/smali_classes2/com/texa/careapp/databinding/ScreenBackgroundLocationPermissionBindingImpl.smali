.class public Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;
.super Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBinding;
.source "ScreenBackgroundLocationPermissionBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    sput-object v0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const-string v1, "permission_location_step"

    .line 16
    filled-new-array {v1, v1, v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v3, v2}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 22
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0201

    const/4 v2, 0x4

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0451

    const/4 v2, 0x5

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0200

    const/4 v2, 0x6

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x7f0d0098
        0x7f0d0098
        0x7f0d0098
    .end array-data
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 36
    sget-object v0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    invoke-static {p1, p2, v2, v0, v1}, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 11

    const/4 v0, 0x6

    .line 39
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const/4 v4, 0x3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Lcom/texa/careapp/databinding/PermissionLocationStepBinding;Lcom/texa/careapp/databinding/PermissionLocationStepBinding;Lcom/texa/careapp/databinding/PermissionLocationStepBinding;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 169
    iput-wide v0, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->mDirtyFlags:J

    const/4 p1, 0x0

    .line 47
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 p3, 0x0

    .line 48
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 49
    iget-object p1, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->step1:Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->setContainedBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 50
    iget-object p1, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->step2:Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->setContainedBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 51
    iget-object p1, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->step3:Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->setContainedBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 52
    invoke-virtual {p0, p2}, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 54
    invoke-virtual {p0}, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeStep1(Lcom/texa/careapp/databinding/PermissionLocationStepBinding;I)Z
    .locals 2

    if-nez p2, :cond_0

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iget-wide p1, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->mDirtyFlags:J

    .line 117
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeStep2(Lcom/texa/careapp/databinding/PermissionLocationStepBinding;I)Z
    .locals 2

    if-nez p2, :cond_0

    .line 133
    monitor-enter p0

    .line 134
    :try_start_0
    iget-wide p1, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->mDirtyFlags:J

    .line 135
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeStep3(Lcom/texa/careapp/databinding/PermissionLocationStepBinding;I)Z
    .locals 2

    if-nez p2, :cond_0

    .line 124
    monitor-enter p0

    .line 125
    :try_start_0
    iget-wide p1, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->mDirtyFlags:J

    .line 126
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected executeBindings()V
    .locals 6

    .line 144
    monitor-enter p0

    .line 145
    :try_start_0
    iget-wide v0, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 146
    iput-wide v2, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->mDirtyFlags:J

    .line 147
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 152
    iget-object v0, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->step1:Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    invoke-virtual {p0}, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110b67

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;->setStepDescription(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->step1:Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    invoke-virtual {p0}, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080188

    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;->setStepImage(Landroid/graphics/drawable/Drawable;)V

    .line 154
    iget-object v0, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->step1:Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;->setStepIndex(I)V

    .line 155
    iget-object v0, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->step2:Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    invoke-virtual {p0}, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110b68

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;->setStepDescription(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->step2:Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    invoke-virtual {p0}, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080186

    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;->setStepImage(Landroid/graphics/drawable/Drawable;)V

    .line 157
    iget-object v0, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->step2:Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;->setStepIndex(I)V

    .line 158
    iget-object v0, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->step3:Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    invoke-virtual {p0}, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110b69

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;->setStepDescription(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->step3:Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    invoke-virtual {p0}, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080187

    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;->setStepImage(Landroid/graphics/drawable/Drawable;)V

    .line 160
    iget-object v0, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->step3:Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;->setStepIndex(I)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->step1:Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    invoke-static {v0}, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 163
    iget-object v0, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->step2:Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    invoke-static {v0}, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 164
    iget-object v0, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->step3:Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    invoke-static {v0}, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    return-void

    :catchall_0
    move-exception v0

    .line 147
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 6

    .line 70
    monitor-enter p0

    .line 71
    :try_start_0
    iget-wide v0, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    .line 72
    monitor-exit p0

    return v4

    .line 74
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    iget-object v0, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->step1:Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    invoke-virtual {v0}, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;->hasPendingBindings()Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->step2:Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    invoke-virtual {v0}, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;->hasPendingBindings()Z

    move-result v0

    if-eqz v0, :cond_2

    return v4

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->step3:Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    invoke-virtual {v0}, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;->hasPendingBindings()Z

    move-result v0

    if-eqz v0, :cond_3

    return v4

    :cond_3
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 74
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 59
    monitor-enter p0

    const-wide/16 v0, 0x8

    .line 60
    :try_start_0
    iput-wide v0, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->mDirtyFlags:J

    .line 61
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    iget-object v0, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->step1:Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    invoke-virtual {v0}, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;->invalidateAll()V

    .line 63
    iget-object v0, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->step2:Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    invoke-virtual {v0}, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;->invalidateAll()V

    .line 64
    iget-object v0, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->step3:Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    invoke-virtual {v0}, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;->invalidateAll()V

    .line 65
    invoke-virtual {p0}, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 61
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 109
    :cond_0
    check-cast p2, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    invoke-direct {p0, p2, p3}, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->onChangeStep2(Lcom/texa/careapp/databinding/PermissionLocationStepBinding;I)Z

    move-result p1

    return p1

    .line 107
    :cond_1
    check-cast p2, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    invoke-direct {p0, p2, p3}, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->onChangeStep3(Lcom/texa/careapp/databinding/PermissionLocationStepBinding;I)Z

    move-result p1

    return p1

    .line 105
    :cond_2
    check-cast p2, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    invoke-direct {p0, p2, p3}, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->onChangeStep1(Lcom/texa/careapp/databinding/PermissionLocationStepBinding;I)Z

    move-result p1

    return p1
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 95
    invoke-super {p0, p1}, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 96
    iget-object v0, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->step1:Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 97
    iget-object v0, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->step2:Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 98
    iget-object v0, p0, Lcom/texa/careapp/databinding/ScreenBackgroundLocationPermissionBindingImpl;->step3:Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

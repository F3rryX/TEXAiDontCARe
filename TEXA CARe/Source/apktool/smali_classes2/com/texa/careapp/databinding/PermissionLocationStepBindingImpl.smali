.class public Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;
.super Lcom/texa/careapp/databinding/PermissionLocationStepBinding;
.source "PermissionLocationStepBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/RelativeLayout;

.field private final mboundView3:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 29
    sget-object v0, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x2

    .line 32
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 158
    iput-wide v0, p0, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->mDirtyFlags:J

    .line 36
    iget-object p1, p0, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->imStepDescription:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 37
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->mboundView0:Landroid/widget/RelativeLayout;

    .line 38
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 39
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->mboundView3:Landroid/widget/TextView;

    .line 40
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 41
    iget-object p1, p0, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->tvStepDescription:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p0, p2}, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 44
    invoke-virtual {p0}, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 11

    .line 118
    monitor-enter p0

    .line 119
    :try_start_0
    iget-wide v0, p0, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 120
    iput-wide v2, p0, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->mDirtyFlags:J

    .line 121
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    iget v4, p0, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->mStepIndex:I

    .line 123
    iget-object v5, p0, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->mStepDescription:Ljava/lang/String;

    .line 124
    iget-object v6, p0, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->mStepImage:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const-wide/16 v8, 0x9

    and-long/2addr v8, v0

    cmp-long v10, v8, v2

    if-eqz v10, :cond_0

    .line 132
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    :cond_0
    const-wide/16 v8, 0xa

    and-long/2addr v8, v0

    cmp-long v4, v8, v2

    const-wide/16 v8, 0xc

    and-long/2addr v0, v8

    cmp-long v8, v0, v2

    if-eqz v8, :cond_1

    .line 142
    iget-object v0, p0, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->imStepDescription:Landroid/widget/ImageView;

    invoke-static {v0, v6}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    if-eqz v10, :cond_2

    .line 147
    iget-object v0, p0, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->mboundView3:Landroid/widget/TextView;

    invoke-static {v0, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz v4, :cond_3

    .line 152
    iget-object v0, p0, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->tvStepDescription:Landroid/widget/TextView;

    invoke-static {v0, v5}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 121
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget-wide v0, p0, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 59
    monitor-exit p0

    return v0

    .line 61
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

    .line 49
    monitor-enter p0

    const-wide/16 v0, 0x8

    .line 50
    :try_start_0
    iput-wide v0, p0, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->mDirtyFlags:J

    .line 51
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-virtual {p0}, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 51
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

.method public setStepDescription(Ljava/lang/String;)V
    .locals 4

    .line 92
    iput-object p1, p0, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->mStepDescription:Ljava/lang/String;

    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    iget-wide v0, p0, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->mDirtyFlags:J

    .line 95
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x4

    .line 96
    invoke-virtual {p0, p1}, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->notifyPropertyChanged(I)V

    .line 97
    invoke-super {p0}, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 95
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setStepImage(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 100
    iput-object p1, p0, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->mStepImage:Landroid/graphics/drawable/Drawable;

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget-wide v0, p0, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->mDirtyFlags:J

    .line 103
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x5

    .line 104
    invoke-virtual {p0, p1}, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->notifyPropertyChanged(I)V

    .line 105
    invoke-super {p0}, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 103
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setStepIndex(I)V
    .locals 4

    .line 84
    iput p1, p0, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->mStepIndex:I

    .line 85
    monitor-enter p0

    .line 86
    :try_start_0
    iget-wide v0, p0, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->mDirtyFlags:J

    .line 87
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x6

    .line 88
    invoke-virtual {p0, p1}, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->notifyPropertyChanged(I)V

    .line 89
    invoke-super {p0}, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 87
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x6

    if-ne v0, p1, :cond_0

    .line 69
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->setStepIndex(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne v0, p1, :cond_1

    .line 72
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->setStepDescription(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    if-ne v0, p1, :cond_2

    .line 75
    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p2}, Lcom/texa/careapp/databinding/PermissionLocationStepBindingImpl;->setStepImage(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

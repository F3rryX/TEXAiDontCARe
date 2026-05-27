.class public Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;
.super Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;
.source "ScreenEcoDrivingTripEventItemBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private mOldAdapterIsSmallScreenMboundView3AndroidDimenEcoDrivingDetailTripSmallItemHeightMboundView3AndroidDimenEcoDrivingDetailTripItemHeight:F

.field private mOldAdapterIsSmallScreenScreenEcoDrivingTripEventItemDateAndroidDimenEcoDrivingDetailTripSmallItemHeightScreenEcoDrivingTripEventItemDateAndroidDimenEcoDrivingDetailTripItemHeight:F

.field private mOldAdapterIsSmallScreenScreenEcoDrivingTripEventItemIconAndroidDimenEcoDrivingDetailTripSmallItemHeightScreenEcoDrivingTripEventItemIconAndroidDimenEcoDrivingDetailTripItemHeight:F

.field private final mboundView0:Landroid/widget/RelativeLayout;

.field private final mboundView3:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0370

    const/4 v2, 0x4

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0374

    const/4 v2, 0x5

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0375

    const/4 v2, 0x6

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0372

    const/4 v2, 0x7

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 36
    sget-object v0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    invoke-static {p1, p2, v2, v0, v1}, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 11

    const/4 v0, 0x4

    .line 39
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/RelativeLayout;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/ImageView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/view/View;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/RelativeLayout;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/ImageView;Landroid/view/View;Landroidx/appcompat/widget/AppCompatTextView;)V

    const-wide/16 v0, -0x1

    .line 188
    iput-wide v0, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->mDirtyFlags:J

    const/4 p1, 0x0

    .line 47
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->mboundView0:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 49
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->mboundView3:Landroid/widget/LinearLayout;

    .line 50
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 51
    iget-object p1, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->screenEcoDrivingTripEventItemDate:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 52
    iget-object p1, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->screenEcoDrivingTripEventItemIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p0, p2}, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 55
    invoke-virtual {p0}, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeAdapterIsSmallScreen(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iget-wide p1, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->mDirtyFlags:J

    .line 109
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
    .locals 11

    .line 118
    monitor-enter p0

    .line 119
    :try_start_0
    iget-wide v0, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 120
    iput-wide v2, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->mDirtyFlags:J

    .line 121
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    iget-object v4, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->mAdapter:Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;

    const-wide/16 v5, 0x7

    and-long v7, v0, v5

    const/4 v9, 0x0

    cmp-long v10, v7, v2

    if-eqz v10, :cond_7

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    .line 136
    iget-object v4, v4, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;->isSmallScreen:Landroidx/databinding/ObservableField;

    goto :goto_0

    :cond_0
    move-object v4, v7

    :goto_0
    const/4 v8, 0x0

    .line 138
    invoke-virtual {p0, v8, v4}, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v4, :cond_1

    .line 143
    invoke-virtual {v4}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/Boolean;

    .line 148
    :cond_1
    invoke-static {v7}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v10, :cond_3

    if-eqz v4, :cond_2

    const-wide/16 v7, 0x10

    or-long/2addr v0, v7

    const-wide/16 v7, 0x40

    or-long/2addr v0, v7

    const-wide/16 v7, 0x100

    goto :goto_1

    :cond_2
    const-wide/16 v7, 0x8

    or-long/2addr v0, v7

    const-wide/16 v7, 0x20

    or-long/2addr v0, v7

    const-wide/16 v7, 0x80

    :goto_1
    or-long/2addr v0, v7

    :cond_3
    const v7, 0x7f0700c2

    const v8, 0x7f0700c1

    .line 164
    iget-object v9, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->mboundView3:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v4, :cond_4

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    goto :goto_2

    :cond_4
    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    .line 166
    :goto_2
    iget-object v10, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->screenEcoDrivingTripEventItemIcon:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-eqz v4, :cond_5

    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    goto :goto_3

    :cond_5
    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    :goto_3
    if-eqz v4, :cond_6

    .line 168
    iget-object v4, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->screenEcoDrivingTripEventItemDate:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    goto :goto_4

    :cond_6
    iget-object v4, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->screenEcoDrivingTripEventItemDate:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    const/4 v10, 0x0

    :goto_4
    and-long/2addr v0, v5

    cmp-long v5, v0, v2

    if-eqz v5, :cond_8

    .line 174
    iget-object v0, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->mboundView3:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->mOldAdapterIsSmallScreenMboundView3AndroidDimenEcoDrivingDetailTripSmallItemHeightMboundView3AndroidDimenEcoDrivingDetailTripItemHeight:F

    invoke-static {v0, v1, v9}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutHeight(Landroid/view/View;FF)V

    .line 175
    iget-object v0, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->screenEcoDrivingTripEventItemDate:Landroid/widget/TextView;

    iget v1, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->mOldAdapterIsSmallScreenScreenEcoDrivingTripEventItemDateAndroidDimenEcoDrivingDetailTripSmallItemHeightScreenEcoDrivingTripEventItemDateAndroidDimenEcoDrivingDetailTripItemHeight:F

    invoke-static {v0, v1, v4}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutHeight(Landroid/view/View;FF)V

    .line 176
    iget-object v0, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->screenEcoDrivingTripEventItemIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->mOldAdapterIsSmallScreenScreenEcoDrivingTripEventItemIconAndroidDimenEcoDrivingDetailTripSmallItemHeightScreenEcoDrivingTripEventItemIconAndroidDimenEcoDrivingDetailTripItemHeight:F

    invoke-static {v0, v1, v10}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutHeight(Landroid/view/View;FF)V

    .line 177
    iget-object v0, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->screenEcoDrivingTripEventItemIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->mOldAdapterIsSmallScreenScreenEcoDrivingTripEventItemIconAndroidDimenEcoDrivingDetailTripSmallItemHeightScreenEcoDrivingTripEventItemIconAndroidDimenEcoDrivingDetailTripItemHeight:F

    invoke-static {v0, v1, v10}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutWidth(Landroid/view/View;FF)V

    :cond_8
    if-eqz v5, :cond_9

    .line 180
    iput v9, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->mOldAdapterIsSmallScreenMboundView3AndroidDimenEcoDrivingDetailTripSmallItemHeightMboundView3AndroidDimenEcoDrivingDetailTripItemHeight:F

    .line 181
    iput v4, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->mOldAdapterIsSmallScreenScreenEcoDrivingTripEventItemDateAndroidDimenEcoDrivingDetailTripSmallItemHeightScreenEcoDrivingTripEventItemDateAndroidDimenEcoDrivingDetailTripItemHeight:F

    .line 182
    iput v10, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->mOldAdapterIsSmallScreenScreenEcoDrivingTripEventItemIconAndroidDimenEcoDrivingDetailTripSmallItemHeightScreenEcoDrivingTripEventItemIconAndroidDimenEcoDrivingDetailTripItemHeight:F

    :cond_9
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

    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    iget-wide v0, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 70
    monitor-exit p0

    return v0

    .line 72
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

    .line 60
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 61
    :try_start_0
    iput-wide v0, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->mDirtyFlags:J

    .line 62
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {p0}, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 62
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 101
    :cond_0
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->onChangeAdapterIsSmallScreen(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1
.end method

.method public setAdapter(Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;)V
    .locals 4

    .line 89
    iput-object p1, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->mAdapter:Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;

    .line 90
    monitor-enter p0

    .line 91
    :try_start_0
    iget-wide v0, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->mDirtyFlags:J

    .line 92
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 93
    invoke-virtual {p0, p1}, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->notifyPropertyChanged(I)V

    .line 94
    invoke-super {p0}, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 92
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 80
    check-cast p2, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;

    invoke-virtual {p0, p2}, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBindingImpl;->setAdapter(Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.class public Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;
.super Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;
.source "SettingsServicesListItemBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private mOldSettingsAdapterPreLollipopVersionSettingsServicesListItemInfoLayAndroidDimenSettingServicesPrelollipopSettingsServicesListItemInfoLayAndroidDimenSettingServicesPostlollipop:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0400

    const/4 v2, 0x2

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0401

    const/4 v2, 0x3

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0402

    const/4 v2, 0x4

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a03fb

    const/4 v2, 0x5

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0086

    const/4 v2, 0x6

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a03ff

    const/4 v2, 0x7

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a03fc

    const/16 v2, 0x8

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a03fd

    const/16 v2, 0x9

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 34
    sget-object v0, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xa

    invoke-static {p1, p2, v2, v0, v1}, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 15

    move-object v14, p0

    const/4 v0, 0x6

    .line 37
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/cardview/widget/CardView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/LinearLayout;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v13, v0

    check-cast v13, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v3, 0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v13}, Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroidx/cardview/widget/CardView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    const-wide/16 v0, -0x1

    .line 190
    iput-wide v0, v14, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->mDirtyFlags:J

    .line 49
    iget-object v0, v14, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->settingsServicesListItemCardView:Landroidx/cardview/widget/CardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setTag(Ljava/lang/Object;)V

    .line 50
    iget-object v0, v14, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->settingsServicesListItemInfoLay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 51
    invoke-virtual {p0, v0}, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 53
    invoke-virtual {p0}, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeSettingsAdapterPreLollipopVersion(Landroidx/databinding/ObservableField;I)Z
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

    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    iget-wide p1, p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->mDirtyFlags:J

    .line 107
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
    .locals 13

    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget-wide v0, p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 118
    iput-wide v2, p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->mDirtyFlags:J

    .line 119
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    iget-object v4, p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->mSettingsAdapter:Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;

    const-wide/16 v5, 0x7

    and-long v7, v0, v5

    const/4 v9, 0x0

    cmp-long v10, v7, v2

    if-eqz v10, :cond_8

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    .line 135
    iget-object v4, v4, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;->preLollipopVersion:Landroidx/databinding/ObservableField;

    goto :goto_0

    :cond_0
    move-object v4, v7

    :goto_0
    const/4 v8, 0x0

    .line 137
    invoke-virtual {p0, v8, v4}, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v4, :cond_1

    .line 142
    invoke-virtual {v4}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/Boolean;

    .line 147
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

    or-long/2addr v0, v7

    const-wide/16 v7, 0x400

    goto :goto_1

    :cond_2
    const-wide/16 v7, 0x8

    or-long/2addr v0, v7

    const-wide/16 v7, 0x20

    or-long/2addr v0, v7

    const-wide/16 v7, 0x80

    or-long/2addr v0, v7

    const-wide/16 v7, 0x200

    :goto_1
    or-long/2addr v0, v7

    :cond_3
    const v7, 0x7f070172

    .line 165
    iget-object v8, p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->settingsServicesListItemCardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v8}, Landroidx/cardview/widget/CardView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v4, :cond_4

    const v9, 0x7f0700ee

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    goto :goto_2

    :cond_4
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    :goto_2
    move v9, v8

    .line 167
    iget-object v8, p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->settingsServicesListItemInfoLay:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v4, :cond_5

    const v10, 0x7f070153

    goto :goto_3

    :cond_5
    const v10, 0x7f070152

    :goto_3
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 169
    iget-object v10, p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->settingsServicesListItemCardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v10}, Landroidx/cardview/widget/CardView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-eqz v4, :cond_6

    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    goto :goto_4

    :cond_6
    const v11, 0x7f070052

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    :goto_4
    if-eqz v4, :cond_7

    .line 171
    iget-object v4, p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->settingsServicesListItemCardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v4}, Landroidx/cardview/widget/CardView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    goto :goto_5

    :cond_7
    iget-object v4, p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->settingsServicesListItemCardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v4}, Landroidx/cardview/widget/CardView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f070051

    :goto_5
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    move v12, v9

    move v9, v4

    move v4, v12

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_6
    and-long/2addr v0, v5

    cmp-long v5, v0, v2

    if-eqz v5, :cond_9

    .line 177
    iget-object v0, p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->settingsServicesListItemCardView:Landroidx/cardview/widget/CardView;

    invoke-static {v0, v9}, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;->setMarginStart(Landroid/view/View;F)V

    .line 178
    iget-object v0, p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->settingsServicesListItemCardView:Landroidx/cardview/widget/CardView;

    invoke-static {v0, v9}, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;->setMarginEnd(Landroid/view/View;F)V

    .line 179
    iget-object v0, p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->settingsServicesListItemCardView:Landroidx/cardview/widget/CardView;

    invoke-static {v0, v10}, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;->setMarginTop(Landroid/view/View;F)V

    .line 180
    iget-object v0, p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->settingsServicesListItemCardView:Landroidx/cardview/widget/CardView;

    invoke-static {v0, v4}, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;->setMarginBottom(Landroid/view/View;F)V

    .line 181
    iget-object v0, p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->settingsServicesListItemInfoLay:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->mOldSettingsAdapterPreLollipopVersionSettingsServicesListItemInfoLayAndroidDimenSettingServicesPrelollipopSettingsServicesListItemInfoLayAndroidDimenSettingServicesPostlollipop:F

    invoke-static {v0, v1, v8}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;->setLayoutWidth(Landroid/view/View;FF)V

    :cond_9
    if-eqz v5, :cond_a

    .line 184
    iput v8, p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->mOldSettingsAdapterPreLollipopVersionSettingsServicesListItemInfoLayAndroidDimenSettingServicesPrelollipopSettingsServicesListItemInfoLayAndroidDimenSettingServicesPostlollipop:F

    :cond_a
    return-void

    :catchall_0
    move-exception v0

    .line 119
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 66
    monitor-enter p0

    .line 67
    :try_start_0
    iget-wide v0, p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 68
    monitor-exit p0

    return v0

    .line 70
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

    .line 58
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 59
    :try_start_0
    iput-wide v0, p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->mDirtyFlags:J

    .line 60
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-virtual {p0}, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 60
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

    .line 99
    :cond_0
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->onChangeSettingsAdapterPreLollipopVersion(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1
.end method

.method public setSettingsAdapter(Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;)V
    .locals 4

    .line 87
    iput-object p1, p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->mSettingsAdapter:Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;

    .line 88
    monitor-enter p0

    .line 89
    :try_start_0
    iget-wide v0, p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->mDirtyFlags:J

    .line 90
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x3

    .line 91
    invoke-virtual {p0, p1}, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->notifyPropertyChanged(I)V

    .line 92
    invoke-super {p0}, Lcom/texa/careapp/databinding/SettingsServicesListItemBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 90
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 78
    check-cast p2, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;

    invoke-virtual {p0, p2}, Lcom/texa/careapp/databinding/SettingsServicesListItemBindingImpl;->setSettingsAdapter(Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

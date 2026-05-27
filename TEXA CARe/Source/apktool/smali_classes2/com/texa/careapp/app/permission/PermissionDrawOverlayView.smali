.class public Lcom/texa/careapp/app/permission/PermissionDrawOverlayView;
.super Landroid/widget/LinearLayout;
.source "PermissionDrawOverlayView.java"


# instance fields
.field private mBinding:Lcom/texa/careapp/databinding/ScreenDrawOverlayPermissionBinding;

.field private mPresenter:Lcom/texa/careapp/app/permission/PermissionPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/permission/PermissionDrawOverlayView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/permission/PermissionDrawOverlayView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/permission/PermissionDrawOverlayView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d00bd

    const/4 v1, 0x1

    invoke-static {p1, v0, p0, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenDrawOverlayPermissionBinding;

    iput-object p1, p0, Lcom/texa/careapp/app/permission/PermissionDrawOverlayView;->mBinding:Lcom/texa/careapp/databinding/ScreenDrawOverlayPermissionBinding;

    return-void
.end method


# virtual methods
.method public setPresenter(Lcom/texa/careapp/app/permission/PermissionPresenter;)V
    .locals 1

    .line 45
    iput-object p1, p0, Lcom/texa/careapp/app/permission/PermissionDrawOverlayView;->mPresenter:Lcom/texa/careapp/app/permission/PermissionPresenter;

    .line 46
    iget-object v0, p0, Lcom/texa/careapp/app/permission/PermissionDrawOverlayView;->mBinding:Lcom/texa/careapp/databinding/ScreenDrawOverlayPermissionBinding;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/app/permission/PermissionPresenter;->afterViewInjection(Landroidx/databinding/ViewDataBinding;)V

    return-void
.end method

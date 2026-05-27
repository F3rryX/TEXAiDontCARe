.class public abstract Lcom/texa/careapp/databinding/PermissionLocationStepBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "PermissionLocationStepBinding.java"


# instance fields
.field public final imStepDescription:Landroid/widget/ImageView;

.field protected mStepDescription:Ljava/lang/String;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mStepImage:Landroid/graphics/drawable/Drawable;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mStepIndex:I
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final tvStepDescription:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 38
    iput-object p4, p0, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;->imStepDescription:Landroid/widget/ImageView;

    .line 39
    iput-object p5, p0, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;->tvStepDescription:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/PermissionLocationStepBinding;
    .locals 1

    .line 102
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/PermissionLocationStepBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0098

    .line 114
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/PermissionLocationStepBinding;
    .locals 1

    .line 84
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/PermissionLocationStepBinding;
    .locals 1

    .line 65
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/PermissionLocationStepBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0098

    .line 79
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/PermissionLocationStepBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0098

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 98
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;

    return-object p0
.end method


# virtual methods
.method public getStepDescription()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;->mStepDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getStepImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;->mStepImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getStepIndex()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/texa/careapp/databinding/PermissionLocationStepBinding;->mStepIndex:I

    return v0
.end method

.method public abstract setStepDescription(Ljava/lang/String;)V
.end method

.method public abstract setStepImage(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setStepIndex(I)V
.end method

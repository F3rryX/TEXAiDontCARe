.class public abstract Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ScreenDongleDiscoveryBinding.java"


# instance fields
.field public final discoveryDongleList:Landroidx/recyclerview/widget/RecyclerView;

.field public final dongleDiscoverySearchLayout:Landroid/widget/RelativeLayout;

.field public final dongleSearchProgress:Lcom/texa/careapp/views/DottedLoadingIndicatorView;

.field public final dongleSearchProgressIcon:Landroid/widget/ImageView;

.field public final dongleSearchProgressLayout:Landroid/widget/RelativeLayout;

.field public final parentCoordinator:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final screenDongleDiscoveryBtnStart:Landroid/widget/TextView;

.field public final screenDongleDiscoveryBtnStartImage:Landroid/widget/ImageView;

.field public final screenDongleDiscoveryDescription:Landroid/widget/TextView;

.field public final screenDongleDiscoveryEmptyLayout:Landroid/widget/RelativeLayout;

.field public final screenDongleDiscoveryImageView:Landroid/widget/ImageView;

.field public final screenDongleDiscoveryListTitle:Landroid/widget/TextView;

.field public final screenDongleDiscoveryMainLay:Landroid/widget/RelativeLayout;

.field public final screenDongleDiscoveryNoDevicesDescription:Landroid/widget/TextView;

.field public final screenDongleDiscoveryNoDevicesLabel:Landroid/widget/TextView;

.field public final screenDongleDiscoveryStart:Landroid/widget/RelativeLayout;

.field public final screenDongleDiscoveryTitle:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;Lcom/texa/careapp/views/DottedLoadingIndicatorView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 85
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;->discoveryDongleList:Landroidx/recyclerview/widget/RecyclerView;

    move-object v1, p5

    .line 86
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;->dongleDiscoverySearchLayout:Landroid/widget/RelativeLayout;

    move-object v1, p6

    .line 87
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;->dongleSearchProgress:Lcom/texa/careapp/views/DottedLoadingIndicatorView;

    move-object v1, p7

    .line 88
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;->dongleSearchProgressIcon:Landroid/widget/ImageView;

    move-object v1, p8

    .line 89
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;->dongleSearchProgressLayout:Landroid/widget/RelativeLayout;

    move-object v1, p9

    .line 90
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;->parentCoordinator:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object v1, p10

    .line 91
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;->screenDongleDiscoveryBtnStart:Landroid/widget/TextView;

    move-object v1, p11

    .line 92
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;->screenDongleDiscoveryBtnStartImage:Landroid/widget/ImageView;

    move-object v1, p12

    .line 93
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;->screenDongleDiscoveryDescription:Landroid/widget/TextView;

    move-object v1, p13

    .line 94
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;->screenDongleDiscoveryEmptyLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p14

    .line 95
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;->screenDongleDiscoveryImageView:Landroid/widget/ImageView;

    move-object/from16 v1, p15

    .line 96
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;->screenDongleDiscoveryListTitle:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 97
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;->screenDongleDiscoveryMainLay:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p17

    .line 98
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;->screenDongleDiscoveryNoDevicesDescription:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 99
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;->screenDongleDiscoveryNoDevicesLabel:Landroid/widget/TextView;

    move-object/from16 v1, p19

    .line 100
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;->screenDongleDiscoveryStart:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p20

    .line 101
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;->screenDongleDiscoveryTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;
    .locals 1

    .line 144
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00bc

    .line 156
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;
    .locals 1

    .line 126
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;
    .locals 1

    .line 107
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00bc

    .line 121
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00bc

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 140
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenDongleDiscoveryBinding;

    return-object p0
.end method

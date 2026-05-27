.class public abstract Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ActivityVehicleFinderBinding.java"


# instance fields
.field public final address:Landroid/widget/TextView;

.field public final addressCity:Landroid/widget/TextView;

.field public final bussola:Landroid/widget/LinearLayout;

.field public final compass:Landroid/widget/ImageView;

.field public final container:Landroid/widget/FrameLayout;

.field public final distance:Landroid/widget/TextView;

.field public final distanceContainer:Landroid/widget/LinearLayout;

.field public final distanceRoad:Landroid/widget/TextView;

.field public final navigatorButton:Landroid/widget/RelativeLayout;

.field public final timeago:Landroid/widget/TextView;

.field public final timeagoContainer:Landroid/widget/LinearLayout;

.field public final toolbarActionbar:Landroid/view/View;

.field public final unit:Landroidx/appcompat/widget/AppCompatTextView;

.field public final unitRoad:Landroid/widget/TextView;

.field public final whyText:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/view/View;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 74
    iput-object v1, v0, Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;->address:Landroid/widget/TextView;

    move-object v1, p5

    .line 75
    iput-object v1, v0, Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;->addressCity:Landroid/widget/TextView;

    move-object v1, p6

    .line 76
    iput-object v1, v0, Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;->bussola:Landroid/widget/LinearLayout;

    move-object v1, p7

    .line 77
    iput-object v1, v0, Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;->compass:Landroid/widget/ImageView;

    move-object v1, p8

    .line 78
    iput-object v1, v0, Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;->container:Landroid/widget/FrameLayout;

    move-object v1, p9

    .line 79
    iput-object v1, v0, Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;->distance:Landroid/widget/TextView;

    move-object v1, p10

    .line 80
    iput-object v1, v0, Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;->distanceContainer:Landroid/widget/LinearLayout;

    move-object v1, p11

    .line 81
    iput-object v1, v0, Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;->distanceRoad:Landroid/widget/TextView;

    move-object v1, p12

    .line 82
    iput-object v1, v0, Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;->navigatorButton:Landroid/widget/RelativeLayout;

    move-object v1, p13

    .line 83
    iput-object v1, v0, Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;->timeago:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 84
    iput-object v1, v0, Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;->timeagoContainer:Landroid/widget/LinearLayout;

    move-object/from16 v1, p15

    .line 85
    iput-object v1, v0, Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;->toolbarActionbar:Landroid/view/View;

    move-object/from16 v1, p16

    .line 86
    iput-object v1, v0, Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;->unit:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, p17

    .line 87
    iput-object v1, v0, Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;->unitRoad:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 88
    iput-object v1, v0, Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;->whyText:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;
    .locals 1

    .line 131
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0042

    .line 143
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;
    .locals 1

    .line 113
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;
    .locals 1

    .line 94
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0042

    .line 108
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0042

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 127
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ActivityVehicleFinderBinding;

    return-object p0
.end method

.class public abstract Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "NavigationDrawerFragmentBinding.java"


# instance fields
.field public final careLogo:Landroid/widget/ImageView;

.field public final drawerItemDashboard:Landroid/widget/TextView;

.field public final drawerItemEcoDriving:Landroid/widget/TextView;

.field public final drawerItemExtendeControls:Landroid/widget/TextView;

.field public final drawerItemSchedule:Landroid/widget/TextView;

.field public final drawerItemVehicleFinder:Landroid/widget/TextView;

.field public final drawerItemVehicleName:Landroid/widget/TextView;

.field public final drawerItemVehicleStatus:Landroid/widget/TextView;

.field public final drawerMainMenu:Landroid/widget/ScrollView;

.field public final drawerServices:Landroid/widget/LinearLayout;

.field public final drawerServicesIcon:Landroid/widget/ImageView;

.field public final drawerSettings:Landroid/widget/LinearLayout;

.field public final googleDrawer:Landroid/widget/RelativeLayout;

.field public final lastOdbRead:Lcom/texa/careapp/views/RelativeTimeTextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Lcom/texa/careapp/views/RelativeTimeTextView;)V
    .locals 2

    move-object v0, p0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 72
    iput-object v1, v0, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;->careLogo:Landroid/widget/ImageView;

    move-object v1, p5

    .line 73
    iput-object v1, v0, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;->drawerItemDashboard:Landroid/widget/TextView;

    move-object v1, p6

    .line 74
    iput-object v1, v0, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;->drawerItemEcoDriving:Landroid/widget/TextView;

    move-object v1, p7

    .line 75
    iput-object v1, v0, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;->drawerItemExtendeControls:Landroid/widget/TextView;

    move-object v1, p8

    .line 76
    iput-object v1, v0, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;->drawerItemSchedule:Landroid/widget/TextView;

    move-object v1, p9

    .line 77
    iput-object v1, v0, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;->drawerItemVehicleFinder:Landroid/widget/TextView;

    move-object v1, p10

    .line 78
    iput-object v1, v0, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;->drawerItemVehicleName:Landroid/widget/TextView;

    move-object v1, p11

    .line 79
    iput-object v1, v0, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;->drawerItemVehicleStatus:Landroid/widget/TextView;

    move-object v1, p12

    .line 80
    iput-object v1, v0, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;->drawerMainMenu:Landroid/widget/ScrollView;

    move-object v1, p13

    .line 81
    iput-object v1, v0, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;->drawerServices:Landroid/widget/LinearLayout;

    move-object/from16 v1, p14

    .line 82
    iput-object v1, v0, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;->drawerServicesIcon:Landroid/widget/ImageView;

    move-object/from16 v1, p15

    .line 83
    iput-object v1, v0, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;->drawerSettings:Landroid/widget/LinearLayout;

    move-object/from16 v1, p16

    .line 84
    iput-object v1, v0, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;->googleDrawer:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p17

    .line 85
    iput-object v1, v0, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;->lastOdbRead:Lcom/texa/careapp/views/RelativeTimeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;
    .locals 1

    .line 128
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0091

    .line 141
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;
    .locals 1

    .line 110
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;
    .locals 1

    .line 91
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0091

    .line 105
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0091

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 124
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/NavigationDrawerFragmentBinding;

    return-object p0
.end method

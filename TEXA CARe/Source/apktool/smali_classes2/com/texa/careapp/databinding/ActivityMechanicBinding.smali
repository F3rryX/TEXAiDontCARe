.class public abstract Lcom/texa/careapp/databinding/ActivityMechanicBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ActivityMechanicBinding.java"


# instance fields
.field public final availabilityButton:Landroid/widget/LinearLayout;

.field public final availabilityImage:Landroid/widget/ImageView;

.field public final availabilityText:Landroid/widget/TextView;

.field public final informationContainer:Landroid/widget/LinearLayout;

.field public final mechanicAddressTextView:Landroid/widget/TextView;

.field public final mechanicCityAddressTextView:Landroid/widget/TextView;

.field public final mechanicNameTextView:Landroid/widget/TextView;

.field public final mechanicNavigationButton:Landroid/widget/TextView;

.field public final mechanicOpeningTextView:Landroid/widget/TextView;

.field public final phoneMobileButton:Landroid/widget/LinearLayout;

.field public final phoneMobileImage:Landroid/widget/ImageView;

.field public final phoneMobileText:Landroid/widget/TextView;

.field public final relativeLayoutActivityMechanic:Landroid/widget/RelativeLayout;

.field public final toolbarActionbar:Landroid/view/View;

.field public final workshopButton:Landroid/widget/LinearLayout;

.field public final workshopImage:Landroid/widget/ImageView;

.field public final workshopText:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 80
    iput-object v1, v0, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->availabilityButton:Landroid/widget/LinearLayout;

    move-object v1, p5

    .line 81
    iput-object v1, v0, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->availabilityImage:Landroid/widget/ImageView;

    move-object v1, p6

    .line 82
    iput-object v1, v0, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->availabilityText:Landroid/widget/TextView;

    move-object v1, p7

    .line 83
    iput-object v1, v0, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->informationContainer:Landroid/widget/LinearLayout;

    move-object v1, p8

    .line 84
    iput-object v1, v0, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->mechanicAddressTextView:Landroid/widget/TextView;

    move-object v1, p9

    .line 85
    iput-object v1, v0, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->mechanicCityAddressTextView:Landroid/widget/TextView;

    move-object v1, p10

    .line 86
    iput-object v1, v0, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->mechanicNameTextView:Landroid/widget/TextView;

    move-object v1, p11

    .line 87
    iput-object v1, v0, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->mechanicNavigationButton:Landroid/widget/TextView;

    move-object v1, p12

    .line 88
    iput-object v1, v0, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->mechanicOpeningTextView:Landroid/widget/TextView;

    move-object v1, p13

    .line 89
    iput-object v1, v0, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->phoneMobileButton:Landroid/widget/LinearLayout;

    move-object/from16 v1, p14

    .line 90
    iput-object v1, v0, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->phoneMobileImage:Landroid/widget/ImageView;

    move-object/from16 v1, p15

    .line 91
    iput-object v1, v0, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->phoneMobileText:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 92
    iput-object v1, v0, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->relativeLayoutActivityMechanic:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p17

    .line 93
    iput-object v1, v0, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->toolbarActionbar:Landroid/view/View;

    move-object/from16 v1, p18

    .line 94
    iput-object v1, v0, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->workshopButton:Landroid/widget/LinearLayout;

    move-object/from16 v1, p19

    .line 95
    iput-object v1, v0, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->workshopImage:Landroid/widget/ImageView;

    move-object/from16 v1, p20

    .line 96
    iput-object v1, v0, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->workshopText:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/ActivityMechanicBinding;
    .locals 1

    .line 139
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ActivityMechanicBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ActivityMechanicBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d002e

    .line 151
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ActivityMechanicBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/ActivityMechanicBinding;
    .locals 1

    .line 121
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ActivityMechanicBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/ActivityMechanicBinding;
    .locals 1

    .line 102
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ActivityMechanicBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ActivityMechanicBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ActivityMechanicBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d002e

    .line 116
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ActivityMechanicBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ActivityMechanicBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d002e

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 135
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ActivityMechanicBinding;

    return-object p0
.end method

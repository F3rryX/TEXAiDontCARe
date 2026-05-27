.class public abstract Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ScreenSosPrerequisiteBinding.java"


# instance fields
.field public final scrollSosPrerequisite:Landroid/widget/ScrollView;

.field public final sosPrerequisiteBt:Landroid/widget/LinearLayout;

.field public final sosPrerequisiteBtImg:Landroid/widget/ImageView;

.field public final sosPrerequisiteConnection:Landroid/widget/LinearLayout;

.field public final sosPrerequisiteConnectionImg:Landroid/widget/ImageView;

.field public final sosPrerequisiteDescription:Landroid/widget/TextView;

.field public final sosPrerequisiteGps:Landroid/widget/LinearLayout;

.field public final sosPrerequisiteGpsImg:Landroid/widget/ImageView;

.field public final sosPrerequisiteNetwork:Landroid/widget/LinearLayout;

.field public final sosPrerequisiteNetworkImg:Landroid/widget/ImageView;

.field public final sosPrerequisitePhoneNumber:Landroid/widget/LinearLayout;

.field public final sosPrerequisitePhoneNumberImg:Landroid/widget/ImageView;

.field public final sosPrerequisiteTermsofservice:Landroid/widget/LinearLayout;

.field public final sosPrerequisiteTermsofserviceImg:Landroid/widget/ImageView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ScrollView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V
    .locals 2

    move-object v0, p0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 71
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;->scrollSosPrerequisite:Landroid/widget/ScrollView;

    move-object v1, p5

    .line 72
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;->sosPrerequisiteBt:Landroid/widget/LinearLayout;

    move-object v1, p6

    .line 73
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;->sosPrerequisiteBtImg:Landroid/widget/ImageView;

    move-object v1, p7

    .line 74
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;->sosPrerequisiteConnection:Landroid/widget/LinearLayout;

    move-object v1, p8

    .line 75
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;->sosPrerequisiteConnectionImg:Landroid/widget/ImageView;

    move-object v1, p9

    .line 76
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;->sosPrerequisiteDescription:Landroid/widget/TextView;

    move-object v1, p10

    .line 77
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;->sosPrerequisiteGps:Landroid/widget/LinearLayout;

    move-object v1, p11

    .line 78
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;->sosPrerequisiteGpsImg:Landroid/widget/ImageView;

    move-object v1, p12

    .line 79
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;->sosPrerequisiteNetwork:Landroid/widget/LinearLayout;

    move-object v1, p13

    .line 80
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;->sosPrerequisiteNetworkImg:Landroid/widget/ImageView;

    move-object/from16 v1, p14

    .line 81
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;->sosPrerequisitePhoneNumber:Landroid/widget/LinearLayout;

    move-object/from16 v1, p15

    .line 82
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;->sosPrerequisitePhoneNumberImg:Landroid/widget/ImageView;

    move-object/from16 v1, p16

    .line 83
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;->sosPrerequisiteTermsofservice:Landroid/widget/LinearLayout;

    move-object/from16 v1, p17

    .line 84
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;->sosPrerequisiteTermsofserviceImg:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;
    .locals 1

    .line 127
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00e5

    .line 139
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;
    .locals 1

    .line 109
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;
    .locals 1

    .line 90
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00e5

    .line 104
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00e5

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 123
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenSosPrerequisiteBinding;

    return-object p0
.end method

.class public abstract Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ScreenActivationServiceContactBinding.java"


# instance fields
.field public final screenActivationServiceContactAdd:Landroid/widget/LinearLayout;

.field public final screenActivationServiceContactConfirm:Landroid/widget/TextView;

.field public final screenActivationServiceContactFirstContact:Landroid/widget/LinearLayout;

.field public final screenActivationServiceContactFirstContactIcon:Landroid/widget/TextView;

.field public final screenActivationServiceContactFirstContactName:Landroid/widget/TextView;

.field public final screenActivationServiceContactFirstContactNumber:Landroid/widget/TextView;

.field public final screenActivationServiceContactFirstContactNumberPrefix:Landroid/widget/Spinner;

.field public final screenActivationServiceContactSecondContact:Landroid/widget/LinearLayout;

.field public final screenActivationServiceContactSecondContactIcon:Landroid/widget/TextView;

.field public final screenActivationServiceContactSecondContactName:Landroid/widget/TextView;

.field public final screenActivationServiceContactSecondContactNumber:Landroid/widget/TextView;

.field public final screenActivationServiceContactSecondContactNumberPrefix:Landroid/widget/Spinner;

.field public final screenActivationServiceContactSubtitle:Landroid/widget/TextView;

.field public final screenActivationServiceContactTitle:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Spinner;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Spinner;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 77
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;->screenActivationServiceContactAdd:Landroid/widget/LinearLayout;

    move-object v1, p5

    .line 78
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;->screenActivationServiceContactConfirm:Landroid/widget/TextView;

    move-object v1, p6

    .line 79
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;->screenActivationServiceContactFirstContact:Landroid/widget/LinearLayout;

    move-object v1, p7

    .line 80
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;->screenActivationServiceContactFirstContactIcon:Landroid/widget/TextView;

    move-object v1, p8

    .line 81
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;->screenActivationServiceContactFirstContactName:Landroid/widget/TextView;

    move-object v1, p9

    .line 82
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;->screenActivationServiceContactFirstContactNumber:Landroid/widget/TextView;

    move-object v1, p10

    .line 83
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;->screenActivationServiceContactFirstContactNumberPrefix:Landroid/widget/Spinner;

    move-object v1, p11

    .line 84
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;->screenActivationServiceContactSecondContact:Landroid/widget/LinearLayout;

    move-object v1, p12

    .line 85
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;->screenActivationServiceContactSecondContactIcon:Landroid/widget/TextView;

    move-object v1, p13

    .line 86
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;->screenActivationServiceContactSecondContactName:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 87
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;->screenActivationServiceContactSecondContactNumber:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 88
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;->screenActivationServiceContactSecondContactNumberPrefix:Landroid/widget/Spinner;

    move-object/from16 v1, p16

    .line 89
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;->screenActivationServiceContactSubtitle:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 90
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;->screenActivationServiceContactTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;
    .locals 1

    .line 133
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00a6

    .line 146
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;
    .locals 1

    .line 115
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;
    .locals 1

    .line 96
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00a6

    .line 110
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00a6

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 129
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;

    return-object p0
.end method

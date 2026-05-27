.class public abstract Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ScreenActivationServiceCompletedBinding.java"


# instance fields
.field public final okButton:Landroid/widget/TextView;

.field public final screenAcceptationSosServiceDescriptionCardLight:Landroidx/cardview/widget/CardView;

.field public final screenAcceptationSosServiceDescriptionCardLightCar:Landroid/widget/TextView;

.field public final screenAcceptationSosServiceDescriptionCardLightPlate:Landroid/widget/TextView;

.field public final screenAcceptationSosServiceDescriptionCardPlus:Landroidx/cardview/widget/CardView;

.field public final screenAcceptationSosServiceDescriptionCardPlusCar:Landroidx/appcompat/widget/AppCompatTextView;

.field public final screenAcceptationSosServiceDescriptionCardPlusPlate:Landroidx/appcompat/widget/AppCompatTextView;

.field public final screenAcceptationSosServiceDescriptionDueDay:Landroid/widget/TextView;

.field public final screenAcceptationSosServiceDescriptionDueMonth:Landroid/widget/TextView;

.field public final screenAcceptationSosServiceDescriptionLabel:Landroid/widget/TextView;

.field public final screenAcceptationSosServiceDescriptionTitle:Landroid/widget/TextView;

.field public final screenAcceptationSosServiceDescriptionWhen:Landroid/widget/LinearLayout;

.field public final tosFragmentContainer:Landroid/widget/RelativeLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/cardview/widget/CardView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;)V
    .locals 2

    move-object v0, p0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 75
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;->okButton:Landroid/widget/TextView;

    move-object v1, p5

    .line 76
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;->screenAcceptationSosServiceDescriptionCardLight:Landroidx/cardview/widget/CardView;

    move-object v1, p6

    .line 77
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;->screenAcceptationSosServiceDescriptionCardLightCar:Landroid/widget/TextView;

    move-object v1, p7

    .line 78
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;->screenAcceptationSosServiceDescriptionCardLightPlate:Landroid/widget/TextView;

    move-object v1, p8

    .line 79
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;->screenAcceptationSosServiceDescriptionCardPlus:Landroidx/cardview/widget/CardView;

    move-object v1, p9

    .line 80
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;->screenAcceptationSosServiceDescriptionCardPlusCar:Landroidx/appcompat/widget/AppCompatTextView;

    move-object v1, p10

    .line 81
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;->screenAcceptationSosServiceDescriptionCardPlusPlate:Landroidx/appcompat/widget/AppCompatTextView;

    move-object v1, p11

    .line 82
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;->screenAcceptationSosServiceDescriptionDueDay:Landroid/widget/TextView;

    move-object v1, p12

    .line 83
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;->screenAcceptationSosServiceDescriptionDueMonth:Landroid/widget/TextView;

    move-object v1, p13

    .line 84
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;->screenAcceptationSosServiceDescriptionLabel:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 85
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;->screenAcceptationSosServiceDescriptionTitle:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 86
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;->screenAcceptationSosServiceDescriptionWhen:Landroid/widget/LinearLayout;

    move-object/from16 v1, p16

    .line 87
    iput-object v1, v0, Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;->tosFragmentContainer:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;
    .locals 1

    .line 130
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00a5

    .line 143
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;
    .locals 1

    .line 112
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;
    .locals 1

    .line 93
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00a5

    .line 107
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00a5

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 126
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenActivationServiceCompletedBinding;

    return-object p0
.end method

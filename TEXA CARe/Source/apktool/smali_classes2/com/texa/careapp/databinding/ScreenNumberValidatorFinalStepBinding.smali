.class public abstract Lcom/texa/careapp/databinding/ScreenNumberValidatorFinalStepBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ScreenNumberValidatorFinalStepBinding.java"


# instance fields
.field public final confirmPhoneValidationFinalStep:Landroid/widget/TextView;

.field public final phoneCodeValidatorEditText:Landroid/widget/EditText;

.field public final signupCodePhoneValidator:Landroid/widget/RelativeLayout;

.field public final textViewPhoneValidatorFinalStep:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/RelativeLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 36
    iput-object p4, p0, Lcom/texa/careapp/databinding/ScreenNumberValidatorFinalStepBinding;->confirmPhoneValidationFinalStep:Landroid/widget/TextView;

    .line 37
    iput-object p5, p0, Lcom/texa/careapp/databinding/ScreenNumberValidatorFinalStepBinding;->phoneCodeValidatorEditText:Landroid/widget/EditText;

    .line 38
    iput-object p6, p0, Lcom/texa/careapp/databinding/ScreenNumberValidatorFinalStepBinding;->signupCodePhoneValidator:Landroid/widget/RelativeLayout;

    .line 39
    iput-object p7, p0, Lcom/texa/careapp/databinding/ScreenNumberValidatorFinalStepBinding;->textViewPhoneValidatorFinalStep:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/ScreenNumberValidatorFinalStepBinding;
    .locals 1

    .line 82
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenNumberValidatorFinalStepBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenNumberValidatorFinalStepBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenNumberValidatorFinalStepBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00cf

    .line 95
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/ScreenNumberValidatorFinalStepBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenNumberValidatorFinalStepBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/ScreenNumberValidatorFinalStepBinding;
    .locals 1

    .line 64
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenNumberValidatorFinalStepBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenNumberValidatorFinalStepBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/ScreenNumberValidatorFinalStepBinding;
    .locals 1

    .line 45
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ScreenNumberValidatorFinalStepBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenNumberValidatorFinalStepBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenNumberValidatorFinalStepBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00cf

    .line 59
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenNumberValidatorFinalStepBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenNumberValidatorFinalStepBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00cf

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 78
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenNumberValidatorFinalStepBinding;

    return-object p0
.end method

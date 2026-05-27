.class public abstract Lcom/texa/careapp/databinding/ScreenNumberValidatorBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ScreenNumberValidatorBinding.java"


# instance fields
.field public final buttonPhoneValidator:Landroid/widget/RelativeLayout;

.field public final prefixPhoneValidator:Landroid/widget/EditText;

.field public final signupPhoneValidator:Landroid/widget/EditText;

.field public final spinnerCountryPhoneValidator:Landroid/widget/Spinner;

.field public final textViewPhoneValidator:Landroid/widget/TextView;

.field public final textViewWarningPhoneValidator:Landroid/widget/TextView;

.field public final titleSignupSignupPhoneValidator:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/RelativeLayout;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 47
    iput-object p4, p0, Lcom/texa/careapp/databinding/ScreenNumberValidatorBinding;->buttonPhoneValidator:Landroid/widget/RelativeLayout;

    .line 48
    iput-object p5, p0, Lcom/texa/careapp/databinding/ScreenNumberValidatorBinding;->prefixPhoneValidator:Landroid/widget/EditText;

    .line 49
    iput-object p6, p0, Lcom/texa/careapp/databinding/ScreenNumberValidatorBinding;->signupPhoneValidator:Landroid/widget/EditText;

    .line 50
    iput-object p7, p0, Lcom/texa/careapp/databinding/ScreenNumberValidatorBinding;->spinnerCountryPhoneValidator:Landroid/widget/Spinner;

    .line 51
    iput-object p8, p0, Lcom/texa/careapp/databinding/ScreenNumberValidatorBinding;->textViewPhoneValidator:Landroid/widget/TextView;

    .line 52
    iput-object p9, p0, Lcom/texa/careapp/databinding/ScreenNumberValidatorBinding;->textViewWarningPhoneValidator:Landroid/widget/TextView;

    .line 53
    iput-object p10, p0, Lcom/texa/careapp/databinding/ScreenNumberValidatorBinding;->titleSignupSignupPhoneValidator:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/ScreenNumberValidatorBinding;
    .locals 1

    .line 96
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenNumberValidatorBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenNumberValidatorBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenNumberValidatorBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00ce

    .line 108
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/ScreenNumberValidatorBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenNumberValidatorBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/ScreenNumberValidatorBinding;
    .locals 1

    .line 78
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenNumberValidatorBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenNumberValidatorBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/ScreenNumberValidatorBinding;
    .locals 1

    .line 59
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ScreenNumberValidatorBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenNumberValidatorBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenNumberValidatorBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00ce

    .line 73
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenNumberValidatorBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenNumberValidatorBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00ce

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 92
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenNumberValidatorBinding;

    return-object p0
.end method

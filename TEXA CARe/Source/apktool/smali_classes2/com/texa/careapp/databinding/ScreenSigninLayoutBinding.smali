.class public abstract Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ScreenSigninLayoutBinding.java"


# instance fields
.field public final screenSigninDescription:Landroid/widget/TextView;

.field public final screenSigninEmailEditText:Landroid/widget/EditText;

.field public final screenSigninEmailInput:Lcom/google/android/material/textfield/TextInputLayout;

.field public final screenSigninEmailLabel:Landroid/widget/TextView;

.field public final screenSigninLoginButton:Landroid/widget/TextView;

.field public final screenSigninLoginLabel:Landroid/widget/TextView;

.field public final screenSigninPasswordEditText:Landroid/widget/EditText;

.field public final screenSigninPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

.field public final screenSigninPasswordLabel:Landroid/widget/TextView;

.field public final screenSigninRegisterLabel:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 56
    iput-object p4, p0, Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;->screenSigninDescription:Landroid/widget/TextView;

    .line 57
    iput-object p5, p0, Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;->screenSigninEmailEditText:Landroid/widget/EditText;

    .line 58
    iput-object p6, p0, Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;->screenSigninEmailInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 59
    iput-object p7, p0, Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;->screenSigninEmailLabel:Landroid/widget/TextView;

    .line 60
    iput-object p8, p0, Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;->screenSigninLoginButton:Landroid/widget/TextView;

    .line 61
    iput-object p9, p0, Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;->screenSigninLoginLabel:Landroid/widget/TextView;

    .line 62
    iput-object p10, p0, Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;->screenSigninPasswordEditText:Landroid/widget/EditText;

    .line 63
    iput-object p11, p0, Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;->screenSigninPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 64
    iput-object p12, p0, Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;->screenSigninPasswordLabel:Landroid/widget/TextView;

    .line 65
    iput-object p13, p0, Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;->screenSigninRegisterLabel:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;
    .locals 1

    .line 108
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00e4

    .line 120
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;
    .locals 1

    .line 90
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;
    .locals 1

    .line 71
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00e4

    .line 85
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00e4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 104
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenSigninLayoutBinding;

    return-object p0
.end method

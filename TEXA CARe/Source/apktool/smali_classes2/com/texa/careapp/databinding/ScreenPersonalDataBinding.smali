.class public abstract Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ScreenPersonalDataBinding.java"


# instance fields
.field public final screenSignupPersonalDataBirthdayEditText:Landroid/widget/EditText;

.field public final screenSignupPersonalDataBirthdayInput:Lcom/google/android/material/textfield/TextInputLayout;

.field public final screenSignupPersonalDataCompleteRegistration:Landroid/widget/RelativeLayout;

.field public final screenSignupPersonalDataCompleteRegistrationText:Landroid/widget/TextView;

.field public final screenSignupPersonalDataNameEditText:Landroid/widget/EditText;

.field public final screenSignupPersonalDataNameInput:Lcom/google/android/material/textfield/TextInputLayout;

.field public final screenSignupPersonalDataPhoneNumberEditText:Landroid/widget/EditText;

.field public final screenSignupPersonalDataPhoneNumberInput:Lcom/google/android/material/textfield/TextInputLayout;

.field public final screenSignupPersonalDataSurnameEditText:Landroid/widget/EditText;

.field public final screenSignupPersonalDataSurnameInput:Lcom/google/android/material/textfield/TextInputLayout;

.field public final screenSignupPersonalDataSurnameLabel:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 66
    iput-object p4, p0, Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;->screenSignupPersonalDataBirthdayEditText:Landroid/widget/EditText;

    .line 67
    iput-object p5, p0, Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;->screenSignupPersonalDataBirthdayInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 68
    iput-object p6, p0, Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;->screenSignupPersonalDataCompleteRegistration:Landroid/widget/RelativeLayout;

    .line 69
    iput-object p7, p0, Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;->screenSignupPersonalDataCompleteRegistrationText:Landroid/widget/TextView;

    .line 70
    iput-object p8, p0, Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;->screenSignupPersonalDataNameEditText:Landroid/widget/EditText;

    .line 71
    iput-object p9, p0, Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;->screenSignupPersonalDataNameInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 72
    iput-object p10, p0, Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;->screenSignupPersonalDataPhoneNumberEditText:Landroid/widget/EditText;

    .line 73
    iput-object p11, p0, Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;->screenSignupPersonalDataPhoneNumberInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 74
    iput-object p12, p0, Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;->screenSignupPersonalDataSurnameEditText:Landroid/widget/EditText;

    .line 75
    iput-object p13, p0, Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;->screenSignupPersonalDataSurnameInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 76
    iput-object p14, p0, Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;->screenSignupPersonalDataSurnameLabel:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;
    .locals 1

    .line 119
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00d3

    .line 131
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;
    .locals 1

    .line 101
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;
    .locals 1

    .line 82
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00d3

    .line 96
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00d3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 115
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenPersonalDataBinding;

    return-object p0
.end method

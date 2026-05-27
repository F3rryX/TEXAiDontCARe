.class public abstract Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ScreenResetExpireScheduleBinding.java"


# instance fields
.field public final editDateViewNewExp:Lcom/texa/careapp/views/EditableDateView;

.field public final editTextViewNewExp:Landroid/widget/EditText;

.field public final floatabelLabelNewExpOdo:Lcom/google/android/material/textfield/TextInputLayout;

.field public final layoutExpiredData:Landroid/widget/LinearLayout;

.field public final layoutNewExpDate:Landroid/widget/LinearLayout;

.field public final layoutNewExpOdo:Landroid/widget/LinearLayout;

.field public final newExpConfirmButton:Landroid/widget/LinearLayout;

.field public final oldExpValue:Landroid/widget/TextView;

.field public final textNewExp:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/texa/careapp/views/EditableDateView;Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 54
    iput-object p4, p0, Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;->editDateViewNewExp:Lcom/texa/careapp/views/EditableDateView;

    .line 55
    iput-object p5, p0, Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;->editTextViewNewExp:Landroid/widget/EditText;

    .line 56
    iput-object p6, p0, Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;->floatabelLabelNewExpOdo:Lcom/google/android/material/textfield/TextInputLayout;

    .line 57
    iput-object p7, p0, Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;->layoutExpiredData:Landroid/widget/LinearLayout;

    .line 58
    iput-object p8, p0, Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;->layoutNewExpDate:Landroid/widget/LinearLayout;

    .line 59
    iput-object p9, p0, Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;->layoutNewExpOdo:Landroid/widget/LinearLayout;

    .line 60
    iput-object p10, p0, Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;->newExpConfirmButton:Landroid/widget/LinearLayout;

    .line 61
    iput-object p11, p0, Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;->oldExpValue:Landroid/widget/TextView;

    .line 62
    iput-object p12, p0, Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;->textNewExp:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;
    .locals 1

    .line 105
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00d6

    .line 118
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;
    .locals 1

    .line 87
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;
    .locals 1

    .line 68
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00d6

    .line 82
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00d6

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 101
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenResetExpireScheduleBinding;

    return-object p0
.end method

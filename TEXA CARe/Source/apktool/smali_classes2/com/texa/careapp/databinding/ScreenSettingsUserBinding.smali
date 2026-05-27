.class public abstract Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ScreenSettingsUserBinding.java"


# instance fields
.field public final divTopUserLogout:Landroid/view/View;

.field public final editDateViewUserDriverLicense:Lcom/texa/careapp/views/EditableDateView;

.field public final editTextUserEmail:Landroid/widget/EditText;

.field public final editTextUserFirstName:Landroid/widget/EditText;

.field public final editTextUserFiscalCode:Landroid/widget/EditText;

.field public final editTextUserLastName:Landroid/widget/EditText;

.field public final editTextUserPhoneNumber:Landroid/widget/EditText;

.field public final iconSetUserAddress:Landroid/widget/ImageView;

.field public final layoutExpDriverLicense:Landroid/widget/RelativeLayout;

.field public final layoutSetUserAddress:Landroid/widget/RelativeLayout;

.field public final layoutUserLogout:Landroid/widget/LinearLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/view/View;Lcom/texa/careapp/views/EditableDateView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 61
    iput-object p4, p0, Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;->divTopUserLogout:Landroid/view/View;

    .line 62
    iput-object p5, p0, Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;->editDateViewUserDriverLicense:Lcom/texa/careapp/views/EditableDateView;

    .line 63
    iput-object p6, p0, Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;->editTextUserEmail:Landroid/widget/EditText;

    .line 64
    iput-object p7, p0, Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;->editTextUserFirstName:Landroid/widget/EditText;

    .line 65
    iput-object p8, p0, Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;->editTextUserFiscalCode:Landroid/widget/EditText;

    .line 66
    iput-object p9, p0, Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;->editTextUserLastName:Landroid/widget/EditText;

    .line 67
    iput-object p10, p0, Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;->editTextUserPhoneNumber:Landroid/widget/EditText;

    .line 68
    iput-object p11, p0, Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;->iconSetUserAddress:Landroid/widget/ImageView;

    .line 69
    iput-object p12, p0, Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;->layoutExpDriverLicense:Landroid/widget/RelativeLayout;

    .line 70
    iput-object p13, p0, Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;->layoutSetUserAddress:Landroid/widget/RelativeLayout;

    .line 71
    iput-object p14, p0, Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;->layoutUserLogout:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;
    .locals 1

    .line 114
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00e2

    .line 126
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;
    .locals 1

    .line 96
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;
    .locals 1

    .line 77
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00e2

    .line 91
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00e2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 110
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ScreenSettingsUserBinding;

    return-object p0
.end method

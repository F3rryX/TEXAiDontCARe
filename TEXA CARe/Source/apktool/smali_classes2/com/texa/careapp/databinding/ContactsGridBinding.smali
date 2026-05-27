.class public abstract Lcom/texa/careapp/databinding/ContactsGridBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ContactsGridBinding.java"


# instance fields
.field public final callMechanicButton:Landroid/widget/ImageView;

.field public final callMechanicTitle:Landroid/widget/TextView;

.field public final centralOperatorItem:Landroid/widget/RelativeLayout;

.field public final contactSosGoToSettings:Landroid/widget/ImageView;

.field public final contactsGridBadge:Landroid/widget/LinearLayout;

.field public final contactsGridBadgeText:Landroidx/appcompat/widget/AppCompatTextView;

.field public final emergencyButtonAlertIcon:Lcom/texa/careapp/views/AlertImageView;

.field public final mechanicDescription:Landroid/widget/TextView;

.field public final mechanicItem:Landroid/widget/RelativeLayout;

.field public final sosImage:Landroid/widget/ImageView;

.field public final sosServiceStatus:Landroid/widget/TextView;

.field public final sosServiceTitle:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Lcom/texa/careapp/views/AlertImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 65
    iput-object p4, p0, Lcom/texa/careapp/databinding/ContactsGridBinding;->callMechanicButton:Landroid/widget/ImageView;

    .line 66
    iput-object p5, p0, Lcom/texa/careapp/databinding/ContactsGridBinding;->callMechanicTitle:Landroid/widget/TextView;

    .line 67
    iput-object p6, p0, Lcom/texa/careapp/databinding/ContactsGridBinding;->centralOperatorItem:Landroid/widget/RelativeLayout;

    .line 68
    iput-object p7, p0, Lcom/texa/careapp/databinding/ContactsGridBinding;->contactSosGoToSettings:Landroid/widget/ImageView;

    .line 69
    iput-object p8, p0, Lcom/texa/careapp/databinding/ContactsGridBinding;->contactsGridBadge:Landroid/widget/LinearLayout;

    .line 70
    iput-object p9, p0, Lcom/texa/careapp/databinding/ContactsGridBinding;->contactsGridBadgeText:Landroidx/appcompat/widget/AppCompatTextView;

    .line 71
    iput-object p10, p0, Lcom/texa/careapp/databinding/ContactsGridBinding;->emergencyButtonAlertIcon:Lcom/texa/careapp/views/AlertImageView;

    .line 72
    iput-object p11, p0, Lcom/texa/careapp/databinding/ContactsGridBinding;->mechanicDescription:Landroid/widget/TextView;

    .line 73
    iput-object p12, p0, Lcom/texa/careapp/databinding/ContactsGridBinding;->mechanicItem:Landroid/widget/RelativeLayout;

    .line 74
    iput-object p13, p0, Lcom/texa/careapp/databinding/ContactsGridBinding;->sosImage:Landroid/widget/ImageView;

    .line 75
    iput-object p14, p0, Lcom/texa/careapp/databinding/ContactsGridBinding;->sosServiceStatus:Landroid/widget/TextView;

    .line 76
    iput-object p15, p0, Lcom/texa/careapp/databinding/ContactsGridBinding;->sosServiceTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/ContactsGridBinding;
    .locals 1

    .line 119
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ContactsGridBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ContactsGridBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ContactsGridBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d004f

    .line 131
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/ContactsGridBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ContactsGridBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/ContactsGridBinding;
    .locals 1

    .line 101
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ContactsGridBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ContactsGridBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/ContactsGridBinding;
    .locals 1

    .line 82
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ContactsGridBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ContactsGridBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ContactsGridBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d004f

    .line 96
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ContactsGridBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ContactsGridBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d004f

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 115
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ContactsGridBinding;

    return-object p0
.end method

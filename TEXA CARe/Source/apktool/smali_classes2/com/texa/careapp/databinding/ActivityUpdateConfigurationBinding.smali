.class public abstract Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ActivityUpdateConfigurationBinding.java"


# instance fields
.field public final activityUpdateProgressLayout:Landroid/widget/LinearLayout;

.field public final careImage:Landroid/widget/ImageView;

.field public final careUpdateMessage1:Landroidx/appcompat/widget/AppCompatTextView;

.field public final careUpdateMessage2:Landroidx/appcompat/widget/AppCompatTextView;

.field public final careUpdateMessagePrimary:Landroid/widget/TextView;

.field public final careUpdateMessageSecondary:Landroid/widget/TextView;

.field public final careUpdateMessageSuccess:Landroid/widget/TextView;

.field public final careUpdateProgress:Landroid/widget/ProgressBar;

.field public final careUpdateSkip:Landroid/widget/TextView;

.field public final careUpdateTitle:Landroid/widget/TextView;

.field public final confirm:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Landroid/widget/ImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 61
    iput-object p4, p0, Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;->activityUpdateProgressLayout:Landroid/widget/LinearLayout;

    .line 62
    iput-object p5, p0, Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;->careImage:Landroid/widget/ImageView;

    .line 63
    iput-object p6, p0, Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;->careUpdateMessage1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 64
    iput-object p7, p0, Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;->careUpdateMessage2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 65
    iput-object p8, p0, Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;->careUpdateMessagePrimary:Landroid/widget/TextView;

    .line 66
    iput-object p9, p0, Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;->careUpdateMessageSecondary:Landroid/widget/TextView;

    .line 67
    iput-object p10, p0, Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;->careUpdateMessageSuccess:Landroid/widget/TextView;

    .line 68
    iput-object p11, p0, Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;->careUpdateProgress:Landroid/widget/ProgressBar;

    .line 69
    iput-object p12, p0, Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;->careUpdateSkip:Landroid/widget/TextView;

    .line 70
    iput-object p13, p0, Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;->careUpdateTitle:Landroid/widget/TextView;

    .line 71
    iput-object p14, p0, Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;->confirm:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;
    .locals 1

    .line 114
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0040

    .line 127
    invoke-static {p1, p0, v0}, Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;
    .locals 1

    .line 96
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;
    .locals 1

    .line 77
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0040

    .line 91
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0040

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 110
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/databinding/ActivityUpdateConfigurationBinding;

    return-object p0
.end method

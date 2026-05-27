.class Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;
.super Landroid/widget/BaseAdapter;
.source "SetInsuranceCompanyScreen.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsuranceAdapter"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field private mDisplayedValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/schedule/addThreshold/Insurance;",
            ">;"
        }
    .end annotation
.end field

.field mInsuranceText:Landroid/widget/TextView;

.field private mOriginalValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/schedule/addThreshold/Insurance;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/schedule/addThreshold/Insurance;",
            ">;)V"
        }
    .end annotation

    .line 230
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;->this$0:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 231
    iput-object p3, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;->mOriginalValues:Ljava/util/List;

    .line 232
    iput-object p3, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;->mDisplayedValues:Ljava/util/List;

    .line 233
    iput-object p2, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$300(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;)Ljava/util/List;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;->mDisplayedValues:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;->mDisplayedValues:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;)Ljava/util/List;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;->mOriginalValues:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$402(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;->mOriginalValues:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;->mDisplayedValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 266
    new-instance v0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter$1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter$1;-><init>(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;)V

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;->mDisplayedValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 255
    iget-object p2, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v0, 0x7f0d008c

    const/4 v1, 0x0

    .line 256
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0a0466

    .line 258
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;->mInsuranceText:Landroid/widget/TextView;

    .line 259
    iget-object p3, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;->mDisplayedValues:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/app/schedule/addThreshold/Insurance;

    invoke-virtual {p1}, Lcom/texa/careapp/app/schedule/addThreshold/Insurance;->getName()Ljava/lang/String;

    move-result-object p1

    .line 260
    iget-object p3, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;->mInsuranceText:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

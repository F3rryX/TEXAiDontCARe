.class public Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;
.super Landroid/widget/ArrayAdapter;
.source "VehiclePlateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLayoutResourceId:I

.field private final mPlates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlates_All:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlates_Suggestion:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 34
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;->mContext:Landroid/content/Context;

    .line 35
    iput p2, p0, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;->mLayoutResourceId:I

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;->mPlates:Ljava/util/List;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;->mPlates_All:Ljava/util/List;

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;->mPlates_Suggestion:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;->mPlates_Suggestion:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;->mPlates_All:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;->mPlates:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;->mPlates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 69
    new-instance v0, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter$1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter$1;-><init>(Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;)V

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;->mPlates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

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

    .line 58
    iget-object p2, p0, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;->mContext:Landroid/content/Context;

    check-cast p2, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-virtual {p2}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    .line 59
    iget v0, p0, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;->mLayoutResourceId:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0a0075

    .line 61
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

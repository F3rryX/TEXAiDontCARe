.class Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "EcoDrivingTripDetailScreenAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mComponent:Lcom/texa/careapp/CareApplication$ApplicationComponent;

.field private final mContext:Landroid/content/Context;

.field private final mNavigator:Lcom/texa/care/navigation/Navigator;

.field private final mRxLocation:Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

.field private final score:I

.field private final tripEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripEventModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/texa/careapp/CareApplication$ApplicationComponent;Lcom/texa/care/navigation/Navigator;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripEventModel;",
            ">;",
            "Lcom/texa/careapp/CareApplication$ApplicationComponent;",
            "Lcom/texa/care/navigation/Navigator;",
            "I)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter;->tripEvents:Ljava/util/List;

    .line 65
    iput-object p3, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter;->mComponent:Lcom/texa/careapp/CareApplication$ApplicationComponent;

    .line 66
    iput-object p4, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter;->mNavigator:Lcom/texa/care/navigation/Navigator;

    .line 67
    iput p5, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter;->score:I

    .line 68
    new-instance p2, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    invoke-direct {p2, p1}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter;->mRxLocation:Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter;->tripEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 53
    check-cast p1, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter;->onBindViewHolder(Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;I)V
    .locals 9

    .line 78
    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter;->tripEvents:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter;->tripEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter;->mRxLocation:Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    iget-object v5, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter;->mComponent:Lcom/texa/careapp/CareApplication$ApplicationComponent;

    iget-object v6, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter;->mNavigator:Lcom/texa/care/navigation/Navigator;

    iget-object v7, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter;->tripEvents:Ljava/util/List;

    iget v8, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter;->score:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;->bindView(Landroid/content/Context;Lcom/texa/careapp/app/ecodriving/model/TripEventModel;ZLpl/charmas/android/reactivelocation2/ReactiveLocationProvider;Lcom/texa/careapp/CareApplication$ApplicationComponent;Lcom/texa/care/navigation/Navigator;Ljava/util/List;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;
    .locals 3

    .line 73
    new-instance p2, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00c5

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;

    invoke-direct {p2, p1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;-><init>(Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;)V

    return-object p2
.end method

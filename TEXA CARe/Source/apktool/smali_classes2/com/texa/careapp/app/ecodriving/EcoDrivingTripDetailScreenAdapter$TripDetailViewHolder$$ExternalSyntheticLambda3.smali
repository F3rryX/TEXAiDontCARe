.class public final synthetic Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;

.field public final synthetic f$1:Landroidx/appcompat/widget/AppCompatTextView;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Lcom/texa/careapp/app/ecodriving/model/TripEventModel;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;Landroidx/appcompat/widget/AppCompatTextView;Landroid/content/Context;Lcom/texa/careapp/app/ecodriving/model/TripEventModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda3;->f$0:Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;

    iput-object p2, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda3;->f$1:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p3, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda3;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda3;->f$3:Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda3;->f$0:Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda3;->f$1:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda3;->f$2:Landroid/content/Context;

    iget-object v3, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda3;->f$3:Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;->lambda$acquiredPosition$1$com-texa-careapp-app-ecodriving-EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder(Landroidx/appcompat/widget/AppCompatTextView;Landroid/content/Context;Lcom/texa/careapp/app/ecodriving/model/TripEventModel;Ljava/util/List;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method

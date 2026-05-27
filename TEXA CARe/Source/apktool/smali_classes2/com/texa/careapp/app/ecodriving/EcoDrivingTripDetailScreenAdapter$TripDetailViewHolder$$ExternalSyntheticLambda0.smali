.class public final synthetic Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

.field public final synthetic f$3:Lcom/texa/care/navigation/Navigator;

.field public final synthetic f$4:Lcom/texa/careapp/CareApplication$ApplicationComponent;

.field public final synthetic f$5:I

.field public final synthetic f$6:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;Landroid/content/Context;Lcom/texa/careapp/app/ecodriving/model/TripEventModel;Lcom/texa/care/navigation/Navigator;Lcom/texa/careapp/CareApplication$ApplicationComponent;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;

    iput-object p2, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda0;->f$2:Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    iput-object p4, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda0;->f$3:Lcom/texa/care/navigation/Navigator;

    iput-object p5, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda0;->f$4:Lcom/texa/careapp/CareApplication$ApplicationComponent;

    iput p6, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda0;->f$5:I

    iput-object p7, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda0;->f$6:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda0;->f$2:Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    iget-object v3, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda0;->f$3:Lcom/texa/care/navigation/Navigator;

    iget-object v4, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda0;->f$4:Lcom/texa/careapp/CareApplication$ApplicationComponent;

    iget v5, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda0;->f$5:I

    iget-object v6, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda0;->f$6:Ljava/util/List;

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;->lambda$bindView$0$com-texa-careapp-app-ecodriving-EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder(Landroid/content/Context;Lcom/texa/careapp/app/ecodriving/model/TripEventModel;Lcom/texa/care/navigation/Navigator;Lcom/texa/careapp/CareApplication$ApplicationComponent;ILjava/util/List;Landroid/view/View;)V

    return-void
.end method

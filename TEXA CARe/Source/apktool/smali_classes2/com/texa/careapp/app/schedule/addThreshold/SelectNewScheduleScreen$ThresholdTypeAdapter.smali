.class Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen$ThresholdTypeAdapter;
.super Lcom/texa/careapp/utils/SimpleSpinnerAdapter;
.source "SelectNewScheduleScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThresholdTypeAdapter"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field private mType:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;

.field typeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ThresholdModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ThresholdModel;",
            ">;)V"
        }
    .end annotation

    .line 318
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen$ThresholdTypeAdapter;->this$0:Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;

    .line 319
    invoke-direct {p0, p3}, Lcom/texa/careapp/utils/SimpleSpinnerAdapter;-><init>(Ljava/util/List;)V

    .line 320
    iput-object p2, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen$ThresholdTypeAdapter;->mContext:Landroid/content/Context;

    .line 321
    iput-object p3, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen$ThresholdTypeAdapter;->typeList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 327
    iget-object p2, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen$ThresholdTypeAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v0, 0x7f0d00f6

    const/4 v1, 0x0

    .line 328
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0a0466

    .line 330
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen$ThresholdTypeAdapter;->mType:Landroid/widget/TextView;

    .line 331
    iget-object p3, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen$ThresholdTypeAdapter;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/texa/careapp/model/ThresholdModel;->TYPE_DESCRIPTION:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen$ThresholdTypeAdapter;->typeList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/model/ThresholdModel;

    invoke-virtual {p1}, Lcom/texa/careapp/model/ThresholdModel;->getType()Lcom/texa/careapp/model/ThresholdModel$Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 332
    iget-object p3, p0, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen$ThresholdTypeAdapter;->mType:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

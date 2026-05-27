.class Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen$ThresholdTypeAdapter;
.super Ljava/lang/Object;
.source "InsertNewThresholdScreen.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThresholdTypeAdapter"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field private mType:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;

.field typeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ThresholdModel$Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ThresholdModel$Type;",
            ">;)V"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen$ThresholdTypeAdapter;->this$0:Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p3, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen$ThresholdTypeAdapter;->typeList:Ljava/util/List;

    .line 160
    iput-object p2, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen$ThresholdTypeAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen$ThresholdTypeAdapter;->typeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 166
    iget-object p2, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen$ThresholdTypeAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v0, 0x7f0d00f6

    const/4 v1, 0x0

    .line 167
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0a0466

    .line 169
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen$ThresholdTypeAdapter;->mType:Landroid/widget/TextView;

    .line 170
    iget-object p3, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen$ThresholdTypeAdapter;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/texa/careapp/model/ThresholdModel;->TYPE_DESCRIPTION:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen$ThresholdTypeAdapter;->typeList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 171
    iget-object p3, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen$ThresholdTypeAdapter;->mType:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen$ThresholdTypeAdapter;->typeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 208
    iget-object p2, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen$ThresholdTypeAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v0, 0x7f0d00f6

    const/4 v1, 0x0

    .line 209
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0a0466

    .line 211
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen$ThresholdTypeAdapter;->mType:Landroid/widget/TextView;

    .line 212
    iget-object p3, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen$ThresholdTypeAdapter;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/texa/careapp/model/ThresholdModel;->TYPE_DESCRIPTION:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen$ThresholdTypeAdapter;->typeList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 213
    iget-object p3, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen$ThresholdTypeAdapter;->mType:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    return-void
.end method

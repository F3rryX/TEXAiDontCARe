.class Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter$1;
.super Landroid/widget/Filter;
.source "SetInsuranceCompanyScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter$1;->this$1:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6

    .line 277
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 278
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 280
    iget-object v2, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter$1;->this$1:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;

    invoke-static {v2}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;->access$400(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter$1;->this$1:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter$1;->this$1:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;

    invoke-static {v4}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;->access$300(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v3}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;->access$402(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;Ljava/util/List;)Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_4

    .line 290
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 296
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 297
    :goto_0
    iget-object v3, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter$1;->this$1:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;

    invoke-static {v3}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;->access$400(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 298
    iget-object v3, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter$1;->this$1:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;

    invoke-static {v3}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;->access$400(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/app/schedule/addThreshold/Insurance;

    invoke-virtual {v3}, Lcom/texa/careapp/app/schedule/addThreshold/Insurance;->getName()Ljava/lang/String;

    move-result-object v3

    .line 299
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 300
    new-instance v3, Lcom/texa/careapp/app/schedule/addThreshold/Insurance;

    iget-object v4, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter$1;->this$1:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;

    invoke-static {v4}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;->access$400(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/careapp/app/schedule/addThreshold/Insurance;

    invoke-virtual {v4}, Lcom/texa/careapp/app/schedule/addThreshold/Insurance;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter$1;->this$1:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;

    invoke-static {v5}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;->access$400(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/texa/careapp/app/schedule/addThreshold/Insurance;

    invoke-virtual {v5}, Lcom/texa/careapp/app/schedule/addThreshold/Insurance;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/texa/careapp/app/schedule/addThreshold/Insurance;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 304
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 305
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_2

    .line 293
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter$1;->this$1:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;

    invoke-static {p1}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;->access$400(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 294
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter$1;->this$1:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;

    invoke-static {p1}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;->access$400(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :goto_2
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 271
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter$1;->this$1:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;->access$302(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;Ljava/util/List;)Ljava/util/List;

    .line 272
    iget-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter$1;->this$1:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;

    invoke-virtual {p1}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen$InsuranceAdapter;->notifyDataSetChanged()V

    return-void
.end method

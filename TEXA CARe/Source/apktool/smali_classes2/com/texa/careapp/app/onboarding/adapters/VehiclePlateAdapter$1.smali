.class Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter$1;
.super Landroid/widget/Filter;
.source "VehiclePlateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter$1;->this$0:Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter$1;->convertResultToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 72
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 4

    if-eqz p1, :cond_2

    .line 78
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter$1;->this$0:Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;

    invoke-static {v0}, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;->access$000(Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 79
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter$1;->this$0:Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;

    invoke-static {v0}, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;->access$100(Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 80
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter$1;->this$0:Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;

    invoke-static {v2}, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;->access$000(Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :cond_1
    new-instance p1, Landroid/widget/Filter$FilterResults;

    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 85
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter$1;->this$0:Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;

    invoke-static {v0}, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;->access$000(Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter$1;->this$0:Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;

    invoke-static {v0}, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;->access$000(Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p1, Landroid/widget/Filter$FilterResults;->count:I

    return-object p1

    .line 89
    :cond_2
    new-instance p1, Landroid/widget/Filter$FilterResults;

    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    return-object p1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter$1;->this$0:Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;

    invoke-static {v0}, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;->access$200(Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p2, :cond_1

    .line 96
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_1

    .line 97
    iget-object p1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 98
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 99
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter$1;->this$0:Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;

    invoke-static {v0}, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;->access$200(Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;)Ljava/util/List;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 104
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter$1;->this$0:Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;

    invoke-static {p1}, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;->access$200(Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter$1;->this$0:Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;

    invoke-static {p2}, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;->access$100(Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    :cond_2
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter$1;->this$0:Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;

    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/adapters/VehiclePlateAdapter;->notifyDataSetChanged()V

    return-void
.end method

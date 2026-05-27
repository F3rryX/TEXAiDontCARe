.class Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter$ErrorHeaderDTCViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ErrorDTCAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ErrorHeaderDTCViewHolder"
.end annotation


# instance fields
.field final mTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/texa/careapp/databinding/ErrorDtcHeaderItemBinding;)V
    .locals 1

    .line 119
    invoke-virtual {p1}, Lcom/texa/careapp/databinding/ErrorDtcHeaderItemBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 120
    iget-object p1, p1, Lcom/texa/careapp/databinding/ErrorDtcHeaderItemBinding;->titleHeader:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter$ErrorHeaderDTCViewHolder;->mTitle:Landroid/widget/TextView;

    return-void
.end method

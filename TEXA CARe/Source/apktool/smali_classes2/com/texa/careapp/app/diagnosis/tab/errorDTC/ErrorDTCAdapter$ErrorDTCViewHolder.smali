.class Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter$ErrorDTCViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ErrorDTCAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ErrorDTCViewHolder"
.end annotation


# instance fields
.field final mLampColorStatus:Landroid/view/View;

.field final mLampImg:Landroid/widget/ImageView;

.field final mLampInfo:Landroid/widget/TextView;

.field final mLampTimeStamp:Lcom/texa/careapp/views/RelativeTimeTextView;


# direct methods
.method constructor <init>(Lcom/texa/careapp/databinding/ErrorDtcItemBinding;)V
    .locals 1

    .line 106
    invoke-virtual {p1}, Lcom/texa/careapp/databinding/ErrorDtcItemBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 107
    iget-object v0, p1, Lcom/texa/careapp/databinding/ErrorDtcItemBinding;->errorDtcStatusLine:Landroid/view/View;

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter$ErrorDTCViewHolder;->mLampColorStatus:Landroid/view/View;

    .line 108
    iget-object v0, p1, Lcom/texa/careapp/databinding/ErrorDtcItemBinding;->errorDtcInfoTextview:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter$ErrorDTCViewHolder;->mLampInfo:Landroid/widget/TextView;

    .line 109
    iget-object v0, p1, Lcom/texa/careapp/databinding/ErrorDtcItemBinding;->errorDtcLastUpdateTextview:Lcom/texa/careapp/views/RelativeTimeTextView;

    iput-object v0, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter$ErrorDTCViewHolder;->mLampTimeStamp:Lcom/texa/careapp/views/RelativeTimeTextView;

    .line 110
    iget-object p1, p1, Lcom/texa/careapp/databinding/ErrorDtcItemBinding;->errorDtcImgLamp:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCAdapter$ErrorDTCViewHolder;->mLampImg:Landroid/widget/ImageView;

    return-void
.end method

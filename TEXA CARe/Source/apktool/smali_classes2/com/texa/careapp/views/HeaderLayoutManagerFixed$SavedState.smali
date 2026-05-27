.class Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;
.super Ljava/lang/Object;
.source "HeaderLayoutManagerFixed.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/views/HeaderLayoutManagerFixed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAnchorLayoutFromEnd:Z

.field mAnchorOffset:I

.field mAnchorPosition:I

.field mOrientation:I

.field mReverseLayout:Z

.field mStackFromEnd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1687
    new-instance v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState$1;

    invoke-direct {v0}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState$1;-><init>()V

    sput-object v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 1654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1655
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mOrientation:I

    .line 1656
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mAnchorPosition:I

    .line 1657
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mAnchorOffset:I

    .line 1658
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mReverseLayout:Z

    .line 1659
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mStackFromEnd:Z

    .line 1660
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mAnchorLayoutFromEnd:Z

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;)V
    .locals 1

    .line 1663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1664
    iget v0, p1, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mOrientation:I

    iput v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mOrientation:I

    .line 1665
    iget v0, p1, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mAnchorPosition:I

    iput v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mAnchorPosition:I

    .line 1666
    iget v0, p1, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mAnchorOffset:I

    iput v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mAnchorOffset:I

    .line 1667
    iget-boolean v0, p1, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mReverseLayout:Z

    iput-boolean v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mReverseLayout:Z

    .line 1668
    iget-boolean v0, p1, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mStackFromEnd:Z

    iput-boolean v0, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mStackFromEnd:Z

    .line 1669
    iget-boolean p1, p1, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean p1, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mAnchorLayoutFromEnd:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1679
    iget p2, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mOrientation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1680
    iget p2, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mAnchorPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1681
    iget p2, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mAnchorOffset:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1682
    iget-boolean p2, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mReverseLayout:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1683
    iget-boolean p2, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mStackFromEnd:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1684
    iget-boolean p2, p0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;->mAnchorLayoutFromEnd:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

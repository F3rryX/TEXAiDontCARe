.class Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState$1;
.super Ljava/lang/Object;
.source "HeaderLayoutManagerFixed.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;
    .locals 1

    .line 1691
    new-instance v0, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;

    invoke-direct {v0, p1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1688
    invoke-virtual {p0, p1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;
    .locals 0

    .line 1696
    new-array p1, p1, [Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1688
    invoke-virtual {p0, p1}, Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState$1;->newArray(I)[Lcom/texa/careapp/views/HeaderLayoutManagerFixed$SavedState;

    move-result-object p1

    return-object p1
.end method

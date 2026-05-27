.class public Lcom/texa/careapp/views/RelativeTimeTextView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "RelativeTimeTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/views/RelativeTimeTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/texa/careapp/views/RelativeTimeTextView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private referenceTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 247
    new-instance v0, Lcom/texa/careapp/views/RelativeTimeTextView$SavedState$1;

    invoke-direct {v0}, Lcom/texa/careapp/views/RelativeTimeTextView$SavedState$1;-><init>()V

    sput-object v0, Lcom/texa/careapp/views/RelativeTimeTextView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 263
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/texa/careapp/views/RelativeTimeTextView$SavedState;->referenceTime:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/texa/careapp/views/RelativeTimeTextView$1;)V
    .locals 0

    .line 245
    invoke-direct {p0, p1}, Lcom/texa/careapp/views/RelativeTimeTextView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 259
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/views/RelativeTimeTextView$SavedState;)J
    .locals 2

    .line 245
    iget-wide v0, p0, Lcom/texa/careapp/views/RelativeTimeTextView$SavedState;->referenceTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/texa/careapp/views/RelativeTimeTextView$SavedState;J)J
    .locals 0

    .line 245
    iput-wide p1, p0, Lcom/texa/careapp/views/RelativeTimeTextView$SavedState;->referenceTime:J

    return-wide p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 269
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 270
    iget-wide v0, p0, Lcom/texa/careapp/views/RelativeTimeTextView$SavedState;->referenceTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

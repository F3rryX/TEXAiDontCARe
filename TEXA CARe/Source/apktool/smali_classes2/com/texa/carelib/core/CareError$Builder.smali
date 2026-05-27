.class public Lcom/texa/carelib/core/CareError$Builder;
.super Ljava/lang/Object;
.source "CareError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/core/CareError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDomain:I

.field private mErrorCode:I

.field private mException:Ljava/lang/Throwable;

.field private final mExtraData:Landroid/os/Bundle;

.field private mInnerError:Lcom/texa/carelib/core/CareError;

.field private mMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    iput p1, p0, Lcom/texa/carelib/core/CareError$Builder;->mDomain:I

    .line 448
    iput p2, p0, Lcom/texa/carelib/core/CareError$Builder;->mErrorCode:I

    const/4 p1, 0x0

    .line 450
    iput-object p1, p0, Lcom/texa/carelib/core/CareError$Builder;->mInnerError:Lcom/texa/carelib/core/CareError;

    .line 451
    iput-object p1, p0, Lcom/texa/carelib/core/CareError$Builder;->mMessage:Ljava/lang/String;

    .line 452
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p0, Lcom/texa/carelib/core/CareError$Builder;->mExtraData:Landroid/os/Bundle;

    .line 453
    iput-object p1, p0, Lcom/texa/carelib/core/CareError$Builder;->mException:Ljava/lang/Throwable;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/carelib/core/CareError$Builder;)I
    .locals 0

    .line 437
    iget p0, p0, Lcom/texa/carelib/core/CareError$Builder;->mDomain:I

    return p0
.end method

.method static synthetic access$100(Lcom/texa/carelib/core/CareError$Builder;)I
    .locals 0

    .line 437
    iget p0, p0, Lcom/texa/carelib/core/CareError$Builder;->mErrorCode:I

    return p0
.end method

.method static synthetic access$200(Lcom/texa/carelib/core/CareError$Builder;)Ljava/lang/String;
    .locals 0

    .line 437
    iget-object p0, p0, Lcom/texa/carelib/core/CareError$Builder;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/texa/carelib/core/CareError$Builder;)Landroid/os/Bundle;
    .locals 0

    .line 437
    iget-object p0, p0, Lcom/texa/carelib/core/CareError$Builder;->mExtraData:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$400(Lcom/texa/carelib/core/CareError$Builder;)Ljava/lang/Throwable;
    .locals 0

    .line 437
    iget-object p0, p0, Lcom/texa/carelib/core/CareError$Builder;->mException:Ljava/lang/Throwable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/texa/carelib/core/CareError$Builder;)Lcom/texa/carelib/core/CareError;
    .locals 0

    .line 437
    iget-object p0, p0, Lcom/texa/carelib/core/CareError$Builder;->mInnerError:Lcom/texa/carelib/core/CareError;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/texa/carelib/core/CareError;
    .locals 1

    .line 457
    new-instance v0, Lcom/texa/carelib/core/CareError;

    invoke-direct {v0, p0}, Lcom/texa/carelib/core/CareError;-><init>(Lcom/texa/carelib/core/CareError$Builder;)V

    return-object v0
.end method

.method public putExtra(Ljava/lang/String;B)Lcom/texa/carelib/core/CareError$Builder;
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/texa/carelib/core/CareError$Builder;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;F)Lcom/texa/carelib/core/CareError$Builder;
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/texa/carelib/core/CareError$Builder;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;I)Lcom/texa/carelib/core/CareError$Builder;
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/texa/carelib/core/CareError$Builder;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Landroid/os/Bundle;)Lcom/texa/carelib/core/CareError$Builder;
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/texa/carelib/core/CareError$Builder;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/texa/carelib/core/CareError$Builder;
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/texa/carelib/core/CareError$Builder;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/texa/carelib/core/CareError$Builder;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Z)Lcom/texa/carelib/core/CareError$Builder;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/texa/carelib/core/CareError$Builder;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[B)Lcom/texa/carelib/core/CareError$Builder;
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/texa/carelib/core/CareError$Builder;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[F)Lcom/texa/carelib/core/CareError$Builder;
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/texa/carelib/core/CareError$Builder;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    return-object p0
.end method

.method public setException(Ljava/lang/Throwable;)Lcom/texa/carelib/core/CareError$Builder;
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/texa/carelib/core/CareError$Builder;->mException:Ljava/lang/Throwable;

    return-object p0
.end method

.method public setInnerError(Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError$Builder;
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/texa/carelib/core/CareError$Builder;->mInnerError:Lcom/texa/carelib/core/CareError;

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/texa/carelib/core/CareError$Builder;->mMessage:Ljava/lang/String;

    return-object p0
.end method

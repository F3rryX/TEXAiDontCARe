.class public Lcom/texa/carelib/core/CareError;
.super Ljava/lang/Error;
.source "CareError.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/core/CareError$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/texa/carelib/core/CareError;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_API_ERROR:Ljava/lang/String; = "CareError#EXTRA_API_ERROR"

.field public static final EXTRA_API_ERROR_CODE:Ljava/lang/String; = "CareError#EXTRA_API_ERROR_CODE"

.field public static final EXTRA_API_ERROR_DETAIL:Ljava/lang/String; = "CareError#EXTRA_API_ERROR_DETAIL"

.field public static final EXTRA_API_HTTP_REASON:Ljava/lang/String; = "CareError#EXTRA_API_HTTP_REASON"

.field public static final EXTRA_API_HTTP_RESPONSE_CODE:Ljava/lang/String; = "CareError#EXTRA_API_HTTP_RESPONSE_CODE"

.field public static final EXTRA_API_URL:Ljava/lang/String; = "CareError#EXTRA_API_URL"

.field public static final EXTRA_COMMAND_STATUS:Ljava/lang/String; = "EXTRA_COMMAND_STATUS#CommandStatus"

.field public static final TAG:Ljava/lang/String; = "CareError"

.field private static final serialVersionUID:J = 0x48552fa3094bdac4L


# instance fields
.field private final mDomain:I

.field private final mErrorCode:I

.field private final mException:Ljava/lang/Throwable;

.field private final mExtraData:Landroid/os/Bundle;

.field private final mInnerError:Lcom/texa/carelib/core/CareError;

.field private final mMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 400
    new-instance v0, Lcom/texa/carelib/core/CareError$1;

    invoke-direct {v0}, Lcom/texa/carelib/core/CareError$1;-><init>()V

    sput-object v0, Lcom/texa/carelib/core/CareError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 425
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 426
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/texa/carelib/core/CareError;->mDomain:I

    .line 427
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/texa/carelib/core/CareError;->mErrorCode:I

    .line 428
    const-class v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/core/CareError;->mExtraData:Landroid/os/Bundle;

    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    iput-object v0, p0, Lcom/texa/carelib/core/CareError;->mException:Ljava/lang/Throwable;

    .line 430
    const-class v0, Lcom/texa/carelib/core/CareError;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/core/CareError;

    iput-object v0, p0, Lcom/texa/carelib/core/CareError;->mInnerError:Lcom/texa/carelib/core/CareError;

    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/core/CareError;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/core/CareError$Builder;)V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 148
    invoke-static {p1}, Lcom/texa/carelib/core/CareError$Builder;->access$000(Lcom/texa/carelib/core/CareError$Builder;)I

    move-result v0

    iput v0, p0, Lcom/texa/carelib/core/CareError;->mDomain:I

    .line 149
    invoke-static {p1}, Lcom/texa/carelib/core/CareError$Builder;->access$100(Lcom/texa/carelib/core/CareError$Builder;)I

    move-result v0

    iput v0, p0, Lcom/texa/carelib/core/CareError;->mErrorCode:I

    .line 150
    invoke-static {p1}, Lcom/texa/carelib/core/CareError$Builder;->access$200(Lcom/texa/carelib/core/CareError$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/core/CareError;->mMessage:Ljava/lang/String;

    .line 151
    invoke-static {p1}, Lcom/texa/carelib/core/CareError$Builder;->access$300(Lcom/texa/carelib/core/CareError$Builder;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/core/CareError;->mExtraData:Landroid/os/Bundle;

    .line 152
    invoke-static {p1}, Lcom/texa/carelib/core/CareError$Builder;->access$400(Lcom/texa/carelib/core/CareError$Builder;)Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/core/CareError;->mException:Ljava/lang/Throwable;

    .line 153
    invoke-static {p1}, Lcom/texa/carelib/core/CareError$Builder;->access$500(Lcom/texa/carelib/core/CareError$Builder;)Lcom/texa/carelib/core/CareError;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/core/CareError;->mInnerError:Lcom/texa/carelib/core/CareError;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 160
    :cond_1
    check-cast p1, Lcom/texa/carelib/core/CareError;

    .line 161
    iget v2, p0, Lcom/texa/carelib/core/CareError;->mDomain:I

    iget v3, p1, Lcom/texa/carelib/core/CareError;->mDomain:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/texa/carelib/core/CareError;->mErrorCode:I

    iget v3, p1, Lcom/texa/carelib/core/CareError;->mErrorCode:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/core/CareError;->mException:Ljava/lang/Throwable;

    iget-object v3, p1, Lcom/texa/carelib/core/CareError;->mException:Ljava/lang/Throwable;

    .line 163
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/core/CareError;->mMessage:Ljava/lang/String;

    iget-object v3, p1, Lcom/texa/carelib/core/CareError;->mMessage:Ljava/lang/String;

    .line 164
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/core/CareError;->mExtraData:Landroid/os/Bundle;

    iget-object v3, p1, Lcom/texa/carelib/core/CareError;->mExtraData:Landroid/os/Bundle;

    .line 165
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equalBundles(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/core/CareError;->mInnerError:Lcom/texa/carelib/core/CareError;

    iget-object p1, p1, Lcom/texa/carelib/core/CareError;->mInnerError:Lcom/texa/carelib/core/CareError;

    .line 166
    invoke-static {v2, p1}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getBooleanExtra(Ljava/lang/String;)Z
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/texa/carelib/core/CareError;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getBooleanExtra(Ljava/lang/String;Z)Z
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/texa/carelib/core/CareError;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/texa/carelib/core/CareError;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getByteArrayExtra(Ljava/lang/String;)[B
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/texa/carelib/core/CareError;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getByteExtra(Ljava/lang/String;)B
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/texa/carelib/core/CareError;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result p1

    return p1
.end method

.method public getByteExtra(Ljava/lang/String;B)B
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/texa/carelib/core/CareError;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    return p1
.end method

.method public getCause()Lcom/texa/carelib/core/CareError;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/texa/carelib/core/CareError;->mInnerError:Lcom/texa/carelib/core/CareError;

    return-object v0
.end method

.method public bridge synthetic getCause()Ljava/lang/Throwable;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/texa/carelib/core/CareError;->getCause()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    return-object v0
.end method

.method public getDomain()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/texa/carelib/core/CareError;->mDomain:I

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/texa/carelib/core/CareError;->mErrorCode:I

    return v0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/texa/carelib/core/CareError;->mException:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getFloatArrayExtra(Ljava/lang/String;)[F
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/texa/carelib/core/CareError;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object p1

    return-object p1
.end method

.method public getFloatExtra(Ljava/lang/String;)F
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/texa/carelib/core/CareError;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method public getFloatExtra(Ljava/lang/String;F)F
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/texa/carelib/core/CareError;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public getIntExtra(Ljava/lang/String;)I
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/texa/carelib/core/CareError;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getIntExtra(Ljava/lang/String;I)I
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/texa/carelib/core/CareError;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/texa/carelib/core/CareError;->mMessage:Ljava/lang/String;

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/texa/carelib/core/CareError;->mMessage:Ljava/lang/String;

    return-object v0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/core/CareError;->mException:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/texa/carelib/core/CareError;->mException:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/texa/carelib/core/CareError;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/texa/carelib/core/CareError;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 172
    iget-object v1, p0, Lcom/texa/carelib/core/CareError;->mException:Ljava/lang/Throwable;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/core/CareError;->mMessage:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/core/CareError;->mInnerError:Lcom/texa/carelib/core/CareError;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/texa/carelib/core/CareError;->mDomain:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/texa/carelib/core/CareError;->mErrorCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/Utils;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    invoke-virtual {p0}, Lcom/texa/carelib/core/CareError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {p0}, Lcom/texa/carelib/core/CareError;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2e

    .line 390
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 392
    :cond_0
    iget-object v1, p0, Lcom/texa/carelib/core/CareError;->mInnerError:Lcom/texa/carelib/core/CareError;

    if-eqz v1, :cond_1

    const-string v1, " Inner error="

    .line 394
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/carelib/core/CareError;->mInnerError:Lcom/texa/carelib/core/CareError;

    invoke-virtual {v1}, Lcom/texa/carelib/core/CareError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 417
    iget v0, p0, Lcom/texa/carelib/core/CareError;->mDomain:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    iget v0, p0, Lcom/texa/carelib/core/CareError;->mErrorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    iget-object v0, p0, Lcom/texa/carelib/core/CareError;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 420
    iget-object v0, p0, Lcom/texa/carelib/core/CareError;->mException:Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 421
    iget-object v0, p0, Lcom/texa/carelib/core/CareError;->mInnerError:Lcom/texa/carelib/core/CareError;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 422
    iget-object p2, p0, Lcom/texa/carelib/core/CareError;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

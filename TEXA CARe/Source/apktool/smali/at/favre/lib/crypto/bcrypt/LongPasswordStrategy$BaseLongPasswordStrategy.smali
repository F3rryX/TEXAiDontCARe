.class public abstract Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy$BaseLongPasswordStrategy;
.super Ljava/lang/Object;
.source "LongPasswordStrategy.java"

# interfaces
.implements Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseLongPasswordStrategy"
.end annotation


# instance fields
.field final maxLength:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy$BaseLongPasswordStrategy;->maxLength:I

    return-void
.end method

.method synthetic constructor <init>(ILat/favre/lib/crypto/bcrypt/LongPasswordStrategy$1;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy$BaseLongPasswordStrategy;-><init>(I)V

    return-void
.end method


# virtual methods
.method public derive([B)[B
    .locals 2

    .line 33
    array-length v0, p1

    iget v1, p0, Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy$BaseLongPasswordStrategy;->maxLength:I

    if-lt v0, v1, :cond_0

    .line 34
    invoke-virtual {p0, p1}, Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy$BaseLongPasswordStrategy;->innerDerive([B)[B

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method abstract innerDerive([B)[B
.end method

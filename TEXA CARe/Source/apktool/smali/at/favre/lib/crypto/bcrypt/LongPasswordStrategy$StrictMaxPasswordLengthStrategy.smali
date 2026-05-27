.class public final Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy$StrictMaxPasswordLengthStrategy;
.super Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy$BaseLongPasswordStrategy;
.source "LongPasswordStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StrictMaxPasswordLengthStrategy"
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy$BaseLongPasswordStrategy;-><init>(ILat/favre/lib/crypto/bcrypt/LongPasswordStrategy$1;)V

    return-void
.end method


# virtual methods
.method public innerDerive([B)[B
    .locals 3

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "password must not be longer than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy$StrictMaxPasswordLengthStrategy;->maxLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes plus null terminator encoded in utf-8, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

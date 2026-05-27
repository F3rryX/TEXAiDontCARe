.class public final Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy$Sha512DerivationStrategy;
.super Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy$BaseLongPasswordStrategy;
.source "LongPasswordStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sha512DerivationStrategy"
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy$BaseLongPasswordStrategy;-><init>(ILat/favre/lib/crypto/bcrypt/LongPasswordStrategy$1;)V

    return-void
.end method


# virtual methods
.method public innerDerive([B)[B
    .locals 1

    .line 64
    invoke-static {p1}, Lat/favre/lib/bytes/Bytes;->wrap([B)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    const-string v0, "SHA-512"

    invoke-virtual {p1, v0}, Lat/favre/lib/bytes/Bytes;->hash(Ljava/lang/String;)Lat/favre/lib/bytes/Bytes;

    move-result-object p1

    invoke-virtual {p1}, Lat/favre/lib/bytes/Bytes;->array()[B

    move-result-object p1

    return-object p1
.end method

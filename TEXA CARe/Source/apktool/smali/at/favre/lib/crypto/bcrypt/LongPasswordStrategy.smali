.class public interface abstract Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy;
.super Ljava/lang/Object;
.source "LongPasswordStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy$PassThroughStrategy;,
        Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy$TruncateStrategy;,
        Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy$Sha512DerivationStrategy;,
        Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy$StrictMaxPasswordLengthStrategy;,
        Lat/favre/lib/crypto/bcrypt/LongPasswordStrategy$BaseLongPasswordStrategy;
    }
.end annotation


# virtual methods
.method public abstract derive([B)[B
.end method

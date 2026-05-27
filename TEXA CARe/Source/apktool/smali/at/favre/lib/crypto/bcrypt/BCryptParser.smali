.class public interface abstract Lat/favre/lib/crypto/bcrypt/BCryptParser;
.super Ljava/lang/Object;
.source "BCryptParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/favre/lib/crypto/bcrypt/BCryptParser$Default;
    }
.end annotation


# virtual methods
.method public abstract parse([B)Lat/favre/lib/crypto/bcrypt/BCrypt$HashData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lat/favre/lib/crypto/bcrypt/IllegalBCryptFormatException;
        }
    .end annotation
.end method

.class public interface abstract Lat/favre/lib/armadillo/AuthenticatedEncryption;
.super Ljava/lang/Object;
.source "AuthenticatedEncryption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/favre/lib/armadillo/AuthenticatedEncryption$KeyStrength;
    }
.end annotation


# static fields
.field public static final STRENGTH_HIGH:I = 0x0

.field public static final STRENGTH_VERY_HIGH:I = 0x1


# virtual methods
.method public abstract byteSizeLength(I)I
.end method

.method public abstract decrypt([B[B[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lat/favre/lib/armadillo/AuthenticatedEncryptionException;
        }
    .end annotation
.end method

.method public abstract encrypt([B[B[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lat/favre/lib/armadillo/AuthenticatedEncryptionException;
        }
    .end annotation
.end method

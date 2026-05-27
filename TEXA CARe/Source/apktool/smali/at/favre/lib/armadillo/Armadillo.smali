.class public final Lat/favre/lib/armadillo/Armadillo;
.super Ljava/lang/Object;
.source "Armadillo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/favre/lib/armadillo/Armadillo$Builder;
    }
.end annotation


# static fields
.field public static final CONTENT_KEY_OUT_BYTE_LENGTH:I = 0x14

.field public static final DEFAULT_PROTOCOL_VERSION:I = 0x0

.field public static final KITKAT_PROTOCOL_VERSION:I = -0x13


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lat/favre/lib/armadillo/Armadillo$Builder;
    .locals 2

    .line 63
    new-instance v0, Lat/favre/lib/armadillo/Armadillo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lat/favre/lib/armadillo/Armadillo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Lat/favre/lib/armadillo/Armadillo$1;)V

    return-object v0
.end method

.method public static create(Landroid/content/SharedPreferences;)Lat/favre/lib/armadillo/Armadillo$Builder;
    .locals 2

    .line 46
    new-instance v0, Lat/favre/lib/armadillo/Armadillo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lat/favre/lib/armadillo/Armadillo$Builder;-><init>(Landroid/content/SharedPreferences;Lat/favre/lib/armadillo/Armadillo$1;)V

    return-object v0
.end method

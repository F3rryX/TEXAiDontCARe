.class public final Lat/favre/lib/armadillo/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final ANDROID_ID_FALLBACK:Ljava/lang/String; = "0000000000000000"

.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field public static final DEBUG:Z = false

.field public static final LIBRARY_PACKAGE_NAME:Ljava/lang/String; = "at.favre.lib.armadillo"

.field public static final PREF_SALT:[B

.field public static final STATIC_RANDOM:[B

.field public static final VERSION_CODE:I = 0x10a

.field public static final VERSION_NAME:Ljava/lang/String; = "1.0.0"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 14
    fill-array-data v1, :array_0

    sput-object v1, Lat/favre/lib/armadillo/BuildConfig;->PREF_SALT:[B

    new-array v0, v0, [B

    .line 15
    fill-array-data v0, :array_1

    sput-object v0, Lat/favre/lib/armadillo/BuildConfig;->STATIC_RANDOM:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4ft
        0x0t
        0x10t
        0x2et
        0x62t
        0x45t
        0x4ct
        0xft
        0x3bt
        -0x7t
        0x37t
        0x50t
        0x47t
        0x22t
        0x24t
        0x5dt
        -0x20t
        -0x28t
        0x55t
        -0x3ft
        -0x46t
        0x23t
        -0x73t
        -0x57t
        -0x10t
        -0x5dt
        0x77t
        0x4dt
        0x38t
        0x61t
        -0x10t
        -0x45t
    .end array-data

    :array_1
    .array-data 1
        -0x44t
        0x1dt
        -0x6ft
        0x7bt
        -0x4dt
        -0x29t
        -0x5ct
        0x19t
        0x2ct
        0x72t
        0x52t
        -0xct
        0x34t
        -0x24t
        -0x34t
        0x4ft
        -0x24t
        -0x28t
        -0x11t
        0x51t
        -0x10t
        -0x57t
        0x5bt
        -0x23t
        0x62t
        0x1at
        0x53t
        0x10t
        -0x23t
        0x21t
        -0x7dt
        -0x43t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

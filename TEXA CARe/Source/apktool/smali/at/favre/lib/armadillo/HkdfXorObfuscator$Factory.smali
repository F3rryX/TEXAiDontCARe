.class public final Lat/favre/lib/armadillo/HkdfXorObfuscator$Factory;
.super Ljava/lang/Object;
.source "HkdfXorObfuscator.java"

# interfaces
.implements Lat/favre/lib/armadillo/DataObfuscator$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/armadillo/HkdfXorObfuscator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create([B)Lat/favre/lib/armadillo/DataObfuscator;
    .locals 1

    .line 72
    new-instance v0, Lat/favre/lib/armadillo/HkdfXorObfuscator;

    invoke-direct {v0, p1}, Lat/favre/lib/armadillo/HkdfXorObfuscator;-><init>([B)V

    return-object v0
.end method

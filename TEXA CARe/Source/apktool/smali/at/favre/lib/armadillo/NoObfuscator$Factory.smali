.class public final Lat/favre/lib/armadillo/NoObfuscator$Factory;
.super Ljava/lang/Object;
.source "NoObfuscator.java"

# interfaces
.implements Lat/favre/lib/armadillo/DataObfuscator$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/armadillo/NoObfuscator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create([B)Lat/favre/lib/armadillo/DataObfuscator;
    .locals 0

    .line 30
    new-instance p1, Lat/favre/lib/armadillo/NoObfuscator;

    invoke-direct {p1}, Lat/favre/lib/armadillo/NoObfuscator;-><init>()V

    return-object p1
.end method

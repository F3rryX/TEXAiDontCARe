.class public final Lat/favre/lib/armadillo/SimpleRecoveryPolicy$Default;
.super Lat/favre/lib/armadillo/SimpleRecoveryPolicy;
.source "SimpleRecoveryPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/armadillo/SimpleRecoveryPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation


# instance fields
.field private final removeBrokenContent:Z

.field private final throwRuntimeException:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lat/favre/lib/armadillo/SimpleRecoveryPolicy;-><init>()V

    .line 49
    iput-boolean p1, p0, Lat/favre/lib/armadillo/SimpleRecoveryPolicy$Default;->throwRuntimeException:Z

    .line 50
    iput-boolean p2, p0, Lat/favre/lib/armadillo/SimpleRecoveryPolicy$Default;->removeBrokenContent:Z

    return-void
.end method


# virtual methods
.method public shouldRemoveBrokenContent()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lat/favre/lib/armadillo/SimpleRecoveryPolicy$Default;->removeBrokenContent:Z

    return v0
.end method

.method public shouldThrowRuntimeException()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lat/favre/lib/armadillo/SimpleRecoveryPolicy$Default;->throwRuntimeException:Z

    return v0
.end method

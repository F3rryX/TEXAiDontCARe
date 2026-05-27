.class public Lcom/texa/carelib/care/vehicletroubles/internal/PCodeConverterEOBD;
.super Ljava/lang/Object;
.source "PCodeConverterEOBD.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(J)Ljava/lang/String;
    .locals 5

    long-to-int v0, p1

    shr-int/lit8 v0, v0, 0xe

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const-string v0, "X"

    goto :goto_0

    :cond_0
    const-string v0, "U"

    goto :goto_0

    :cond_1
    const-string v0, "B"

    goto :goto_0

    :cond_2
    const-string v0, "C"

    goto :goto_0

    :cond_3
    const-string v0, "P"

    :goto_0
    const-wide/16 v3, 0x3fff

    and-long/2addr p1, v3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    .line 42
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%s%04X"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.class public final Lat/favre/lib/bytes/BytesValidator$PrePostFix;
.super Ljava/lang/Object;
.source "BytesValidator.java"

# interfaces
.implements Lat/favre/lib/bytes/BytesValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/bytes/BytesValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrePostFix"
.end annotation


# instance fields
.field private final pfix:[B

.field private final startsWith:Z


# direct methods
.method public varargs constructor <init>(Z[B)V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p2, p0, Lat/favre/lib/bytes/BytesValidator$PrePostFix;->pfix:[B

    .line 116
    iput-boolean p1, p0, Lat/favre/lib/bytes/BytesValidator$PrePostFix;->startsWith:Z

    return-void
.end method


# virtual methods
.method public validate([B)Z
    .locals 6

    .line 121
    iget-object v0, p0, Lat/favre/lib/bytes/BytesValidator$PrePostFix;->pfix:[B

    array-length v0, v0

    array-length v1, p1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 125
    :goto_0
    iget-object v1, p0, Lat/favre/lib/bytes/BytesValidator$PrePostFix;->pfix:[B

    array-length v3, v1

    if-ge v0, v3, :cond_3

    .line 126
    iget-boolean v3, p0, Lat/favre/lib/bytes/BytesValidator$PrePostFix;->startsWith:Z

    if-eqz v3, :cond_1

    aget-byte v4, v1, v0

    aget-byte v5, p1, v0

    if-eq v4, v5, :cond_1

    return v2

    :cond_1
    if-nez v3, :cond_2

    .line 129
    aget-byte v3, v1, v0

    array-length v4, p1

    array-length v1, v1

    sub-int/2addr v4, v1

    add-int/2addr v4, v0

    aget-byte v1, p1, v4

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.class Lcom/texa/carelib/core/utils/Version$VersionComparator;
.super Ljava/lang/Object;
.source "Version.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/core/utils/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VersionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/texa/carelib/core/utils/Version;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/texa/carelib/core/utils/Version$1;)V
    .locals 0

    .line 202
    invoke-direct {p0}, Lcom/texa/carelib/core/utils/Version$VersionComparator;-><init>()V

    return-void
.end method

.method private calculateVersionValue(Lcom/texa/carelib/core/utils/Version;)I
    .locals 2

    .line 212
    invoke-static {p1}, Lcom/texa/carelib/core/utils/Version;->access$100(Lcom/texa/carelib/core/utils/Version;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 213
    invoke-static {p1}, Lcom/texa/carelib/core/utils/Version;->access$100(Lcom/texa/carelib/core/utils/Version;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    add-int/2addr v1, v0

    .line 216
    :cond_0
    invoke-static {p1}, Lcom/texa/carelib/core/utils/Version;->access$200(Lcom/texa/carelib/core/utils/Version;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 217
    invoke-static {p1}, Lcom/texa/carelib/core/utils/Version;->access$200(Lcom/texa/carelib/core/utils/Version;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    add-int/2addr v1, v0

    .line 220
    :cond_1
    invoke-static {p1}, Lcom/texa/carelib/core/utils/Version;->access$300(Lcom/texa/carelib/core/utils/Version;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 221
    invoke-static {p1}, Lcom/texa/carelib/core/utils/Version;->access$300(Lcom/texa/carelib/core/utils/Version;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v1, v0

    .line 224
    :cond_2
    invoke-static {p1}, Lcom/texa/carelib/core/utils/Version;->access$400(Lcom/texa/carelib/core/utils/Version;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 225
    invoke-static {p1}, Lcom/texa/carelib/core/utils/Version;->access$400(Lcom/texa/carelib/core/utils/Version;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr v1, p1

    :cond_3
    return v1
.end method


# virtual methods
.method public compare(Lcom/texa/carelib/core/utils/Version;Lcom/texa/carelib/core/utils/Version;)I
    .locals 0

    .line 205
    invoke-direct {p0, p1}, Lcom/texa/carelib/core/utils/Version$VersionComparator;->calculateVersionValue(Lcom/texa/carelib/core/utils/Version;)I

    move-result p1

    .line 206
    invoke-direct {p0, p2}, Lcom/texa/carelib/core/utils/Version$VersionComparator;->calculateVersionValue(Lcom/texa/carelib/core/utils/Version;)I

    move-result p2

    .line 207
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 202
    check-cast p1, Lcom/texa/carelib/core/utils/Version;

    check-cast p2, Lcom/texa/carelib/core/utils/Version;

    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/core/utils/Version$VersionComparator;->compare(Lcom/texa/carelib/core/utils/Version;Lcom/texa/carelib/core/utils/Version;)I

    move-result p1

    return p1
.end method

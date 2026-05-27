.class public Lcom/texa/carelib/core/utils/Version;
.super Ljava/lang/Object;
.source "Version.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/core/utils/Version$VersionComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/texa/carelib/core/utils/Version;",
        ">;"
    }
.end annotation


# static fields
.field public static final SEPARATOR:Ljava/lang/String; = "."


# instance fields
.field private mBuild:Ljava/lang/Integer;

.field private mMajor:Ljava/lang/Integer;

.field private mMinor:Ljava/lang/Integer;

.field private mRevision:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/core/utils/Version;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Lcom/texa/carelib/core/utils/Version;->getMajor()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/core/utils/Version;->mMajor:Ljava/lang/Integer;

    .line 78
    invoke-virtual {p1}, Lcom/texa/carelib/core/utils/Version;->getMinor()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/core/utils/Version;->mMinor:Ljava/lang/Integer;

    .line 79
    invoke-virtual {p1}, Lcom/texa/carelib/core/utils/Version;->getRevision()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/core/utils/Version;->mRevision:Ljava/lang/Integer;

    .line 80
    invoke-virtual {p1}, Lcom/texa/carelib/core/utils/Version;->getBuild()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/core/utils/Version;->mBuild:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/texa/carelib/core/utils/Version;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/texa/carelib/core/utils/Version;->mMajor:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/texa/carelib/core/utils/Version;-><init>(Ljava/lang/Integer;)V

    .line 41
    iput-object p2, p0, Lcom/texa/carelib/core/utils/Version;->mMinor:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/core/utils/Version;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 54
    iput-object p3, p0, Lcom/texa/carelib/core/utils/Version;->mBuild:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/texa/carelib/core/utils/Version;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 68
    iput-object p4, p0, Lcom/texa/carelib/core/utils/Version;->mRevision:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$100(Lcom/texa/carelib/core/utils/Version;)Ljava/lang/Integer;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/texa/carelib/core/utils/Version;->mMajor:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/texa/carelib/core/utils/Version;)Ljava/lang/Integer;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/texa/carelib/core/utils/Version;->mMinor:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/texa/carelib/core/utils/Version;)Ljava/lang/Integer;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/texa/carelib/core/utils/Version;->mBuild:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/texa/carelib/core/utils/Version;)Ljava/lang/Integer;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/texa/carelib/core/utils/Version;->mRevision:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/texa/carelib/core/utils/Version;)I
    .locals 2

    .line 199
    new-instance v0, Lcom/texa/carelib/core/utils/Version$VersionComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/texa/carelib/core/utils/Version$VersionComparator;-><init>(Lcom/texa/carelib/core/utils/Version$1;)V

    invoke-virtual {v0, p0, p1}, Lcom/texa/carelib/core/utils/Version$VersionComparator;->compare(Lcom/texa/carelib/core/utils/Version;Lcom/texa/carelib/core/utils/Version;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 14
    check-cast p1, Lcom/texa/carelib/core/utils/Version;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/core/utils/Version;->compareTo(Lcom/texa/carelib/core/utils/Version;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 177
    :cond_0
    instance-of v1, p1, Lcom/texa/carelib/core/utils/Version;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 179
    :cond_1
    check-cast p1, Lcom/texa/carelib/core/utils/Version;

    .line 181
    iget-object v1, p0, Lcom/texa/carelib/core/utils/Version;->mMajor:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    iget-object v3, p1, Lcom/texa/carelib/core/utils/Version;->mMajor:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/texa/carelib/core/utils/Version;->mMajor:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    :goto_0
    return v2

    .line 182
    :cond_3
    iget-object v1, p0, Lcom/texa/carelib/core/utils/Version;->mMinor:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    iget-object v3, p1, Lcom/texa/carelib/core/utils/Version;->mMinor:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_4
    iget-object v1, p1, Lcom/texa/carelib/core/utils/Version;->mMinor:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    :goto_1
    return v2

    .line 183
    :cond_5
    iget-object v1, p0, Lcom/texa/carelib/core/utils/Version;->mRevision:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    iget-object v3, p1, Lcom/texa/carelib/core/utils/Version;->mRevision:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_6
    iget-object v1, p1, Lcom/texa/carelib/core/utils/Version;->mRevision:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    :goto_2
    return v2

    .line 185
    :cond_7
    iget-object v1, p0, Lcom/texa/carelib/core/utils/Version;->mBuild:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/texa/carelib/core/utils/Version;->mBuild:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    invoke-virtual {v1, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_8
    if-nez p1, :cond_9

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method public getBuild()Ljava/lang/Integer;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/texa/carelib/core/utils/Version;->mBuild:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMajor()Ljava/lang/Integer;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/texa/carelib/core/utils/Version;->mMajor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMinor()Ljava/lang/Integer;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/texa/carelib/core/utils/Version;->mMinor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRevision()Ljava/lang/Integer;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/texa/carelib/core/utils/Version;->mRevision:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/texa/carelib/core/utils/Version;->mMajor:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 191
    iget-object v2, p0, Lcom/texa/carelib/core/utils/Version;->mMinor:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 192
    iget-object v2, p0, Lcom/texa/carelib/core/utils/Version;->mRevision:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 193
    iget-object v2, p0, Lcom/texa/carelib/core/utils/Version;->mBuild:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public setBuild(Ljava/lang/Integer;)Lcom/texa/carelib/core/utils/Version;
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/texa/carelib/core/utils/Version;->mBuild:Ljava/lang/Integer;

    return-object p0
.end method

.method public setMajor(Ljava/lang/Integer;)Lcom/texa/carelib/core/utils/Version;
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/texa/carelib/core/utils/Version;->mMajor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setMinor(Ljava/lang/Integer;)Lcom/texa/carelib/core/utils/Version;
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/texa/carelib/core/utils/Version;->mMinor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setRevision(Ljava/lang/Integer;)Lcom/texa/carelib/core/utils/Version;
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/texa/carelib/core/utils/Version;->mRevision:Ljava/lang/Integer;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Version{mMajor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/carelib/core/utils/Version;->mMajor:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMinor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/carelib/core/utils/Version;->mMinor:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mBuild="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/carelib/core/utils/Version;->mBuild:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRevision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/carelib/core/utils/Version;->mRevision:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

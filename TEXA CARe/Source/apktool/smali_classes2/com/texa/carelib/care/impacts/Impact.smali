.class public Lcom/texa/carelib/care/impacts/Impact;
.super Ljava/lang/Object;
.source "Impact.java"

# interfaces
.implements Lcom/texa/carelib/core/utils/CareStruct;


# instance fields
.field private mCrashReport:Lcom/texa/carelib/care/impacts/CrashReport;

.field private mDate:Ljava/util/Date;

.field private mVerboseCrashReport:Lcom/texa/carelib/care/impacts/VerboseCrashReport;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {}, Lcom/texa/carelib/core/utils/internal/Utils;->getUTCNow()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/care/impacts/Impact;->mDate:Ljava/util/Date;

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/texa/carelib/care/impacts/Impact;->mCrashReport:Lcom/texa/carelib/care/impacts/CrashReport;

    .line 88
    iput-object v0, p0, Lcom/texa/carelib/care/impacts/Impact;->mVerboseCrashReport:Lcom/texa/carelib/care/impacts/VerboseCrashReport;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/texa/carelib/care/impacts/Impact;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/Impact;->mDate:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Lcom/texa/carelib/care/impacts/CrashReport;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/texa/carelib/care/impacts/Impact;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/Impact;->mDate:Ljava/util/Date;

    .line 101
    iput-object p2, p0, Lcom/texa/carelib/care/impacts/Impact;->mCrashReport:Lcom/texa/carelib/care/impacts/CrashReport;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Lcom/texa/carelib/care/impacts/CrashReport;Lcom/texa/carelib/care/impacts/VerboseCrashReport;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/texa/carelib/care/impacts/Impact;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/Impact;->mDate:Ljava/util/Date;

    .line 108
    iput-object p2, p0, Lcom/texa/carelib/care/impacts/Impact;->mCrashReport:Lcom/texa/carelib/care/impacts/CrashReport;

    .line 109
    iput-object p3, p0, Lcom/texa/carelib/care/impacts/Impact;->mVerboseCrashReport:Lcom/texa/carelib/care/impacts/VerboseCrashReport;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 116
    :cond_1
    check-cast p1, Lcom/texa/carelib/care/impacts/Impact;

    .line 117
    iget-object v2, p0, Lcom/texa/carelib/care/impacts/Impact;->mDate:Ljava/util/Date;

    iget-object v3, p1, Lcom/texa/carelib/care/impacts/Impact;->mDate:Ljava/util/Date;

    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/impacts/Impact;->mCrashReport:Lcom/texa/carelib/care/impacts/CrashReport;

    iget-object v3, p1, Lcom/texa/carelib/care/impacts/Impact;->mCrashReport:Lcom/texa/carelib/care/impacts/CrashReport;

    .line 118
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/impacts/Impact;->mVerboseCrashReport:Lcom/texa/carelib/care/impacts/VerboseCrashReport;

    iget-object p1, p1, Lcom/texa/carelib/care/impacts/Impact;->mVerboseCrashReport:Lcom/texa/carelib/care/impacts/VerboseCrashReport;

    .line 119
    invoke-static {v2, p1}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCrashReport()Lcom/texa/carelib/care/impacts/CrashReport;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/Impact;->mCrashReport:Lcom/texa/carelib/care/impacts/CrashReport;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/Impact;->mDate:Ljava/util/Date;

    return-object v0
.end method

.method public getRawData()[B
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [B

    new-array v2, v0, [B

    .line 131
    iget-object v3, p0, Lcom/texa/carelib/care/impacts/Impact;->mCrashReport:Lcom/texa/carelib/care/impacts/CrashReport;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/texa/carelib/care/impacts/CrashReport;->getRawData()[B

    move-result-object v3

    if-eqz v3, :cond_0

    .line 132
    iget-object v1, p0, Lcom/texa/carelib/care/impacts/Impact;->mCrashReport:Lcom/texa/carelib/care/impacts/CrashReport;

    invoke-virtual {v1}, Lcom/texa/carelib/care/impacts/CrashReport;->getRawData()[B

    move-result-object v1

    .line 134
    :cond_0
    iget-object v3, p0, Lcom/texa/carelib/care/impacts/Impact;->mVerboseCrashReport:Lcom/texa/carelib/care/impacts/VerboseCrashReport;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->getRawData()[B

    move-result-object v3

    if-eqz v3, :cond_1

    .line 135
    iget-object v2, p0, Lcom/texa/carelib/care/impacts/Impact;->mVerboseCrashReport:Lcom/texa/carelib/care/impacts/VerboseCrashReport;

    invoke-virtual {v2}, Lcom/texa/carelib/care/impacts/VerboseCrashReport;->getRawData()[B

    move-result-object v2

    .line 138
    :cond_1
    array-length v3, v1

    array-length v4, v2

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 139
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 140
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 141
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 143
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public getVerboseCrashReport()Lcom/texa/carelib/care/impacts/VerboseCrashReport;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/Impact;->mVerboseCrashReport:Lcom/texa/carelib/care/impacts/VerboseCrashReport;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 124
    iget-object v1, p0, Lcom/texa/carelib/care/impacts/Impact;->mDate:Ljava/util/Date;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/impacts/Impact;->mCrashReport:Lcom/texa/carelib/care/impacts/CrashReport;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/impacts/Impact;->mVerboseCrashReport:Lcom/texa/carelib/care/impacts/VerboseCrashReport;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/Utils;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setCrashReport(Lcom/texa/carelib/care/impacts/CrashReport;)Lcom/texa/carelib/care/impacts/Impact;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/Impact;->mCrashReport:Lcom/texa/carelib/care/impacts/CrashReport;

    return-object p0
.end method

.method public setDate(Ljava/util/Date;)Lcom/texa/carelib/care/impacts/Impact;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/Impact;->mDate:Ljava/util/Date;

    return-object p0
.end method

.method public setVerboseCrashReport(Lcom/texa/carelib/care/impacts/VerboseCrashReport;)Lcom/texa/carelib/care/impacts/Impact;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/Impact;->mVerboseCrashReport:Lcom/texa/carelib/care/impacts/VerboseCrashReport;

    return-object p0
.end method

.class public Lcom/texa/carelib/care/vehicletroubles/DTCDetail;
.super Ljava/lang/Object;
.source "DTCDetail.java"


# instance fields
.field private final mIsOBD:Z

.field private final mOccurrences:Ljava/lang/Long;

.field private final mSourceNode:Ljava/lang/Long;

.field private final mStatus:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;


# direct methods
.method public constructor <init>(ZLcom/texa/carelib/care/vehicletroubles/DTCStatus;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean p1, p0, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;->mIsOBD:Z

    .line 24
    iput-object p2, p0, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;->mStatus:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    .line 25
    iput-object p3, p0, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;->mOccurrences:Ljava/lang/Long;

    .line 26
    iput-object p4, p0, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;->mSourceNode:Ljava/lang/Long;

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

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 85
    :cond_1
    check-cast p1, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;

    .line 86
    iget-boolean v2, p0, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;->mIsOBD:Z

    iget-boolean v3, p1, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;->mIsOBD:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;->mStatus:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    iget-object v3, p1, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;->mStatus:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;->mOccurrences:Ljava/lang/Long;

    iget-object v3, p1, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;->mOccurrences:Ljava/lang/Long;

    .line 88
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;->mSourceNode:Ljava/lang/Long;

    iget-object p1, p1, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;->mSourceNode:Ljava/lang/Long;

    .line 89
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

.method public getOccurrences()Ljava/lang/Long;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;->mOccurrences:Ljava/lang/Long;

    return-object v0
.end method

.method public getSourceNode()Ljava/lang/Long;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;->mSourceNode:Ljava/lang/Long;

    return-object v0
.end method

.method public getStatus()Lcom/texa/carelib/care/vehicletroubles/DTCStatus;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;->mStatus:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 94
    iget-boolean v1, p0, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;->mIsOBD:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;->mStatus:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;->mOccurrences:Ljava/lang/Long;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;->mSourceNode:Ljava/lang/Long;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/Utils;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isOBD()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;->mIsOBD:Z

    return v0
.end method

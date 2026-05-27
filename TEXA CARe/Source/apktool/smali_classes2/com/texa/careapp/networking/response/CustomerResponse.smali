.class public Lcom/texa/careapp/networking/response/CustomerResponse;
.super Ljava/lang/Object;
.source "CustomerResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/networking/response/CustomerResponse$Customer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomerResponse"


# instance fields
.field public customer:Lcom/texa/careapp/networking/response/CustomerResponse$Customer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "customer"
    .end annotation
.end field

.field private updatedAt:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 18
    instance-of p1, p1, Lcom/texa/careapp/networking/response/CustomerResponse;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 18
    :cond_0
    instance-of v1, p1, Lcom/texa/careapp/networking/response/CustomerResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/texa/careapp/networking/response/CustomerResponse;

    invoke-virtual {p1, p0}, Lcom/texa/careapp/networking/response/CustomerResponse;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse;->getCustomer()Lcom/texa/careapp/networking/response/CustomerResponse$Customer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/networking/response/CustomerResponse;->getCustomer()Lcom/texa/careapp/networking/response/CustomerResponse$Customer;

    move-result-object v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse;->getUpdatedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/texa/careapp/networking/response/CustomerResponse;->getUpdatedAt()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public getCustomer()Lcom/texa/careapp/networking/response/CustomerResponse$Customer;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/texa/careapp/networking/response/CustomerResponse;->customer:Lcom/texa/careapp/networking/response/CustomerResponse$Customer;

    return-object v0
.end method

.method public getUpdatedAt()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/texa/careapp/networking/response/CustomerResponse;->updatedAt:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .line 18
    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse;->getCustomer()Lcom/texa/careapp/networking/response/CustomerResponse$Customer;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse;->getUpdatedAt()J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x3b

    const/16 v1, 0x20

    ushr-long v4, v2, v1

    xor-long v1, v4, v2

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public setCustomer(Lcom/texa/careapp/networking/response/CustomerResponse$Customer;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/texa/careapp/networking/response/CustomerResponse;->customer:Lcom/texa/careapp/networking/response/CustomerResponse$Customer;

    return-void
.end method

.method public setUpdatedAt(J)V
    .locals 0

    .line 18
    iput-wide p1, p0, Lcom/texa/careapp/networking/response/CustomerResponse;->updatedAt:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CustomerResponse(customer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse;->getCustomer()Lcom/texa/careapp/networking/response/CustomerResponse$Customer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", updatedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse;->getUpdatedAt()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

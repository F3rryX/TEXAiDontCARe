.class Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceInterval;
.super Ljava/lang/Object;
.source "SetInsuranceDateThresholdScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsuranceInterval"
.end annotation


# instance fields
.field label:Ljava/lang/String;

.field monthValue:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceInterval;->this$0:Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p2, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceInterval;->monthValue:Ljava/lang/Integer;

    .line 180
    iput-object p3, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceInterval;->label:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 173
    instance-of p1, p1, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceInterval;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 173
    :cond_0
    instance-of v1, p1, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceInterval;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceInterval;

    invoke-virtual {p1, p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceInterval;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceInterval;->getMonthValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceInterval;->getMonthValue()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceInterval;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceInterval;->getLabel()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_5

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :goto_1
    return v2

    :cond_6
    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceInterval;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getMonthValue()Ljava/lang/Integer;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceInterval;->monthValue:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 173
    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceInterval;->getMonthValue()Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceInterval;->getLabel()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceInterval;->label:Ljava/lang/String;

    return-void
.end method

.method public setMonthValue(Ljava/lang/Integer;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceInterval;->monthValue:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetInsuranceDateThresholdScreen.InsuranceInterval(monthValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceInterval;->getMonthValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen$InsuranceInterval;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

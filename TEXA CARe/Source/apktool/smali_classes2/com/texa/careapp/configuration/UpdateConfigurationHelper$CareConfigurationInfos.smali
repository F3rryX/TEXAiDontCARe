.class public Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;
.super Ljava/lang/Object;
.source "UpdateConfigurationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/configuration/UpdateConfigurationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CareConfigurationInfos"
.end annotation


# instance fields
.field public interpreterVersion:Ljava/math/BigInteger;

.field public serialNumber:Ljava/lang/String;

.field public status:I

.field public vehicleConfigurationStatus:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

.field public vin:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;)V
    .locals 0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;->status:I

    .line 246
    iput-object p2, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;->vin:Ljava/lang/String;

    .line 247
    iput-object p3, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;->serialNumber:Ljava/lang/String;

    .line 248
    iput-object p4, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;->interpreterVersion:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;->serialNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;->vin:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;->interpreterVersion:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;->status:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CareConfigurationInfos{status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vin=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;->vin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", serialNumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;->serialNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", interpreterVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;->interpreterVersion:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", vehicleConfigurationStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;->vehicleConfigurationStatus:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

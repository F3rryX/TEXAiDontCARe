.class public Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;
.super Ljava/lang/Object;
.source "CrankReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/batteryanalyzer/CrankReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCrankReport:Lcom/texa/carelib/care/batteryanalyzer/CrankReport;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 169
    new-instance v0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;-><init>(Lcom/texa/carelib/care/batteryanalyzer/CrankReport$1;)V

    invoke-direct {p0, v0}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;-><init>(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;)V

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->mCrankReport:Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    return-void
.end method


# virtual methods
.method public build()Lcom/texa/carelib/care/batteryanalyzer/CrankReport;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->mCrankReport:Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    return-object v0
.end method

.method public setArea(Ljava/lang/Integer;)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->mCrankReport:Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    invoke-static {v0, p1}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->access$902(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;Ljava/lang/Integer;)Ljava/lang/Integer;

    return-object p0
.end method

.method public setCoefficientA(Ljava/lang/Long;)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->mCrankReport:Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    invoke-static {v0, p1}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->access$1002(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;Ljava/lang/Long;)Ljava/lang/Long;

    return-object p0
.end method

.method public setCoefficientB(Ljava/lang/Long;)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->mCrankReport:Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    invoke-static {v0, p1}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->access$1102(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;Ljava/lang/Long;)Ljava/lang/Long;

    return-object p0
.end method

.method public setCoefficientC(Ljava/lang/Long;)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->mCrankReport:Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    invoke-static {v0, p1}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->access$1202(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;Ljava/lang/Long;)Ljava/lang/Long;

    return-object p0
.end method

.method public setCoefficientM(Ljava/lang/Float;)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->mCrankReport:Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    invoke-static {v0, p1}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->access$1402(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;Ljava/lang/Float;)Ljava/lang/Float;

    return-object p0
.end method

.method public setCoefficientQ(Ljava/lang/Float;)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->mCrankReport:Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    invoke-static {v0, p1}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->access$1502(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;Ljava/lang/Float;)Ljava/lang/Float;

    return-object p0
.end method

.method public setCoefficientR2(Ljava/lang/Float;)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->mCrankReport:Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    invoke-static {v0, p1}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->access$1302(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;Ljava/lang/Float;)Ljava/lang/Float;

    return-object p0
.end method

.method public setLimit(Ljava/lang/Float;)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->mCrankReport:Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    invoke-static {v0, p1}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->access$1602(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;Ljava/lang/Float;)Ljava/lang/Float;

    return-object p0
.end method

.method public setMeanVoltage(Ljava/lang/Short;)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->mCrankReport:Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    invoke-static {v0, p1}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->access$702(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;Ljava/lang/Short;)Ljava/lang/Short;

    return-object p0
.end method

.method public setMinimumVoltage(Ljava/lang/Short;)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->mCrankReport:Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    invoke-static {v0, p1}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->access$802(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;Ljava/lang/Short;)Ljava/lang/Short;

    return-object p0
.end method

.method public setRawData([B)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->mCrankReport:Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    invoke-static {v0, p1}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->access$102(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;[B)[B

    return-object p0
.end method

.method public setSampleNumber(Ljava/lang/Long;)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->mCrankReport:Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    invoke-static {v0, p1}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->access$602(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;Ljava/lang/Long;)Ljava/lang/Long;

    return-object p0
.end method

.method public setSamplePeriod(Ljava/lang/Float;)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->mCrankReport:Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    invoke-static {v0, p1}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->access$502(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;Ljava/lang/Float;)Ljava/lang/Float;

    return-object p0
.end method

.method public setSamples(Ljava/util/List;)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;)",
            "Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->mCrankReport:Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->access$1702(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public setStatus(Ljava/lang/Long;)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->mCrankReport:Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    invoke-static {v0, p1}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->access$402(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;Ljava/lang/Long;)Ljava/lang/Long;

    return-object p0
.end method

.method public setTimestamp(Ljava/util/Date;)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->mCrankReport:Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    invoke-static {v0, p1}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->access$302(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;Ljava/util/Date;)Ljava/util/Date;

    return-object p0
.end method

.method public setVersion(I)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->mCrankReport:Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    invoke-static {v0, p1}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->access$202(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;I)I

    return-object p0
.end method

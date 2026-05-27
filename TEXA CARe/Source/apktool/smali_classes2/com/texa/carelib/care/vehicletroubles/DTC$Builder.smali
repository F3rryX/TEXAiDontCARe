.class public Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;
.super Ljava/lang/Object;
.source "DTC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/vehicletroubles/DTC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDTC:Lcom/texa/carelib/care/vehicletroubles/DTC;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 387
    new-instance v0, Lcom/texa/carelib/care/vehicletroubles/DTC;

    invoke-direct {v0}, Lcom/texa/carelib/care/vehicletroubles/DTC;-><init>()V

    invoke-direct {p0, v0}, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;-><init>(Lcom/texa/carelib/care/vehicletroubles/DTC;)V

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/care/vehicletroubles/DTC;)V
    .locals 0

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput-object p1, p0, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->mDTC:Lcom/texa/carelib/care/vehicletroubles/DTC;

    return-void
.end method


# virtual methods
.method public addDetail(Ljava/util/Locale;Ljava/lang/String;)Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;
    .locals 2

    .line 497
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->mDTC:Lcom/texa/carelib/care/vehicletroubles/DTC;

    invoke-static {v0}, Lcom/texa/carelib/care/vehicletroubles/DTC;->access$800(Lcom/texa/carelib/care/vehicletroubles/DTC;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/texa/carelib/care/vehicletroubles/DTC;->access$900(Lcom/texa/carelib/care/vehicletroubles/DTC;Ljava/util/Map;Ljava/util/Locale;)Lcom/texa/carelib/care/vehicletroubles/DTCInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 499
    new-instance v0, Lcom/texa/carelib/care/vehicletroubles/DTCInfo$Builder;

    invoke-direct {v0}, Lcom/texa/carelib/care/vehicletroubles/DTCInfo$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lcom/texa/carelib/care/vehicletroubles/DTCInfo$Builder;->setDetail(Ljava/lang/String;)Lcom/texa/carelib/care/vehicletroubles/DTCInfo$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/texa/carelib/care/vehicletroubles/DTCInfo$Builder;->build()Lcom/texa/carelib/care/vehicletroubles/DTCInfo;

    move-result-object p2

    goto :goto_0

    .line 501
    :cond_0
    invoke-virtual {v0}, Lcom/texa/carelib/care/vehicletroubles/DTCInfo;->builder()Lcom/texa/carelib/care/vehicletroubles/DTCInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/texa/carelib/care/vehicletroubles/DTCInfo$Builder;->setDetail(Ljava/lang/String;)Lcom/texa/carelib/care/vehicletroubles/DTCInfo$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/texa/carelib/care/vehicletroubles/DTCInfo$Builder;->build()Lcom/texa/carelib/care/vehicletroubles/DTCInfo;

    move-result-object p2

    .line 502
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->mDTC:Lcom/texa/carelib/care/vehicletroubles/DTC;

    invoke-static {v0}, Lcom/texa/carelib/care/vehicletroubles/DTC;->access$800(Lcom/texa/carelib/care/vehicletroubles/DTC;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    :goto_0
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->mDTC:Lcom/texa/carelib/care/vehicletroubles/DTC;

    invoke-static {v0}, Lcom/texa/carelib/care/vehicletroubles/DTC;->access$800(Lcom/texa/carelib/care/vehicletroubles/DTC;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addHelp(Ljava/util/Locale;Ljava/lang/String;)Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;
    .locals 2

    .line 517
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->mDTC:Lcom/texa/carelib/care/vehicletroubles/DTC;

    invoke-static {v0}, Lcom/texa/carelib/care/vehicletroubles/DTC;->access$800(Lcom/texa/carelib/care/vehicletroubles/DTC;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/texa/carelib/care/vehicletroubles/DTC;->access$900(Lcom/texa/carelib/care/vehicletroubles/DTC;Ljava/util/Map;Ljava/util/Locale;)Lcom/texa/carelib/care/vehicletroubles/DTCInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 519
    new-instance v0, Lcom/texa/carelib/care/vehicletroubles/DTCInfo$Builder;

    invoke-direct {v0}, Lcom/texa/carelib/care/vehicletroubles/DTCInfo$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lcom/texa/carelib/care/vehicletroubles/DTCInfo$Builder;->setHelp(Ljava/lang/String;)Lcom/texa/carelib/care/vehicletroubles/DTCInfo$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/texa/carelib/care/vehicletroubles/DTCInfo$Builder;->build()Lcom/texa/carelib/care/vehicletroubles/DTCInfo;

    move-result-object p2

    goto :goto_0

    .line 521
    :cond_0
    invoke-virtual {v0}, Lcom/texa/carelib/care/vehicletroubles/DTCInfo;->builder()Lcom/texa/carelib/care/vehicletroubles/DTCInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/texa/carelib/care/vehicletroubles/DTCInfo$Builder;->setHelp(Ljava/lang/String;)Lcom/texa/carelib/care/vehicletroubles/DTCInfo$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/texa/carelib/care/vehicletroubles/DTCInfo$Builder;->build()Lcom/texa/carelib/care/vehicletroubles/DTCInfo;

    move-result-object p2

    .line 522
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->mDTC:Lcom/texa/carelib/care/vehicletroubles/DTC;

    invoke-static {v0}, Lcom/texa/carelib/care/vehicletroubles/DTC;->access$800(Lcom/texa/carelib/care/vehicletroubles/DTC;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    :goto_0
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->mDTC:Lcom/texa/carelib/care/vehicletroubles/DTC;

    invoke-static {v0}, Lcom/texa/carelib/care/vehicletroubles/DTC;->access$800(Lcom/texa/carelib/care/vehicletroubles/DTC;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()Lcom/texa/carelib/care/vehicletroubles/DTC;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->mDTC:Lcom/texa/carelib/care/vehicletroubles/DTC;

    return-object v0
.end method

.method public setAcquisitionDate(Ljava/util/Date;)Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->mDTC:Lcom/texa/carelib/care/vehicletroubles/DTC;

    invoke-static {v0, p1}, Lcom/texa/carelib/care/vehicletroubles/DTC;->access$502(Lcom/texa/carelib/care/vehicletroubles/DTC;Ljava/util/Date;)Ljava/util/Date;

    return-object p0
.end method

.method public setCode(Ljava/lang/String;)Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->mDTC:Lcom/texa/carelib/care/vehicletroubles/DTC;

    invoke-static {v0, p1}, Lcom/texa/carelib/care/vehicletroubles/DTC;->access$202(Lcom/texa/carelib/care/vehicletroubles/DTC;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setECU(Ljava/lang/String;)Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->mDTC:Lcom/texa/carelib/care/vehicletroubles/DTC;

    invoke-static {v0, p1}, Lcom/texa/carelib/care/vehicletroubles/DTC;->access$302(Lcom/texa/carelib/care/vehicletroubles/DTC;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setID(Ljava/lang/String;)Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->mDTC:Lcom/texa/carelib/care/vehicletroubles/DTC;

    invoke-static {v0, p1}, Lcom/texa/carelib/care/vehicletroubles/DTC;->access$002(Lcom/texa/carelib/care/vehicletroubles/DTC;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setOccurrences(Ljava/lang/Long;)Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->mDTC:Lcom/texa/carelib/care/vehicletroubles/DTC;

    invoke-static {v0, p1}, Lcom/texa/carelib/care/vehicletroubles/DTC;->access$602(Lcom/texa/carelib/care/vehicletroubles/DTC;Ljava/lang/Long;)Ljava/lang/Long;

    return-object p0
.end method

.method public setSourceNode(Ljava/lang/Long;)Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->mDTC:Lcom/texa/carelib/care/vehicletroubles/DTC;

    invoke-static {v0, p1}, Lcom/texa/carelib/care/vehicletroubles/DTC;->access$702(Lcom/texa/carelib/care/vehicletroubles/DTC;Ljava/lang/Long;)Ljava/lang/Long;

    return-object p0
.end method

.method public setStatus(Lcom/texa/carelib/care/vehicletroubles/DTCStatus;)Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->mDTC:Lcom/texa/carelib/care/vehicletroubles/DTC;

    invoke-static {v0, p1}, Lcom/texa/carelib/care/vehicletroubles/DTC;->access$402(Lcom/texa/carelib/care/vehicletroubles/DTC;Lcom/texa/carelib/care/vehicletroubles/DTCStatus;)Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->mDTC:Lcom/texa/carelib/care/vehicletroubles/DTC;

    invoke-static {v0, p1}, Lcom/texa/carelib/care/vehicletroubles/DTC;->access$102(Lcom/texa/carelib/care/vehicletroubles/DTC;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

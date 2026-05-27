.class public Lcom/texa/carelib/care/vehicletroubles/DTCInfo$Builder;
.super Ljava/lang/Object;
.source "DTCInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/vehicletroubles/DTCInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mDTCInfo:Lcom/texa/carelib/care/vehicletroubles/DTCInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/texa/carelib/care/vehicletroubles/DTCInfo;

    invoke-direct {v0}, Lcom/texa/carelib/care/vehicletroubles/DTCInfo;-><init>()V

    invoke-direct {p0, v0}, Lcom/texa/carelib/care/vehicletroubles/DTCInfo$Builder;-><init>(Lcom/texa/carelib/care/vehicletroubles/DTCInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/care/vehicletroubles/DTCInfo;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/texa/carelib/care/vehicletroubles/DTCInfo$Builder;->mDTCInfo:Lcom/texa/carelib/care/vehicletroubles/DTCInfo;

    return-void
.end method


# virtual methods
.method public build()Lcom/texa/carelib/care/vehicletroubles/DTCInfo;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTCInfo$Builder;->mDTCInfo:Lcom/texa/carelib/care/vehicletroubles/DTCInfo;

    return-object v0
.end method

.method public setDetail(Ljava/lang/String;)Lcom/texa/carelib/care/vehicletroubles/DTCInfo$Builder;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTCInfo$Builder;->mDTCInfo:Lcom/texa/carelib/care/vehicletroubles/DTCInfo;

    invoke-static {v0, p1}, Lcom/texa/carelib/care/vehicletroubles/DTCInfo;->access$002(Lcom/texa/carelib/care/vehicletroubles/DTCInfo;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setHelp(Ljava/lang/String;)Lcom/texa/carelib/care/vehicletroubles/DTCInfo$Builder;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTCInfo$Builder;->mDTCInfo:Lcom/texa/carelib/care/vehicletroubles/DTCInfo;

    invoke-static {v0, p1}, Lcom/texa/carelib/care/vehicletroubles/DTCInfo;->access$102(Lcom/texa/carelib/care/vehicletroubles/DTCInfo;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

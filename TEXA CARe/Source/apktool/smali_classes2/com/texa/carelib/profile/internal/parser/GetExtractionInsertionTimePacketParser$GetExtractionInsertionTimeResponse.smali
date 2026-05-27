.class public Lcom/texa/carelib/profile/internal/parser/GetExtractionInsertionTimePacketParser$GetExtractionInsertionTimeResponse;
.super Ljava/lang/Object;
.source "GetExtractionInsertionTimePacketParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/internal/parser/GetExtractionInsertionTimePacketParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetExtractionInsertionTimeResponse"
.end annotation


# instance fields
.field private mCurrentDate:Ljava/util/Date;

.field private mPlugDate:Ljava/util/Date;

.field private mUnPlugDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentDate()Ljava/util/Date;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/parser/GetExtractionInsertionTimePacketParser$GetExtractionInsertionTimeResponse;->mCurrentDate:Ljava/util/Date;

    return-object v0
.end method

.method public getPlugDate()Ljava/util/Date;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/parser/GetExtractionInsertionTimePacketParser$GetExtractionInsertionTimeResponse;->mPlugDate:Ljava/util/Date;

    return-object v0
.end method

.method public getUnPlugDate()Ljava/util/Date;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/parser/GetExtractionInsertionTimePacketParser$GetExtractionInsertionTimeResponse;->mUnPlugDate:Ljava/util/Date;

    return-object v0
.end method

.method public setCurrentDate(Ljava/util/Date;)Lcom/texa/carelib/profile/internal/parser/GetExtractionInsertionTimePacketParser$GetExtractionInsertionTimeResponse;
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/parser/GetExtractionInsertionTimePacketParser$GetExtractionInsertionTimeResponse;->mCurrentDate:Ljava/util/Date;

    return-object p0
.end method

.method public setPlugDate(Ljava/util/Date;)Lcom/texa/carelib/profile/internal/parser/GetExtractionInsertionTimePacketParser$GetExtractionInsertionTimeResponse;
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/parser/GetExtractionInsertionTimePacketParser$GetExtractionInsertionTimeResponse;->mPlugDate:Ljava/util/Date;

    return-object p0
.end method

.method public setUnPlugDate(Ljava/util/Date;)Lcom/texa/carelib/profile/internal/parser/GetExtractionInsertionTimePacketParser$GetExtractionInsertionTimeResponse;
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/parser/GetExtractionInsertionTimePacketParser$GetExtractionInsertionTimeResponse;->mUnPlugDate:Ljava/util/Date;

    return-object p0
.end method

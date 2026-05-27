.class public Lcom/texa/carelib/care/trips/internal/parser/GetStatisticDiffTripDataPacketParser$GetStatisticDiffTripDataResponse;
.super Ljava/lang/Object;
.source "GetStatisticDiffTripDataPacketParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/trips/internal/parser/GetStatisticDiffTripDataPacketParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetStatisticDiffTripDataResponse"
.end annotation


# instance fields
.field private mData:[B

.field private mProgressiveIndex:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/Integer;[B)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/parser/GetStatisticDiffTripDataPacketParser$GetStatisticDiffTripDataResponse;->mProgressiveIndex:Ljava/lang/Integer;

    .line 47
    iput-object p2, p0, Lcom/texa/carelib/care/trips/internal/parser/GetStatisticDiffTripDataPacketParser$GetStatisticDiffTripDataResponse;->mData:[B

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/parser/GetStatisticDiffTripDataPacketParser$GetStatisticDiffTripDataResponse;->mData:[B

    return-object v0
.end method

.method public getProgressiveIndex()Ljava/lang/Integer;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/parser/GetStatisticDiffTripDataPacketParser$GetStatisticDiffTripDataResponse;->mProgressiveIndex:Ljava/lang/Integer;

    return-object v0
.end method

.class public Lcom/texa/carelib/care/trips/internal/parser/BeginFileDataTripParser$BeginFileDataTripResponse;
.super Ljava/lang/Object;
.source "BeginFileDataTripParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/trips/internal/parser/BeginFileDataTripParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BeginFileDataTripResponse"
.end annotation


# instance fields
.field private mFileSize:I

.field private mFileType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/texa/carelib/care/trips/internal/parser/BeginFileDataTripParser$BeginFileDataTripResponse;->mFileSize:I

    const/16 v0, 0xff

    .line 83
    iput v0, p0, Lcom/texa/carelib/care/trips/internal/parser/BeginFileDataTripParser$BeginFileDataTripResponse;->mFileType:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/texa/carelib/care/trips/internal/parser/BeginFileDataTripParser$BeginFileDataTripResponse;-><init>()V

    .line 95
    iput p1, p0, Lcom/texa/carelib/care/trips/internal/parser/BeginFileDataTripParser$BeginFileDataTripResponse;->mFileType:I

    .line 96
    iput p2, p0, Lcom/texa/carelib/care/trips/internal/parser/BeginFileDataTripParser$BeginFileDataTripResponse;->mFileSize:I

    return-void
.end method


# virtual methods
.method public getFileSize()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/texa/carelib/care/trips/internal/parser/BeginFileDataTripParser$BeginFileDataTripResponse;->mFileSize:I

    return v0
.end method

.method public getFileType()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/texa/carelib/care/trips/internal/parser/BeginFileDataTripParser$BeginFileDataTripResponse;->mFileType:I

    return v0
.end method

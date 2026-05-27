.class public Lcom/texa/carelib/care/impacts/internal/parser/BeginFileDataCrashParser$BeginFileDataCrashResponse;
.super Ljava/lang/Object;
.source "BeginFileDataCrashParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/impacts/internal/parser/BeginFileDataCrashParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BeginFileDataCrashResponse"
.end annotation


# instance fields
.field private mFileSize:I

.field private mFileType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/texa/carelib/care/impacts/internal/parser/BeginFileDataCrashParser$BeginFileDataCrashResponse;->mFileSize:I

    const/16 v0, 0xff

    .line 92
    iput v0, p0, Lcom/texa/carelib/care/impacts/internal/parser/BeginFileDataCrashParser$BeginFileDataCrashResponse;->mFileType:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/texa/carelib/care/impacts/internal/parser/BeginFileDataCrashParser$BeginFileDataCrashResponse;-><init>()V

    .line 104
    iput p1, p0, Lcom/texa/carelib/care/impacts/internal/parser/BeginFileDataCrashParser$BeginFileDataCrashResponse;->mFileType:I

    .line 105
    iput p2, p0, Lcom/texa/carelib/care/impacts/internal/parser/BeginFileDataCrashParser$BeginFileDataCrashResponse;->mFileSize:I

    return-void
.end method


# virtual methods
.method public getFileSize()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/texa/carelib/care/impacts/internal/parser/BeginFileDataCrashParser$BeginFileDataCrashResponse;->mFileSize:I

    return v0
.end method

.method public getFileType()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/texa/carelib/care/impacts/internal/parser/BeginFileDataCrashParser$BeginFileDataCrashResponse;->mFileType:I

    return v0
.end method

.method public setFileSize(I)Lcom/texa/carelib/care/impacts/internal/parser/BeginFileDataCrashParser$BeginFileDataCrashResponse;
    .locals 0

    .line 83
    iput p1, p0, Lcom/texa/carelib/care/impacts/internal/parser/BeginFileDataCrashParser$BeginFileDataCrashResponse;->mFileSize:I

    return-object p0
.end method

.method public setFileType(I)Lcom/texa/carelib/care/impacts/internal/parser/BeginFileDataCrashParser$BeginFileDataCrashResponse;
    .locals 0

    .line 72
    iput p1, p0, Lcom/texa/carelib/care/impacts/internal/parser/BeginFileDataCrashParser$BeginFileDataCrashResponse;->mFileType:I

    return-object p0
.end method

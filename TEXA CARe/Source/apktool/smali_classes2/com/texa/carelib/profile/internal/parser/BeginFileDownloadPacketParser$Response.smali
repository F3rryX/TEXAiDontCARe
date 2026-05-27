.class public Lcom/texa/carelib/profile/internal/parser/BeginFileDownloadPacketParser$Response;
.super Ljava/lang/Object;
.source "BeginFileDownloadPacketParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/internal/parser/BeginFileDownloadPacketParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# instance fields
.field private mFileSize:J

.field private mFileType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 57
    iput-wide v0, p0, Lcom/texa/carelib/profile/internal/parser/BeginFileDownloadPacketParser$Response;->mFileSize:J

    const/16 v0, 0xff

    .line 58
    iput v0, p0, Lcom/texa/carelib/profile/internal/parser/BeginFileDownloadPacketParser$Response;->mFileType:I

    return-void
.end method


# virtual methods
.method public getFileSize()J
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/texa/carelib/profile/internal/parser/BeginFileDownloadPacketParser$Response;->mFileSize:J

    return-wide v0
.end method

.method public getFileType()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/texa/carelib/profile/internal/parser/BeginFileDownloadPacketParser$Response;->mFileType:I

    return v0
.end method

.method setFileSize(J)Lcom/texa/carelib/profile/internal/parser/BeginFileDownloadPacketParser$Response;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 103
    iput-wide p1, p0, Lcom/texa/carelib/profile/internal/parser/BeginFileDownloadPacketParser$Response;->mFileSize:J

    return-object p0

    .line 101
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Size cannot be minor than zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setFileType(I)Lcom/texa/carelib/profile/internal/parser/BeginFileDownloadPacketParser$Response;
    .locals 0

    .line 79
    iput p1, p0, Lcom/texa/carelib/profile/internal/parser/BeginFileDownloadPacketParser$Response;->mFileType:I

    return-object p0
.end method

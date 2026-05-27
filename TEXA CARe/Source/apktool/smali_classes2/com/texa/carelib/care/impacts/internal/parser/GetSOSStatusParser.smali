.class public Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser;
.super Ljava/lang/Object;
.source "GetSOSStatusParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;,
        Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;
    }
.end annotation


# static fields
.field private static final INDEX_CRASH_REPORT:I = 0x5

.field private static final INDEX_SOS_DATE:I = 0x1

.field private static final INDEX_SOS_STATUS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "GetSOSStatusParser"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCrashReport(Ljava/nio/ByteBuffer;)Lcom/texa/carelib/care/impacts/CrashReport;
    .locals 2

    .line 58
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 59
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 61
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 62
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 64
    invoke-static {v0}, Lcom/texa/carelib/care/impacts/internal/CrashReportFactory;->isStandardCrashReportBlock([B)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 65
    new-instance p0, Lcom/texa/carelib/care/impacts/internal/CrashReportFactory;

    invoke-direct {p0}, Lcom/texa/carelib/care/impacts/internal/CrashReportFactory;-><init>()V

    .line 66
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/impacts/internal/CrashReportFactory;->create([B)Lcom/texa/carelib/care/impacts/CrashReport;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getSOSDate(Ljava/nio/ByteBuffer;)Ljava/util/Date;
    .locals 2

    .line 74
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 75
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->getTimestamp(Ljava/util/concurrent/TimeUnit;Ljava/nio/ByteBuffer;I)Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSOSStatus(Ljava/nio/ByteBuffer;)Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;
    .locals 5

    .line 82
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    .line 83
    invoke-static {p0, v0}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->getUnsignedByte(Ljava/nio/ByteBuffer;I)S

    move-result p0

    .line 84
    sget-object v2, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser;->TAG:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v0, "SOS Status = %d"

    invoke-static {v2, v0, v3}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    sget-object p0, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;->Error:Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;

    return-object p0

    .line 91
    :cond_1
    sget-object p0, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;->Present:Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;

    return-object p0

    .line 88
    :cond_2
    sget-object p0, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;->Absent:Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;

    return-object p0

    .line 99
    :cond_3
    :goto_0
    sget-object p0, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;->Undefined:Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;

    return-object p0
.end method

.method public static parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;
    .locals 2

    .line 39
    new-instance v0, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;

    invoke-direct {v0}, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getStatus()I

    move-result v1

    if-nez v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 44
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 45
    invoke-static {p0}, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser;->getSOSStatus(Ljava/nio/ByteBuffer;)Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;->access$000(Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;)Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;

    .line 46
    invoke-static {p0}, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser;->getSOSDate(Ljava/nio/ByteBuffer;)Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;->access$100(Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;Ljava/util/Date;)Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;

    .line 47
    invoke-static {p0}, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser;->getCrashReport(Ljava/nio/ByteBuffer;)Lcom/texa/carelib/care/impacts/CrashReport;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;->access$200(Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;Lcom/texa/carelib/care/impacts/CrashReport;)Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;

    :cond_0
    return-object v0
.end method

.class public Lcom/texa/carelib/care/impacts/CrashReport;
.super Ljava/lang/Object;
.source "CrashReport.java"

# interfaces
.implements Lcom/texa/carelib/core/utils/CareStruct;


# static fields
.field public static final CRASH_ID_UNDEF:Ljava/lang/Long;


# instance fields
.field private mCrashID:J

.field private mCrashReportStatus:Lcom/texa/carelib/care/impacts/CrashReportStatus;

.field private mIntensity:Ljava/lang/Long;

.field private mIsClientDeviceConnected:Ljava/lang/Boolean;

.field private mRawData:[B

.field private mTimestamp:Ljava/util/Date;

.field private mTripNumber:Ljava/lang/Long;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/care/impacts/CrashReport;->CRASH_ID_UNDEF:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>([BJILjava/util/Date;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Lcom/texa/carelib/care/impacts/CrashReportStatus;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/CrashReport;->mRawData:[B

    .line 31
    iput-wide p2, p0, Lcom/texa/carelib/care/impacts/CrashReport;->mCrashID:J

    .line 32
    iput p4, p0, Lcom/texa/carelib/care/impacts/CrashReport;->mVersion:I

    .line 33
    iput-object p5, p0, Lcom/texa/carelib/care/impacts/CrashReport;->mTimestamp:Ljava/util/Date;

    .line 34
    iput-object p6, p0, Lcom/texa/carelib/care/impacts/CrashReport;->mIntensity:Ljava/lang/Long;

    .line 35
    iput-object p7, p0, Lcom/texa/carelib/care/impacts/CrashReport;->mTripNumber:Ljava/lang/Long;

    .line 36
    iput-object p8, p0, Lcom/texa/carelib/care/impacts/CrashReport;->mIsClientDeviceConnected:Ljava/lang/Boolean;

    .line 37
    iput-object p9, p0, Lcom/texa/carelib/care/impacts/CrashReport;->mCrashReportStatus:Lcom/texa/carelib/care/impacts/CrashReportStatus;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 104
    :cond_1
    check-cast p1, Lcom/texa/carelib/care/impacts/CrashReport;

    .line 105
    iget-wide v2, p0, Lcom/texa/carelib/care/impacts/CrashReport;->mCrashID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lcom/texa/carelib/care/impacts/CrashReport;->mCrashID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/texa/carelib/care/impacts/CrashReport;->mVersion:I

    .line 106
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/texa/carelib/care/impacts/CrashReport;->mVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/impacts/CrashReport;->mTimestamp:Ljava/util/Date;

    iget-object v3, p1, Lcom/texa/carelib/care/impacts/CrashReport;->mTimestamp:Ljava/util/Date;

    .line 108
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/impacts/CrashReport;->mIntensity:Ljava/lang/Long;

    iget-object v3, p1, Lcom/texa/carelib/care/impacts/CrashReport;->mIntensity:Ljava/lang/Long;

    .line 109
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/impacts/CrashReport;->mTripNumber:Ljava/lang/Long;

    iget-object v3, p1, Lcom/texa/carelib/care/impacts/CrashReport;->mTripNumber:Ljava/lang/Long;

    .line 110
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/impacts/CrashReport;->mIsClientDeviceConnected:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/texa/carelib/care/impacts/CrashReport;->mIsClientDeviceConnected:Ljava/lang/Boolean;

    .line 111
    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/texa/carelib/care/impacts/CrashReport;->mCrashReportStatus:Lcom/texa/carelib/care/impacts/CrashReportStatus;

    iget-object p1, p1, Lcom/texa/carelib/care/impacts/CrashReport;->mCrashReportStatus:Lcom/texa/carelib/care/impacts/CrashReportStatus;

    .line 112
    invoke-static {v2, p1}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCrashID()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/texa/carelib/care/impacts/CrashReport;->mCrashID:J

    return-wide v0
.end method

.method public getIntensity()Ljava/lang/Long;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/CrashReport;->mIntensity:Ljava/lang/Long;

    return-object v0
.end method

.method public getRawData()[B
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/CrashReport;->mRawData:[B

    return-object v0
.end method

.method public getStatus()Lcom/texa/carelib/care/impacts/CrashReportStatus;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/CrashReport;->mCrashReportStatus:Lcom/texa/carelib/care/impacts/CrashReportStatus;

    return-object v0
.end method

.method public getTimeStamp()Ljava/util/Date;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/CrashReport;->mTimestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getTripNumber()Ljava/lang/Long;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/CrashReport;->mTripNumber:Ljava/lang/Long;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/texa/carelib/care/impacts/CrashReport;->mVersion:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 117
    iget-wide v1, p0, Lcom/texa/carelib/care/impacts/CrashReport;->mCrashID:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/impacts/CrashReport;->mRawData:[B

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/texa/carelib/care/impacts/CrashReport;->mVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/impacts/CrashReport;->mTimestamp:Ljava/util/Date;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/impacts/CrashReport;->mIntensity:Ljava/lang/Long;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/impacts/CrashReport;->mTripNumber:Ljava/lang/Long;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/impacts/CrashReport;->mIsClientDeviceConnected:Ljava/lang/Boolean;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/impacts/CrashReport;->mCrashReportStatus:Lcom/texa/carelib/care/impacts/CrashReportStatus;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/Utils;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isClientDeviceConnected()Ljava/lang/Boolean;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/CrashReport;->mIsClientDeviceConnected:Ljava/lang/Boolean;

    return-object v0
.end method

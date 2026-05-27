.class public Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;
.super Ljava/lang/Object;
.source "GetSOSStatusParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetSOSStatusResponse"
.end annotation


# instance fields
.field private mCrashReport:Lcom/texa/carelib/care/impacts/CrashReport;

.field private mDate:Ljava/util/Date;

.field private mSOSStatus:Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    sget-object v0, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;->Undefined:Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;

    iput-object v0, p0, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;->mSOSStatus:Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;->mDate:Ljava/util/Date;

    .line 141
    iput-object v0, p0, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;->mCrashReport:Lcom/texa/carelib/care/impacts/CrashReport;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;)Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;->setSOSStatus(Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;)Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;Ljava/util/Date;)Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;->setDate(Ljava/util/Date;)Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;Lcom/texa/carelib/care/impacts/CrashReport;)Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;->setCrashReport(Lcom/texa/carelib/care/impacts/CrashReport;)Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;

    move-result-object p0

    return-object p0
.end method

.method private setCrashReport(Lcom/texa/carelib/care/impacts/CrashReport;)Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;->mCrashReport:Lcom/texa/carelib/care/impacts/CrashReport;

    return-object p0
.end method

.method private setDate(Ljava/util/Date;)Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;->mDate:Ljava/util/Date;

    return-object p0
.end method

.method private setSOSStatus(Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;)Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;->mSOSStatus:Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;

    return-object p0
.end method


# virtual methods
.method public getCrashReport()Lcom/texa/carelib/care/impacts/CrashReport;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;->mCrashReport:Lcom/texa/carelib/care/impacts/CrashReport;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;->mDate:Ljava/util/Date;

    return-object v0
.end method

.method public getSOSStatus()Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;->mSOSStatus:Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;

    return-object v0
.end method

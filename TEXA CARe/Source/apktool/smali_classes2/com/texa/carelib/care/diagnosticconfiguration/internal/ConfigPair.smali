.class Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;
.super Ljava/lang/Object;
.source "ConfigPair.java"


# instance fields
.field private mCheckProgress:F

.field private mConfig:Ljava/io/File;

.field private mDateStartCheck:Ljava/util/Date;

.field private mIsStored:Z

.field private mReport:Ljava/io/File;

.field private mReportStatus:I

.field private mStoreProgress:F


# direct methods
.method constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->mConfig:Ljava/io/File;

    .line 20
    iput-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->mReport:Ljava/io/File;

    const/4 v1, -0x1

    .line 21
    iput v1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->mReportStatus:I

    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->mIsStored:Z

    .line 23
    iput-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->mDateStartCheck:Ljava/util/Date;

    return-void
.end method

.method constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->mConfig:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getCheckProgress()F
    .locals 1

    .line 147
    iget v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->mCheckProgress:F

    return v0
.end method

.method public getConfig()Ljava/io/File;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->mConfig:Ljava/io/File;

    return-object v0
.end method

.method public getDateStartCheck()Ljava/util/Date;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->mDateStartCheck:Ljava/util/Date;

    return-object v0
.end method

.method public getReport()Ljava/io/File;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->mReport:Ljava/io/File;

    return-object v0
.end method

.method public getReportStatus()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->mReportStatus:I

    return v0
.end method

.method public getStoreProgress()F
    .locals 1

    .line 129
    iget v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->mStoreProgress:F

    return v0
.end method

.method public isStored()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->mIsStored:Z

    return v0
.end method

.method public setCheckProgress(F)Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;
    .locals 0

    .line 157
    iput p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->mCheckProgress:F

    return-object p0
.end method

.method public setDateStartCheck(Ljava/util/Date;)Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->mDateStartCheck:Ljava/util/Date;

    return-object p0
.end method

.method public setReport(Ljava/io/File;)Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->mReport:Ljava/io/File;

    return-object p0
.end method

.method public setReportStatus(I)Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;
    .locals 0

    .line 80
    iput p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->mReportStatus:I

    return-object p0
.end method

.method public setStoreProgress(F)Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;
    .locals 0

    .line 139
    iput p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->mStoreProgress:F

    return-object p0
.end method

.method public setStored(Z)Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->mIsStored:Z

    return-object p0
.end method

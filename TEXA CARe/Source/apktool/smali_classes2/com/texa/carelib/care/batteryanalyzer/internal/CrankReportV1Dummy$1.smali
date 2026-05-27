.class synthetic Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportV1Dummy$1;
.super Ljava/lang/Object;
.source "CrankReportV1Dummy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportV1Dummy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$texa$carelib$care$batteryanalyzer$internal$CrankReportV1Dummy$DummyCrankType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    invoke-static {}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportV1Dummy$DummyCrankType;->values()[Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportV1Dummy$DummyCrankType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportV1Dummy$1;->$SwitchMap$com$texa$carelib$care$batteryanalyzer$internal$CrankReportV1Dummy$DummyCrankType:[I

    :try_start_0
    sget-object v1, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportV1Dummy$DummyCrankType;->Ford_C_Max:Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportV1Dummy$DummyCrankType;

    invoke-virtual {v1}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportV1Dummy$DummyCrankType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportV1Dummy$1;->$SwitchMap$com$texa$carelib$care$batteryanalyzer$internal$CrankReportV1Dummy$DummyCrankType:[I

    sget-object v1, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportV1Dummy$DummyCrankType;->Golf_IV_1:Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportV1Dummy$DummyCrankType;

    invoke-virtual {v1}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportV1Dummy$DummyCrankType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

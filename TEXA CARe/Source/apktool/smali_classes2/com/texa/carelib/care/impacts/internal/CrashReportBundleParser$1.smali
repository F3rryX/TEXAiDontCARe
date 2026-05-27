.class synthetic Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser$1;
.super Ljava/lang/Object;
.source "CrashReportBundleParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$texa$carelib$core$internal$CareStructID:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 78
    invoke-static {}, Lcom/texa/carelib/core/internal/CareStructID;->values()[Lcom/texa/carelib/core/internal/CareStructID;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser$1;->$SwitchMap$com$texa$carelib$core$internal$CareStructID:[I

    :try_start_0
    sget-object v1, Lcom/texa/carelib/core/internal/CareStructID;->CRASH_REPORT_STANDARD:Lcom/texa/carelib/core/internal/CareStructID;

    invoke-virtual {v1}, Lcom/texa/carelib/core/internal/CareStructID;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser$1;->$SwitchMap$com$texa$carelib$core$internal$CareStructID:[I

    sget-object v1, Lcom/texa/carelib/core/internal/CareStructID;->CRASH_REPORT_STANDARD_NOT_VALIDATED:Lcom/texa/carelib/core/internal/CareStructID;

    invoke-virtual {v1}, Lcom/texa/carelib/core/internal/CareStructID;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser$1;->$SwitchMap$com$texa$carelib$core$internal$CareStructID:[I

    sget-object v1, Lcom/texa/carelib/core/internal/CareStructID;->CRASH_REPORT_STANDARD_LOW_POWER:Lcom/texa/carelib/core/internal/CareStructID;

    invoke-virtual {v1}, Lcom/texa/carelib/core/internal/CareStructID;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/texa/carelib/care/impacts/internal/CrashReportBundleParser$1;->$SwitchMap$com$texa$carelib$core$internal$CareStructID:[I

    sget-object v1, Lcom/texa/carelib/core/internal/CareStructID;->CRASH_REPORT_VERBOSE:Lcom/texa/carelib/core/internal/CareStructID;

    invoke-virtual {v1}, Lcom/texa/carelib/core/internal/CareStructID;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

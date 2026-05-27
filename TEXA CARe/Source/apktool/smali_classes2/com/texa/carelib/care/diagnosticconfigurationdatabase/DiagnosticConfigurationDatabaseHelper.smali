.class public final Lcom/texa/carelib/care/diagnosticconfigurationdatabase/DiagnosticConfigurationDatabaseHelper;
.super Ljava/lang/Object;
.source "DiagnosticConfigurationDatabaseHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBundleNameFromDatabaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 23
    :cond_0
    invoke-static {p0}, Lcom/texa/carelib/core/utils/internal/FileUtils;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 24
    array-length v1, p0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    .line 25
    array-length v1, p0

    const/4 v3, 0x2

    sub-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p0, v0, v3, v1}, Lcom/texa/carelib/core/utils/internal/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

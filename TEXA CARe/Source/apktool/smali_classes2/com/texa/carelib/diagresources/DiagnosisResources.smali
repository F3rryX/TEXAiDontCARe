.class public Lcom/texa/carelib/diagresources/DiagnosisResources;
.super Ljava/lang/Object;
.source "DiagnosisResources.java"


# static fields
.field private static final ECU_NAME_KEY_FORMAT:Ljava/lang/String; = "carelib_diag_resources_ecu_%1$d_name"

.field private static final ENUM_VALUE_KEY_FORMAT:Ljava/lang/String; = "carelib_diag_resources_enum_%1$d_value"

.field private static final INVALID_RES_ID:I = 0x0

.field private static final PARAMETER_HELP_KEY_FORMAT:Ljava/lang/String; = "carelib_diag_resources_parameter_%1$d_help"

.field private static final PARAMETER_NAME_KEY_FORMAT:Ljava/lang/String; = "carelib_diag_resources_parameter_%1$d_name"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getResId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "string"

    .line 174
    invoke-static {p0, p1, v0}, Lcom/texa/carelib/diagresources/DiagnosisResources;->getResIdResources(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static getResIdResources(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 181
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1, p2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    if-lez p0, :cond_0

    move v0, p0

    :cond_0
    return v0
.end method


# virtual methods
.method public getECUName(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2

    .line 146
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v1, p3

    const-string p2, "carelib_diag_resources_ecu_%1$d_name"

    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/texa/carelib/diagresources/DiagnosisResources;->getResId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_0

    .line 148
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getECUName(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 165
    invoke-virtual {p0, p1, p2, p3}, Lcom/texa/carelib/diagresources/DiagnosisResources;->getECUName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p4
.end method

.method public getEnumValue(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2

    .line 109
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v1, p3

    const-string p2, "carelib_diag_resources_enum_%1$d_value"

    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/texa/carelib/diagresources/DiagnosisResources;->getResId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_0

    .line 111
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getEnumValue(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 128
    invoke-virtual {p0, p1, p2, p3}, Lcom/texa/carelib/diagresources/DiagnosisResources;->getEnumValue(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p4
.end method

.method public getParameterHelp(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2

    .line 68
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v1, p3

    const-string p2, "carelib_diag_resources_parameter_%1$d_help"

    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/texa/carelib/diagresources/DiagnosisResources;->getResId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_0

    .line 71
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, ""

    .line 73
    invoke-static {p2, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getParameterHelp(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 91
    invoke-virtual {p0, p1, p2, p3}, Lcom/texa/carelib/diagresources/DiagnosisResources;->getParameterHelp(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p4
.end method

.method public getParameterName(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2

    .line 27
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v1, p3

    const-string p2, "carelib_diag_resources_parameter_%1$d_name"

    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/texa/carelib/diagresources/DiagnosisResources;->getResId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_0

    .line 30
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, ""

    .line 32
    invoke-static {p2, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getParameterName(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/texa/carelib/diagresources/DiagnosisResources;->getParameterName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p4
.end method

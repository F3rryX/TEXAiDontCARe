.class public Lcom/texa/careapp/utils/PercentColorHelper;
.super Ljava/lang/Object;
.source "PercentColorHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PercentColorHelper"

.field public static final THRESHOLD_OK_FLOAT:F = 0.5f

.field public static final THRESHOLD_OK_INT:I = 0x32

.field public static final THRESHOLD_WARNING_FLOAT:F = 0.25f

.field public static final THRESHOLD_WARNING_INT:I = 0x19


# instance fields
.field private final mErrorColor:I

.field private final mOkColor:I

.field private final mWarningColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0600a8

    .line 25
    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/texa/careapp/utils/PercentColorHelper;->mOkColor:I

    const v0, 0x7f0600f3

    .line 26
    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/texa/careapp/utils/PercentColorHelper;->mWarningColor:I

    const v0, 0x7f060074

    .line 27
    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/texa/careapp/utils/PercentColorHelper;->mErrorColor:I

    return-void
.end method


# virtual methods
.method public getColor(F)I
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 52
    :cond_0
    sget-object v0, Lcom/texa/careapp/utils/PercentColorHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid float percent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2

    .line 56
    iget p1, p0, Lcom/texa/careapp/utils/PercentColorHelper;->mOkColor:I

    return p1

    :cond_2
    const/high16 v0, 0x3e800000    # 0.25f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_3

    .line 58
    iget p1, p0, Lcom/texa/careapp/utils/PercentColorHelper;->mWarningColor:I

    return p1

    .line 60
    :cond_3
    iget p1, p0, Lcom/texa/careapp/utils/PercentColorHelper;->mErrorColor:I

    return p1
.end method

.method public getColor(I)I
    .locals 3

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 35
    :cond_0
    sget-object v0, Lcom/texa/careapp/utils/PercentColorHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid int percent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v0, 0x32

    if-lt p1, v0, :cond_2

    .line 39
    iget p1, p0, Lcom/texa/careapp/utils/PercentColorHelper;->mOkColor:I

    return p1

    :cond_2
    const/16 v0, 0x19

    if-lt p1, v0, :cond_3

    .line 41
    iget p1, p0, Lcom/texa/careapp/utils/PercentColorHelper;->mWarningColor:I

    return p1

    .line 43
    :cond_3
    iget p1, p0, Lcom/texa/careapp/utils/PercentColorHelper;->mErrorColor:I

    return p1
.end method

.method public getErrorColor()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/texa/careapp/utils/PercentColorHelper;->mErrorColor:I

    return v0
.end method

.method public getOkColor()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/texa/careapp/utils/PercentColorHelper;->mOkColor:I

    return v0
.end method

.method public getWarningColor()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/texa/careapp/utils/PercentColorHelper;->mWarningColor:I

    return v0
.end method

.class public Lcom/texa/careapp/utils/BatteryStatusFormatter;
.super Ljava/lang/Object;
.source "BatteryStatusFormatter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BatteryStatusFormatter"


# instance fields
.field private batteryLabels:[Ljava/lang/String;

.field private mErrorColor:I

.field private mOkColor:I

.field private mWarningColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f030000

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/utils/BatteryStatusFormatter;->batteryLabels:[Ljava/lang/String;

    const v0, 0x7f0600a8

    .line 31
    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/texa/careapp/utils/BatteryStatusFormatter;->mOkColor:I

    const v0, 0x7f0600f3

    .line 32
    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/texa/careapp/utils/BatteryStatusFormatter;->mWarningColor:I

    const v0, 0x7f060074

    .line 33
    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/texa/careapp/utils/BatteryStatusFormatter;->mErrorColor:I

    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 3

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 39
    sget-object v0, Lcom/texa/careapp/utils/BatteryStatusFormatter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ratio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 42
    iget-object p1, p0, Lcom/texa/careapp/utils/BatteryStatusFormatter;->batteryLabels:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    const/high16 v0, 0x3e800000    # 0.25f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    .line 44
    iget-object p1, p0, Lcom/texa/careapp/utils/BatteryStatusFormatter;->batteryLabels:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    return-object p1

    .line 46
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/utils/BatteryStatusFormatter;->batteryLabels:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    return-object p1
.end method

.method public getBatteryDrawable(I)I
    .locals 3

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 55
    sget-object v0, Lcom/texa/careapp/utils/BatteryStatusFormatter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ratio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f0800e4

    return p1
.end method

.method public getColor(I)I
    .locals 3

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 69
    sget-object v0, Lcom/texa/careapp/utils/BatteryStatusFormatter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ratio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 72
    iget p1, p0, Lcom/texa/careapp/utils/BatteryStatusFormatter;->mOkColor:I

    return p1

    :cond_0
    const/high16 v0, 0x3e800000    # 0.25f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    .line 74
    iget p1, p0, Lcom/texa/careapp/utils/BatteryStatusFormatter;->mWarningColor:I

    return p1

    .line 76
    :cond_1
    iget p1, p0, Lcom/texa/careapp/utils/BatteryStatusFormatter;->mErrorColor:I

    return p1
.end method

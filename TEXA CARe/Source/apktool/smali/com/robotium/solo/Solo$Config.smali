.class public Lcom/robotium/solo/Solo$Config;
.super Ljava/lang/Object;
.source "Solo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/robotium/solo/Solo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/robotium/solo/Solo$Config$ScreenshotFileType;
    }
.end annotation


# instance fields
.field public commandLogging:Z

.field public commandLoggingTag:Ljava/lang/String;

.field public screenshotFileType:Lcom/robotium/solo/Solo$Config$ScreenshotFileType;

.field public screenshotSavePath:Ljava/lang/String;

.field public shouldScroll:Z

.field public sleepDuration:I

.field public sleepMiniDuration:I

.field public timeout_large:I

.field public timeout_small:I

.field public trackActivities:Z

.field public useJavaScriptToClickWebElements:Z

.field public webFrame:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    .line 204
    iput v0, p0, Lcom/robotium/solo/Solo$Config;->timeout_small:I

    const/16 v0, 0x4e20

    .line 209
    iput v0, p0, Lcom/robotium/solo/Solo$Config;->timeout_large:I

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/Robotium-Screenshots/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/robotium/solo/Solo$Config;->screenshotSavePath:Ljava/lang/String;

    .line 219
    sget-object v0, Lcom/robotium/solo/Solo$Config$ScreenshotFileType;->JPEG:Lcom/robotium/solo/Solo$Config$ScreenshotFileType;

    iput-object v0, p0, Lcom/robotium/solo/Solo$Config;->screenshotFileType:Lcom/robotium/solo/Solo$Config$ScreenshotFileType;

    const/4 v0, 0x1

    .line 224
    iput-boolean v0, p0, Lcom/robotium/solo/Solo$Config;->shouldScroll:Z

    const/4 v1, 0x0

    .line 229
    iput-boolean v1, p0, Lcom/robotium/solo/Solo$Config;->useJavaScriptToClickWebElements:Z

    .line 245
    iput-boolean v0, p0, Lcom/robotium/solo/Solo$Config;->trackActivities:Z

    const-string v0, "document"

    .line 251
    iput-object v0, p0, Lcom/robotium/solo/Solo$Config;->webFrame:Ljava/lang/String;

    .line 257
    iput-boolean v1, p0, Lcom/robotium/solo/Solo$Config;->commandLogging:Z

    const-string v0, "Robotium"

    .line 263
    iput-object v0, p0, Lcom/robotium/solo/Solo$Config;->commandLoggingTag:Ljava/lang/String;

    const/16 v0, 0x1f4

    .line 268
    iput v0, p0, Lcom/robotium/solo/Solo$Config;->sleepDuration:I

    const/16 v0, 0x12c

    .line 273
    iput v0, p0, Lcom/robotium/solo/Solo$Config;->sleepMiniDuration:I

    return-void
.end method

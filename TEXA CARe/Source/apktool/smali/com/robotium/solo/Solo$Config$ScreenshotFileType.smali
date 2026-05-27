.class public final enum Lcom/robotium/solo/Solo$Config$ScreenshotFileType;
.super Ljava/lang/Enum;
.source "Solo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/robotium/solo/Solo$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScreenshotFileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/robotium/solo/Solo$Config$ScreenshotFileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/robotium/solo/Solo$Config$ScreenshotFileType;

.field public static final enum JPEG:Lcom/robotium/solo/Solo$Config$ScreenshotFileType;

.field public static final enum PNG:Lcom/robotium/solo/Solo$Config$ScreenshotFileType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 238
    new-instance v0, Lcom/robotium/solo/Solo$Config$ScreenshotFileType;

    const-string v1, "JPEG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/robotium/solo/Solo$Config$ScreenshotFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/robotium/solo/Solo$Config$ScreenshotFileType;->JPEG:Lcom/robotium/solo/Solo$Config$ScreenshotFileType;

    new-instance v1, Lcom/robotium/solo/Solo$Config$ScreenshotFileType;

    const-string v3, "PNG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/robotium/solo/Solo$Config$ScreenshotFileType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/robotium/solo/Solo$Config$ScreenshotFileType;->PNG:Lcom/robotium/solo/Solo$Config$ScreenshotFileType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/robotium/solo/Solo$Config$ScreenshotFileType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 237
    sput-object v3, Lcom/robotium/solo/Solo$Config$ScreenshotFileType;->$VALUES:[Lcom/robotium/solo/Solo$Config$ScreenshotFileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 237
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/robotium/solo/Solo$Config$ScreenshotFileType;
    .locals 1

    .line 237
    const-class v0, Lcom/robotium/solo/Solo$Config$ScreenshotFileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/robotium/solo/Solo$Config$ScreenshotFileType;

    return-object p0
.end method

.method public static values()[Lcom/robotium/solo/Solo$Config$ScreenshotFileType;
    .locals 1

    .line 237
    sget-object v0, Lcom/robotium/solo/Solo$Config$ScreenshotFileType;->$VALUES:[Lcom/robotium/solo/Solo$Config$ScreenshotFileType;

    invoke-virtual {v0}, [Lcom/robotium/solo/Solo$Config$ScreenshotFileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/robotium/solo/Solo$Config$ScreenshotFileType;

    return-object v0
.end method

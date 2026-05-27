.class public final enum Lcom/texa/carelib/care/impacts/CrashReportStatus;
.super Ljava/lang/Enum;
.source "CrashReportStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/care/impacts/CrashReportStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/care/impacts/CrashReportStatus;

.field public static final enum NotSupported:Lcom/texa/carelib/care/impacts/CrashReportStatus;

.field public static final enum NotValidatedOverThreshold:Lcom/texa/carelib/care/impacts/CrashReportStatus;

.field public static final enum Undefined:Lcom/texa/carelib/care/impacts/CrashReportStatus;

.field public static final enum Valid:Lcom/texa/carelib/care/impacts/CrashReportStatus;

.field public static final enum ValidSimulated:Lcom/texa/carelib/care/impacts/CrashReportStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 14
    new-instance v0, Lcom/texa/carelib/care/impacts/CrashReportStatus;

    const-string v1, "Undefined"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/care/impacts/CrashReportStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/care/impacts/CrashReportStatus;->Undefined:Lcom/texa/carelib/care/impacts/CrashReportStatus;

    .line 19
    new-instance v1, Lcom/texa/carelib/care/impacts/CrashReportStatus;

    const-string v3, "Valid"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/care/impacts/CrashReportStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/care/impacts/CrashReportStatus;->Valid:Lcom/texa/carelib/care/impacts/CrashReportStatus;

    .line 24
    new-instance v3, Lcom/texa/carelib/care/impacts/CrashReportStatus;

    const-string v5, "ValidSimulated"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/care/impacts/CrashReportStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/care/impacts/CrashReportStatus;->ValidSimulated:Lcom/texa/carelib/care/impacts/CrashReportStatus;

    .line 29
    new-instance v5, Lcom/texa/carelib/care/impacts/CrashReportStatus;

    const-string v7, "NotValidatedOverThreshold"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/texa/carelib/care/impacts/CrashReportStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/texa/carelib/care/impacts/CrashReportStatus;->NotValidatedOverThreshold:Lcom/texa/carelib/care/impacts/CrashReportStatus;

    .line 34
    new-instance v7, Lcom/texa/carelib/care/impacts/CrashReportStatus;

    const-string v9, "NotSupported"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/texa/carelib/care/impacts/CrashReportStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/texa/carelib/care/impacts/CrashReportStatus;->NotSupported:Lcom/texa/carelib/care/impacts/CrashReportStatus;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/texa/carelib/care/impacts/CrashReportStatus;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 9
    sput-object v9, Lcom/texa/carelib/care/impacts/CrashReportStatus;->$VALUES:[Lcom/texa/carelib/care/impacts/CrashReportStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/care/impacts/CrashReportStatus;
    .locals 1

    .line 9
    const-class v0, Lcom/texa/carelib/care/impacts/CrashReportStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/care/impacts/CrashReportStatus;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/care/impacts/CrashReportStatus;
    .locals 1

    .line 9
    sget-object v0, Lcom/texa/carelib/care/impacts/CrashReportStatus;->$VALUES:[Lcom/texa/carelib/care/impacts/CrashReportStatus;

    invoke-virtual {v0}, [Lcom/texa/carelib/care/impacts/CrashReportStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/care/impacts/CrashReportStatus;

    return-object v0
.end method

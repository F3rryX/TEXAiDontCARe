.class public final enum Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;
.super Ljava/lang/Enum;
.source "ServiceFirmwareDownloadProcedureStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;

.field public static final enum Idle:Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;

.field public static final enum Running:Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 16
    new-instance v0, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;

    const-string v1, "Idle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;->Idle:Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;

    .line 21
    new-instance v1, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;

    const-string v3, "Running"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;->Running:Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 11
    sput-object v3, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;->$VALUES:[Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;
    .locals 1

    .line 11
    const-class v0, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;
    .locals 1

    .line 11
    sget-object v0, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;->$VALUES:[Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;

    invoke-virtual {v0}, [Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;

    return-object v0
.end method

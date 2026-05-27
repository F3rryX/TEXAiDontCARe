.class public final enum Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;
.super Ljava/lang/Enum;
.source "DiagnosticConfigurationStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

.field public static final enum Idle:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

.field public static final enum Running:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

.field public static final enum Undef:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

.field public static final enum WaitingForEngineON:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 16
    new-instance v0, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    const-string v1, "Undef"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;->Undef:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    .line 21
    new-instance v1, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    const-string v3, "Idle"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;->Idle:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    .line 26
    new-instance v3, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    const-string v5, "Running"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;->Running:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    .line 31
    new-instance v5, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    const-string v7, "WaitingForEngineON"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;->WaitingForEngineON:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 11
    sput-object v7, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;->$VALUES:[Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;
    .locals 1

    .line 11
    const-class v0, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;
    .locals 1

    .line 11
    sget-object v0, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;->$VALUES:[Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    invoke-virtual {v0}, [Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    return-object v0
.end method

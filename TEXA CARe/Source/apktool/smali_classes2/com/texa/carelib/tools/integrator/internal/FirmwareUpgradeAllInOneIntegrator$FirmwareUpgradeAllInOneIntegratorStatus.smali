.class public final enum Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;
.super Ljava/lang/Enum;
.source "FirmwareUpgradeAllInOneIntegrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FirmwareUpgradeAllInOneIntegratorStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;

.field public static final enum Checking:Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;

.field public static final enum Downloading:Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;

.field public static final enum Terminated:Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;

.field public static final enum Undef:Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;

.field public static final enum Upgrading:Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 45
    new-instance v0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;

    const-string v1, "Undef"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;->Undef:Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;

    .line 50
    new-instance v1, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;

    const-string v3, "Checking"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;->Checking:Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;

    .line 55
    new-instance v3, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;

    const-string v5, "Downloading"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;->Downloading:Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;

    .line 60
    new-instance v5, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;

    const-string v7, "Upgrading"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;->Upgrading:Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;

    .line 65
    new-instance v7, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;

    const-string v9, "Terminated"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;->Terminated:Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 41
    sput-object v9, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;->$VALUES:[Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;
    .locals 1

    .line 41
    const-class v0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;
    .locals 1

    .line 41
    sget-object v0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;->$VALUES:[Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;

    invoke-virtual {v0}, [Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$FirmwareUpgradeAllInOneIntegratorStatus;

    return-object v0
.end method

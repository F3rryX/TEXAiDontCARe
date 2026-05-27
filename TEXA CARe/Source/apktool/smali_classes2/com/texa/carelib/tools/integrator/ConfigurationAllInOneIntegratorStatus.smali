.class public final enum Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;
.super Ljava/lang/Enum;
.source "ConfigurationAllInOneIntegratorStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

.field public static final enum AskConfirmation:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

.field public static final enum Checking:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

.field public static final enum Downloading:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

.field public static final enum Programming:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

.field public static final enum Terminated:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

.field public static final enum Undef:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

.field public static final enum WaitForEngineOn:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 13
    new-instance v0, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    const-string v1, "Undef"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;->Undef:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    .line 18
    new-instance v1, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    const-string v3, "Checking"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;->Checking:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    .line 23
    new-instance v3, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    const-string v5, "AskConfirmation"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;->AskConfirmation:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    .line 28
    new-instance v5, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    const-string v7, "Downloading"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;->Downloading:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    .line 33
    new-instance v7, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    const-string v9, "Programming"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;->Programming:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    .line 38
    new-instance v9, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    const-string v11, "WaitForEngineOn"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;->WaitForEngineOn:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    .line 43
    new-instance v11, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    const-string v13, "Terminated"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;->Terminated:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;->$VALUES:[Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;
    .locals 1

    .line 8
    const-class v0, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;
    .locals 1

    .line 8
    sget-object v0, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;->$VALUES:[Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    invoke-virtual {v0}, [Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    return-object v0
.end method

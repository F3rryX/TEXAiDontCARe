.class public final enum Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;
.super Ljava/lang/Enum;
.source "FirmwareUpgradePermission.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;

.field public static final enum NO:Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;

.field public static final enum UNDEF:Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;

.field public static final enum YES:Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 17
    new-instance v0, Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;

    const-string v1, "UNDEF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;->UNDEF:Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;

    .line 21
    new-instance v1, Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;

    const-string v3, "YES"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;->YES:Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;

    .line 25
    new-instance v3, Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;

    const-string v5, "NO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;->NO:Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 11
    sput-object v5, Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;->$VALUES:[Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;

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

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;
    .locals 1

    .line 11
    const-class v0, Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;
    .locals 1

    .line 11
    sget-object v0, Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;->$VALUES:[Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;

    invoke-virtual {v0}, [Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/care/accessory/FirmwareUpgradePermission;

    return-object v0
.end method

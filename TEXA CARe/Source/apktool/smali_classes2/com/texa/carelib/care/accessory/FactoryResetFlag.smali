.class public final enum Lcom/texa/carelib/care/accessory/FactoryResetFlag;
.super Ljava/lang/Enum;
.source "FactoryResetFlag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/care/accessory/FactoryResetFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/care/accessory/FactoryResetFlag;

.field public static final enum DiagnosticConfiguration:Lcom/texa/carelib/care/accessory/FactoryResetFlag;

.field public static final enum PairingTable:Lcom/texa/carelib/care/accessory/FactoryResetFlag;

.field public static final enum UserData:Lcom/texa/carelib/care/accessory/FactoryResetFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 43
    new-instance v0, Lcom/texa/carelib/care/accessory/FactoryResetFlag;

    const-string v1, "DiagnosticConfiguration"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/care/accessory/FactoryResetFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/care/accessory/FactoryResetFlag;->DiagnosticConfiguration:Lcom/texa/carelib/care/accessory/FactoryResetFlag;

    .line 47
    new-instance v1, Lcom/texa/carelib/care/accessory/FactoryResetFlag;

    const-string v3, "UserData"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/care/accessory/FactoryResetFlag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/care/accessory/FactoryResetFlag;->UserData:Lcom/texa/carelib/care/accessory/FactoryResetFlag;

    .line 51
    new-instance v3, Lcom/texa/carelib/care/accessory/FactoryResetFlag;

    const-string v5, "PairingTable"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/care/accessory/FactoryResetFlag;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/care/accessory/FactoryResetFlag;->PairingTable:Lcom/texa/carelib/care/accessory/FactoryResetFlag;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/texa/carelib/care/accessory/FactoryResetFlag;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 38
    sput-object v5, Lcom/texa/carelib/care/accessory/FactoryResetFlag;->$VALUES:[Lcom/texa/carelib/care/accessory/FactoryResetFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/care/accessory/FactoryResetFlag;
    .locals 1

    .line 38
    const-class v0, Lcom/texa/carelib/care/accessory/FactoryResetFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/care/accessory/FactoryResetFlag;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/care/accessory/FactoryResetFlag;
    .locals 1

    .line 38
    sget-object v0, Lcom/texa/carelib/care/accessory/FactoryResetFlag;->$VALUES:[Lcom/texa/carelib/care/accessory/FactoryResetFlag;

    invoke-virtual {v0}, [Lcom/texa/carelib/care/accessory/FactoryResetFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/care/accessory/FactoryResetFlag;

    return-object v0
.end method

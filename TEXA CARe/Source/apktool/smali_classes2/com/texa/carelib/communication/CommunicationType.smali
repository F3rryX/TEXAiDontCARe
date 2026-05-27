.class public final enum Lcom/texa/carelib/communication/CommunicationType;
.super Ljava/lang/Enum;
.source "CommunicationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/communication/CommunicationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/communication/CommunicationType;

.field public static final enum BLUETOOTH:Lcom/texa/carelib/communication/CommunicationType;

.field public static final enum MOCK:Lcom/texa/carelib/communication/CommunicationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 16
    new-instance v0, Lcom/texa/carelib/communication/CommunicationType;

    const-string v1, "MOCK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/communication/CommunicationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/communication/CommunicationType;->MOCK:Lcom/texa/carelib/communication/CommunicationType;

    .line 21
    new-instance v1, Lcom/texa/carelib/communication/CommunicationType;

    const-string v3, "BLUETOOTH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/communication/CommunicationType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/communication/CommunicationType;->BLUETOOTH:Lcom/texa/carelib/communication/CommunicationType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/texa/carelib/communication/CommunicationType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 11
    sput-object v3, Lcom/texa/carelib/communication/CommunicationType;->$VALUES:[Lcom/texa/carelib/communication/CommunicationType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/communication/CommunicationType;
    .locals 1

    .line 11
    const-class v0, Lcom/texa/carelib/communication/CommunicationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/communication/CommunicationType;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/communication/CommunicationType;
    .locals 1

    .line 11
    sget-object v0, Lcom/texa/carelib/communication/CommunicationType;->$VALUES:[Lcom/texa/carelib/communication/CommunicationType;

    invoke-virtual {v0}, [Lcom/texa/carelib/communication/CommunicationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/communication/CommunicationType;

    return-object v0
.end method

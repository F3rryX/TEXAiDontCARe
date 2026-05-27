.class public final enum Lcom/texa/carelib/webservices/FirmwareType;
.super Ljava/lang/Enum;
.source "FirmwareType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/webservices/FirmwareType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/webservices/FirmwareType;

.field public static final enum Main:Lcom/texa/carelib/webservices/FirmwareType;

.field public static final enum Service:Lcom/texa/carelib/webservices/FirmwareType;

.field public static final enum Undef:Lcom/texa/carelib/webservices/FirmwareType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 16
    new-instance v0, Lcom/texa/carelib/webservices/FirmwareType;

    const-string v1, "Undef"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/webservices/FirmwareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/webservices/FirmwareType;->Undef:Lcom/texa/carelib/webservices/FirmwareType;

    .line 20
    new-instance v1, Lcom/texa/carelib/webservices/FirmwareType;

    const-string v3, "Main"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/webservices/FirmwareType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/webservices/FirmwareType;->Main:Lcom/texa/carelib/webservices/FirmwareType;

    .line 24
    new-instance v3, Lcom/texa/carelib/webservices/FirmwareType;

    const-string v5, "Service"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/webservices/FirmwareType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/webservices/FirmwareType;->Service:Lcom/texa/carelib/webservices/FirmwareType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/texa/carelib/webservices/FirmwareType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 11
    sput-object v5, Lcom/texa/carelib/webservices/FirmwareType;->$VALUES:[Lcom/texa/carelib/webservices/FirmwareType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/webservices/FirmwareType;
    .locals 1

    .line 11
    const-class v0, Lcom/texa/carelib/webservices/FirmwareType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/webservices/FirmwareType;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/webservices/FirmwareType;
    .locals 1

    .line 11
    sget-object v0, Lcom/texa/carelib/webservices/FirmwareType;->$VALUES:[Lcom/texa/carelib/webservices/FirmwareType;

    invoke-virtual {v0}, [Lcom/texa/carelib/webservices/FirmwareType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/webservices/FirmwareType;

    return-object v0
.end method

.class public final enum Lcom/texa/carelib/webservices/TexaServiceType;
.super Ljava/lang/Enum;
.source "TexaServiceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/webservices/TexaServiceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/webservices/TexaServiceType;

.field public static final enum HTTP:Lcom/texa/carelib/webservices/TexaServiceType;

.field public static final enum MOCK:Lcom/texa/carelib/webservices/TexaServiceType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 16
    new-instance v0, Lcom/texa/carelib/webservices/TexaServiceType;

    const-string v1, "MOCK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/webservices/TexaServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/webservices/TexaServiceType;->MOCK:Lcom/texa/carelib/webservices/TexaServiceType;

    .line 20
    new-instance v1, Lcom/texa/carelib/webservices/TexaServiceType;

    const-string v3, "HTTP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/webservices/TexaServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/webservices/TexaServiceType;->HTTP:Lcom/texa/carelib/webservices/TexaServiceType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/texa/carelib/webservices/TexaServiceType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 11
    sput-object v3, Lcom/texa/carelib/webservices/TexaServiceType;->$VALUES:[Lcom/texa/carelib/webservices/TexaServiceType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/webservices/TexaServiceType;
    .locals 1

    .line 11
    const-class v0, Lcom/texa/carelib/webservices/TexaServiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/webservices/TexaServiceType;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/webservices/TexaServiceType;
    .locals 1

    .line 11
    sget-object v0, Lcom/texa/carelib/webservices/TexaServiceType;->$VALUES:[Lcom/texa/carelib/webservices/TexaServiceType;

    invoke-virtual {v0}, [Lcom/texa/carelib/webservices/TexaServiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/webservices/TexaServiceType;

    return-object v0
.end method

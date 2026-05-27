.class public final enum Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;
.super Ljava/lang/Enum;
.source "LedBehaviour.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;

.field public static final enum AlwaysOn:Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;

.field public static final enum Default:Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;

.field public static final enum Unknown:Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 10
    new-instance v0, Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;->Unknown:Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;

    .line 15
    new-instance v1, Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;

    const-string v3, "Default"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;->Default:Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;

    .line 20
    new-instance v3, Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;

    const-string v5, "AlwaysOn"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;->AlwaysOn:Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 6
    sput-object v5, Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;->$VALUES:[Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;
    .locals 1

    .line 6
    const-class v0, Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;
    .locals 1

    .line 6
    sget-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;->$VALUES:[Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;

    invoke-virtual {v0}, [Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;

    return-object v0
.end method

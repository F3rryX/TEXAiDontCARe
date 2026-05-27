.class public final enum Lcom/texa/careapp/model/AlarmStatus;
.super Ljava/lang/Enum;
.source "AlarmStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/careapp/model/AlarmStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/careapp/model/AlarmStatus;

.field public static final enum GREEN:Lcom/texa/careapp/model/AlarmStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IDLE"
    .end annotation
.end field

.field public static final enum RED:Lcom/texa/careapp/model/AlarmStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ACTIVE"
    .end annotation
.end field

.field public static final enum YELLOW:Lcom/texa/careapp/model/AlarmStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "WARNING"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 13
    new-instance v0, Lcom/texa/careapp/model/AlarmStatus;

    const-string v1, "RED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/careapp/model/AlarmStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/careapp/model/AlarmStatus;->RED:Lcom/texa/careapp/model/AlarmStatus;

    .line 16
    new-instance v1, Lcom/texa/careapp/model/AlarmStatus;

    const-string v3, "YELLOW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/careapp/model/AlarmStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/careapp/model/AlarmStatus;->YELLOW:Lcom/texa/careapp/model/AlarmStatus;

    .line 19
    new-instance v3, Lcom/texa/careapp/model/AlarmStatus;

    const-string v5, "GREEN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/careapp/model/AlarmStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/careapp/model/AlarmStatus;->GREEN:Lcom/texa/careapp/model/AlarmStatus;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/texa/careapp/model/AlarmStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 10
    sput-object v5, Lcom/texa/careapp/model/AlarmStatus;->$VALUES:[Lcom/texa/careapp/model/AlarmStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/careapp/model/AlarmStatus;
    .locals 1

    .line 10
    const-class v0, Lcom/texa/careapp/model/AlarmStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/model/AlarmStatus;

    return-object p0
.end method

.method public static values()[Lcom/texa/careapp/model/AlarmStatus;
    .locals 1

    .line 10
    sget-object v0, Lcom/texa/careapp/model/AlarmStatus;->$VALUES:[Lcom/texa/careapp/model/AlarmStatus;

    invoke-virtual {v0}, [Lcom/texa/careapp/model/AlarmStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/careapp/model/AlarmStatus;

    return-object v0
.end method

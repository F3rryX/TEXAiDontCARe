.class public final enum Lcom/texa/careapp/model/AlarmType;
.super Ljava/lang/Enum;
.source "AlarmType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/careapp/model/AlarmType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/careapp/model/AlarmType;

.field public static final enum ALTERNATOR_HIGH:Lcom/texa/careapp/model/AlarmType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ALTERNATOR_HIGH"
    .end annotation
.end field

.field public static final enum ALTERNATOR_LOW:Lcom/texa/careapp/model/AlarmType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ALTERNATOR_LOW"
    .end annotation
.end field

.field public static final enum BATTERY_STATE:Lcom/texa/careapp/model/AlarmType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BATTERY_STATE"
    .end annotation
.end field

.field public static final enum ENGINE_TEMP:Lcom/texa/careapp/model/AlarmType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ENGINE_TEMP"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 11
    new-instance v0, Lcom/texa/careapp/model/AlarmType;

    const-string v1, "ENGINE_TEMP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/careapp/model/AlarmType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/careapp/model/AlarmType;->ENGINE_TEMP:Lcom/texa/careapp/model/AlarmType;

    .line 13
    new-instance v1, Lcom/texa/careapp/model/AlarmType;

    const-string v3, "ALTERNATOR_LOW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/careapp/model/AlarmType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/careapp/model/AlarmType;->ALTERNATOR_LOW:Lcom/texa/careapp/model/AlarmType;

    .line 15
    new-instance v3, Lcom/texa/careapp/model/AlarmType;

    const-string v5, "ALTERNATOR_HIGH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/careapp/model/AlarmType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/careapp/model/AlarmType;->ALTERNATOR_HIGH:Lcom/texa/careapp/model/AlarmType;

    .line 17
    new-instance v5, Lcom/texa/careapp/model/AlarmType;

    const-string v7, "BATTERY_STATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/texa/careapp/model/AlarmType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/texa/careapp/model/AlarmType;->BATTERY_STATE:Lcom/texa/careapp/model/AlarmType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/texa/careapp/model/AlarmType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 10
    sput-object v7, Lcom/texa/careapp/model/AlarmType;->$VALUES:[Lcom/texa/careapp/model/AlarmType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/texa/careapp/model/AlarmType;
    .locals 1

    .line 10
    const-class v0, Lcom/texa/careapp/model/AlarmType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/model/AlarmType;

    return-object p0
.end method

.method public static values()[Lcom/texa/careapp/model/AlarmType;
    .locals 1

    .line 10
    sget-object v0, Lcom/texa/careapp/model/AlarmType;->$VALUES:[Lcom/texa/careapp/model/AlarmType;

    invoke-virtual {v0}, [Lcom/texa/careapp/model/AlarmType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/careapp/model/AlarmType;

    return-object v0
.end method

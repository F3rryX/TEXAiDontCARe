.class public final enum Lcom/texa/careapp/emergency/ContactType;
.super Ljava/lang/Enum;
.source "ContactType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/careapp/emergency/ContactType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/careapp/emergency/ContactType;

.field public static final enum AMBULANCE:Lcom/texa/careapp/emergency/ContactType;

.field public static final enum FIRE:Lcom/texa/careapp/emergency/ContactType;

.field public static final enum GENERAL:Lcom/texa/careapp/emergency/ContactType;

.field public static final enum POLICE:Lcom/texa/careapp/emergency/ContactType;

.field public static final enum STATE_POLICE:Lcom/texa/careapp/emergency/ContactType;

.field public static final enum USER_CELLPHONE:Lcom/texa/careapp/emergency/ContactType;

.field public static final enum USER_CELL_ALT_SOS:Lcom/texa/careapp/emergency/ContactType;

.field public static final enum USER_CELL_SOS:Lcom/texa/careapp/emergency/ContactType;

.field public static final enum USER_HOME:Lcom/texa/careapp/emergency/ContactType;

.field public static final enum USER_ROAD_SERVICE:Lcom/texa/careapp/emergency/ContactType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 10
    new-instance v0, Lcom/texa/careapp/emergency/ContactType;

    const-string v1, "GENERAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/careapp/emergency/ContactType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/careapp/emergency/ContactType;->GENERAL:Lcom/texa/careapp/emergency/ContactType;

    .line 11
    new-instance v1, Lcom/texa/careapp/emergency/ContactType;

    const-string v3, "POLICE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/careapp/emergency/ContactType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/careapp/emergency/ContactType;->POLICE:Lcom/texa/careapp/emergency/ContactType;

    .line 12
    new-instance v3, Lcom/texa/careapp/emergency/ContactType;

    const-string v5, "STATE_POLICE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/careapp/emergency/ContactType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/careapp/emergency/ContactType;->STATE_POLICE:Lcom/texa/careapp/emergency/ContactType;

    .line 13
    new-instance v5, Lcom/texa/careapp/emergency/ContactType;

    const-string v7, "FIRE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/texa/careapp/emergency/ContactType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/texa/careapp/emergency/ContactType;->FIRE:Lcom/texa/careapp/emergency/ContactType;

    .line 14
    new-instance v7, Lcom/texa/careapp/emergency/ContactType;

    const-string v9, "AMBULANCE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/texa/careapp/emergency/ContactType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/texa/careapp/emergency/ContactType;->AMBULANCE:Lcom/texa/careapp/emergency/ContactType;

    .line 15
    new-instance v9, Lcom/texa/careapp/emergency/ContactType;

    const-string v11, "USER_CELLPHONE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/texa/careapp/emergency/ContactType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/texa/careapp/emergency/ContactType;->USER_CELLPHONE:Lcom/texa/careapp/emergency/ContactType;

    .line 16
    new-instance v11, Lcom/texa/careapp/emergency/ContactType;

    const-string v13, "USER_CELL_ALT_SOS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/texa/careapp/emergency/ContactType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/texa/careapp/emergency/ContactType;->USER_CELL_ALT_SOS:Lcom/texa/careapp/emergency/ContactType;

    .line 17
    new-instance v13, Lcom/texa/careapp/emergency/ContactType;

    const-string v15, "USER_HOME"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/texa/careapp/emergency/ContactType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/texa/careapp/emergency/ContactType;->USER_HOME:Lcom/texa/careapp/emergency/ContactType;

    .line 18
    new-instance v15, Lcom/texa/careapp/emergency/ContactType;

    const-string v14, "USER_ROAD_SERVICE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/texa/careapp/emergency/ContactType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/texa/careapp/emergency/ContactType;->USER_ROAD_SERVICE:Lcom/texa/careapp/emergency/ContactType;

    .line 19
    new-instance v14, Lcom/texa/careapp/emergency/ContactType;

    const-string v12, "USER_CELL_SOS"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/texa/careapp/emergency/ContactType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/texa/careapp/emergency/ContactType;->USER_CELL_SOS:Lcom/texa/careapp/emergency/ContactType;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/texa/careapp/emergency/ContactType;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 8
    sput-object v12, Lcom/texa/careapp/emergency/ContactType;->$VALUES:[Lcom/texa/careapp/emergency/ContactType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/careapp/emergency/ContactType;
    .locals 1

    .line 8
    const-class v0, Lcom/texa/careapp/emergency/ContactType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/emergency/ContactType;

    return-object p0
.end method

.method public static values()[Lcom/texa/careapp/emergency/ContactType;
    .locals 1

    .line 8
    sget-object v0, Lcom/texa/careapp/emergency/ContactType;->$VALUES:[Lcom/texa/careapp/emergency/ContactType;

    invoke-virtual {v0}, [Lcom/texa/careapp/emergency/ContactType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/careapp/emergency/ContactType;

    return-object v0
.end method

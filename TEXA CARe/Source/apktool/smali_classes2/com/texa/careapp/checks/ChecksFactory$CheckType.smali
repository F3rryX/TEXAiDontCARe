.class public final enum Lcom/texa/careapp/checks/ChecksFactory$CheckType;
.super Ljava/lang/Enum;
.source "ChecksFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/checks/ChecksFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CheckType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/careapp/checks/ChecksFactory$CheckType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/careapp/checks/ChecksFactory$CheckType;

.field public static final enum CHECK_BLUETOOTH:Lcom/texa/careapp/checks/ChecksFactory$CheckType;

.field public static final enum CHECK_CARE_CONNECTION:Lcom/texa/careapp/checks/ChecksFactory$CheckType;

.field public static final enum CHECK_CURRENT_SERVICE:Lcom/texa/careapp/checks/ChecksFactory$CheckType;

.field public static final enum CHECK_GPS:Lcom/texa/careapp/checks/ChecksFactory$CheckType;

.field public static final enum CHECK_NETWORK:Lcom/texa/careapp/checks/ChecksFactory$CheckType;

.field public static final enum CHECK_USER_PHONE_NUMBER:Lcom/texa/careapp/checks/ChecksFactory$CheckType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 83
    new-instance v0, Lcom/texa/careapp/checks/ChecksFactory$CheckType;

    const-string v1, "CHECK_USER_PHONE_NUMBER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/careapp/checks/ChecksFactory$CheckType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/careapp/checks/ChecksFactory$CheckType;->CHECK_USER_PHONE_NUMBER:Lcom/texa/careapp/checks/ChecksFactory$CheckType;

    .line 84
    new-instance v1, Lcom/texa/careapp/checks/ChecksFactory$CheckType;

    const-string v3, "CHECK_GPS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/careapp/checks/ChecksFactory$CheckType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/careapp/checks/ChecksFactory$CheckType;->CHECK_GPS:Lcom/texa/careapp/checks/ChecksFactory$CheckType;

    .line 85
    new-instance v3, Lcom/texa/careapp/checks/ChecksFactory$CheckType;

    const-string v5, "CHECK_CARE_CONNECTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/careapp/checks/ChecksFactory$CheckType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/careapp/checks/ChecksFactory$CheckType;->CHECK_CARE_CONNECTION:Lcom/texa/careapp/checks/ChecksFactory$CheckType;

    .line 86
    new-instance v5, Lcom/texa/careapp/checks/ChecksFactory$CheckType;

    const-string v7, "CHECK_CURRENT_SERVICE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/texa/careapp/checks/ChecksFactory$CheckType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/texa/careapp/checks/ChecksFactory$CheckType;->CHECK_CURRENT_SERVICE:Lcom/texa/careapp/checks/ChecksFactory$CheckType;

    .line 87
    new-instance v7, Lcom/texa/careapp/checks/ChecksFactory$CheckType;

    const-string v9, "CHECK_NETWORK"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/texa/careapp/checks/ChecksFactory$CheckType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/texa/careapp/checks/ChecksFactory$CheckType;->CHECK_NETWORK:Lcom/texa/careapp/checks/ChecksFactory$CheckType;

    .line 88
    new-instance v9, Lcom/texa/careapp/checks/ChecksFactory$CheckType;

    const-string v11, "CHECK_BLUETOOTH"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/texa/careapp/checks/ChecksFactory$CheckType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/texa/careapp/checks/ChecksFactory$CheckType;->CHECK_BLUETOOTH:Lcom/texa/careapp/checks/ChecksFactory$CheckType;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/texa/careapp/checks/ChecksFactory$CheckType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 82
    sput-object v11, Lcom/texa/careapp/checks/ChecksFactory$CheckType;->$VALUES:[Lcom/texa/careapp/checks/ChecksFactory$CheckType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/careapp/checks/ChecksFactory$CheckType;
    .locals 1

    .line 82
    const-class v0, Lcom/texa/careapp/checks/ChecksFactory$CheckType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/checks/ChecksFactory$CheckType;

    return-object p0
.end method

.method public static values()[Lcom/texa/careapp/checks/ChecksFactory$CheckType;
    .locals 1

    .line 82
    sget-object v0, Lcom/texa/careapp/checks/ChecksFactory$CheckType;->$VALUES:[Lcom/texa/careapp/checks/ChecksFactory$CheckType;

    invoke-virtual {v0}, [Lcom/texa/careapp/checks/ChecksFactory$CheckType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/careapp/checks/ChecksFactory$CheckType;

    return-object v0
.end method

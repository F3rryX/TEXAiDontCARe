.class public final enum Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;
.super Ljava/lang/Enum;
.source "ServiceDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/model/ServiceDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DongleServiceStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

.field public static final enum ACTIVE:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "active"
    .end annotation
.end field

.field public static final enum AVAILABLE:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "available"
    .end annotation
.end field

.field public static final enum INACTIVE:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "inactive"
    .end annotation
.end field

.field public static final enum PENDING:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pending"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 247
    new-instance v0, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    const-string v1, "AVAILABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->AVAILABLE:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    .line 249
    new-instance v1, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    const-string v3, "ACTIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->ACTIVE:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    .line 251
    new-instance v3, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    const-string v5, "INACTIVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->INACTIVE:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    .line 253
    new-instance v5, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    const-string v7, "PENDING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->PENDING:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 246
    sput-object v7, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->$VALUES:[Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 246
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;
    .locals 1

    .line 246
    const-class v0, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    return-object p0
.end method

.method public static values()[Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;
    .locals 1

    .line 246
    sget-object v0, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->$VALUES:[Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    invoke-virtual {v0}, [Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    return-object v0
.end method

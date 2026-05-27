.class public final enum Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;
.super Ljava/lang/Enum;
.source "ServiceDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/model/ServiceDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DongleServiceId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

.field public static final enum OTHER:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "plus"
    .end annotation
.end field

.field public static final enum SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sos"
    .end annotation
.end field

.field public static final enum SOS_LIGHT:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sos_light"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 261
    new-instance v0, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    const-string v1, "SOS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    .line 262
    new-instance v1, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    const-string v3, "SOS_LIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS_LIGHT:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    .line 263
    new-instance v3, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    const-string v5, "OTHER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->OTHER:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 257
    sput-object v5, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->$VALUES:[Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 257
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;
    .locals 1

    .line 257
    const-class v0, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    return-object p0
.end method

.method public static values()[Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;
    .locals 1

    .line 257
    sget-object v0, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->$VALUES:[Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    invoke-virtual {v0}, [Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    return-object v0
.end method

.class public final enum Lcom/texa/carelib/webservices/VehicleConfigurationStatus;
.super Ljava/lang/Enum;
.source "VehicleConfigurationStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/webservices/VehicleConfigurationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

.field public static final enum FirstConfiguration:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

.field public static final enum NeedsUpdated:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

.field public static final enum Undefined:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

.field public static final enum Updated:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 17
    new-instance v0, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    const-string v1, "Undefined"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;->Undefined:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    .line 24
    new-instance v1, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    const-string v3, "FirstConfiguration"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;->FirstConfiguration:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    .line 31
    new-instance v3, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    const-string v5, "NeedsUpdated"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;->NeedsUpdated:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    .line 38
    new-instance v5, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    const-string v7, "Updated"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;->Updated:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 12
    sput-object v7, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;->$VALUES:[Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/webservices/VehicleConfigurationStatus;
    .locals 1

    .line 12
    const-class v0, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/webservices/VehicleConfigurationStatus;
    .locals 1

    .line 12
    sget-object v0, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;->$VALUES:[Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    invoke-virtual {v0}, [Lcom/texa/carelib/webservices/VehicleConfigurationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    return-object v0
.end method

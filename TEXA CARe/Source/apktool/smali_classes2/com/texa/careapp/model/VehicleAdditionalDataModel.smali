.class public Lcom/texa/careapp/model/VehicleAdditionalDataModel;
.super Lcom/activeandroid/Model;
.source "VehicleAdditionalDataModel.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "VehicleAdditionalData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/model/VehicleAdditionalDataModel$VehicleAdditionalDataType;
    }
.end annotation


# static fields
.field public static final BATTERY_STATE_TYPE:Ljava/lang/String; = "BATTERY_STATE"

.field public static final COLUMN_TYPE:Ljava/lang/String; = "type"

.field public static final COLUMN_VEHICLE:Ljava/lang/String; = "Vehicle"

.field public static final LAST_LOCATION_TYPE:Ljava/lang/String; = "LAST_LOCATION"

.field public static final TABLE_VEHICLE_ADDITIONAL_DATA:Ljava/lang/String; = "VehicleAdditionalData"

.field private static final TAG:Ljava/lang/String; = "VehicleAdditionalDataModel"


# instance fields
.field private type:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "type"
    .end annotation
.end field

.field private value:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation
.end field

.field private vehicle:Lcom/texa/careapp/model/VehicleModel;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Vehicle"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleAdditionalDataModel;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleAdditionalDataModel;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getVehicle()Lcom/texa/careapp/model/VehicleModel;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleAdditionalDataModel;->vehicle:Lcom/texa/careapp/model/VehicleModel;

    return-object v0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleAdditionalDataModel;->type:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleAdditionalDataModel;->value:Ljava/lang/String;

    return-void
.end method

.method public setVehicle(Lcom/texa/careapp/model/VehicleModel;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleAdditionalDataModel;->vehicle:Lcom/texa/careapp/model/VehicleModel;

    return-void
.end method

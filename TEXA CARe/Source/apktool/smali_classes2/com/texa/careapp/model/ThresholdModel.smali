.class public Lcom/texa/careapp/model/ThresholdModel;
.super Lcom/activeandroid/Model;
.source "ThresholdModel.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "Thresholds"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/model/ThresholdModel$Type;
    }
.end annotation


# static fields
.field public static final COLUMN_SYNC_NEEDED:Ljava/lang/String; = "sync_needed"

.field public static final COLUMN_TYPE:Ljava/lang/String; = "type"

.field public static final COLUMN_VEHICLE:Ljava/lang/String; = "vehicle"

.field public static final TABLE_NAME:Ljava/lang/String; = "Thresholds"

.field public static final TYPE_DESCRIPTION:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/texa/careapp/model/ThresholdModel$Type;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_UNEDITABLE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ThresholdModel$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private date:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private dateInterval:Ljava/lang/Integer;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private insuranceId:Ljava/lang/Integer;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private odometer:Ljava/lang/Integer;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private syncNeeded:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "sync_needed"
    .end annotation
.end field

.field private type:Lcom/texa/careapp/model/ThresholdModel$Type;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "type"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private vehicleModel:Lcom/texa/careapp/model/VehicleModel;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "vehicle"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/texa/careapp/model/ThresholdModel;->TYPE_DESCRIPTION:Ljava/util/HashMap;

    .line 94
    sget-object v1, Lcom/texa/careapp/model/ThresholdModel$Type;->INSPECTION:Lcom/texa/careapp/model/ThresholdModel$Type;

    const v2, 0x7f110cdf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v1, Lcom/texa/careapp/model/ThresholdModel$Type;->TYRES_FITTING:Lcom/texa/careapp/model/ThresholdModel$Type;

    const v2, 0x7f110ce6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v1, Lcom/texa/careapp/model/ThresholdModel$Type;->TYRES_SWAP:Lcom/texa/careapp/model/ThresholdModel$Type;

    const v2, 0x7f110ce7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v1, Lcom/texa/careapp/model/ThresholdModel$Type;->INSURANCE_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    const v2, 0x7f110ce0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v1, Lcom/texa/careapp/model/ThresholdModel$Type;->TAX_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    const v2, 0x7f110ce5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v1, Lcom/texa/careapp/model/ThresholdModel$Type;->INSURANCE_2_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    const v2, 0x7f110ce1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v1, Lcom/texa/careapp/model/ThresholdModel$Type;->EXHAUST_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    const v2, 0x7f110cd9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v1, Lcom/texa/careapp/model/ThresholdModel$Type;->AC_SUBSCR_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    const v2, 0x7f110cd7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v1, Lcom/texa/careapp/model/ThresholdModel$Type;->PARK_SUBSCR_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    const v2, 0x7f110ce4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v1, Lcom/texa/careapp/model/ThresholdModel$Type;->GARAGE_RENT_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    const v2, 0x7f110cda

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v1, Lcom/texa/careapp/model/ThresholdModel$Type;->INS_PAYM_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    const v2, 0x7f110cde

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v1, Lcom/texa/careapp/model/ThresholdModel$Type;->INS_2_PAYM_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    const v2, 0x7f110cdd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v1, Lcom/texa/careapp/model/ThresholdModel$Type;->CAR_PAYM_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    const v2, 0x7f110cd8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v1, Lcom/texa/careapp/model/ThresholdModel$Type;->HWY_PASS_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    const v2, 0x7f110cdc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v1, Lcom/texa/careapp/model/ThresholdModel$Type;->ZTL_PASS_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    const v2, 0x7f110ce9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v1, Lcom/texa/careapp/model/ThresholdModel$Type;->LICENCE:Lcom/texa/careapp/model/ThresholdModel$Type;

    const v2, 0x7f110ce2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/texa/careapp/model/ThresholdModel;->TYPE_UNEDITABLE:Ljava/util/List;

    .line 121
    sget-object v1, Lcom/texa/careapp/model/ThresholdModel$Type;->SERVICE:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v1, Lcom/texa/careapp/model/ThresholdModel$Type;->GPL_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v1, Lcom/texa/careapp/model/ThresholdModel$Type;->METH_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v1, Lcom/texa/careapp/model/ThresholdModel$Type;->WARRANTY_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/texa/careapp/model/ThresholdModel;->syncNeeded:Z

    return-void
.end method

.method public static from(Lcom/texa/careapp/networking/response/VehicleResponse$Threshold;)V
    .locals 2

    .line 74
    new-instance v0, Lcom/texa/careapp/model/ThresholdModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/ThresholdModel;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/texa/careapp/networking/response/VehicleResponse$Threshold;->date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ThresholdModel;->setDate(Ljava/util/Date;)V

    .line 76
    iget-object p0, p0, Lcom/texa/careapp/networking/response/VehicleResponse$Threshold;->odometer:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/ThresholdModel;->setOdometer(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/texa/careapp/model/ThresholdModel;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getDateInterval()Ljava/lang/Integer;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/texa/careapp/model/ThresholdModel;->dateInterval:Ljava/lang/Integer;

    return-object v0
.end method

.method public getInsuranceId()Ljava/lang/Integer;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/texa/careapp/model/ThresholdModel;->insuranceId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOdometer()Ljava/lang/Integer;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/texa/careapp/model/ThresholdModel;->odometer:Ljava/lang/Integer;

    return-object v0
.end method

.method public getType()Lcom/texa/careapp/model/ThresholdModel$Type;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/texa/careapp/model/ThresholdModel;->type:Lcom/texa/careapp/model/ThresholdModel$Type;

    return-object v0
.end method

.method public getVehicleModel()Lcom/texa/careapp/model/VehicleModel;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/texa/careapp/model/ThresholdModel;->vehicleModel:Lcom/texa/careapp/model/VehicleModel;

    return-object v0
.end method

.method public isSyncNeeded()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/texa/careapp/model/ThresholdModel;->syncNeeded:Z

    return v0
.end method

.method public markAsSynced()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/careapp/exceptions/DatabaseIOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/texa/careapp/model/ThresholdModel;->syncNeeded:Z

    .line 81
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    return-void
.end method

.method public saveForSync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/careapp/exceptions/DatabaseIOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/texa/careapp/model/ThresholdModel;->syncNeeded:Z

    .line 87
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/texa/careapp/model/ThresholdModel;->date:Ljava/util/Date;

    return-void
.end method

.method public setDateInterval(Ljava/lang/Integer;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/texa/careapp/model/ThresholdModel;->dateInterval:Ljava/lang/Integer;

    return-void
.end method

.method public setInsuranceId(Ljava/lang/Integer;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/texa/careapp/model/ThresholdModel;->insuranceId:Ljava/lang/Integer;

    return-void
.end method

.method public setOdometer(Ljava/lang/Integer;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/texa/careapp/model/ThresholdModel;->odometer:Ljava/lang/Integer;

    return-void
.end method

.method public setSyncNeeded(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/texa/careapp/model/ThresholdModel;->syncNeeded:Z

    return-void
.end method

.method public setType(Lcom/texa/careapp/model/ThresholdModel$Type;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/texa/careapp/model/ThresholdModel;->type:Lcom/texa/careapp/model/ThresholdModel$Type;

    return-void
.end method

.method public setVehicleModel(Lcom/texa/careapp/model/VehicleModel;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/texa/careapp/model/ThresholdModel;->vehicleModel:Lcom/texa/careapp/model/VehicleModel;

    return-void
.end method

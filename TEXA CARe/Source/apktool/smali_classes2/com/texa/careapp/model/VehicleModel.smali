.class public Lcom/texa/careapp/model/VehicleModel;
.super Lcom/activeandroid/Model;
.source "VehicleModel.java"

# interfaces
.implements Lcom/texa/careapp/app/onboarding/IVehicleModel;


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "Vehicles"
.end annotation


# static fields
.field private static ALARM_COLLECTION_TYPE:Ljava/lang/reflect/Type; = null

.field private static final COLUMN_ALARMS:Ljava/lang/String; = "alarms"

.field private static final COLUMN_COSTUMER_AVAILABILITY:Ljava/lang/String; = "costumer_availability"

.field public static final COLUMN_DONGLE:Ljava/lang/String; = "Dongle"

.field public static final COLUMN_HARDWARE_ID:Ljava/lang/String; = "hwid"

.field public static final COLUMN_PLATE:Ljava/lang/String; = "plate"

.field public static final COLUMN_SYNC_NEEDED:Ljava/lang/String; = "sync_needed"

.field public static final COLUMN_UID:Ljava/lang/String; = "uid"

.field public static final COLUMN_USER:Ljava/lang/String; = "User"

.field public static final TABLE_VEHICLES:Ljava/lang/String; = "Vehicles"

.field private static final TAG:Ljava/lang/String; = "VehicleModel"


# instance fields
.field private alarmsJson:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "alarms"
    .end annotation
.end field

.field private brandName:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private color:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public customerAvailability:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "costumer_availability"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "customer_availability"
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private haveAdvancedDiagnosis:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "proprietary_diagnosis"
    .end annotation
.end field

.field private haveAutomaticTransmission:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "auto_drive"
    .end annotation
.end field

.field private hwid:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "hwid"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private isConfirmedByUser:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation
.end field

.field private isCurrentVehicle:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_current_vehicle"
    .end annotation
.end field

.field private isSelectedVehicle:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_selected_vehicle"
    .end annotation
.end field

.field private mGson:Lcom/google/gson/Gson;

.field private modelName:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private nation:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nation"
    .end annotation
.end field

.field private odometer:Ljava/lang/Integer;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private plate:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private registrationDate:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private rescueContact:Ljava/lang/String;
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

.field private tyresTypeId:Ljava/lang/Integer;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tyres_type_id"
    .end annotation
.end field

.field private uid:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "uid"
        unique = true
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private vin:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vin"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lcom/texa/careapp/model/VehicleModel$1;

    invoke-direct {v0}, Lcom/texa/careapp/model/VehicleModel$1;-><init>()V

    .line 72
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sput-object v0, Lcom/texa/careapp/model/VehicleModel;->ALARM_COLLECTION_TYPE:Ljava/lang/reflect/Type;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 202
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    const-string v0, ""

    .line 132
    iput-object v0, p0, Lcom/texa/careapp/model/VehicleModel;->description:Ljava/lang/String;

    .line 138
    iput-object v0, p0, Lcom/texa/careapp/model/VehicleModel;->nation:Ljava/lang/String;

    .line 203
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->buildGsonInstance()V

    .line 205
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v0}, Lcom/texa/careapp/model/VehicleModel;->setAlarms(Ljava/util/HashSet;)V

    return-void
.end method

.method public static from(Lcom/texa/careapp/model/VehicleModelResponseEntity;)Lcom/texa/careapp/model/VehicleModel;
    .locals 1

    .line 249
    new-instance v0, Lcom/texa/careapp/model/VehicleModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/VehicleModel;-><init>()V

    .line 251
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModelResponseEntity;->getVehicleId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/VehicleModel;->setUid(Ljava/lang/String;)V

    return-object v0
.end method

.method public static from(Lcom/texa/careapp/networking/response/VehicleResponse;)Lcom/texa/careapp/model/VehicleModel;
    .locals 3

    .line 215
    iget-object p0, p0, Lcom/texa/careapp/networking/response/VehicleResponse;->vehicle:Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 221
    :cond_0
    new-instance v0, Lcom/texa/careapp/model/VehicleModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/VehicleModel;-><init>()V

    .line 222
    iget-object v1, p0, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->selectionData:Lcom/texa/careapp/networking/response/SelectionDataResponse;

    if-eqz v1, :cond_2

    .line 224
    invoke-virtual {v1}, Lcom/texa/careapp/networking/response/SelectionDataResponse;->getBrand()Lcom/texa/careapp/utils/ValueOrder;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 225
    invoke-virtual {v1}, Lcom/texa/careapp/networking/response/SelectionDataResponse;->getBrand()Lcom/texa/careapp/utils/ValueOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/utils/ValueOrder;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/texa/careapp/model/VehicleModel;->setBrandName(Ljava/lang/String;)V

    .line 228
    :cond_1
    invoke-virtual {v1}, Lcom/texa/careapp/networking/response/SelectionDataResponse;->getModel()Lcom/texa/careapp/utils/ValueOrder;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 229
    invoke-virtual {v1}, Lcom/texa/careapp/networking/response/SelectionDataResponse;->getModel()Lcom/texa/careapp/utils/ValueOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/careapp/utils/ValueOrder;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleModel;->setModelName(Ljava/lang/String;)V

    .line 233
    :cond_2
    iget-object v1, p0, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->vehicleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleModel;->setUid(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->plate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleModel;->setPlate(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->odometer:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleModel;->setOdometer(Ljava/lang/Integer;)V

    .line 236
    iget-object v1, p0, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->hwid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleModel;->setHwid(Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->registrationDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleModel;->setRegistrationDate(Ljava/util/Date;)V

    .line 238
    iget-object v1, p0, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->color:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleModel;->setColor(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->tyredTypeId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleModel;->setTyresTypeId(Ljava/lang/Integer;)V

    .line 240
    iget-boolean v1, p0, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->haveAdvancedDiagnosis:Z

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleModel;->setHaveAdvancedDiagnosis(Z)V

    .line 241
    iget-boolean v1, p0, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->haveAutomaticTransmission:Z

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleModel;->setHaveAutomaticTransmission(Z)V

    .line 242
    iget-boolean p0, p0, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->customerAvailability:Z

    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/VehicleModel;->setCustomerAvailability(Z)V

    return-object v0
.end method

.method protected static getFormattedValue(JLcom/texa/carelib/care/vehicle/Vehicle;)Ljava/lang/String;
    .locals 0

    .line 267
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/texa/carelib/care/vehicle/Vehicle;->getFormattedNumericValue(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 269
    sget-object p1, Lcom/texa/careapp/model/VehicleModel;->TAG:Ljava/lang/String;

    const-string p2, "got exception"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, ""

    return-object p0
.end method

.method protected static getNumericValue(JLcom/texa/carelib/care/vehicle/Vehicle;)I
    .locals 0

    .line 258
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/texa/carelib/care/vehicle/Vehicle;->getNumericValue(Ljava/lang/Long;)D

    move-result-wide p0
    :try_end_0
    .catch Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException; {:try_start_0 .. :try_end_0} :catch_0

    double-to-int p0, p0

    return p0

    :catch_0
    move-exception p0

    .line 260
    sget-object p1, Lcom/texa/careapp/model/VehicleModel;->TAG:Ljava/lang/String;

    const-string p2, "got exception"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method private selectPrioritySchedule(Lcom/texa/careapp/model/VehicleScheduleModel;Lcom/texa/careapp/model/VehicleScheduleModel;I)Lcom/texa/careapp/model/VehicleScheduleModel;
    .locals 2

    const/4 v0, 0x0

    .line 362
    :try_start_0
    new-instance v1, Lcom/texa/careapp/utils/ScheduleHelper;

    invoke-direct {v1, p1, p2, p3}, Lcom/texa/careapp/utils/ScheduleHelper;-><init>(Lcom/texa/careapp/model/VehicleScheduleModel;Lcom/texa/careapp/model/VehicleScheduleModel;I)V

    .line 364
    invoke-virtual {v1}, Lcom/texa/careapp/utils/ScheduleHelper;->parse()Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 366
    iget-object p3, p3, Lcom/texa/careapp/utils/ScheduleHelper$ServiceScheduleInfo;->unit:Lcom/texa/careapp/utils/MeasureUnit;

    sget-object v0, Lcom/texa/careapp/utils/MeasureUnit;->DAYS:Lcom/texa/careapp/utils/MeasureUnit;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p3, v0, :cond_0

    return-object p2

    :cond_0
    return-object p1

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "Schedule priority Warning odo schedule and km schedule both null"

    .line 376
    invoke-static {p1, p3, p2}, Ltimber/log/Timber;->i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public addSchedule(Lcom/texa/careapp/model/VehicleScheduleModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/careapp/exceptions/DatabaseIOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 561
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleScheduleModel;->getUid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 562
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/careapp/model/VehicleScheduleModel;->setUid(Ljava/lang/String;)V

    .line 565
    :cond_0
    invoke-virtual {p1, p0}, Lcom/texa/careapp/model/VehicleScheduleModel;->setVehicle(Lcom/texa/careapp/model/VehicleModel;)V

    .line 566
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    return-void
.end method

.method public buildGsonInstance()V
    .locals 1

    .line 209
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->buildGsonInstance()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/model/VehicleModel;->mGson:Lcom/google/gson/Gson;

    return-void
.end method

.method public countSchedules()I
    .locals 5

    .line 612
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/VehicleScheduleModel;

    .line 613
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/texa/careapp/model/VehicleScheduleModel;

    .line 614
    invoke-static {v2}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Vehicle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getId()Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 615
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->count()I

    move-result v0

    return v0
.end method

.method public deleteAdditionalDataValueByType(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/careapp/exceptions/DatabaseIOException;
        }
    .end annotation

    .line 807
    invoke-virtual {p0, p1}, Lcom/texa/careapp/model/VehicleModel;->getAdditionalDataByType(Ljava/lang/String;)Lcom/texa/careapp/model/VehicleAdditionalDataModel;

    move-result-object p1

    const/4 v0, 0x0

    .line 808
    invoke-virtual {p1, v0}, Lcom/texa/careapp/model/VehicleAdditionalDataModel;->setValue(Ljava/lang/String;)V

    .line 809
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    return-void
.end method

.method protected deleteAllDtcs()V
    .locals 5

    .line 529
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/texa/careapp/model/DtcModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/texa/careapp/model/DtcModel;

    .line 530
    invoke-static {v2}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Vehicle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getId()Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 531
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    return-void
.end method

.method public deleteLamps()V
    .locals 5

    .line 409
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/texa/careapp/app/errorsDTC/LampStatus;

    .line 410
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/texa/careapp/app/errorsDTC/LampStatus;

    .line 411
    invoke-static {v2}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "vehicle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getId()Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 412
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    return-void
.end method

.method public deleteSchedules()V
    .locals 5

    .line 619
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 620
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/texa/careapp/model/VehicleScheduleModel;

    .line 621
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/texa/careapp/model/VehicleScheduleModel;

    .line 622
    invoke-static {v2}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Vehicle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getId()Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 623
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    :cond_0
    return-void
.end method

.method public formatModel()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleModel;->modelName:Ljava/lang/String;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatOdometer(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 287
    iget-object v1, p0, Lcom/texa/careapp/model/VehicleModel;->odometer:Ljava/lang/Integer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f110b21

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getActiveLamps()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/errorsDTC/LampStatus;",
            ">;"
        }
    .end annotation

    .line 388
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/app/errorsDTC/LampStatus;

    .line 389
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    .line 391
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 390
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getId()Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "LampStatus.vehicle=?"

    invoke-virtual {v0, v4, v3}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, v5

    const-string v4, "status = ? "

    .line 391
    invoke-virtual {v0, v4, v3}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v5

    const-string v2, "filtered = ?"

    .line 392
    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "dataId"

    .line 393
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdditionalDataByType(Ljava/lang/String;)Lcom/texa/careapp/model/VehicleAdditionalDataModel;
    .locals 6

    .line 757
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/VehicleAdditionalDataModel;

    .line 758
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/texa/careapp/model/VehicleAdditionalDataModel;

    .line 759
    invoke-static {v2}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Vehicle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getId()Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    const-string/jumbo v2, "type=?"

    .line 760
    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 761
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/VehicleAdditionalDataModel;

    if-nez v0, :cond_0

    .line 764
    new-instance v0, Lcom/texa/careapp/model/VehicleAdditionalDataModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/VehicleAdditionalDataModel;-><init>()V

    .line 765
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/VehicleAdditionalDataModel;->setVehicle(Lcom/texa/careapp/model/VehicleModel;)V

    .line 766
    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/VehicleAdditionalDataModel;->setType(Ljava/lang/String;)V

    .line 768
    :try_start_0
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "Could not save vehicle additional data in database."

    .line 770
    invoke-static {p1, v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getAlarms()Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/texa/careapp/model/VehicleAlarm;",
            ">;"
        }
    .end annotation

    .line 724
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleModel;->mGson:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/texa/careapp/model/VehicleModel;->alarmsJson:Ljava/lang/String;

    sget-object v2, Lcom/texa/careapp/model/VehicleModel;->ALARM_COLLECTION_TYPE:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 727
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/model/VehicleAlarm;

    .line 728
    invoke-static {v3}, Lcom/texa/careapp/utils/Utils;->isValidVehicleAlarm(Lcom/texa/careapp/model/VehicleAlarm;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 729
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 735
    invoke-virtual {p0, v0}, Lcom/texa/careapp/model/VehicleModel;->setAlarms(Ljava/util/HashSet;)V

    .line 736
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->save()Ljava/lang/Long;

    :cond_2
    return-object v0
.end method

.method public getAlarmsJson()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleModel;->alarmsJson:Ljava/lang/String;

    return-object v0
.end method

.method public getBrandName()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleModel;->brandName:Ljava/lang/String;

    return-object v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleModel;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleModel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDtcs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/DtcModel;",
            ">;"
        }
    .end annotation

    .line 542
    :try_start_0
    const-class v0, Lcom/texa/careapp/model/DtcModel;

    const-string v1, "Vehicle"

    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/model/VehicleModel;->getMany(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getDtcs exception"

    .line 547
    invoke-static {v0, v2, v1}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 548
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->deleteAllDtcs()V

    .line 549
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFilterParameters()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleParam;",
            ">;"
        }
    .end annotation

    .line 492
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/VehicleParam;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 493
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getId()Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "vehicle = ?"

    invoke-virtual {v0, v3, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/32 v5, 0x20001

    .line 494
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "(dataId = ?"

    invoke-virtual {v0, v3, v2}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/32 v5, 0x20002

    .line 495
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "dataId = ?"

    invoke-virtual {v0, v3, v2}, Lcom/activeandroid/query/From;->or(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/32 v5, 0x20000

    .line 496
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v0, v3, v2}, Lcom/activeandroid/query/From;->or(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/32 v5, 0x40000

    .line 497
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v0, v3, v2}, Lcom/activeandroid/query/From;->or(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/32 v5, 0x40001

    .line 498
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v0, v3, v2}, Lcom/activeandroid/query/From;->or(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-wide/32 v2, 0x499602d2

    .line 499
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "dataId = ?)"

    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->or(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 500
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderId()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public getHwid()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleModel;->hwid:Ljava/lang/String;

    return-object v0
.end method

.method public getLampById(Ljava/lang/Long;)Lcom/texa/careapp/app/errorsDTC/LampStatus;
    .locals 6

    .line 460
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/app/errorsDTC/LampStatus;

    .line 461
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/texa/careapp/app/errorsDTC/LampStatus;

    .line 462
    invoke-static {v2}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "vehicle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getId()Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    const-string p1, "dataId = ? "

    .line 463
    invoke-virtual {v0, p1, v1}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    .line 464
    invoke-virtual {p1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/app/errorsDTC/LampStatus;

    return-object p1
.end method

.method public getLamps()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/errorsDTC/LampStatus;",
            ">;"
        }
    .end annotation

    .line 402
    const-class v0, Lcom/texa/careapp/app/errorsDTC/LampStatus;

    const-string/jumbo v1, "vehicle"

    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/model/VehicleModel;->getMany(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLastLocation()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    const-string v0, "LAST_LOCATION"

    .line 819
    invoke-virtual {p0, v0}, Lcom/texa/careapp/model/VehicleModel;->getAdditionalDataByType(Ljava/lang/String;)Lcom/texa/careapp/model/VehicleAdditionalDataModel;

    move-result-object v0

    .line 821
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleAdditionalDataModel;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 822
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleAdditionalDataModel;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "||"

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 823
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 824
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 825
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "LATITUDE_POSITION"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 826
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "LONGITUDE_POSITION"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    .line 827
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v2, "TIMESTAMP_POSITION"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleModel;->modelName:Ljava/lang/String;

    return-object v0
.end method

.method public getNation()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleModel;->nation:Ljava/lang/String;

    return-object v0
.end method

.method public getOdometer()Ljava/lang/Integer;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleModel;->odometer:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOrAddParameter(J)Lcom/texa/careapp/model/VehicleParam;
    .locals 1

    .line 468
    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/model/VehicleModel;->getVehicleParamById(J)Lcom/texa/careapp/model/VehicleParam;

    move-result-object v0

    if-nez v0, :cond_0

    .line 471
    new-instance v0, Lcom/texa/careapp/model/VehicleParam;

    invoke-direct {v0}, Lcom/texa/careapp/model/VehicleParam;-><init>()V

    .line 472
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/VehicleParam;->setVehicleModel(Lcom/texa/careapp/model/VehicleModel;)V

    .line 473
    invoke-virtual {v0, p1, p2}, Lcom/texa/careapp/model/VehicleParam;->setDataId(J)V

    :cond_0
    return-object v0
.end method

.method public getParameter(J)Lcom/texa/careapp/model/VehicleParam;
    .locals 6

    .line 650
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/VehicleParam;

    .line 651
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/texa/careapp/model/VehicleParam;

    .line 652
    invoke-static {v2}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "vehicle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getId()Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 653
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v5

    const-string p1, "dataId=?"

    invoke-virtual {v0, p1, v1}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    .line 654
    invoke-virtual {p1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/model/VehicleParam;

    return-object p1
.end method

.method public getParameters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleParam;",
            ">;"
        }
    .end annotation

    .line 488
    const-class v0, Lcom/texa/careapp/model/VehicleParam;

    const-string/jumbo v1, "vehicle"

    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/model/VehicleModel;->getMany(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPlate()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleModel;->plate:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistrationDate()Ljava/util/Date;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleModel;->registrationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getRescueContact()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleModel;->rescueContact:Ljava/lang/String;

    return-object v0
.end method

.method public getSchedule(Lcom/texa/careapp/model/ScheduleType;)Lcom/texa/careapp/model/VehicleScheduleModel;
    .locals 6

    .line 628
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getId()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 629
    :cond_0
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/VehicleScheduleModel;

    .line 630
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/texa/careapp/model/VehicleScheduleModel;

    .line 631
    invoke-static {v2}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Vehicle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getId()Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    const-string/jumbo p1, "type=?"

    .line 632
    invoke-virtual {v0, p1, v1}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    .line 633
    invoke-virtual {p1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/model/VehicleScheduleModel;

    return-object p1
.end method

.method public getScheduleCached(Lcom/texa/careapp/model/ScheduleType;)Lcom/texa/careapp/model/IScheduleModel;
    .locals 2

    .line 599
    invoke-virtual {p0, p1}, Lcom/texa/careapp/model/VehicleModel;->getSchedule(Lcom/texa/careapp/model/ScheduleType;)Lcom/texa/careapp/model/VehicleScheduleModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 602
    new-instance v0, Lcom/texa/careapp/model/VehicleScheduleModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/VehicleScheduleModel;-><init>()V

    .line 603
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleScheduleModel;->setUid(Ljava/lang/String;)V

    .line 604
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/VehicleScheduleModel;->setVehicle(Lcom/texa/careapp/model/VehicleModel;)V

    .line 605
    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/VehicleScheduleModel;->setType(Lcom/texa/careapp/model/ScheduleType;)V

    :cond_0
    return-object v0
.end method

.method public getSchedules()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleScheduleModel;",
            ">;"
        }
    .end annotation

    .line 299
    const-class v0, Lcom/texa/careapp/model/VehicleScheduleModel;

    const-string v1, "Vehicle"

    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/model/VehicleModel;->getMany(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSchedulesForUser(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/IScheduleModel;",
            ">;"
        }
    .end annotation

    .line 309
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 310
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getSchedules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/IScheduleModel;

    .line 316
    invoke-interface {v1}, Lcom/texa/careapp/model/IScheduleModel;->getType()Lcom/texa/careapp/model/ScheduleType;

    move-result-object v2

    sget-object v3, Lcom/texa/careapp/model/ScheduleType;->SERVICE_TIME:Lcom/texa/careapp/model/ScheduleType;

    if-eq v2, v3, :cond_0

    .line 317
    invoke-interface {v1}, Lcom/texa/careapp/model/IScheduleModel;->getType()Lcom/texa/careapp/model/ScheduleType;

    move-result-object v2

    sget-object v3, Lcom/texa/careapp/model/ScheduleType;->SERVICE_ODO:Lcom/texa/careapp/model/ScheduleType;

    if-eq v2, v3, :cond_0

    .line 318
    invoke-interface {v1}, Lcom/texa/careapp/model/IScheduleModel;->getType()Lcom/texa/careapp/model/ScheduleType;

    move-result-object v2

    sget-object v3, Lcom/texa/careapp/model/ScheduleType;->DIAG_SERVICE_ODO:Lcom/texa/careapp/model/ScheduleType;

    if-eq v2, v3, :cond_0

    .line 319
    invoke-interface {v1}, Lcom/texa/careapp/model/IScheduleModel;->getType()Lcom/texa/careapp/model/ScheduleType;

    move-result-object v2

    sget-object v3, Lcom/texa/careapp/model/ScheduleType;->DIAG_SERVICE_TIME:Lcom/texa/careapp/model/ScheduleType;

    if-eq v2, v3, :cond_0

    .line 321
    invoke-interface {v1}, Lcom/texa/careapp/model/IScheduleModel;->getType()Lcom/texa/careapp/model/ScheduleType;

    move-result-object v2

    sget-object v3, Lcom/texa/careapp/model/ScheduleType;->BELTS_ODO:Lcom/texa/careapp/model/ScheduleType;

    if-eq v2, v3, :cond_0

    .line 322
    invoke-interface {v1}, Lcom/texa/careapp/model/IScheduleModel;->getType()Lcom/texa/careapp/model/ScheduleType;

    move-result-object v2

    sget-object v3, Lcom/texa/careapp/model/ScheduleType;->BELTS_TIME:Lcom/texa/careapp/model/ScheduleType;

    if-eq v2, v3, :cond_0

    .line 323
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    :cond_1
    sget-object v0, Lcom/texa/careapp/model/ScheduleType;->BELTS_ODO:Lcom/texa/careapp/model/ScheduleType;

    invoke-virtual {p0, v0}, Lcom/texa/careapp/model/VehicleModel;->getSchedule(Lcom/texa/careapp/model/ScheduleType;)Lcom/texa/careapp/model/VehicleScheduleModel;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/model/ScheduleType;->BELTS_TIME:Lcom/texa/careapp/model/ScheduleType;

    invoke-virtual {p0, v1}, Lcom/texa/careapp/model/VehicleModel;->getSchedule(Lcom/texa/careapp/model/ScheduleType;)Lcom/texa/careapp/model/VehicleScheduleModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getOdometer()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/texa/careapp/model/VehicleModel;->selectPrioritySchedule(Lcom/texa/careapp/model/VehicleScheduleModel;Lcom/texa/careapp/model/VehicleScheduleModel;I)Lcom/texa/careapp/model/VehicleScheduleModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 329
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_2
    sget-object v0, Lcom/texa/careapp/model/ScheduleType;->DIAG_SERVICE_ODO:Lcom/texa/careapp/model/ScheduleType;

    invoke-virtual {p0, v0}, Lcom/texa/careapp/model/VehicleModel;->getSchedule(Lcom/texa/careapp/model/ScheduleType;)Lcom/texa/careapp/model/VehicleScheduleModel;

    move-result-object v0

    .line 333
    sget-object v1, Lcom/texa/careapp/model/ScheduleType;->DIAG_SERVICE_TIME:Lcom/texa/careapp/model/ScheduleType;

    invoke-virtual {p0, v1}, Lcom/texa/careapp/model/VehicleModel;->getSchedule(Lcom/texa/careapp/model/ScheduleType;)Lcom/texa/careapp/model/VehicleScheduleModel;

    move-result-object v1

    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    goto :goto_1

    .line 342
    :cond_3
    sget-object v0, Lcom/texa/careapp/model/ScheduleType;->SERVICE_ODO:Lcom/texa/careapp/model/ScheduleType;

    invoke-virtual {p0, v0}, Lcom/texa/careapp/model/VehicleModel;->getSchedule(Lcom/texa/careapp/model/ScheduleType;)Lcom/texa/careapp/model/VehicleScheduleModel;

    move-result-object v0

    .line 343
    sget-object v1, Lcom/texa/careapp/model/ScheduleType;->SERVICE_TIME:Lcom/texa/careapp/model/ScheduleType;

    invoke-virtual {p0, v1}, Lcom/texa/careapp/model/VehicleModel;->getSchedule(Lcom/texa/careapp/model/ScheduleType;)Lcom/texa/careapp/model/VehicleScheduleModel;

    move-result-object v1

    .line 347
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getOdometer()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/texa/careapp/model/VehicleModel;->selectPrioritySchedule(Lcom/texa/careapp/model/VehicleScheduleModel;Lcom/texa/careapp/model/VehicleScheduleModel;I)Lcom/texa/careapp/model/VehicleScheduleModel;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 349
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object p1
.end method

.method public getThreshold(Lcom/texa/careapp/model/ThresholdModel$Type;Landroid/content/Context;)Lcom/texa/careapp/model/ThresholdModel;
    .locals 5

    .line 668
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getId()Ljava/lang/Long;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 669
    new-instance p2, Lcom/activeandroid/query/Select;

    invoke-direct {p2}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/ThresholdModel;

    .line 670
    invoke-virtual {p2, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/texa/careapp/model/ThresholdModel;

    .line 671
    invoke-static {v2}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "vehicle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getId()Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p2, v1, v3}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p2

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string/jumbo v2, "type=?"

    .line 672
    invoke-virtual {p2, v2, v1}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p2

    .line 673
    invoke-virtual {p2}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p2

    check-cast p2, Lcom/texa/careapp/model/ThresholdModel;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    .line 677
    new-instance p2, Lcom/texa/careapp/model/ThresholdModel;

    invoke-direct {p2}, Lcom/texa/careapp/model/ThresholdModel;-><init>()V

    .line 678
    invoke-virtual {p2, p0}, Lcom/texa/careapp/model/ThresholdModel;->setVehicleModel(Lcom/texa/careapp/model/VehicleModel;)V

    .line 679
    invoke-virtual {p2, p1}, Lcom/texa/careapp/model/ThresholdModel;->setType(Lcom/texa/careapp/model/ThresholdModel$Type;)V

    .line 682
    :try_start_0
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Could not save the vehicle threshold."

    .line 684
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-object p2
.end method

.method public getThresholds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ThresholdModel;",
            ">;"
        }
    .end annotation

    .line 692
    const-class v0, Lcom/texa/careapp/model/ThresholdModel;

    const-string/jumbo v1, "vehicle"

    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/model/VehicleModel;->getMany(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTyresTypeId()Ljava/lang/Integer;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleModel;->tyresTypeId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleModel;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUnsyncedParameters()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleParam;",
            ">;"
        }
    .end annotation

    .line 419
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/VehicleParam;

    .line 420
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/texa/careapp/model/VehicleParam;

    .line 421
    invoke-static {v2}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "vehicle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getId()Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 422
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "sync_needed=?"

    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUnsyncedThresholds()Lcom/texa/careapp/model/ThresholdModelList;
    .locals 6

    .line 696
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/ThresholdModel;

    .line 697
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/texa/careapp/model/ThresholdModel;

    .line 698
    invoke-static {v2}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "vehicle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getId()Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 699
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "sync_needed=?"

    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 700
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    .line 702
    new-instance v1, Lcom/texa/careapp/model/ThresholdModelList;

    invoke-direct {v1, v0}, Lcom/texa/careapp/model/ThresholdModelList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getVehicleAdditionalData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleAdditionalDataModel;",
            ">;"
        }
    .end annotation

    .line 840
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/VehicleAdditionalDataModel;

    .line 841
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 842
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVehicleInfo()Ljava/lang/String;
    .locals 1

    .line 876
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleModel;->description:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/texa/careapp/utils/Utils;->formatVehicleModel(Lcom/texa/careapp/model/VehicleModel;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getVehicleParamById(J)Lcom/texa/careapp/model/VehicleParam;
    .locals 6

    .line 480
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/VehicleParam;

    .line 481
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/texa/careapp/model/VehicleParam;

    .line 482
    invoke-static {v2}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "vehicle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getId()Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 483
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v5

    const-string p1, "dataId = ? "

    invoke-virtual {v0, p1, v1}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    .line 484
    invoke-virtual {p1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/model/VehicleParam;

    return-object p1
.end method

.method public getVehiclePlate()Ljava/lang/String;
    .locals 1

    .line 881
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getPlate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVin()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleModel;->vin:Ljava/lang/String;

    return-object v0
.end method

.method public hasServiceSchedules()Z
    .locals 1

    .line 637
    sget-object v0, Lcom/texa/careapp/model/ScheduleType;->SERVICE_ODO:Lcom/texa/careapp/model/ScheduleType;

    invoke-virtual {p0, v0}, Lcom/texa/careapp/model/VehicleModel;->getSchedule(Lcom/texa/careapp/model/ScheduleType;)Lcom/texa/careapp/model/VehicleScheduleModel;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/texa/careapp/model/ScheduleType;->SERVICE_TIME:Lcom/texa/careapp/model/ScheduleType;

    invoke-virtual {p0, v0}, Lcom/texa/careapp/model/VehicleModel;->getSchedule(Lcom/texa/careapp/model/ScheduleType;)Lcom/texa/careapp/model/VehicleScheduleModel;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/texa/careapp/model/ScheduleType;->DIAG_SERVICE_TIME:Lcom/texa/careapp/model/ScheduleType;

    .line 638
    invoke-virtual {p0, v0}, Lcom/texa/careapp/model/VehicleModel;->getSchedule(Lcom/texa/careapp/model/ScheduleType;)Lcom/texa/careapp/model/VehicleScheduleModel;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/texa/careapp/model/ScheduleType;->DIAG_SERVICE_ODO:Lcom/texa/careapp/model/ScheduleType;

    invoke-virtual {p0, v0}, Lcom/texa/careapp/model/VehicleModel;->getSchedule(Lcom/texa/careapp/model/ScheduleType;)Lcom/texa/careapp/model/VehicleScheduleModel;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasTyresSchedules()Z
    .locals 6

    .line 642
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/VehicleScheduleModel;

    .line 643
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/texa/careapp/model/VehicleScheduleModel;

    .line 644
    invoke-static {v2}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Vehicle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getId()Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    sget-object v2, Lcom/texa/careapp/model/ScheduleType;->TYRES_SWAP:Lcom/texa/careapp/model/ScheduleType;

    aput-object v2, v1, v5

    const-string/jumbo v2, "type=?"

    .line 645
    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 646
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->exists()Z

    move-result v0

    return v0
.end method

.method public isConfirmedByUser()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/texa/careapp/model/VehicleModel;->isConfirmedByUser:Z

    return v0
.end method

.method public isCurrentVehicle()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/texa/careapp/model/VehicleModel;->isCurrentVehicle:Z

    return v0
.end method

.method public isCustomerAvailability()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Lcom/texa/careapp/model/VehicleModel;->customerAvailability:Z

    return v0
.end method

.method public isHaveAdvancedDiagnosis()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lcom/texa/careapp/model/VehicleModel;->haveAdvancedDiagnosis:Z

    return v0
.end method

.method public isHaveAutomaticTransmission()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/texa/careapp/model/VehicleModel;->haveAutomaticTransmission:Z

    return v0
.end method

.method public isSelectedVehicle()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/texa/careapp/model/VehicleModel;->isSelectedVehicle:Z

    return v0
.end method

.method public isSyncNeeded()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/texa/careapp/model/VehicleModel;->syncNeeded:Z

    return v0
.end method

.method public setAdditionalPositionData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 788
    invoke-virtual {p0, p1}, Lcom/texa/careapp/model/VehicleModel;->getAdditionalDataByType(Ljava/lang/String;)Lcom/texa/careapp/model/VehicleAdditionalDataModel;

    move-result-object p1

    .line 789
    invoke-virtual {p1, p2}, Lcom/texa/careapp/model/VehicleAdditionalDataModel;->setValue(Ljava/lang/String;)V

    .line 791
    :try_start_0
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/lang/Object;

    const-string v1, "Could not save vehicle additional data in database."

    .line 794
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return p2
.end method

.method public setAlarms(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/texa/careapp/model/VehicleAlarm;",
            ">;)V"
        }
    .end annotation

    .line 743
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleModel;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/model/VehicleModel;->alarmsJson:Ljava/lang/String;

    return-void
.end method

.method public setAlarmsJson(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleModel;->alarmsJson:Ljava/lang/String;

    return-void
.end method

.method public setBrandName(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleModel;->brandName:Ljava/lang/String;

    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleModel;->color:Ljava/lang/String;

    return-void
.end method

.method public setConfirmedByUser(Z)V
    .locals 0

    .line 166
    iput-boolean p1, p0, Lcom/texa/careapp/model/VehicleModel;->isConfirmedByUser:Z

    return-void
.end method

.method public setCurrentVehicle(Z)V
    .locals 0

    .line 146
    iput-boolean p1, p0, Lcom/texa/careapp/model/VehicleModel;->isCurrentVehicle:Z

    return-void
.end method

.method public setCustomerAvailability(Z)V
    .locals 0

    .line 196
    iput-boolean p1, p0, Lcom/texa/careapp/model/VehicleModel;->customerAvailability:Z

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleModel;->description:Ljava/lang/String;

    return-void
.end method

.method public setHaveAdvancedDiagnosis(Z)V
    .locals 0

    .line 176
    iput-boolean p1, p0, Lcom/texa/careapp/model/VehicleModel;->haveAdvancedDiagnosis:Z

    return-void
.end method

.method public setHaveAutomaticTransmission(Z)V
    .locals 0

    .line 186
    iput-boolean p1, p0, Lcom/texa/careapp/model/VehicleModel;->haveAutomaticTransmission:Z

    return-void
.end method

.method public setHwid(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleModel;->hwid:Ljava/lang/String;

    return-void
.end method

.method public setModelName(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleModel;->modelName:Ljava/lang/String;

    return-void
.end method

.method public setNation(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleModel;->nation:Ljava/lang/String;

    return-void
.end method

.method public setOdometer(Ljava/lang/Integer;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleModel;->odometer:Ljava/lang/Integer;

    return-void
.end method

.method public setPlate(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleModel;->plate:Ljava/lang/String;

    return-void
.end method

.method public setRegistrationDate(Ljava/util/Date;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleModel;->registrationDate:Ljava/util/Date;

    return-void
.end method

.method public setRescueContact(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleModel;->rescueContact:Ljava/lang/String;

    return-void
.end method

.method public setSelectedVehicle(Z)V
    .locals 0

    .line 151
    iput-boolean p1, p0, Lcom/texa/careapp/model/VehicleModel;->isSelectedVehicle:Z

    return-void
.end method

.method public setSyncNeeded(Z)V
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/texa/careapp/model/VehicleModel;->syncNeeded:Z

    return-void
.end method

.method public setTyresTypeId(Ljava/lang/Integer;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleModel;->tyresTypeId:Ljava/lang/Integer;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleModel;->uid:Ljava/lang/String;

    return-void
.end method

.method public setVehicleSelected()V
    .locals 4

    const/4 v0, 0x1

    .line 861
    invoke-virtual {p0, v0}, Lcom/texa/careapp/model/VehicleModel;->setSelectedVehicle(Z)V

    .line 863
    new-instance v1, Lcom/activeandroid/query/Select;

    invoke-direct {v1}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v2, Lcom/texa/careapp/model/VehicleModel;

    .line 864
    invoke-virtual {v1, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/texa/careapp/model/VehicleModel;->uid:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string/jumbo v2, "uid !=?"

    .line 865
    invoke-virtual {v1, v2, v0}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 866
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    .line 868
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/VehicleModel;

    .line 869
    invoke-virtual {v1, v3}, Lcom/texa/careapp/model/VehicleModel;->setSelectedVehicle(Z)V

    .line 870
    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->save()Ljava/lang/Long;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setVin(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleModel;->vin:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VehicleModel(brandName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getBrandName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", modelName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getModelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", plate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getPlate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", odometer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getOdometer()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rescueContact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getRescueContact()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hwid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getHwid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", registrationDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getRegistrationDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", syncNeeded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->isSyncNeeded()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", alarmsJson="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getAlarmsJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tyresTypeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getTyresTypeId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getNation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isCurrentVehicle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->isCurrentVehicle()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSelectedVehicle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->isSelectedVehicle()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", vin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getVin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isConfirmedByUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->isConfirmedByUser()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", haveAdvancedDiagnosis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->isHaveAdvancedDiagnosis()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", haveAutomaticTransmission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->isHaveAutomaticTransmission()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", customerAvailability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->isCustomerAvailability()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateAlarm(Lcom/texa/careapp/model/VehicleAlarm;)V
    .locals 1

    .line 706
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/careapp/model/VehicleAlarm;->setVehicleId(Ljava/lang/String;)V

    .line 708
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->getAlarms()Ljava/util/HashSet;

    move-result-object v0

    .line 711
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 713
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 715
    invoke-virtual {p0, v0}, Lcom/texa/careapp/model/VehicleModel;->setAlarms(Ljava/util/HashSet;)V

    return-void
.end method

.method public updateDtcList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/vehicletroubles/DTC;",
            ">;)V"
        }
    .end annotation

    .line 511
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleModel;->deleteAllDtcs()V

    .line 513
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/vehicletroubles/DTC;

    .line 514
    invoke-static {v0}, Lcom/texa/careapp/model/DtcModel;->from(Lcom/texa/carelib/care/vehicletroubles/DTC;)Lcom/texa/careapp/model/DtcModel;

    move-result-object v0

    .line 515
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/DtcModel;->setVehicle(Lcom/texa/careapp/model/VehicleModel;)V

    .line 518
    :try_start_0
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Could not save DTC in the database"

    .line 520
    invoke-static {v0, v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateLamp(ZLcom/texa/careapp/utils/Timestamped;Lcom/texa/carelib/care/vehicle/Vehicle;)Lcom/texa/careapp/app/errorsDTC/LampStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/texa/careapp/utils/Timestamped<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/texa/carelib/care/vehicle/Vehicle;",
            ")",
            "Lcom/texa/careapp/app/errorsDTC/LampStatus;"
        }
    .end annotation

    .line 437
    invoke-virtual {p2}, Lcom/texa/careapp/utils/Timestamped;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 439
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/texa/careapp/model/VehicleModel;->getLampById(Ljava/lang/Long;)Lcom/texa/careapp/app/errorsDTC/LampStatus;

    move-result-object v2

    if-nez v2, :cond_0

    .line 441
    new-instance v2, Lcom/texa/careapp/app/errorsDTC/LampStatus;

    invoke-direct {v2}, Lcom/texa/careapp/app/errorsDTC/LampStatus;-><init>()V

    .line 442
    invoke-virtual {v2, p0}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->setVehicleModel(Lcom/texa/careapp/model/VehicleModel;)V

    .line 443
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->setDataId(Ljava/lang/Long;)V

    .line 446
    :cond_0
    invoke-virtual {v2, p1}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->setFiltered(Z)V

    .line 447
    new-instance p1, Ljava/util/Date;

    invoke-virtual {p2}, Lcom/texa/careapp/utils/Timestamped;->getTimestampMillis()J

    move-result-wide v3

    invoke-direct {p1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, p1}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->setTime(Ljava/util/Date;)V

    .line 448
    invoke-static {p3, v0, v1}, Lcom/texa/careapp/utils/Utils;->isActive(Lcom/texa/carelib/care/vehicle/Vehicle;J)Z

    move-result p1

    invoke-virtual {v2, p1}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->setStatus(Z)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 450
    :try_start_0
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    const-string p3, "Updated lampStatus: %s"

    new-array v0, p2, [Ljava/lang/Object;

    aput-object v2, v0, p1

    .line 451
    invoke-static {p3, v0}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v2, p2, p1

    const-string p1, "Could not update lamp status in database: %s"

    .line 453
    invoke-static {p3, p1, p2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v2
.end method

.method public updateOdometerIfGreater(Ljava/lang/Integer;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleModel;->odometer:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 856
    :cond_1
    invoke-virtual {p0, p1}, Lcom/texa/careapp/model/VehicleModel;->setOdometer(Ljava/lang/Integer;)V

    :cond_2
    return-void
.end method

.method public updateSchedule(Lcom/texa/careapp/networking/response/VehicleResponse$Deadline;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/careapp/exceptions/DatabaseIOException;
        }
    .end annotation

    .line 576
    iget-object v0, p1, Lcom/texa/careapp/networking/response/VehicleResponse$Deadline;->type:Ljava/lang/String;

    invoke-static {v0}, Lcom/texa/careapp/model/ScheduleType;->lookupByValue(Ljava/lang/String;)Lcom/texa/careapp/model/ScheduleType;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 580
    :cond_0
    invoke-virtual {p0, v0}, Lcom/texa/careapp/model/VehicleModel;->getSchedule(Lcom/texa/careapp/model/ScheduleType;)Lcom/texa/careapp/model/VehicleScheduleModel;

    move-result-object v1

    if-nez v1, :cond_1

    .line 583
    new-instance v1, Lcom/texa/careapp/model/VehicleScheduleModel;

    invoke-direct {v1}, Lcom/texa/careapp/model/VehicleScheduleModel;-><init>()V

    .line 584
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/careapp/model/VehicleScheduleModel;->setUid(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v1, p0}, Lcom/texa/careapp/model/VehicleScheduleModel;->setVehicle(Lcom/texa/careapp/model/VehicleModel;)V

    .line 586
    invoke-virtual {v1, v0}, Lcom/texa/careapp/model/VehicleScheduleModel;->setType(Lcom/texa/careapp/model/ScheduleType;)V

    .line 590
    :cond_1
    iget-object v0, p1, Lcom/texa/careapp/networking/response/VehicleResponse$Deadline;->startDate:Ljava/util/Date;

    invoke-virtual {v1, v0}, Lcom/texa/careapp/model/VehicleScheduleModel;->setStartDate(Ljava/util/Date;)V

    .line 591
    iget-object v0, p1, Lcom/texa/careapp/networking/response/VehicleResponse$Deadline;->expireDate:Ljava/util/Date;

    invoke-virtual {v1, v0}, Lcom/texa/careapp/model/VehicleScheduleModel;->setExpireDate(Ljava/util/Date;)V

    .line 592
    iget-object v0, p1, Lcom/texa/careapp/networking/response/VehicleResponse$Deadline;->startOdo:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/texa/careapp/model/VehicleScheduleModel;->setStartOdo(Ljava/lang/Integer;)V

    .line 593
    iget-object p1, p1, Lcom/texa/careapp/networking/response/VehicleResponse$Deadline;->expireOdo:Ljava/lang/Integer;

    invoke-virtual {v1, p1}, Lcom/texa/careapp/model/VehicleScheduleModel;->setExpireOdo(Ljava/lang/Integer;)V

    .line 595
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    return-void
.end method

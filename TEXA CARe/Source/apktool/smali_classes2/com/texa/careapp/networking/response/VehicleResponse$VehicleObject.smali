.class public Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;
.super Ljava/lang/Object;
.source "VehicleResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/networking/response/VehicleResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VehicleObject"
.end annotation


# instance fields
.field public color:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "color"
    .end annotation
.end field

.field public country:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public customerAvailability:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "customer_availability"
    .end annotation
.end field

.field public deadlines:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/networking/response/VehicleResponse$Deadline;",
            ">;"
        }
    .end annotation
.end field

.field public haveAdvancedDiagnosis:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "proprietary_diagnosis"
    .end annotation
.end field

.field public haveAutomaticTransmission:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "auto_drive"
    .end annotation
.end field

.field public hwid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public lampStatusResponseCollection:Lcom/texa/careapp/networking/response/VehicleResponse$LampStatusResponseCollection;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lamps_status"
    .end annotation
.end field

.field public odometer:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public parameterStatusReponseCollection:Lcom/texa/careapp/networking/response/VehicleResponse$ParameterStatusReponseCollection;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "parameters_status"
    .end annotation
.end field

.field public plate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public registrationDate:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public selectionData:Lcom/texa/careapp/networking/response/SelectionDataResponse;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public thresholds:Ljava/util/HashMap;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/texa/careapp/networking/response/VehicleResponse$Threshold;",
            ">;"
        }
    .end annotation
.end field

.field public tyredTypeId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tyres_type_id"
    .end annotation
.end field

.field public vehicleAlarmCollectionResponse:Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmCollectionResponse;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "alarms_status"
    .end annotation
.end field

.field public vehicleId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public vin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

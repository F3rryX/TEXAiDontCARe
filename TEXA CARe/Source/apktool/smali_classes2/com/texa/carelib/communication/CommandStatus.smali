.class public Lcom/texa/carelib/communication/CommandStatus;
.super Ljava/lang/Object;
.source "CommandStatus.java"


# static fields
.field public static final AUTHENTICATION_ERROR:I = 0x5

.field public static final COMMAND_NOT_VALID:I = 0x7d

.field public static final COMPLETE_VECT_REQUIRED_COMMAND:I = 0x2b

.field public static final CRANK_REPORT_EMPTY_CMD:I = 0x18

.field public static final DIAGNOSIS_MODULE_BUSY:I = 0x7

.field public static final DIAGNOSIS_NOT_AVAILABLE:I = 0x16

.field public static final DIAGNOSTIC_STATUS_NOT_CORRECT:I = 0x11

.field public static final DIAG_NOT_ECU_WITH_DTC_CMD:I = 0x17

.field public static final DPM_UNLOCK_CODE_NOT_VALID:I = 0x56

.field public static final ECU_INDEX_OUT_OF_RANGE:I = 0x15

.field public static final ERASING_IN_PROGRESS_CMD:I = 0x29

.field public static final ERR_DPM_ALREADY_ACTIVE:I = 0x54

.field public static final ERR_DPM_NOT_ACTIVE:I = 0x55

.field public static final ERR_DPM_PROCEDURE_IS_NOT_ACTIVE:I = 0x52

.field public static final ERR_DPM_PROCEDURE_IS_STILL_RUNNING:I = 0x50

.field public static final ERR_DPM_PROCEDURE_NOT_AUTHORIZED:I = 0x51

.field public static final ERR_DPM_PROCEDURE_NOT_STOPPABLE:I = 0x53

.field public static final ERR_PDU_CALL_IN_PROGRESS:I = 0x38

.field public static final ERR_PDU_CLOSE_COMM_CHANNEL:I = 0x3a

.field public static final ERR_PDU_GENERIC:I = 0x31

.field public static final ERR_PDU_INVALID_CAN_BUS_SPEED:I = 0x3b

.field public static final ERR_PDU_INVALID_COMMUNICATION_PARAMETERS:I = 0x33

.field public static final ERR_PDU_INVALID_ECU_IDENTIFIER:I = 0x34

.field public static final ERR_PDU_INVALID_PDU_CALL_STRUCTURE:I = 0x32

.field public static final ERR_PDU_INVALID_PDU_REQUEST:I = 0x36

.field public static final ERR_PDU_INVALID_SID:I = 0x35

.field public static final ERR_PDU_INVALID_VEHICLE_SPEED:I = 0x37

.field public static final ERR_PDU_NO_ERROR:I = 0x30

.field public static final ERR_PDU_OPEN_COMM_CHANNEL:I = 0x39

.field public static final ERR_PDU_PDU_COMM_CHANNEL_LOST:I = 0x44

.field public static final ERR_PDU_PDU_MEM_ALLOC:I = 0x42

.field public static final ERR_PDU_PDU_NO_RESPONSE:I = 0x41

.field public static final ERR_PDU_PDU_NO_RESPONSES:I = 0x40

.field public static final ERR_PDU_PDU_RESPONSE_NRC:I = 0x3f

.field public static final ERR_PDU_PDU_WRITE_FAIL:I = 0x43

.field public static final ERR_PDU_RESPONSES_SIZE:I = 0x3e

.field public static final ERR_PDU_RESPONSE_SIZE:I = 0x3d

.field public static final ERR_PDU_START_TIMEOUT_EXPIRED:I = 0x3c

.field public static final EXTERNAL_FLASH_ERROR:I = 0x28

.field public static final EXTERNAL_FLASH_NOT_READY:I = 0x2a

.field public static final FILE_CHECK_FAILED:I = 0x22

.field public static final FILE_INVALID_BLOCK_SIZE:I = 0x25

.field public static final FILE_INVALID_TYPE:I = 0x24

.field public static final FILE_NOT_AVAILABLE:I = 0x21

.field public static final FILE_OFFSET_ERROR:I = 0x23

.field public static final FILE_UPDATE_MANAGER_WRITE_ERR:I = 0x26

.field public static final GENERIC_FAIL:I = 0x1

.field public static final INVALID_FILE_ID:I = 0x20

.field public static final NOTIFICATION:I = 0xff

.field public static final NOT_ADMITTED_WORKING_MODE:I = 0x12

.field public static final NOT_AVAILABLE_IN_CURRENT_DIAGNOSIS_MODE:I = 0x2

.field public static final NO_DISK_SPACE:I = 0xa

.field private static NO_NAME:Ljava/lang/String; = null

.field public static final OK:I = 0x0

.field public static final PAIRING_MUST_BE_REPEATED:I = 0xb

.field public static final PROTECTION_ERROR:I = 0x3

.field public static final SYSTEM_RESOURCES_WARNING:I = 0x6

.field public static final TOO_MUCH_SUBSCRIPTIONS:I = 0x13

.field public static final UNKNOWN_COMMAND_ID:I = 0x7e

.field public static final VCI_COMMUNICATION_ERROR:I = 0x4

.field public static final WORKING_PARAMETER_NOT_ADMITTED:I = 0x14

.field public static final WRONG_DATA_MANAGER_PARAMETER:I = 0x27

.field private static final _CommandStatusNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/texa/carelib/communication/CommandStatus;->_CommandStatusNames:Landroid/util/SparseArray;

    const-string v1, "NO_NAME"

    .line 15
    sput-object v1, Lcom/texa/carelib/communication/CommandStatus;->NO_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "OK"

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    const-string v2, "GENERIC_FAIL"

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x2

    const-string v2, "NOT_AVAILABLE_IN_CURRENT_DIAGNOSIS_MODE"

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x3

    const-string v2, "PROTECTION_ERROR"

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x4

    const-string v2, "VCI_COMMUNICATION_ERROR"

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x5

    const-string v2, "AUTHENTICATION_ERROR"

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x6

    const-string v2, "SYSTEM_RESOURCES_WARNING"

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x7

    const-string v2, "DIAGNOSIS_MODULE_BUSY"

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xb

    const-string v2, "PAIRING_MUST_BE_REPEATED"

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x11

    const-string v2, "DIAGNOSTIC_STATUS_NOT_CORRECT"

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x12

    const-string v2, "NOT_ADMITTED_WORKING_MODE"

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x14

    const-string v2, "WORKING_PARAMETER_NOT_ADMITTED"

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x15

    const-string v2, "ECU_INDEX_OUT_OF_RANGE"

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x16

    const-string v2, "DIAGNOSIS_NOT_AVAILABLE"

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xa

    const-string v2, "NO_DISK_SPACE"

    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x20

    const-string v2, "INVALID_FILE_ID"

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x21

    const-string v2, "FILE_NOT_AVAILABLE"

    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x22

    const-string v2, "FILE_CHECK_FAILED"

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x23

    const-string v2, "FILE_OFFSET_ERROR"

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x24

    const-string v2, "FILE_INVALID_TYPE"

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x25

    const-string v2, "FILE_INVALID_BLOCK_SIZE"

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x26

    const-string v2, "FILE_UPDATE_MANAGER_WRITE_ERR"

    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x27

    const-string v2, "WRONG_DATA_MANAGER_PARAMETER"

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x28

    const-string v2, "EXTERNAL_FLASH_ERROR"

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7e

    const-string v2, "UNKNOWN_COMMAND_ID"

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xff

    const-string v2, "NOTIFICATION"

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7d

    const-string v2, "COMMAND_NOT_VALID"

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2b

    const-string v2, "COMPLETE_VECT_REQUIRED_COMMAND"

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x29

    const-string v2, "ERASING_IN_PROGRESS_CMD"

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2a

    const-string v2, "EXTERNAL_FLASH_NOT_READY"

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x30

    const-string v2, "ERR_PDU_NO_ERROR"

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x31

    const-string v2, "ERR_PDU_GENERIC"

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x32

    const-string v2, "ERR_PDU_INVALID_PDU_CALL_STRUCTURE"

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x33

    const-string v2, "ERR_PDU_INVALID_COMMUNICATION_PARAMETERS"

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x34

    const-string v2, "ERR_PDU_INVALID_ECU_IDENTIFIER"

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x35

    const-string v2, "ERR_PDU_INVALID_SID"

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x36

    const-string v2, "ERR_PDU_INVALID_PDU_REQUEST"

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x37

    const-string v2, "ERR_PDU_INVALID_VEHICLE_SPEED"

    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x38

    const-string v2, "ERR_PDU_CALL_IN_PROGRESS"

    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x39

    const-string v2, "ERR_PDU_OPEN_COMM_CHANNEL"

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3a

    const-string v2, "ERR_PDU_CLOSE_COMM_CHANNEL"

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3b

    const-string v2, "ERR_PDU_INVALID_CAN_BUS_SPEED"

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3c

    const-string v2, "ERR_PDU_START_TIMEOUT_EXPIRED"

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3d

    const-string v2, "ERR_PDU_RESPONSE_SIZE"

    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3e

    const-string v2, "ERR_PDU_RESPONSES_SIZE"

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3f

    const-string v2, "ERR_PDU_PDU_RESPONSE_NRC"

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x40

    const-string v2, "ERR_PDU_PDU_NO_RESPONSES"

    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x41

    const-string v2, "ERR_PDU_PDU_NO_RESPONSE"

    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x42

    const-string v2, "ERR_PDU_PDU_MEM_ALLOC"

    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x43

    const-string v2, "ERR_PDU_PDU_WRITE_FAIL"

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x44

    const-string v2, "ERR_PDU_PDU_COMM_CHANNEL_LOST"

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x17

    const-string v2, "DIAG_NOT_ECU_WITH_DTC_CMD"

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x18

    const-string v2, "CRANK_REPORT_EMPTY_CMD"

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x50

    const-string v2, "ERR_DPM_PROCEDURE_IS_STILL_RUNNING"

    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x51

    const-string v2, "ERR_DPM_PROCEDURE_NOT_AUTHORIZED"

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x52

    const-string v2, "ERR_DPM_PROCEDURE_IS_NOT_ACTIVE"

    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x53

    const-string v2, "ERR_DPM_PROCEDURE_NOT_STOPPABLE"

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x54

    const-string v2, "ERR_DPM_ALREADY_ACTIVE"

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x55

    const-string v2, "ERR_DPM_NOT_ACTIVE"

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x56

    const-string v2, "DPM_UNLOCK_CODE_NOT_VALID"

    .line 78
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x13

    const-string v2, "TOO_MUCH_SUBSCRIPTIONS"

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatusName(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 378
    sget-object p0, Lcom/texa/carelib/communication/CommandStatus;->NO_NAME:Ljava/lang/String;

    return-object p0

    .line 381
    :cond_0
    sget-object v0, Lcom/texa/carelib/communication/CommandStatus;->_CommandStatusNames:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object v1, Lcom/texa/carelib/communication/CommandStatus;->NO_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

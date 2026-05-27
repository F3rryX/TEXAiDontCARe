.class public final Lcom/texa/carelib/profile/internal/filecarrier/FileType;
.super Ljava/lang/Object;
.source "FileType.java"


# static fields
.field public static final FILE_ECU_FLASH_FILE:I = 0x25

.field public static final FILE_ECU_REPORT_FILE:I = 0x26

.field public static final FILE_TYPE_AUTODETECT:I = 0x2

.field public static final FILE_TYPE_CERTIFICATE:I = 0x20

.field public static final FILE_TYPE_CONFIGURATION:I = 0x1

.field public static final FILE_TYPE_CONFIG_REPORT:I = 0x11

.field public static final FILE_TYPE_CRASH_DATA:I = 0x14

.field public static final FILE_TYPE_DETECT_REPORT:I = 0x12

.field public static final FILE_TYPE_DIAGNOSTIC_DATABASE:I = 0x15

.field public static final FILE_TYPE_PATCH_RAM:I = 0x4

.field public static final FILE_TYPE_SERVICE_FIRMWARE:I = 0x5

.field public static final FILE_TYPE_TEST:I = 0x6

.field public static final FILE_TYPE_TRIP_DATA:I = 0x13

.field public static final FILE_TYPE_TRIP_DATA_LOG:I = 0x24

.field public static final FILE_TYPE_UNDEFINED:I = 0xff

.field public static final FILE_TYPE_USER_FIRMWARE:I = 0x3

.field private static _FileTypeNames:Landroid/util/SparseArray;
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

    .line 91
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/texa/carelib/profile/internal/filecarrier/FileType;->_FileTypeNames:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "FILE_TYPE_CONFIGURATION"

    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 94
    sget-object v0, Lcom/texa/carelib/profile/internal/filecarrier/FileType;->_FileTypeNames:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "FILE_TYPE_AUTODETECT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 95
    sget-object v0, Lcom/texa/carelib/profile/internal/filecarrier/FileType;->_FileTypeNames:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "FILE_TYPE_USER_FIRMWARE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 96
    sget-object v0, Lcom/texa/carelib/profile/internal/filecarrier/FileType;->_FileTypeNames:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "FILE_TYPE_PATCH_RAM"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 97
    sget-object v0, Lcom/texa/carelib/profile/internal/filecarrier/FileType;->_FileTypeNames:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "FILE_TYPE_SERVICE_FIRMWARE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 98
    sget-object v0, Lcom/texa/carelib/profile/internal/filecarrier/FileType;->_FileTypeNames:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string v2, "FILE_TYPE_TEST"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 100
    sget-object v0, Lcom/texa/carelib/profile/internal/filecarrier/FileType;->_FileTypeNames:Landroid/util/SparseArray;

    const/16 v1, 0x11

    const-string v2, "FILE_TYPE_CONFIG_REPORT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 101
    sget-object v0, Lcom/texa/carelib/profile/internal/filecarrier/FileType;->_FileTypeNames:Landroid/util/SparseArray;

    const/16 v1, 0x12

    const-string v2, "FILE_TYPE_DETECT_REPORT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 102
    sget-object v0, Lcom/texa/carelib/profile/internal/filecarrier/FileType;->_FileTypeNames:Landroid/util/SparseArray;

    const/16 v1, 0x13

    const-string v2, "FILE_TYPE_TRIP_DATA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 103
    sget-object v0, Lcom/texa/carelib/profile/internal/filecarrier/FileType;->_FileTypeNames:Landroid/util/SparseArray;

    const/16 v1, 0x14

    const-string v2, "FILE_TYPE_CRASH_DATA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 104
    sget-object v0, Lcom/texa/carelib/profile/internal/filecarrier/FileType;->_FileTypeNames:Landroid/util/SparseArray;

    const/16 v1, 0x20

    const-string v2, "FILE_TYPE_CERTIFICATE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 105
    sget-object v0, Lcom/texa/carelib/profile/internal/filecarrier/FileType;->_FileTypeNames:Landroid/util/SparseArray;

    const/16 v1, 0x24

    const-string v2, "FILE_TYPE_TRIP_DATA_LOG"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 106
    sget-object v0, Lcom/texa/carelib/profile/internal/filecarrier/FileType;->_FileTypeNames:Landroid/util/SparseArray;

    const/16 v1, 0x25

    const-string v2, "FILE_ECU_FLASH_FILE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 107
    sget-object v0, Lcom/texa/carelib/profile/internal/filecarrier/FileType;->_FileTypeNames:Landroid/util/SparseArray;

    const/16 v1, 0x26

    const-string v2, "FILE_ECU_REPORT_FILE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 2

    .line 111
    sget-object v0, Lcom/texa/carelib/profile/internal/filecarrier/FileType;->_FileTypeNames:Landroid/util/SparseArray;

    const-string v1, "FILE_TYPE_UNDEFINED"

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

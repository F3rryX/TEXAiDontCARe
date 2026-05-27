.class public final Lcom/texa/carelib/care/accessory/AccessoryStatus;
.super Ljava/lang/Object;
.source "AccessoryStatus.java"


# static fields
.field public static final BASIC_CONFIGURATION_AND_OBD_CONNECTED:I = 0x84

.field public static final BASIC_CONFIGURATION_BUT_OBD_NOT_CONNECTED:I = 0x82

.field public static final BUSY:I = 0x0

.field public static final CONFIGURATION_VERIFY_IN_PROGRESS:I = 0x1

.field public static final CONFIGURED_AND_OBD_CONNECTED:I = 0x4

.field public static final CONFIGURED_BUT_OBD_NOT_CONNECTED:I = 0x2

.field public static final CORRUPTED_DEVICE:I = 0x5

.field public static final MEMORY_PROBLEM:I = 0x6

.field public static final NOT_CONFIGURED_AND_OBD_NOT_CONNECTED:I = 0x7

.field public static final NOT_CONFIGURED_BUT_OBD_CONNECTED:I = 0x3

.field public static final UNDEF:I = 0xff

.field private static mStatusNames:Landroid/util/SparseArray;
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

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/texa/carelib/care/accessory/AccessoryStatus;->mStatusNames:Landroid/util/SparseArray;

    const/16 v1, 0xff

    const-string v2, "UNDEF"

    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    sget-object v0, Lcom/texa/carelib/care/accessory/AccessoryStatus;->mStatusNames:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "BUSY"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    sget-object v0, Lcom/texa/carelib/care/accessory/AccessoryStatus;->mStatusNames:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "CONFIGURATION_VERIFY_IN_PROGRESS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    sget-object v0, Lcom/texa/carelib/care/accessory/AccessoryStatus;->mStatusNames:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "CONFIGURED_BUT_OBD_NOT_CONNECTED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    sget-object v0, Lcom/texa/carelib/care/accessory/AccessoryStatus;->mStatusNames:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "NOT_CONFIGURED_BUT_OBD_CONNECTED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    sget-object v0, Lcom/texa/carelib/care/accessory/AccessoryStatus;->mStatusNames:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "CONFIGURED_AND_OBD_CONNECTED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    sget-object v0, Lcom/texa/carelib/care/accessory/AccessoryStatus;->mStatusNames:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "CORRUPTED_DEVICE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    sget-object v0, Lcom/texa/carelib/care/accessory/AccessoryStatus;->mStatusNames:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string v2, "MEMORY_PROBLEM"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    sget-object v0, Lcom/texa/carelib/care/accessory/AccessoryStatus;->mStatusNames:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string v2, "NOT_CONFIGURED_AND_OBD_NOT_CONNECTED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    sget-object v0, Lcom/texa/carelib/care/accessory/AccessoryStatus;->mStatusNames:Landroid/util/SparseArray;

    const/16 v1, 0x82

    const-string v2, "BASIC_CONFIGURATION_BUT_OBD_NOT_CONNECTED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    sget-object v0, Lcom/texa/carelib/care/accessory/AccessoryStatus;->mStatusNames:Landroid/util/SparseArray;

    const/16 v1, 0x84

    const-string v2, "BASIC_CONFIGURATION_AND_OBD_CONNECTED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 2

    .line 94
    sget-object v0, Lcom/texa/carelib/care/accessory/AccessoryStatus;->mStatusNames:Landroid/util/SparseArray;

    const-string v1, "Unknown"

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

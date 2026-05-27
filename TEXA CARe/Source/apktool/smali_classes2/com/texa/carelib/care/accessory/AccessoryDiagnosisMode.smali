.class public final Lcom/texa/carelib/care/accessory/AccessoryDiagnosisMode;
.super Ljava/lang/Object;
.source "AccessoryDiagnosisMode.java"


# static fields
.field public static final CONFIGURATION:I = 0x2

.field public static final DIAGNOSIS_FORCED_STOP:I = 0x3

.field public static final UNDEF:I = 0x0

.field public static final WORKING:I = 0x1

.field private static mDiagnosisModeNames:Landroid/util/SparseArray;
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

    .line 49
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/texa/carelib/care/accessory/AccessoryDiagnosisMode;->mDiagnosisModeNames:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "UNDEF"

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    sget-object v0, Lcom/texa/carelib/care/accessory/AccessoryDiagnosisMode;->mDiagnosisModeNames:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "CONFIGURATION"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    sget-object v0, Lcom/texa/carelib/care/accessory/AccessoryDiagnosisMode;->mDiagnosisModeNames:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "WORKING"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    sget-object v0, Lcom/texa/carelib/care/accessory/AccessoryDiagnosisMode;->mDiagnosisModeNames:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "DIAGNOSIS_FORCED_STOP"

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

    .line 65
    sget-object v0, Lcom/texa/carelib/care/accessory/AccessoryDiagnosisMode;->mDiagnosisModeNames:Landroid/util/SparseArray;

    const-string v1, "Unknown"

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

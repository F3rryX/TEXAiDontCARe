.class public final enum Lcom/texa/carelib/care/vehicletroubles/DTCStatus;
.super Ljava/lang/Enum;
.source "DTCStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/care/vehicletroubles/DTCStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

.field public static final enum Active:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ACTIVE"
    .end annotation
.end field

.field public static final enum Pending:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PENDING"
    .end annotation
.end field

.field public static final enum Permanent:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PERMANENT"
    .end annotation
.end field

.field public static final enum Stored:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "STORED"
    .end annotation
.end field

.field public static final enum Undefined:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UNDEFINED"
    .end annotation
.end field

.field public static final enum UndefinedOBD:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UNDEFINED_OBD"
    .end annotation
.end field

.field public static final enum Unsupported:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UNSUPPORTED"
    .end annotation
.end field


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 17
    new-instance v0, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    const-string v1, "UndefinedOBD"

    const/4 v2, 0x0

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;->UndefinedOBD:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    .line 23
    new-instance v1, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    const-string v3, "Undefined"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;->Undefined:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    .line 29
    new-instance v3, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    const-string v5, "Active"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;->Active:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    .line 36
    new-instance v5, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    const-string v7, "Stored"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;->Stored:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    .line 43
    new-instance v7, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    const-string v9, "Pending"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;->Pending:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    .line 50
    new-instance v9, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    const-string v11, "Permanent"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;->Permanent:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    .line 56
    new-instance v11, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    const-string v13, "Unsupported"

    const/4 v14, 0x6

    const/16 v15, 0xff

    invoke-direct {v11, v13, v14, v15}, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;->Unsupported:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 12
    sput-object v13, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;->$VALUES:[Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput p3, p0, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;->mValue:I

    return-void
.end method

.method public static fromInt(I)Lcom/texa/carelib/care/vehicletroubles/DTCStatus;
    .locals 5

    .line 88
    invoke-static {}, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;->values()[Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 90
    invoke-virtual {v3}, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;->value()I

    move-result v4

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    :cond_1
    sget-object p0, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;->Unsupported:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/care/vehicletroubles/DTCStatus;
    .locals 1

    .line 12
    const-class v0, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/care/vehicletroubles/DTCStatus;
    .locals 1

    .line 12
    sget-object v0, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;->$VALUES:[Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    invoke-virtual {v0}, [Lcom/texa/carelib/care/vehicletroubles/DTCStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;->mValue:I

    return v0
.end method

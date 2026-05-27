.class public final enum Lcom/texa/carelib/diagresources/DataID$Text;
.super Ljava/lang/Enum;
.source "DataID.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/diagresources/DataID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Text"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/diagresources/DataID$Text;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/diagresources/DataID$Text;

.field public static final enum DRIVER_IDENTIFY_1:Lcom/texa/carelib/diagresources/DataID$Text;

.field public static final enum DRIVER_IDENTIFY_2:Lcom/texa/carelib/diagresources/DataID$Text;

.field public static final enum DRIVER_NAME_1:Lcom/texa/carelib/diagresources/DataID$Text;

.field public static final enum DRIVER_NAME_2:Lcom/texa/carelib/diagresources/DataID$Text;

.field public static final enum VIN:Lcom/texa/carelib/diagresources/DataID$Text;

.field private static final dataIDMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/texa/carelib/diagresources/DataID$Text;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mId:J

.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 5559
    new-instance v6, Lcom/texa/carelib/diagresources/DataID$Text;

    const-string v1, "VIN"

    const/4 v2, 0x0

    const-wide/32 v3, 0x60000

    const-string v5, "VIN"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/texa/carelib/diagresources/DataID$Text;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v6, Lcom/texa/carelib/diagresources/DataID$Text;->VIN:Lcom/texa/carelib/diagresources/DataID$Text;

    .line 5565
    new-instance v0, Lcom/texa/carelib/diagresources/DataID$Text;

    const-string v8, "DRIVER_IDENTIFY_1"

    const/4 v9, 0x1

    const-wide/32 v10, 0xe0006

    const-string v12, "DRIVER_IDENTIFY_1"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/texa/carelib/diagresources/DataID$Text;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v0, Lcom/texa/carelib/diagresources/DataID$Text;->DRIVER_IDENTIFY_1:Lcom/texa/carelib/diagresources/DataID$Text;

    .line 5571
    new-instance v1, Lcom/texa/carelib/diagresources/DataID$Text;

    const-string v14, "DRIVER_IDENTIFY_2"

    const/4 v15, 0x2

    const-wide/32 v16, 0xe0007

    const-string v18, "DRIVER_IDENTIFY_2"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/texa/carelib/diagresources/DataID$Text;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v1, Lcom/texa/carelib/diagresources/DataID$Text;->DRIVER_IDENTIFY_2:Lcom/texa/carelib/diagresources/DataID$Text;

    .line 5577
    new-instance v2, Lcom/texa/carelib/diagresources/DataID$Text;

    const-string v8, "DRIVER_NAME_1"

    const/4 v9, 0x3

    const-wide/32 v10, 0xe0010

    const-string v12, "DRIVER_NAME_1"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/texa/carelib/diagresources/DataID$Text;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v2, Lcom/texa/carelib/diagresources/DataID$Text;->DRIVER_NAME_1:Lcom/texa/carelib/diagresources/DataID$Text;

    .line 5583
    new-instance v3, Lcom/texa/carelib/diagresources/DataID$Text;

    const-string v14, "DRIVER_NAME_2"

    const/4 v15, 0x4

    const-wide/32 v16, 0xe0011

    const-string v18, "DRIVER_NAME_2"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/texa/carelib/diagresources/DataID$Text;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    sput-object v3, Lcom/texa/carelib/diagresources/DataID$Text;->DRIVER_NAME_2:Lcom/texa/carelib/diagresources/DataID$Text;

    const/4 v4, 0x5

    new-array v4, v4, [Lcom/texa/carelib/diagresources/DataID$Text;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v6, 0x1

    aput-object v0, v4, v6

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    const/4 v0, 0x4

    aput-object v3, v4, v0

    .line 5553
    sput-object v4, Lcom/texa/carelib/diagresources/DataID$Text;->$VALUES:[Lcom/texa/carelib/diagresources/DataID$Text;

    .line 5619
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Lcom/texa/carelib/diagresources/DataID$Text;->dataIDMap:Landroid/util/LongSparseArray;

    .line 5620
    invoke-static {}, Lcom/texa/carelib/diagresources/DataID$Text;->values()[Lcom/texa/carelib/diagresources/DataID$Text;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v5, v1, :cond_0

    aget-object v2, v0, v5

    .line 5621
    sget-object v3, Lcom/texa/carelib/diagresources/DataID$Text;->dataIDMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Text;->getId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 5593
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5594
    iput-wide p3, p0, Lcom/texa/carelib/diagresources/DataID$Text;->mId:J

    .line 5595
    iput-object p5, p0, Lcom/texa/carelib/diagresources/DataID$Text;->mName:Ljava/lang/String;

    return-void
.end method

.method public static findById(J)Lcom/texa/carelib/diagresources/DataID$Text;
    .locals 1

    .line 5632
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Text;->dataIDMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/diagresources/DataID$Text;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/diagresources/DataID$Text;
    .locals 1

    .line 5553
    const-class v0, Lcom/texa/carelib/diagresources/DataID$Text;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/diagresources/DataID$Text;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/diagresources/DataID$Text;
    .locals 1

    .line 5553
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Text;->$VALUES:[Lcom/texa/carelib/diagresources/DataID$Text;

    invoke-virtual {v0}, [Lcom/texa/carelib/diagresources/DataID$Text;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/diagresources/DataID$Text;

    return-object v0
.end method


# virtual methods
.method public getId()J
    .locals 2

    .line 5604
    iget-wide v0, p0, Lcom/texa/carelib/diagresources/DataID$Text;->mId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 5614
    iget-object v0, p0, Lcom/texa/carelib/diagresources/DataID$Text;->mName:Ljava/lang/String;

    return-object v0
.end method

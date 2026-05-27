.class public final enum Lcom/texa/carelib/core/AppType;
.super Ljava/lang/Enum;
.source "AppType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/core/AppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/core/AppType;

.field public static final enum MAIN:Lcom/texa/carelib/core/AppType;

.field public static final enum MICRO:Lcom/texa/carelib/core/AppType;

.field public static final enum SERVICE:Lcom/texa/carelib/core/AppType;

.field public static final enum UNDEF:Lcom/texa/carelib/core/AppType;


# instance fields
.field private final mIntValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 15
    new-instance v0, Lcom/texa/carelib/core/AppType;

    const-string v1, "UNDEF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/texa/carelib/core/AppType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/texa/carelib/core/AppType;->UNDEF:Lcom/texa/carelib/core/AppType;

    .line 20
    new-instance v1, Lcom/texa/carelib/core/AppType;

    const-string v3, "MAIN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/texa/carelib/core/AppType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/texa/carelib/core/AppType;->MAIN:Lcom/texa/carelib/core/AppType;

    .line 25
    new-instance v3, Lcom/texa/carelib/core/AppType;

    const-string v5, "SERVICE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/texa/carelib/core/AppType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/texa/carelib/core/AppType;->SERVICE:Lcom/texa/carelib/core/AppType;

    .line 30
    new-instance v5, Lcom/texa/carelib/core/AppType;

    const-string v7, "MICRO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/texa/carelib/core/AppType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/texa/carelib/core/AppType;->MICRO:Lcom/texa/carelib/core/AppType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/texa/carelib/core/AppType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 10
    sput-object v7, Lcom/texa/carelib/core/AppType;->$VALUES:[Lcom/texa/carelib/core/AppType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lcom/texa/carelib/core/AppType;->mIntValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/core/AppType;
    .locals 1

    .line 10
    const-class v0, Lcom/texa/carelib/core/AppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/core/AppType;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/core/AppType;
    .locals 1

    .line 10
    sget-object v0, Lcom/texa/carelib/core/AppType;->$VALUES:[Lcom/texa/carelib/core/AppType;

    invoke-virtual {v0}, [Lcom/texa/carelib/core/AppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/core/AppType;

    return-object v0
.end method


# virtual methods
.method toInt()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/texa/carelib/core/AppType;->mIntValue:I

    return v0
.end method

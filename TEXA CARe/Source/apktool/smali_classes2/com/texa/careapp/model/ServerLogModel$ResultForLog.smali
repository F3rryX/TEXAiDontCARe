.class public final enum Lcom/texa/careapp/model/ServerLogModel$ResultForLog;
.super Ljava/lang/Enum;
.source "ServerLogModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/model/ServerLogModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultForLog"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/careapp/model/ServerLogModel$ResultForLog;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

.field public static final enum FAILED:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

.field public static final enum SUCCESSFULL:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

.field public static final enum UNDEFINED:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 142
    new-instance v0, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    const-string v1, "FAILED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->FAILED:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    .line 143
    new-instance v1, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    const-string v3, "SUCCESSFULL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->SUCCESSFULL:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    .line 144
    new-instance v3, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    const-string v5, "UNDEFINED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->UNDEFINED:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 141
    sput-object v5, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->$VALUES:[Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 153
    iput p3, p0, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel$ResultForLog;
    .locals 1

    .line 141
    const-class v0, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    return-object p0
.end method

.method public static values()[Lcom/texa/careapp/model/ServerLogModel$ResultForLog;
    .locals 1

    .line 141
    sget-object v0, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->$VALUES:[Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    invoke-virtual {v0}, [Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->value:I

    return v0
.end method

.class public final enum Lcom/texa/care/eco_driving/score/ScoreType;
.super Ljava/lang/Enum;
.source "ScoreType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/care/eco_driving/score/ScoreType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/care/eco_driving/score/ScoreType;

.field public static final enum ACCELERATIONS:Lcom/texa/care/eco_driving/score/ScoreType;

.field public static final enum BRAKES:Lcom/texa/care/eco_driving/score/ScoreType;

.field public static final enum HIGH_RPM_ENGINE_COLD:Lcom/texa/care/eco_driving/score/ScoreType;

.field public static final enum HIGH_SPEED:Lcom/texa/care/eco_driving/score/ScoreType;

.field public static final enum OVERALL:Lcom/texa/care/eco_driving/score/ScoreType;

.field public static final enum PARKED_ENGINE_ON:Lcom/texa/care/eco_driving/score/ScoreType;

.field public static final enum PARKED_ENGINE_ON_COLD:Lcom/texa/care/eco_driving/score/ScoreType;

.field public static final enum UNDEFINED:Lcom/texa/care/eco_driving/score/ScoreType;


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 9
    new-instance v0, Lcom/texa/care/eco_driving/score/ScoreType;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/texa/care/eco_driving/score/ScoreType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/texa/care/eco_driving/score/ScoreType;->UNDEFINED:Lcom/texa/care/eco_driving/score/ScoreType;

    .line 10
    new-instance v1, Lcom/texa/care/eco_driving/score/ScoreType;

    const-string v3, "OVERALL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/texa/care/eco_driving/score/ScoreType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/texa/care/eco_driving/score/ScoreType;->OVERALL:Lcom/texa/care/eco_driving/score/ScoreType;

    .line 11
    new-instance v3, Lcom/texa/care/eco_driving/score/ScoreType;

    const-string v5, "ACCELERATIONS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/texa/care/eco_driving/score/ScoreType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/texa/care/eco_driving/score/ScoreType;->ACCELERATIONS:Lcom/texa/care/eco_driving/score/ScoreType;

    .line 12
    new-instance v5, Lcom/texa/care/eco_driving/score/ScoreType;

    const-string v7, "BRAKES"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/texa/care/eco_driving/score/ScoreType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/texa/care/eco_driving/score/ScoreType;->BRAKES:Lcom/texa/care/eco_driving/score/ScoreType;

    .line 13
    new-instance v7, Lcom/texa/care/eco_driving/score/ScoreType;

    const-string v9, "HIGH_RPM_ENGINE_COLD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/texa/care/eco_driving/score/ScoreType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/texa/care/eco_driving/score/ScoreType;->HIGH_RPM_ENGINE_COLD:Lcom/texa/care/eco_driving/score/ScoreType;

    .line 14
    new-instance v9, Lcom/texa/care/eco_driving/score/ScoreType;

    const-string v11, "PARKED_ENGINE_ON"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/texa/care/eco_driving/score/ScoreType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/texa/care/eco_driving/score/ScoreType;->PARKED_ENGINE_ON:Lcom/texa/care/eco_driving/score/ScoreType;

    .line 15
    new-instance v11, Lcom/texa/care/eco_driving/score/ScoreType;

    const-string v13, "PARKED_ENGINE_ON_COLD"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/texa/care/eco_driving/score/ScoreType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/texa/care/eco_driving/score/ScoreType;->PARKED_ENGINE_ON_COLD:Lcom/texa/care/eco_driving/score/ScoreType;

    .line 16
    new-instance v13, Lcom/texa/care/eco_driving/score/ScoreType;

    const-string v15, "HIGH_SPEED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/texa/care/eco_driving/score/ScoreType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/texa/care/eco_driving/score/ScoreType;->HIGH_SPEED:Lcom/texa/care/eco_driving/score/ScoreType;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/texa/care/eco_driving/score/ScoreType;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 8
    sput-object v15, Lcom/texa/care/eco_driving/score/ScoreType;->$VALUES:[Lcom/texa/care/eco_driving/score/ScoreType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/texa/care/eco_driving/score/ScoreType;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/care/eco_driving/score/ScoreType;
    .locals 1

    .line 8
    const-class v0, Lcom/texa/care/eco_driving/score/ScoreType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/care/eco_driving/score/ScoreType;

    return-object p0
.end method

.method public static values()[Lcom/texa/care/eco_driving/score/ScoreType;
    .locals 1

    .line 8
    sget-object v0, Lcom/texa/care/eco_driving/score/ScoreType;->$VALUES:[Lcom/texa/care/eco_driving/score/ScoreType;

    invoke-virtual {v0}, [Lcom/texa/care/eco_driving/score/ScoreType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/care/eco_driving/score/ScoreType;

    return-object v0
.end method


# virtual methods
.method public getNumericType()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/texa/care/eco_driving/score/ScoreType;->type:I

    return v0
.end method

.class public final enum Lcom/texa/careapp/app/diagnosis/DiagnosisType;
.super Ljava/lang/Enum;
.source "DiagnosisType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/careapp/app/diagnosis/DiagnosisType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/careapp/app/diagnosis/DiagnosisType;

.field public static final enum ADVANCED:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

.field public static final enum COMPLETED:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

.field public static final enum STANDARD:Lcom/texa/careapp/app/diagnosis/DiagnosisType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 9
    new-instance v0, Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    const-string v1, "STANDARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/careapp/app/diagnosis/DiagnosisType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->STANDARD:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    .line 11
    new-instance v1, Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    const-string v3, "ADVANCED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/careapp/app/diagnosis/DiagnosisType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->ADVANCED:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    .line 13
    new-instance v3, Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    const-string v5, "COMPLETED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/careapp/app/diagnosis/DiagnosisType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->COMPLETED:Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 7
    sput-object v5, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->$VALUES:[Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/careapp/app/diagnosis/DiagnosisType;
    .locals 1

    .line 7
    const-class v0, Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    return-object p0
.end method

.method public static values()[Lcom/texa/careapp/app/diagnosis/DiagnosisType;
    .locals 1

    .line 7
    sget-object v0, Lcom/texa/careapp/app/diagnosis/DiagnosisType;->$VALUES:[Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    invoke-virtual {v0}, [Lcom/texa/careapp/app/diagnosis/DiagnosisType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/careapp/app/diagnosis/DiagnosisType;

    return-object v0
.end method

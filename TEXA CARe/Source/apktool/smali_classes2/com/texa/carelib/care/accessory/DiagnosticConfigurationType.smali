.class public final enum Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;
.super Ljava/lang/Enum;
.source "DiagnosticConfigurationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;

.field public static final enum ConfigurationFiles:Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;

.field public static final enum Database:Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;

    const-string v1, "Database"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;->Database:Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;

    .line 20
    new-instance v1, Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;

    const-string v3, "ConfigurationFiles"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;->ConfigurationFiles:Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 10
    sput-object v3, Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;->$VALUES:[Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;
    .locals 1

    .line 10
    const-class v0, Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;
    .locals 1

    .line 10
    sget-object v0, Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;->$VALUES:[Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;

    invoke-virtual {v0}, [Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;

    return-object v0
.end method

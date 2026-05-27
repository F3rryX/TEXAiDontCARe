.class public final enum Lcom/texa/carelib/care/accessory/EncryptionLevel;
.super Ljava/lang/Enum;
.source "EncryptionLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/care/accessory/EncryptionLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/care/accessory/EncryptionLevel;

.field public static final enum DoubleLevelEncryption:Lcom/texa/carelib/care/accessory/EncryptionLevel;

.field public static final enum SingleLevelEncryption:Lcom/texa/carelib/care/accessory/EncryptionLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Lcom/texa/carelib/care/accessory/EncryptionLevel;

    const-string v1, "SingleLevelEncryption"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/care/accessory/EncryptionLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/care/accessory/EncryptionLevel;->SingleLevelEncryption:Lcom/texa/carelib/care/accessory/EncryptionLevel;

    .line 19
    new-instance v1, Lcom/texa/carelib/care/accessory/EncryptionLevel;

    const-string v3, "DoubleLevelEncryption"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/care/accessory/EncryptionLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/care/accessory/EncryptionLevel;->DoubleLevelEncryption:Lcom/texa/carelib/care/accessory/EncryptionLevel;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/texa/carelib/care/accessory/EncryptionLevel;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 10
    sput-object v3, Lcom/texa/carelib/care/accessory/EncryptionLevel;->$VALUES:[Lcom/texa/carelib/care/accessory/EncryptionLevel;

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

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/care/accessory/EncryptionLevel;
    .locals 1

    .line 10
    const-class v0, Lcom/texa/carelib/care/accessory/EncryptionLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/care/accessory/EncryptionLevel;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/care/accessory/EncryptionLevel;
    .locals 1

    .line 10
    sget-object v0, Lcom/texa/carelib/care/accessory/EncryptionLevel;->$VALUES:[Lcom/texa/carelib/care/accessory/EncryptionLevel;

    invoke-virtual {v0}, [Lcom/texa/carelib/care/accessory/EncryptionLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/care/accessory/EncryptionLevel;

    return-object v0
.end method

.class public final enum Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;
.super Ljava/lang/Enum;
.source "FileCarrier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SendActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;

.field public static final enum Check:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;

.field public static final enum Store:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;

.field public static final enum Undefined:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 29
    new-instance v0, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;

    const-string v1, "Store"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;->Store:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;

    .line 33
    new-instance v1, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;

    const-string v3, "Check"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;->Check:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;

    .line 38
    new-instance v3, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;

    const-string v5, "Undefined"

    const/4 v6, 0x2

    const/16 v7, 0xff

    invoke-direct {v3, v5, v6, v7}, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;->Undefined:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 24
    sput-object v5, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;->$VALUES:[Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;->mValue:I

    return-void
.end method

.method public static fromInt(I)Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;
    .locals 5

    .line 56
    invoke-static {}, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;->values()[Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 58
    invoke-virtual {v3}, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;->value()I

    move-result v4

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_1
    sget-object p0, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;->Undefined:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;
    .locals 1

    .line 24
    const-class v0, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;
    .locals 1

    .line 24
    sget-object v0, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;->$VALUES:[Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;

    invoke-virtual {v0}, [Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;->mValue:I

    return v0
.end method

.class public final enum Lcom/texa/care/navigation/ScreenType;
.super Ljava/lang/Enum;
.source "ScreenType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/care/navigation/ScreenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/care/navigation/ScreenType;

.field public static final enum DEFAULT:Lcom/texa/care/navigation/ScreenType;

.field public static final enum DIALOG:Lcom/texa/care/navigation/ScreenType;

.field public static final enum DIALOG_FULL_WIDTH:Lcom/texa/care/navigation/ScreenType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 10
    new-instance v0, Lcom/texa/care/navigation/ScreenType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/care/navigation/ScreenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/care/navigation/ScreenType;->DEFAULT:Lcom/texa/care/navigation/ScreenType;

    .line 11
    new-instance v1, Lcom/texa/care/navigation/ScreenType;

    const-string v3, "DIALOG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/care/navigation/ScreenType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/care/navigation/ScreenType;->DIALOG:Lcom/texa/care/navigation/ScreenType;

    .line 12
    new-instance v3, Lcom/texa/care/navigation/ScreenType;

    const-string v5, "DIALOG_FULL_WIDTH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/care/navigation/ScreenType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/care/navigation/ScreenType;->DIALOG_FULL_WIDTH:Lcom/texa/care/navigation/ScreenType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/texa/care/navigation/ScreenType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 8
    sput-object v5, Lcom/texa/care/navigation/ScreenType;->$VALUES:[Lcom/texa/care/navigation/ScreenType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/care/navigation/ScreenType;
    .locals 1

    .line 8
    const-class v0, Lcom/texa/care/navigation/ScreenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/care/navigation/ScreenType;

    return-object p0
.end method

.method public static values()[Lcom/texa/care/navigation/ScreenType;
    .locals 1

    .line 8
    sget-object v0, Lcom/texa/care/navigation/ScreenType;->$VALUES:[Lcom/texa/care/navigation/ScreenType;

    invoke-virtual {v0}, [Lcom/texa/care/navigation/ScreenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/care/navigation/ScreenType;

    return-object v0
.end method

.class public final enum Lcom/texa/careapp/views/CirclePageIndicator$Mode;
.super Ljava/lang/Enum;
.source "CirclePageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/views/CirclePageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/careapp/views/CirclePageIndicator$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/careapp/views/CirclePageIndicator$Mode;

.field public static final enum INSIDE:Lcom/texa/careapp/views/CirclePageIndicator$Mode;

.field public static final enum OUTSIDE:Lcom/texa/careapp/views/CirclePageIndicator$Mode;

.field public static final enum SOLO:Lcom/texa/careapp/views/CirclePageIndicator$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 48
    new-instance v0, Lcom/texa/careapp/views/CirclePageIndicator$Mode;

    const-string v1, "INSIDE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/careapp/views/CirclePageIndicator$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/careapp/views/CirclePageIndicator$Mode;->INSIDE:Lcom/texa/careapp/views/CirclePageIndicator$Mode;

    .line 49
    new-instance v1, Lcom/texa/careapp/views/CirclePageIndicator$Mode;

    const-string v3, "OUTSIDE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/careapp/views/CirclePageIndicator$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/careapp/views/CirclePageIndicator$Mode;->OUTSIDE:Lcom/texa/careapp/views/CirclePageIndicator$Mode;

    .line 50
    new-instance v3, Lcom/texa/careapp/views/CirclePageIndicator$Mode;

    const-string v5, "SOLO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/careapp/views/CirclePageIndicator$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/careapp/views/CirclePageIndicator$Mode;->SOLO:Lcom/texa/careapp/views/CirclePageIndicator$Mode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/texa/careapp/views/CirclePageIndicator$Mode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 47
    sput-object v5, Lcom/texa/careapp/views/CirclePageIndicator$Mode;->$VALUES:[Lcom/texa/careapp/views/CirclePageIndicator$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/careapp/views/CirclePageIndicator$Mode;
    .locals 1

    .line 47
    const-class v0, Lcom/texa/careapp/views/CirclePageIndicator$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/views/CirclePageIndicator$Mode;

    return-object p0
.end method

.method public static values()[Lcom/texa/careapp/views/CirclePageIndicator$Mode;
    .locals 1

    .line 47
    sget-object v0, Lcom/texa/careapp/views/CirclePageIndicator$Mode;->$VALUES:[Lcom/texa/careapp/views/CirclePageIndicator$Mode;

    invoke-virtual {v0}, [Lcom/texa/careapp/views/CirclePageIndicator$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/careapp/views/CirclePageIndicator$Mode;

    return-object v0
.end method
